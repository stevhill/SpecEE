# Debug test for AIEPredictorMLP - runs without pytest fixtures or run_test helper
# Run directly: python debug_test.py

import sys
import numpy as np
import torch
import torch.nn.functional as F
from ml_dtypes import bfloat16
from pathlib import Path

# Add IRON to path if needed
sys.path.insert(0, str(Path(__file__).parents[3]))

from iron.common import AIEContext
from iron.operators.predictor_mlp.op import AIEPredictorMLP
from iron.operators.predictor_mlp.reference import generate_golden_reference
from iron.common.utils import torch_to_numpy

INPUT_SIZE  = 12
HIDDEN_SIZE = 512
OUTPUT_SIZE = 8
NUM_COLS    = 1
SEED        = 44


def run_debug():
    torch.manual_seed(SEED)

    # --- Golden reference ---
    golden = generate_golden_reference(
        input_size=INPUT_SIZE,
        hidden_size=HIDDEN_SIZE,
        output_size=OUTPUT_SIZE,
        seed=SEED,
    )
    input_tensor   = golden["input"]        # [INPUT_SIZE]  bfloat16
    fc1_weight     = golden["fc1_weight"]   # [HIDDEN_SIZE, INPUT_SIZE]
    fc2_weight     = golden["fc2_weight"]   # [OUTPUT_SIZE, HIDDEN_SIZE]
    expected_out   = golden["output"]       # [OUTPUT_SIZE] bfloat16

    print("=== INPUTS ===")
    print(f"input:      {input_tensor}")
    print(f"fc1_weight: shape={fc1_weight.shape}, dtype={fc1_weight.dtype}")
    print(f"fc2_weight: shape={fc2_weight.shape}, dtype={fc2_weight.dtype}")

    # --- Step-by-step reference (float32 for precision) ---
    inp_f32 = input_tensor.float()
    w1_f32  = fc1_weight.float()
    w2_f32  = fc2_weight.float()

    hidden_pre_relu = F.linear(inp_f32, w1_f32)
    hidden_post_relu = F.relu(hidden_pre_relu)
    fc2_out = F.linear(hidden_post_relu, w2_f32)
    ref_sigmoid = torch.sigmoid(fc2_out)

    print("\n=== REFERENCE (float32) ===")
    print(f"after FC1 (first 8):   {hidden_pre_relu[:8].tolist()}")
    print(f"after ReLU (first 8):  {hidden_post_relu[:8].tolist()}")
    print(f"after FC2:             {fc2_out.tolist()}")
    print(f"after sigmoid:         {ref_sigmoid.tolist()}")

    print("\n=== GOLDEN (bfloat16 reference) ===")
    print(f"expected output: {expected_out.tolist()}")

    # --- AIE execution ---
    print("\n=== AIE EXECUTION ===")
    ctx = AIEContext()
    op = AIEPredictorMLP(
        input_size=INPUT_SIZE,
        hidden_size=HIDDEN_SIZE,
        output_size=OUTPUT_SIZE,
        num_aie_columns=NUM_COLS,
        context=ctx,
    )
    op.set_weights(fc1_weight, fc2_weight)

    ctx.compile_all()
    ctx.prepare_runtime()

    # Warmup
    op.run_runlist()

    # Write inputs, zero output
    output_buf_bytes = op.buffers["output"]
    op.write_buffer("output", np.zeros(output_buf_bytes, dtype=np.uint8))
    op.write_buffer("input", torch_to_numpy(input_tensor))

    elapsed = op.run_runlist()

    # Read raw output buffer (full allocation)
    output_buf_size = op.buffers["output"] // 2   # bytes -> bf16 elements
    raw_output = op.read_buffer("output", (output_buf_size,))  # numpy bf16 array

    aie_output = raw_output[:OUTPUT_SIZE]

    print(f"raw output buffer ({output_buf_size} elements): {raw_output.tolist()}")
    print(f"AIE output (first {OUTPUT_SIZE}): {aie_output.tolist()}")
    print(f"Expected output:                  {torch_to_numpy(expected_out).tolist()}")

    # --- Per-element comparison ---
    print("\n=== COMPARISON ===")
    expected_np = torch_to_numpy(expected_out)
    all_ok = True
    for i in range(OUTPUT_SIZE):
        aie_val  = float(aie_output[i])
        ref_val  = float(expected_np[i])
        ok = (aie_val>0.5) == (ref_val>0.5)  # Check if both are on the same side of 0.5
        status = "OK" if ok else "FAIL"
        if not ok:
            all_ok = False
        print(f"  [{i}] AIE={aie_val:.6f}  ref={ref_val:.6f} {status}")

    print(f"\nLatency: {elapsed*1e6:.2f} us")
    print(f"\n{'PASS' if all_ok else 'FAIL'}")


if __name__ == "__main__":
    run_debug()
