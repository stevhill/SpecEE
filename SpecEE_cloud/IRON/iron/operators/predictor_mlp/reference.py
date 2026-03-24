# SPDX-FileCopyrightText: Copyright (C) 2025 Advanced Micro Devices, Inc. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

import torch
import torch.nn.functional as F
from ml_dtypes import bfloat16


def generate_golden_reference(
    input_size=12,
    hidden_size=512,
    output_size=1,
    fc1_weight=None,
    fc2_weight=None,
    dtype="bf16",
    seed=42,
):
    """
    Generate golden reference for predictor MLP.

    Computes: input -> FC1 -> ReLU -> FC2 -> Sigmoid -> output

    Args:
        input_size: Input feature dimension
        hidden_size: Hidden layer size
        output_size: Output dimension
        fc1_weight: Optional pre-generated FC1 weight [hidden_size, input_size]
        fc2_weight: Optional pre-generated FC2 weight [output_size, hidden_size]
        dtype: Data type "bf16" for bfloat16 or "f32" for float32
        seed: Random seed for reproducibility

    Returns:
        Dictionary with keys:
            - "input": input tensor [input_size]
            - "fc1_weight": FC1 weight tensor [hidden_size, input_size]
            - "fc2_weight": FC2 weight tensor [output_size, hidden_size]
            - "output": expected output tensor [output_size]
    """
    torch.manual_seed(seed)

    # Map dtype string to torch dtype
    if dtype == "bf16":
        torch_dtype = torch.bfloat16
    elif dtype == "f32":
        torch_dtype = torch.float32
    else:
        torch_dtype = torch.bfloat16

    # Generate or use provided input
    input_tensor = torch.randn(input_size, dtype=torch_dtype)

    # Generate or use provided weights
    if fc1_weight is None:
        fc1_weight_tensor = torch.randn(hidden_size, input_size, dtype=torch_dtype)
    else:
        # If provided as numpy, convert to torch
        if hasattr(fc1_weight, "shape"):
            fc1_weight_tensor = torch.from_numpy(fc1_weight).to(dtype=torch_dtype)
            # Truncate to unpadded size for reference computation
            fc1_weight_tensor = fc1_weight_tensor[:hidden_size, :input_size]
        else:
            fc1_weight_tensor = fc1_weight.to(dtype=torch_dtype)

    if fc2_weight is None:
        fc2_weight_tensor = torch.randn(output_size, hidden_size, dtype=torch_dtype)
    else:
        # If provided as numpy, convert to torch
        if hasattr(fc2_weight, "shape"):
            fc2_weight_tensor = torch.from_numpy(fc2_weight).to(dtype=torch_dtype)
            # Truncate to unpadded size for reference computation
            fc2_weight_tensor = fc2_weight_tensor[:output_size, :hidden_size]
        else:
            fc2_weight_tensor = fc2_weight.to(dtype=torch_dtype)

    # FC1: [hidden_size, input_size] @ [input_size] -> [hidden_size]
    hidden_1 = F.linear(input_tensor, fc1_weight_tensor)

    # ReLU: [hidden_size] -> [hidden_size]
    hidden_1 = F.relu(hidden_1)

    # FC2: [output_size, hidden_size] @ [hidden_size] -> [output_size]
    output_tensor = F.linear(hidden_1, fc2_weight_tensor)

    # Sigmoid: [output_size] -> [output_size]
    output_tensor = torch.sigmoid(output_tensor)

    return {
        "input": input_tensor,
        "fc1_weight": fc1_weight_tensor,
        "fc2_weight": fc2_weight_tensor,
        "output": output_tensor,
    }
