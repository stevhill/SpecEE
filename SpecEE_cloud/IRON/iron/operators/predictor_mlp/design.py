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

    fc1_mv_kernel = Kernel(
        f"matvec_vectorized", #name of the function in the kernal file
        "mlp_predictor.o",
        [
            np.int32, #number of output rows
            np.int32, #number of columns in the input matrix
            np.ndarray[( hidden_size,), np.dtype[xfr_dtype]], #pointer to input matrix in row-major order
            np.ndarray[(1,), np.dtype[xfr_dtype]], #pointer to input vector
            np.ndarray[(hidden_size, max_cols), np.dtype[xfr_dtype]], #pointer to the output vector
        ],
    )
    #TODO: this is not a good function for this kernal, will need to write a different one
    fc2_mv_kernal = Kernel(
        f"matvec_scalar",
        "mlp_predictor.o",
        [
            np.int32, #number of output rows
            np.int32, #number of columns in the input matrix
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]], #pointer to input matrix (FC1 weight) in row-major order
            np.ndarray[(input_size,), np.dtype[xfr_dtype]], #pointer to input vector
            np.ndarray[(hidden_size, input_size), np.dtype[xfr_dtype]], #pointer to the output vector
        ],
    )

    fc1_relu_kernal = Kernel(
        f"predictor_mlp_relu",
        "sigmoid_bf16.o",
        [
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]], #pointer to input vector
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]], #pointer to output vector
            np.int32, #vector size
        ],
    )


    def fc1







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
