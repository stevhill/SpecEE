# SPDX-FileCopyrightText: Copyright (C) 2025 Advanced Micro Devices, Inc. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

import torch
import numpy as np
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
        AIEOperatorBase.__init__(self, context=context)

    def _pad_weights(self, fc1_weight, fc2_weight):
        """Pad/crop FC1 and FC2 weights to runtime kernel shapes."""
        fc1 = fc1_weight.cpu().to(dtype=torch.bfloat16)
        fc2 = fc2_weight.cpu().to(dtype=torch.bfloat16)

        # FC1: [hidden_size, input_size] -> [hidden_size_padded, input_size]
        if fc1.shape[0] < self.hidden_size_padded:
            fc1_pad = torch.zeros(
                (self.hidden_size_padded - fc1.shape[0], self.input_size),
                dtype=torch.bfloat16,
                device="cpu",
            )
            fc1 = torch.cat([fc1, fc1_pad], dim=0)
        elif fc1.shape[0] > self.hidden_size_padded:
            fc1 = fc1[: self.hidden_size_padded, :]

        if fc1.shape[1] != self.input_size:
            raise AIEOperatorConstraintError(
                f"AIEPredictorMLP: FC1 input dimension mismatch. Expected {self.input_size}, got {fc1.shape[1]}"
            )

        # FC2: [actual_output_size, actual_hidden_size] -> [output_size, hidden_size_padded]
        if fc2.shape[0] < self.output_size:
            row_pad = torch.zeros(
                (self.output_size - fc2.shape[0], fc2.shape[1]),
                dtype=torch.bfloat16,
                device="cpu",
            )
            fc2 = torch.cat([fc2, row_pad], dim=0)
        elif fc2.shape[0] > self.output_size:
            fc2 = fc2[: self.output_size, :]

        if fc2.shape[1] < self.hidden_size_padded:
            col_pad = torch.zeros(
                (self.output_size, self.hidden_size_padded - fc2.shape[1]),
                dtype=torch.bfloat16,
                device="cpu",
            )
            fc2 = torch.cat([fc2, col_pad], dim=1)
        elif fc2.shape[1] > self.hidden_size_padded:
            fc2 = fc2[:, : self.hidden_size_padded]

        return fc1, fc2

    def set_weights(self, fc1_weight, fc2_weight):
        """
        Set and pad the weight matrices.

        Args:
            fc1_weight: [hidden_size, input_size] bfloat16 tensor
            fc2_weight: [output_size, hidden_size] bfloat16 tensor
        """
        self.fc1_weight = fc1_weight.cpu().to(dtype=torch.bfloat16)
        self.fc2_weight = fc2_weight.cpu().to(dtype=torch.bfloat16)
        self.fc1_weight_padded, self.fc2_weight_padded = self._pad_weights(
            self.fc1_weight,
            self.fc2_weight,
        )

    def set_up_artifacts(self):
        """Create MLIR, Xclbin, and instruction artifacts."""
        operator_dir = Path(__file__).parent
        layer_suffix = ""

        file_name_base = (
            f"predictor_mlp_{self.input_size}in_{self.hidden_size}h_{self.output_size}out_"
            f"{self.num_aie_columns}col{layer_suffix}"
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
        self.add_buffer("fc1_weight", self.hidden_size_padded * self.input_size)
        self.add_buffer("fc2_weight", self.output_size * self.hidden_size_padded)
        self.add_buffer("output", self.output_size)
        self.add_kernel(
            "predictor_mlp",
            self.xclbin_artifact,
            self.xclbin_artifact.kernel_name,
            self.insts_artifact,
        )
        self.add_to_runlist(
            "predictor_mlp", "input", "fc1_weight", "fc2_weight", "output"
        )

    def forward(self, x, fc1_weight_padded=None, fc2_weight_padded=None):
        """
        Execute the predictor MLP on the AIE.

        Args:
            x: Input tensor of shape [input_size] with dtype bfloat16
            fc1_weight_padded: FC1 weight tensor (already padded or pad-able)
            fc2_weight_padded: FC2 weight tensor (already padded or pad-able)

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
        if fc1_weight_padded is None or fc2_weight_padded is None:
            if self.fc1_weight_padded is None or self.fc2_weight_padded is None:
                raise AIEOperatorConstraintError(
                    "AIEPredictorMLP: Either pass padded weights to forward() or call set_weights() first."
                )
            fc1_bf16, fc2_bf16 = self.fc1_weight_padded, self.fc2_weight_padded
        else:
            fc1_bf16, fc2_bf16 = self._pad_weights(fc1_weight_padded, fc2_weight_padded)

        # Execute kernel
        self.write_buffer("input", x_bf16)
        self.write_buffer("fc1_weight", fc1_bf16)
        self.write_buffer("fc2_weight", fc2_bf16)
        self.write_buffer("output", np.zeros(self.output_size, dtype=bfloat16))
        self.run_runlist()

        # Read result
        result = self.read_buffer_as_torch(
            "output", shape=(self.output_size,), dtype=bfloat16
        )

        return result
