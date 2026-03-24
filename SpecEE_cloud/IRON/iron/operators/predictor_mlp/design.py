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
    fc1_weight,
    fc2_weight,
    trace_size=0,
):


    xfr_dtype = bfloat16
    hidden_size = 512  # Must match op.py

    # Type definitions (use actual output_size, not padded)
    input_type = np.ndarray[(input_size,), np.dtype[xfr_dtype]]
    hidden_type = np.ndarray[(hidden_size,), np.dtype[xfr_dtype]]
    output_type = np.ndarray[(output_size,), np.dtype[xfr_dtype]]
    fc1_weight_type = np.ndarray[(hidden_size, input_size), np.dtype[xfr_dtype]]
    fc2_weight_type = np.ndarray[(output_size, hidden_size), np.dtype[xfr_dtype]]

    # ObjectFIFOs for data movement
    of_in = ObjectFifo(input_type, name="mlp_input")
    of_out = ObjectFifo(output_type, name="mlp_output")

    # Kernel definitions - use generic matvec kernel from mv.o
    # The kernel is called twice with different matrix/vector sizes
    # We use max dimensions to accommodate both FC1 and FC2 calls
    max_output = max(hidden_size, output_size)
    max_cols = max(input_size, hidden_size)

    # FC1 kernel: matrix-vector multiply [hidden_size, input_size] @ [input_size] -> [hidden_size]
    fc1_mv_kernel = Kernel(
        f"matvec_scalar",
        "mlp_predictor.o",
        [
            np.int32, #number of output rows (m)
            np.int32, #number of columns in the input matrix (k)
            np.ndarray[(hidden_size, input_size), np.dtype[xfr_dtype]], #pointer to input matrix in row-major order
            np.ndarray[(input_size,), np.dtype[xfr_dtype]], #pointer to input vector
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]], #pointer to the output vector
        ],
    )

    # FC2 kernel: matrix-vector multiply [output_size, hidden_size] @ [hidden_size] -> [output_size]
    fc2_mv_kernel = Kernel(
        f"matvec_scalar",
        "mlp_predictor.o",
        [
            np.int32, #number of output rows (m)
            np.int32, #number of columns in the input matrix (k)
            np.ndarray[(output_size, hidden_size), np.dtype[xfr_dtype]], #pointer to input matrix in row-major order
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]], #pointer to input vector
            np.ndarray[(output_size,), np.dtype[xfr_dtype]], #pointer to the output vector
        ],
    )

    relu_kernel = Kernel(
        f"relu_bf16",
        "mlp_predictor.o",
        [
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]], #pointer to input vector
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]], #pointer to output vector
            np.int32, #vector size
        ],
    )

    sigmoid_kernel = Kernel(
        f"sigmoid_bf16",
        "mlp_predictor.o",
        [
            np.ndarray[(output_size,), np.dtype[xfr_dtype]], #pointer to input vector
            np.ndarray[(output_size,), np.dtype[xfr_dtype]], #pointer to output vector
            np.int32, #vector size
        ],
    )

    # Create buffers for FC1 and FC2 weights stored in L1 memory
    fc1_weight_buffer = Buffer(
        fc1_weight_type,
        name="fc1_weight",
        initial_value=fc1_weight,
    )

    fc2_weight_buffer = Buffer(
        fc2_weight_type,
        name="fc2_weight",
        initial_value=fc2_weight,
    )

    # Create intermediate buffers for hidden layer activations
    hidden_buffer = Buffer(
        hidden_type,
        name="hidden_buffer",
    )

    # Task for the core to perform: FC1 -> ReLU -> FC2 -> Sigmoid
    def core_fn(of_in, of_out, fc1_kernel, relu_kernel, fc2_kernel, sigmoid_kernel,
                fc1_weights, fc2_weights, hidden_buf):
        # Acquire input and output buffers
        elem_in = of_in.acquire(1)
        elem_out = of_out.acquire(1)

        # FC1: input_size -> hidden_size (matrix-vector multiply)
        # FC1 weight is [hidden_size, input_size], input is [input_size]
        # matvec_scalar(m, k, a, b, c) where a is [m,k], b is [k], c is [m]
        fc1_kernel(hidden_size, input_size, fc1_weights, elem_in, hidden_buf)

        # ReLU: hidden_size -> hidden_size (in-place)
        relu_kernel(hidden_buf, hidden_buf, hidden_size)

        # FC2: hidden_size -> output_size (matrix-vector multiply)
        # FC2 weight is [output_size, hidden_size], hidden is [hidden_size]
        fc2_kernel(output_size, hidden_size, fc2_weights, hidden_buf, elem_out)

        # Sigmoid: output_size -> output_size (in-place)
        sigmoid_kernel(elem_out, elem_out, output_size)

        # Release buffers
        of_in.release(1)
        of_out.release(1)

    # Create worker to run on compute tile
    my_worker = Worker(
        core_fn,
        [
            of_in.cons(),
            of_out.prod(),
            fc1_mv_kernel,
            relu_kernel,
            fc2_mv_kernel,
            sigmoid_kernel,
            fc1_weight_buffer,
            fc2_weight_buffer,
            hidden_buffer,
        ],
    )

    # Runtime operations to move data to/from the AIE-array
    rt = Runtime()
    with rt.sequence(input_type, output_type) as (input_data, output_data):
        rt.start(my_worker)

        # Create a task group for synchronization
        tg = rt.task_group()

        # Fill input data
        rt.fill(of_in.prod(), input_data, task_group=tg)

        # Drain output data
        rt.drain(of_out.cons(), output_data, wait=True, task_group=tg)

        rt.finish_task_group(tg)

    # Create the program from the device type and runtime
    program = Program(dev, rt)

    # Place components and generate MLIR module
    module = program.resolve_program(SequentialPlacer())
    return module


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate AIE MLIR for Predictor MLP")
    parser.add_argument("--device", type=str, default="npu", help="Device type (npu or npu2)")
    parser.add_argument("--input_size", type=int, default=12, help="Input size")
    parser.add_argument("--hidden_size", type=int, default=512, help="Hidden size (will be used as padded size)")
    parser.add_argument("--output_size", type=int, default=2, help="Output size (must be even for 4-byte alignment)")
    parser.add_argument("--num_columns", type=int, default=1, help="Number of AIE columns")
    parser.add_argument("--trace_size", type=int, default=0, help="Trace size for debugging")

    args = parser.parse_args()

    # Create dummy weights for testing (use hidden_size which is padded size)
    fc1_weight = np.random.randn(args.hidden_size, args.input_size).astype(bfloat16)
    fc2_weight = np.random.randn(args.output_size, args.hidden_size).astype(bfloat16)

    # Determine device
    if args.device == "npu2":
        dev = NPU2()
    else:
        dev = NPU1()

    # Generate and print MLIR
    module = my_predictor_mlp(
        dev,
        args.input_size,
        args.hidden_size,
        args.output_size,
        args.num_columns,
        fc1_weight,
        fc2_weight,
        args.trace_size,
    )
    print(module)
