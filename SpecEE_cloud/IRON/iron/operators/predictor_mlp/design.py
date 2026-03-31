# SPDX-FileCopyrightText: Copyright (C) 2025 Advanced Micro Devices, Inc. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

from ml_dtypes import bfloat16
import numpy as np
import argparse
import sys

from aie.iron import Kernel, ObjectFifo, Program, Runtime, Worker
from aie.iron.placers import SequentialPlacer
from aie.iron.device import NPU1, NPU2


def my_predictor_mlp(
    dev,
    input_size,
    hidden_size,
    output_size,
    num_columns,
    trace_size=0,
):
    xfr_dtype = bfloat16
    hidden_size = 512  # Must match op.py padded hidden size

    input_type = np.ndarray[(input_size,), np.dtype[xfr_dtype]]
    fc1_weight_type = np.ndarray[(hidden_size, input_size), np.dtype[xfr_dtype]]
    fc2_weight_type = np.ndarray[(output_size, hidden_size), np.dtype[xfr_dtype]]
    hidden_type = np.ndarray[(hidden_size,), np.dtype[xfr_dtype]]
    output_type = np.ndarray[(output_size,), np.dtype[xfr_dtype]]

    # External streams (shim DMAs)
    of_in = ObjectFifo(input_type, name="mlp_input")
    of_fc1_weight = ObjectFifo(fc1_weight_type, name="mlp_fc1_weight")
    of_fc2_weight = ObjectFifo(fc2_weight_type, name="mlp_fc2_weight")
    of_out = ObjectFifo(output_type, name="mlp_output")

    # Internal stream between workers (no extra shim DMA channel)
    of_hidden = ObjectFifo(hidden_type, name="mlp_hidden")

    fc1_mv_kernel = Kernel(
        "matvec_scalar_bf16_bf16_fc1",
        "mlp_predictor.o",
        [
            np.int32,
            np.int32,
            np.int32,
            np.ndarray[(hidden_size, input_size), np.dtype[xfr_dtype]],
            np.ndarray[(input_size,), np.dtype[xfr_dtype]],
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]],
        ],
    )

    fc2_mv_kernel = Kernel(
        "matvec_scalar_bf16_bf16",
        "mlp_predictor.o",
        [
            np.int32,
            np.int32,
            np.int32,
            np.ndarray[(output_size, hidden_size), np.dtype[xfr_dtype]],
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]],
            np.ndarray[(output_size,), np.dtype[xfr_dtype]],
        ],
    )

    relu_kernel = Kernel(
        "relu_bf16",
        "mlp_predictor.o",
        [
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]],
            np.ndarray[(hidden_size,), np.dtype[xfr_dtype]],
            np.int32,
        ],
    )

    sigmoid_kernel = Kernel(
        "sigmoid_bf16",
        "mlp_predictor.o",
        [
            np.ndarray[(output_size,), np.dtype[xfr_dtype]],
            np.ndarray[(output_size,), np.dtype[xfr_dtype]],
            np.int32,
        ],
    )

    # Worker 0: FC1 + ReLU
    # Inputs: (input, fc1_weight) => 2 input streams
    def fc1_relu_worker(of_in_cons, of_fc1_cons, of_hidden_prod, fc1_kernel, relu):
        elem_in = of_in_cons.acquire(1)
        elem_fc1_weight = of_fc1_cons.acquire(1)
        elem_hidden = of_hidden_prod.acquire(1)

        fc1_kernel(hidden_size, input_size, 0, elem_fc1_weight, elem_in, elem_hidden)
        relu(elem_hidden, elem_hidden, hidden_size)

        of_in_cons.release(1)
        of_fc1_cons.release(1)
        of_hidden_prod.release(1)

    # Worker 1: FC2 + Sigmoid
    # Inputs: (hidden, fc2_weight) => 2 input streams
    def fc2_sigmoid_worker(
        of_hidden_cons,
        of_fc2_cons,
        of_out_prod,
        fc2_kernel,
        sigmoid,
    ):
        elem_hidden = of_hidden_cons.acquire(1)
        elem_fc2_weight = of_fc2_cons.acquire(1)
        elem_out = of_out_prod.acquire(1)

        fc2_kernel(output_size, hidden_size, 0, elem_fc2_weight, elem_hidden, elem_out)
        sigmoid(elem_out, elem_out, output_size)

        of_hidden_cons.release(1)
        of_fc2_cons.release(1)
        of_out_prod.release(1)

    worker_fc1_relu = Worker(
        fc1_relu_worker,
        [
            of_in.cons(),
            of_fc1_weight.cons(),
            of_hidden.prod(),
            fc1_mv_kernel,
            relu_kernel,
        ],
    )

    worker_fc2_sigmoid = Worker(
        fc2_sigmoid_worker,
        [
            of_hidden.cons(),
            of_fc2_weight.cons(),
            of_out.prod(),
            fc2_mv_kernel,
            sigmoid_kernel,
        ],
    )

    rt = Runtime()
    with rt.sequence(input_type, fc1_weight_type, fc2_weight_type, output_type) as (
        input_data,
        fc1_weight_data,
        fc2_weight_data,
        output_data,
    ):
        rt.start(worker_fc1_relu, worker_fc2_sigmoid)

        tg = rt.task_group()
        rt.fill(of_in.prod(), input_data, task_group=tg)
        rt.fill(of_fc1_weight.prod(), fc1_weight_data, task_group=tg)
        rt.fill(of_fc2_weight.prod(), fc2_weight_data, task_group=tg)
        rt.drain(of_out.cons(), output_data, wait=True, task_group=tg)
        rt.finish_task_group(tg)

    return Program(dev, rt).resolve_program(SequentialPlacer())


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate AIE MLIR for Predictor MLP")
    parser.add_argument("--device", type=str, default="npu", help="Device type (npu or npu2)")
    parser.add_argument("--input_size", type=int, default=12, help="Input size")
    parser.add_argument("--hidden_size", type=int, default=512, help="Hidden size")
    parser.add_argument("--output_size", type=int, default=2, help="Output size")
    parser.add_argument("--num_columns", type=int, default=1, help="Number of AIE columns")
    parser.add_argument("--trace_size", type=int, default=0, help="Trace size for debugging")

    args = parser.parse_args()

    if args.device == "npu2":
        dev = NPU2()
    else:
        dev = NPU1()

    module = my_predictor_mlp(
        dev,
        args.input_size,
        args.hidden_size,
        args.output_size,
        args.num_columns,
        args.trace_size,
    )
    print(module)
