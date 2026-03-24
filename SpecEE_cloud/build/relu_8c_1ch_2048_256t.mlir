module {
  aie.device(npu2) {
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_0_5 = aie.tile(0, 5)
    %tile_1_2 = aie.tile(1, 2)
    %tile_1_3 = aie.tile(1, 3)
    %tile_1_4 = aie.tile(1, 4)
    %tile_1_5 = aie.tile(1, 5)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %shim_noc_tile_1_0 = aie.tile(1, 0)
    %shim_noc_tile_2_0 = aie.tile(2, 0)
    %shim_noc_tile_3_0 = aie.tile(3, 0)
    aie.objectfifo @in0_0(%shim_noc_tile_0_0, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @in1_0(%shim_noc_tile_0_0, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @in2_0(%shim_noc_tile_1_0, {%tile_0_4}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @in3_0(%shim_noc_tile_1_0, {%tile_0_5}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @in4_0(%shim_noc_tile_2_0, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @in5_0(%shim_noc_tile_2_0, {%tile_1_3}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @in6_0(%shim_noc_tile_3_0, {%tile_1_4}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @in7_0(%shim_noc_tile_3_0, {%tile_1_5}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @out0_0(%tile_0_2, {%shim_noc_tile_0_0}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @out1_0(%tile_0_3, {%shim_noc_tile_0_0}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @out2_0(%tile_0_4, {%shim_noc_tile_1_0}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @out3_0(%tile_0_5, {%shim_noc_tile_1_0}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @out4_0(%tile_1_2, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @out5_0(%tile_1_3, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @out6_0(%tile_1_4, {%shim_noc_tile_3_0}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @out7_0(%tile_1_5, {%shim_noc_tile_3_0}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    func.func private @relu_bf16(memref<256xbf16>, memref<256xbf16>, i32)
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @out0_0(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %2 = aie.objectfifo.acquire @in0_0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c256_i32 = arith.constant 256 : i32
          func.call @relu_bf16(%3, %1, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
          aie.objectfifo.release @in0_0(Consume, 1)
          aie.objectfifo.release @out0_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "relu.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @out1_0(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %2 = aie.objectfifo.acquire @in1_0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c256_i32 = arith.constant 256 : i32
          func.call @relu_bf16(%3, %1, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
          aie.objectfifo.release @in1_0(Consume, 1)
          aie.objectfifo.release @out1_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "relu.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @out2_0(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %2 = aie.objectfifo.acquire @in2_0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c256_i32 = arith.constant 256 : i32
          func.call @relu_bf16(%3, %1, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
          aie.objectfifo.release @in2_0(Consume, 1)
          aie.objectfifo.release @out2_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "relu.o"}
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @out3_0(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %2 = aie.objectfifo.acquire @in3_0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c256_i32 = arith.constant 256 : i32
          func.call @relu_bf16(%3, %1, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
          aie.objectfifo.release @in3_0(Consume, 1)
          aie.objectfifo.release @out3_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "relu.o"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @out4_0(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %2 = aie.objectfifo.acquire @in4_0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c256_i32 = arith.constant 256 : i32
          func.call @relu_bf16(%3, %1, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
          aie.objectfifo.release @in4_0(Consume, 1)
          aie.objectfifo.release @out4_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "relu.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @out5_0(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %2 = aie.objectfifo.acquire @in5_0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c256_i32 = arith.constant 256 : i32
          func.call @relu_bf16(%3, %1, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
          aie.objectfifo.release @in5_0(Consume, 1)
          aie.objectfifo.release @out5_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "relu.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @out6_0(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %2 = aie.objectfifo.acquire @in6_0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c256_i32 = arith.constant 256 : i32
          func.call @relu_bf16(%3, %1, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
          aie.objectfifo.release @in6_0(Consume, 1)
          aie.objectfifo.release @out6_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "relu.o"}
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @out7_0(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %2 = aie.objectfifo.acquire @in7_0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c256_i32 = arith.constant 256 : i32
          func.call @relu_bf16(%3, %1, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
          aie.objectfifo.release @in7_0(Consume, 1)
          aie.objectfifo.release @out7_0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "relu.o"}
    aie.runtime_sequence(%arg0: memref<2048xbf16>, %arg1: memref<2048xbf16>) {
      %0 = aiex.dma_configure_task_for @in0_0 {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 0, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @in1_0 {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 256, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%1)
      %2 = aiex.dma_configure_task_for @in2_0 {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 512, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%2)
      %3 = aiex.dma_configure_task_for @in3_0 {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 768, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%3)
      %4 = aiex.dma_configure_task_for @in4_0 {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 1024, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%4)
      %5 = aiex.dma_configure_task_for @in5_0 {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 1280, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%5)
      %6 = aiex.dma_configure_task_for @in6_0 {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 1536, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%6)
      %7 = aiex.dma_configure_task_for @in7_0 {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 1792, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%7)
      %8 = aiex.dma_configure_task_for @out0_0 {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 0, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%8)
      %9 = aiex.dma_configure_task_for @out1_0 {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 256, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%9)
      %10 = aiex.dma_configure_task_for @out2_0 {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 512, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%10)
      %11 = aiex.dma_configure_task_for @out3_0 {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 768, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%11)
      %12 = aiex.dma_configure_task_for @out4_0 {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 1024, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%12)
      %13 = aiex.dma_configure_task_for @out5_0 {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 1280, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%13)
      %14 = aiex.dma_configure_task_for @out6_0 {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 1536, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%14)
      %15 = aiex.dma_configure_task_for @out7_0 {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 1792, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%15)
      aiex.dma_await_task(%8)
      aiex.dma_await_task(%9)
      aiex.dma_await_task(%10)
      aiex.dma_await_task(%11)
      aiex.dma_await_task(%12)
      aiex.dma_await_task(%13)
      aiex.dma_await_task(%14)
      aiex.dma_await_task(%15)
      aiex.dma_free_task(%0)
      aiex.dma_free_task(%1)
      aiex.dma_free_task(%2)
      aiex.dma_free_task(%3)
      aiex.dma_free_task(%4)
      aiex.dma_free_task(%5)
      aiex.dma_free_task(%6)
      aiex.dma_free_task(%7)
    }
  }
}
