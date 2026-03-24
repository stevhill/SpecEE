module {
  aie.device(npu2) {
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %out0_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 2) {init = 0 : i32, sym_name = "out0_0_cons_prod_lock_0"}
    %out0_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 3) {init = 0 : i32, sym_name = "out0_0_cons_cons_lock_0"}
    %out0_0_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out0_0_buff_0"} : memref<1024xbf16> 
    %out0_0_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out0_0_buff_1"} : memref<1024xbf16> 
    %out0_0_prod_lock_0 = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "out0_0_prod_lock_0"}
    %out0_0_cons_lock_0 = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "out0_0_cons_lock_0"}
    %in0_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_0_cons_buff_0"} : memref<1024xbf16> 
    %in0_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_0_cons_buff_1"} : memref<1024xbf16> 
    %in0_0_cons_prod_lock_0 = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "in0_0_cons_prod_lock_0"}
    %in0_0_cons_cons_lock_0 = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "in0_0_cons_cons_lock_0"}
    %in0_0_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 0) {init = 0 : i32, sym_name = "in0_0_prod_lock_0"}
    %in0_0_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "in0_0_cons_lock_0"}
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %shim_noc_tile_0_0, DMA : 0)
    func.func private @relu_bf16(memref<1024xbf16>, memref<1024xbf16>, i32)
    %_anonymous0 = aie.buffer(%tile_0_2) {address = 3072 : i32, mem_bank = 0 : i32, sym_name = "_anonymous0"} : memref<2xi32> 
    %core_0_2 = aie.core(%tile_0_2) {
      %c1_i32 = arith.constant 1 : i32
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1024_i32 = arith.constant 1024 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous0[%c0] : memref<2xi32>
      memref.store %c0_i32, %_anonymous0[%c1] : memref<2xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb10
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb11
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out0_0_prod_lock_0, AcquireGreaterEqual, 1)
      %2 = memref.load %_anonymous0[%c0] : memref<2xi32>
      %3 = arith.index_cast %2 : i32 to index
      %4 = arith.index_cast %3 : index to i32
      cf.switch %4 : i32, [
        default: ^bb5,
        0: ^bb3,
        1: ^bb4
      ]
    ^bb3:  // pred: ^bb2
      cf.br ^bb6(%out0_0_buff_0 : memref<1024xbf16>)
    ^bb4:  // pred: ^bb2
      cf.br ^bb6(%out0_0_buff_1 : memref<1024xbf16>)
    ^bb5:  // pred: ^bb2
      cf.br ^bb6(%out0_0_buff_0 : memref<1024xbf16>)
    ^bb6(%5: memref<1024xbf16>):  // 3 preds: ^bb3, ^bb4, ^bb5
      aie.use_lock(%in0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %6 = memref.load %_anonymous0[%c1] : memref<2xi32>
      %7 = arith.index_cast %6 : i32 to index
      %8 = arith.index_cast %7 : index to i32
      cf.switch %8 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%in0_0_cons_buff_0 : memref<1024xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%in0_0_cons_buff_1 : memref<1024xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%in0_0_cons_buff_0 : memref<1024xbf16>)
    ^bb10(%9: memref<1024xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      func.call @relu_bf16(%9, %5, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%in0_0_cons_prod_lock_0, Release, 1)
      %10 = memref.load %_anonymous0[%c1] : memref<2xi32>
      %11 = arith.addi %10, %c1_i32 : i32
      %12 = arith.cmpi sge, %11, %c2_i32 : i32
      %13 = arith.subi %11, %c2_i32 : i32
      %14 = arith.select %12, %13, %11 : i32
      memref.store %14, %_anonymous0[%c1] : memref<2xi32>
      aie.use_lock(%out0_0_cons_lock_0, Release, 1)
      %15 = memref.load %_anonymous0[%c0] : memref<2xi32>
      %16 = arith.addi %15, %c1_i32 : i32
      %17 = arith.cmpi sge, %16, %c2_i32 : i32
      %18 = arith.subi %16, %c2_i32 : i32
      %19 = arith.select %17, %18, %16 : i32
      memref.store %19, %_anonymous0[%c0] : memref<2xi32>
      %20 = arith.addi %0, %c1 : index
      cf.br ^bb1(%20 : index)
    ^bb11:  // pred: ^bb1
      aie.end
    } {link_with = "relu.o"}
    aie.runtime_sequence(%arg0: memref<1024xbf16>, %arg1: memref<1024xbf16>) {
      %0 = aiex.dma_configure_task_for @in0_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<1024xbf16>, 0, 1024, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1024, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @out0_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<1024xbf16>, 0, 1024, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1024, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%1)
      aiex.dma_await_task(%1)
      aiex.dma_free_task(%0)
    }
    aie.shim_dma_allocation @in0_0_shim_alloc(%shim_noc_tile_0_0, MM2S, 0)
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out0_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out0_0_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out0_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out0_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out0_0_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out0_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @out0_0_shim_alloc(%shim_noc_tile_0_0, S2MM, 0)
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_0_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}
