#define NOCPP

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <type_traits>

#define REL_WRITE 0
#define REL_READ 1

#include "../aie_kernel_utils.h"

#include "lut_based_ops.h"
#include <aie_api/aie.hpp>

void matvec_scalar(uint32_t m,
                   uint32_t k,
                   const bfloat16 *__restrict a,
                   const bfloat16 *__restrict b,
                   bfloat16 *__restrict c)
{
    for (uint32_t row = 0; row < m; row++) {
        float acc = 0;
        for (uint32_t i = 0; i < k; i++) {
            acc += a[row * k + i] * b[i];
        }
        c[row] = static_cast<bfloat16>(acc);
    }
}


//todo: need to make my own matvec for dot product

/*
Matrix-vector multiplication kernel

 - m: Number of output rows == number of rows in the input matrix
 - k: Number of columns in the input matrix == length of the input vector
 - a: Pointer to the input matrix, stored in row-major order
 - b: Pointer to the input vector
 - c: Pointer to the output vector
 - r: Vector size; data from the matrix and vector will be loaded in and processed in chunks of this size
*/
template <uint32_t r>
void matvec_vectorized(uint32_t m,
                       uint32_t k,
                       const bfloat16 *__restrict a,
                       const bfloat16 *__restrict b,
                       bfloat16 *__restrict c)
{
    ::aie::set_rounding(aie::rounding_mode::conv_even);
    bfloat16 *c_end = c + m;
    const bfloat16 *b_end = b + k;
    for (; c < c_end; c++) {
        aie::accum acc = aie::zeros<accfloat, r>();
        // The following two pragmas enable pipelining the zero-overhead loop, but they do assume that k is at least
        // two. This assumption should hold for any useful use of this function; if k were one, this would be a simple
        // scalar multiplication of a vector.
        AIE_LOOP_MIN_ITERATION_COUNT(2)
        for (const bfloat16 *__restrict b_cur = b; b_cur < b_end; b_cur += r, a += r) {
            aie::vector<bfloat16, r> a_vec = aie::load_v<r>(a);
            aie::vector<bfloat16, r> b_vec = aie::load_v<r>(b_cur);
            acc = aie::mac(acc, a_vec, b_vec);
        }
        *c = static_cast<bfloat16>(aie::reduce_add(acc.template to_vector<float>()));
    }
}

extern "C" {

/* The row offset parameter in the functions below is a workaround. The output will be written to c + row_offset * m.
 * This is simpler than to do pointer arithmetic in the calling MLIR code, but that's all this is for -- an offset into
 * `c`.  */

void matvec_scalar_bf16_bf16(uint32_t m,
                             uint32_t k,
                             uint32_t row_offset,
                             const bfloat16 *__restrict a_in,
                             const bfloat16 *__restrict b_in,
                             bfloat16 *__restrict c_out)
{
    c_out += row_offset;
    matvec_scalar(m, k, a_in, b_in, c_out);
}

void matvec_vectorized_bf16_bf16(uint32_t m,
                                 uint32_t k,
                                 uint32_t row_offset,
                                 const bfloat16 *__restrict a_in,
                                 const bfloat16 *__restrict b_in,
                                 bfloat16 *__restrict c_out)
{
    c_out += row_offset;
    matvec_vectorized<64>(m, k, a_in, b_in, c_out);
}

} // extern "C"

// ReLU kernels


void relu_vectorized_bf16(bfloat16 *restrict a, bfloat16 *restrict c, const int32_t vector_size)
{
    event0();

    const int v_factor = 16;
    v32bfloat16 zeroes = broadcast_zero_to_v32bfloat16();
    AIE_PREPARE_FOR_PIPELINING
    AIE_LOOP_RANGE(16, 16)
    for (size_t i = 0; i < vector_size; i += v_factor) {
        v32bfloat16 input = *(v32bfloat16 *)(a + i);
        v32bfloat16 output = max(input, zeroes);
        *(v32bfloat16 *)(c + i) = output;
    }

    event1();

    return;
}

extern "C" {

void relu_bf16(bfloat16 *restrict input, bfloat16 *restrict output, int input_size)
{
    relu_vectorized_bf16(input, output, input_size);
}

} // extern "C"


// sigmoid kernels

void sigmoid_tanh_approx_bf16(bfloat16 *restrict input_vector,
                              bfloat16 *restrict output_vector,
                              const int32_t vector_size)
{
    event0();

    auto it_in = aie::begin_restrict_vector<16>((bfloat16 *)input_vector);
    auto it_out = aie::begin_restrict_vector<16>((bfloat16 *)output_vector);

    aie::vector<bfloat16, 16> register_0_5 = aie::broadcast<bfloat16, 16>(0.5f);
    aie::vector<bfloat16, 16> register_1 = aie::broadcast<bfloat16, 16>(1.0f);
    AIE_PREPARE_FOR_PIPELINING
    AIE_LOOP_MIN_ITERATION_COUNT(64)
    for (int i = 0; i < vector_size; i += 16) {
        // Load input vector
        aie::vector<bfloat16, 16> input = *it_in++;

        // Compute tanh approximation
        aie::vector<bfloat16, 16> half_x = aie::mul(input, register_0_5);
        aie::vector<bfloat16, 16> tanh_half_x = getTanhBf16(half_x);
        auto tanh_half_x_approx = aie::add(tanh_half_x, register_1);
        aie::vector<bfloat16, 16> sigmoid_approx = aie::mul(tanh_half_x_approx, register_0_5);

        // Store output vector
        *it_out++ = sigmoid_approx;
    }

    event1();

    return;
}

extern "C" {

void sigmoid_bf16(bfloat16 *restrict input, bfloat16 *restrict output, int input_size)
{
    sigmoid_tanh_approx_bf16(input, output, input_size);
}

} // extern "C"
