# SPDX-FileCopyrightText: Copyright (C) 2025 Advanced Micro Devices, Inc. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

import sys
import pytest
from pathlib import Path
import torch
import numpy as np
from ml_dtypes import bfloat16

from iron.operators.predictor_mlp.op import AIEPredictorMLP
from iron.operators.predictor_mlp.reference import generate_golden_reference
from iron.common.test_utils import run_test


def generate_test_params():
    """Generate test parameter combinations."""
    # Test configurations: (input_size, hidden_size, output_size, num_cols)
    # Note: output_size must be 4-byte aligned. For bfloat16 (2 bytes), use multiples of 2.
    params = [
        (12, 512, 2, 1),   # 4-byte aligned output
        (8, 256, 2, 1),    # Smaller network
        (16, 1024, 2, 1),  # Larger network
    ]

    names = [
        f"predictor_mlp_{in_sz}in_{hid_sz}h_{out_sz}out_{n_col}col"
        for in_sz, hid_sz, out_sz, n_col in params
    ]

    return params, names


test_params, test_names = generate_test_params()
all_params = [pytest.param(*params, id=name) for params, name in zip(test_params, test_names)]


@pytest.mark.metrics(
    Latency=r"Latency \(us\): (?P<value>[\d\.]+)",
    BW=r"Throughput \(GB/s\): (?P<value>[\d\.]+)",
)
@pytest.mark.parametrize(
    "input_size,hidden_size,output_size,num_cols", all_params
)
def test_predictor_mlp(
    input_size, hidden_size, output_size, num_cols, aie_context
):
    """Test predictor MLP operator with various configurations."""
    # Generate golden reference
    golden_ref = generate_golden_reference(
        input_size=input_size,
        hidden_size=hidden_size,
        output_size=output_size,
    )

    # Create operator instance
    operator = AIEPredictorMLP(
        input_size=input_size,
        hidden_size=hidden_size,
        output_size=output_size,
        num_aie_columns=num_cols,
        context=aie_context,
    )

    # Set weights from golden reference
    operator.set_weights(
        golden_ref["fc1_weight"],
        golden_ref["fc2_weight"],
    )

    # Run the test
    errors, latency, bandwidth = run_test(
        operator,
        input_buffers={"input": golden_ref["input"]},
        output_buffers={"output": golden_ref["output"]},
        rel_tol=0.04,  # 4% relative tolerance for bfloat16
    )

    # Assert no errors
    assert not errors, f"Test failed with errors: {errors}"

    # Print metrics
    print(f"Latency (us): {latency}")
    print(f"Throughput (GB/s): {bandwidth}")


def test_predictor_mlp_dimensions(aie_context):
    """Test that operator correctly handles different input dimensions."""
    # Test with default dimensions
    operator = AIEPredictorMLP(
        input_size=12,
        hidden_size=512,
        output_size=1,
        context=aie_context,
    )

    golden_ref = generate_golden_reference(
        input_size=12,
        hidden_size=512,
        output_size=1,
    )

    operator.set_weights(
        golden_ref["fc1_weight"],
        golden_ref["fc2_weight"],
    )

    # Verify weights are padded correctly
    assert operator.fc1_weight_padded.shape == (512, 12), \
        f"FC1 weight shape mismatch: {operator.fc1_weight_padded.shape}"
    assert operator.fc2_weight_padded.shape == (1, 512), \
        f"FC2 weight shape mismatch: {operator.fc2_weight_padded.shape}"


def test_predictor_mlp_forward_shape(aie_context):
    """Test that operator is properly initialized with weights."""
    operator = AIEPredictorMLP(
        input_size=12,
        hidden_size=512,
        output_size=1,
        context=aie_context,
    )

    golden_ref = generate_golden_reference(
        input_size=12,
        hidden_size=512,
        output_size=1,
    )

    operator.set_weights(
        golden_ref["fc1_weight"],
        golden_ref["fc2_weight"],
    )

    # Verify operator is properly initialized after set_weights
    assert operator._setup_done, "Operator should be setup after set_weights()"
    assert operator.context is not None, "Context should be set"
    assert operator.fc1_weight_padded.shape == (512, 12), "FC1 padded weights should have correct shape"
    assert operator.fc2_weight_padded.shape == (1, 512), "FC2 padded weights should have correct shape"


def test_predictor_mlp_no_weights_error(aie_context):
    """Test that operator raises error if weights not set."""
    operator = AIEPredictorMLP(
        input_size=12,
        hidden_size=512,
        output_size=1,
        context=aie_context,
    )

    # Try to set up artifacts without setting weights
    with pytest.raises(Exception):  # Should raise AIEOperatorConstraintError
        operator.set_up_artifacts()


if __name__ == "__main__":
    pytest.main([__file__, "-v"])
