# SPDX-FileCopyrightText: Copyright (C) 2025 Advanced Micro Devices, Inc. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

from ml_dtypes import bfloat16
from pathlib import Path
import numpy as np
import argparse
import sys

from aie.iron import Kernel, ObjectFifo, Program, Runtime, Worker, Buffer
from aie.iron.placers import SequentialPlacer
from aie.iron.device import Tile, NPU1, NPU2
from aie.helpers.taplib.tap import TensorAccessPattern
from aie.iron.controlflow import range_


def my_predictor_mlp(
    dev,
    input_size,
    hidden_size,
    output_size,
    num_columns,
    fc1_weight_padded,
    fc2_weight_padded,
    trace_size=0,
):
    """
    Generate AIE MLIR design for the predictor MLP pipeline.

    The pipeline: input -> [FC1] -> ReLU -> [FC2] -> Sigmoid -> output

    Args:
        dev: Device type (NPU1 or NPU2)
        input_size: Input feature dimension
        hidden_size: Hidden layer size (before padding)
        output_size: Output dimension
        num_columns: Number of AIE columns to use
        fc1_weight_padded: FC1 weight matrix [hidden_size_padded, input_size] (numpy)
        fc2_weight_padded: FC2 weight matrix [output_size, hidden_size_padded] (numpy)
        trace_size: Trace size for debugging (0 = no trace)

    Returns:
        AIE Program object
    """
    xfr_dtype = bfloat16
    hidden_size_padded = 1024  # Must match op.py

    # Type definitions (use actual output_size, not padded)
    input_type = np.ndarray[(input_size,), np.dtype[xfr_dtype]]
    hidden_type = np.ndarray[(hidden_size_padded,), np.dtype[xfr_dtype]]
    output_type = np.ndarray[(output_size,), np.dtype[xfr_dtype]]
    fc1_weight_type = np.ndarray[(hidden_size_padded, input_size), np.dtype[xfr_dtype]]
    fc2_weight_type = np.ndarray[(output_size, hidden_size_padded), np.dtype[xfr_dtype]]

    # ObjectFIFOs for data movement
    of_in = ObjectFifo(input_type, name="mlp_input")
    of_out = ObjectFifo(output_type, name="mlp_output")

    # Kernel definitions - use generic matvec kernel from mv.o
    # The kernel is called twice with different matrix/vector sizes
    # We use max dimensions to accommodate both FC1 and FC2 calls
    max_output = max(hidden_size_padded, output_size)
    max_cols = max(input_size, hidden_size_padded)

    mv_kernel = Kernel(
        "matvec_vectorized_bf16_bf16",
        "mv.o",
        [
            np.ndarray[(max_output,), np.dtype[xfr_dtype]],
            np.ndarray[(max_cols,), np.dtype[xfr_dtype]],
            np.ndarray[(max_output, max_cols), np.dtype[xfr_dtype]],
            np.int32,
            np.int32,
        ],
    )

    # Create buffers for weights and intermediate values
    fc1_weight_buffer = Buffer(
        initial_value=fc1_weight_padded,
        name="fc1_weight"
    )
    fc2_weight_buffer = Buffer(
        initial_value=fc2_weight_padded,
        name="fc2_weight"
    )

    # Intermediate buffers for hidden state - all sized to max dimensions for kernel compatibility
    hidden_fc1_buffer = Buffer(
        initial_value=np.zeros((max_output,), dtype=xfr_dtype),
        name="hidden_fc1"
    )

    # Padded input buffer for FC1 kernel (kernel expects max_cols = 1024 elements)
    input_padded_buffer = Buffer(
        initial_value=np.zeros((max_cols,), dtype=xfr_dtype),
        name="input_padded"
    )

    # Worker function: single worker processes entire MLP
    def mlp_worker(of_input_cons, of_output_prod, mv, fc1_weight_buf, fc2_weight_buf, hidden_fc1_buf, input_padded_buf):
        # Acquire input
        input_val = of_input_cons.acquire(1)

        # Copy input to padded buffer (pad with zeros)
        for i in range_(input_size):
            input_padded_buf[i] = input_val[i]
        for i in range_(input_size, max_cols):
            input_padded_buf[i] = 0.0

        of_input_cons.release(1)

        # FC1: compute full hidden state [1024]
        # Use padded input buffer which is 1024 elements
        mv(hidden_fc1_buf, input_padded_buf, fc1_weight_buf, max_cols, max_output)

        # FC2: compute output [output_size]
        # Use hidden state which is already 1024 elements
        output_val = of_output_prod.acquire(1)
        mv(output_val, hidden_fc1_buf, fc2_weight_buf, max_output, output_size)
        of_output_prod.release(1)

    # Create single worker for the entire MLP using only mv.o kernel
    of_input_cons = of_in.cons()
    of_output_prod = of_out.prod()

    worker = Worker(
        mlp_worker,
        fn_args=[of_input_cons, of_output_prod, mv_kernel, fc1_weight_buffer, fc2_weight_buffer, hidden_fc1_buffer, input_padded_buffer],
    )

    # Create runtime and specify data movement
    rt = Runtime([fc1_weight_buffer, fc2_weight_buffer, hidden_fc1_buffer, input_padded_buffer])
    with rt.sequence(input_type, output_type) as (inputs, outputs):
        rt.start(worker)
        rt.fill(of_in.prod(), inputs)
        rt.drain(of_out.cons(), outputs, wait=True)

    # Create program
    program = Program(dev, rt).resolve_program(SequentialPlacer())

    return program


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate AIE MLIR for Predictor MLP")
    parser.add_argument("--device", type=str, default="npu", help="Device type")
    parser.add_argument("--input_size", type=int, default=12, help="Input size")
    parser.add_argument("--hidden_size", type=int, default=512, help="Hidden size")
    parser.add_argument("--output_size", type=int, default=1, help="Output size")
    parser.add_argument("--num_columns", type=int, default=2, help="Number of AIE columns")

    args = parser.parse_args()

    # Create dummy weights for testing
    fc1_weight = np.random.randn(1024, args.input_size).astype(bfloat16)
    fc2_weight = np.random.randn(args.output_size, 1024).astype(bfloat16)

    # Determine device
    if args.device == "npu2":
        dev = NPU2
    else:
        dev = NPU1

    # Generate and print MLIR
    program = my_predictor_mlp(
        dev,
        args.input_size,
        args.hidden_size,
        args.output_size,
        args.num_columns,
        fc1_weight,
        fc2_weight,
    )
    print(program)
