module {
  aie.device(npu2) {
    %tile_0_2 = aie.tile(0, 2)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    aie.objectfifo @in0_0(%shim_noc_tile_0_0, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<2048xbf16>> 
    aie.objectfifo @out0_0(%tile_0_2, {%shim_noc_tile_0_0}, 2 : i32) : !aie.objectfifo<memref<2048xbf16>> 
    func.func private @relu_bf16(memref<2048xbf16>, memref<2048xbf16>, i32)
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @out0_0(Produce, 1) : !aie.objectfifosubview<memref<2048xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2048xbf16>> -> memref<2048xbf16>
          %2 = aie.objectfifo.acquire @in0_0(Consume, 1) : !aie.objectfifosubview<memref<2048xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<2048xbf16>> -> memref<2048xbf16>
          %c2048_i32 = arith.constant 2048 : i32
          func.call @relu_bf16(%3, %1, %c2048_i32) : (memref<2048xbf16>, memref<2048xbf16>, i32) -> ()
          aie.objectfifo.release @in0_0(Consume, 1)
          aie.objectfifo.release @out0_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "relu.o"}
    aie.runtime_sequence(%arg0: memref<2048xbf16>, %arg1: memref<2048xbf16>) {
      %0 = aiex.dma_configure_task_for @in0_0 {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 0, 2048, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 2048, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @out0_0 {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 0, 2048, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 2048, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%1)
      aiex.dma_await_task(%1)
      aiex.dma_free_task(%0)
    }
  }
}
