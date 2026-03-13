module {
  aie.device(npu2) {
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    aie.objectfifo @in1_0(%shim_noc_tile_0_0, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<2048xbf16>> 
    aie.objectfifo @in2_weights(%shim_noc_tile_0_0, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<2048xbf16>> 
    aie.objectfifo @out1_0(%tile_0_2, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<2048xbf16>> 
    aie.objectfifo @out2_0(%tile_0_3, {%shim_noc_tile_0_0}, 2 : i32) : !aie.objectfifo<memref<2048xbf16>> 
    func.func private @rms_norm_bf16_vector(memref<2048xbf16>, memref<2048xbf16>, i32)
    func.func private @eltwise_mul_bf16_vector(memref<2048xbf16>, memref<2048xbf16>, memref<2048xbf16>, i32)
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c2 step %c1_1 {
          %0 = aie.objectfifo.acquire @in1_0(Consume, 1) : !aie.objectfifosubview<memref<2048xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2048xbf16>> -> memref<2048xbf16>
          %2 = aie.objectfifo.acquire @out1_0(Produce, 1) : !aie.objectfifosubview<memref<2048xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<2048xbf16>> -> memref<2048xbf16>
          %c2048_i32 = arith.constant 2048 : i32
          func.call @rms_norm_bf16_vector(%1, %3, %c2048_i32) : (memref<2048xbf16>, memref<2048xbf16>, i32) -> ()
          aie.objectfifo.release @in1_0(Consume, 1)
          aie.objectfifo.release @out1_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "rms_norm_archive.a"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in2_weights(Consume, 1) : !aie.objectfifosubview<memref<2048xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2048xbf16>> -> memref<2048xbf16>
        %c0_0 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c2 step %c1_1 {
          %2 = aie.objectfifo.acquire @out1_0(Consume, 1) : !aie.objectfifosubview<memref<2048xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<2048xbf16>> -> memref<2048xbf16>
          %4 = aie.objectfifo.acquire @out2_0(Produce, 1) : !aie.objectfifosubview<memref<2048xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<2048xbf16>> -> memref<2048xbf16>
          %c2048_i32 = arith.constant 2048 : i32
          func.call @eltwise_mul_bf16_vector(%3, %1, %5, %c2048_i32) : (memref<2048xbf16>, memref<2048xbf16>, memref<2048xbf16>, i32) -> ()
          aie.objectfifo.release @out1_0(Consume, 1)
          aie.objectfifo.release @out2_0(Produce, 1)
        }
        aie.objectfifo.release @in2_weights(Consume, 1)
      }
      aie.end
    } {link_with = "rms_norm_archive.a"}
    aie.runtime_sequence(%arg0: memref<4096xbf16>, %arg1: memref<2048xbf16>, %arg2: memref<4096xbf16>) {
      %0 = aiex.dma_configure_task_for @in1_0 {
        aie.dma_bd(%arg0 : memref<4096xbf16>, 0, 4096, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 4096, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @in2_weights {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 0, 2048, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 2048, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%1)
      %2 = aiex.dma_configure_task_for @out2_0 {
        aie.dma_bd(%arg2 : memref<4096xbf16>, 0, 4096, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 4096, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%2)
      aiex.dma_await_task(%2)
      aiex.dma_free_task(%0)
      aiex.dma_free_task(%1)
    }
  }
}
