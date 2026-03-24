# SPDX-FileCopyrightText: Copyright (C) 2025 Advanced Micro Devices, Inc. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

import torch
import numpy as np
import hashlib
from ml_dtypes import bfloat16
from pathlib import Path

from IRON.iron.common import (
    AIEOperatorBase,
    AIEOperatorConstraintError,
    XclbinArtifact,
    InstsBinArtifact,
    KernelObjectArtifact,
    KernelArchiveArtifact,
    SourceArtifact,
    PythonGeneratedMLIRArtifact,
)
from IRON.iron.common.utils import torch_to_numpy


class AIEPredictorMLP(AIEOperatorBase):
    """AIE-accelerated Predictor MLP: FC1 -> ReLU -> FC2 -> Sigmoid"""

    def __init__(
        self,
        input_size=12,
        hidden_size=512,
        output_size=2,
        num_aie_columns=1,
        layer_idx=None,
        context=None,
    ):
        """
        Initialize AIEPredictorMLP operator.

        Args:
            input_size: Dimension of input feature vector
            hidden_size: Dimension of hidden layer (will be padded to 512)
            output_size: Dimension of output (prediction score, default 1)
            num_aie_columns: Number of AIE columns to use
            context: AIE context for device management
        """
        self.input_size = input_size
        self.hidden_size = hidden_size
        self.output_size = output_size
        self.num_aie_columns = num_aie_columns
        self.layer_idx = layer_idx

        # AIE works best with size 512, so we pad hidden dimension
        self.hidden_size_padded = 512

        # Weight matrices will be set later or padded version stored
        self.fc1_weight = None  # [hidden_size, input_size]
        self.fc2_weight = None  # [output_size, hidden_size]
        self.fc1_weight_padded = None  # [hidden_size_padded, input_size]
        self.fc2_weight_padded = None  # [output_size, hidden_size_padded]

        self.xclbin_artifact = None
        self.insts_artifact = None
        self._setup_done = False
        self.context_saved = context

        # Don't call AIEOperatorBase.__init__ yet - wait until weights are set
        # This will be called from set_weights() after weights are padded

    def set_weights(self, fc1_weight, fc2_weight):
        """
        Set and pad the weight matrices.

        Args:
            fc1_weight: [hidden_size, input_size] bfloat16 tensor
            fc2_weight: [output_size, hidden_size] bfloat16 tensor
        """
        self.fc1_weight = fc1_weight.cpu().to(dtype=torch.bfloat16)
        self.fc2_weight = fc2_weight.cpu().to(dtype=torch.bfloat16)

        # Pad FC1 weight: [hidden_size, input_size] -> [512, input_size]
        if self.fc1_weight.shape[0] < self.hidden_size_padded:
            fc1_pad = torch.zeros(
                (self.hidden_size_padded - self.fc1_weight.shape[0], self.input_size),
                dtype=torch.bfloat16,
                device="cpu",
            )
            self.fc1_weight_padded = torch.cat([self.fc1_weight, fc1_pad], dim=0)
        else:
            self.fc1_weight_padded = self.fc1_weight

        # Pad FC2 weight to configured output/hidden sizes:
        # [actual_output_size, actual_hidden_size] -> [output_size, 512]
        fc2 = self.fc2_weight

        # Align row count (output dimension)
        if fc2.shape[0] < self.output_size:
            row_pad = torch.zeros(
                (self.output_size - fc2.shape[0], fc2.shape[1]),
                dtype=torch.bfloat16,
                device="cpu",
            )
            fc2 = torch.cat([fc2, row_pad], dim=0)
        elif fc2.shape[0] > self.output_size:
            fc2 = fc2[: self.output_size, :]

        # Align column count (hidden dimension)
        if fc2.shape[1] < self.hidden_size_padded:
            col_pad = torch.zeros(
                (self.output_size, self.hidden_size_padded - fc2.shape[1]),
                dtype=torch.bfloat16,
                device="cpu",
            )
            fc2 = torch.cat([fc2, col_pad], dim=1)
        elif fc2.shape[1] > self.hidden_size_padded:
            fc2 = fc2[:, : self.hidden_size_padded]

        self.fc2_weight_padded = fc2
        # Complete the AIE setup if not already done
        if not self._setup_done:
            # Initialize parent class now that weights are available
            AIEOperatorBase.__init__(self, context=self.context_saved)
            self._setup_done = True

    def set_up_artifacts(self):
        """Create MLIR, Xclbin, and instruction artifacts."""
        if self.fc1_weight_padded is None or self.fc2_weight_padded is None:
            raise AIEOperatorConstraintError(
                "AIEPredictorMLP: Weights must be set before setting up artifacts. "
                "Call set_weights() first."
            )

        operator_dir = Path(__file__).parent
        layer_suffix = f"_layer{self.layer_idx}" if self.layer_idx is not None else ""

        # Convert weights to numpy for design callback
        fc1_weight_np = torch_to_numpy(self.fc1_weight_padded)
        fc2_weight_np = torch_to_numpy(self.fc2_weight_padded)

        # Include a deterministic weight fingerprint in the artifact name.
        # PythonGeneratedMLIRArtifact availability only tracks source timestamps,
        # not callback arguments. Since weights are embedded into MLIR constants,
        # this avoids stale MLIR reuse when model weights change.
        weight_hash = hashlib.sha1()
        weight_hash.update(fc1_weight_np.view(np.uint16).tobytes())
        weight_hash.update(fc2_weight_np.view(np.uint16).tobytes())
        weight_suffix = weight_hash.hexdigest()[:8]

        file_name_base = (
            f"predictor_mlp_{self.input_size}in_{self.hidden_size}h_{self.output_size}out_"
            f"{self.num_aie_columns}col{layer_suffix}_{weight_suffix}"
        )
        mlir_artifact = PythonGeneratedMLIRArtifact.new(
            f"{file_name_base}.mlir",
            import_path=operator_dir / "design.py",
            callback_fn="my_predictor_mlp",
            callback_args=[
                self.context.device_manager.device_type,
                self.input_size,
                self.hidden_size,
                self.output_size,
                self.num_aie_columns,
                fc1_weight_np,
                fc2_weight_np,
            ],
        )

        # Create Xclbin artifact with dependencies on MLIR and kernel objects
        xclbin_artifact = XclbinArtifact.new(
            f"{file_name_base}.xclbin",
            depends=[
                mlir_artifact,
                KernelArchiveArtifact.new(
                    f"predictor_mlp_kernels.a",
                    depends=[
                        KernelObjectArtifact.new(
                            f"mlp_predictor.o",
                            depends=[
                                SourceArtifact.new(
                                    self.context.base_dir / "aie_kernels" / "aie2" / "mlp_predictor.cc"
                                )
                            ],
                        ),
                    ],
                ),
            ],
        )

        insts_artifact = InstsBinArtifact.new(
            f"{file_name_base}.bin", depends=[mlir_artifact]
        )

        self.xclbin_artifact = xclbin_artifact
        self.insts_artifact = insts_artifact
        self.add_artifacts([xclbin_artifact, insts_artifact])

    def set_up_runtime(self):
        """Set up runtime buffers and kernel configuration."""
        self.add_buffer("input", self.input_size)
        self.add_buffer("output", self.output_size)
        self.add_kernel(
            "predictor_mlp",
            self.xclbin_artifact,
            self.xclbin_artifact.kernel_name,
            self.insts_artifact,
        )
        self.add_to_runlist("predictor_mlp", "input", "output")

    def forward(self, x):
        """
        Execute the predictor MLP on the AIE.

        Args:
            x: Input tensor of shape [input_size] with dtype bfloat16

        Returns:
            Output tensor of shape [output_size] with dtype bfloat16
        """
        if x.numel() != self.input_size:
            raise AIEOperatorConstraintError(
                f"AIEPredictorMLP: Input size mismatch. Expected {self.input_size}, "
                f"got {x.numel()}"
            )

        # Ensure input is bfloat16 and on CPU
        x_bf16 = x.cpu().to(dtype=torch.bfloat16).reshape(-1)

        # Execute kernel
        self.write_buffer("input", x_bf16)
        self.write_buffer("output", np.zeros(self.output_size, dtype=bfloat16))
        self.run_runlist()

        # Read result
        result = self.read_buffer_as_torch(
            "output", shape=(self.output_size,), dtype=bfloat16
        )

        return result
