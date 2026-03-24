module {
  aie.device(npu2) {
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %out7_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 6) {init = 0 : i32, sym_name = "out7_0_cons_prod_lock_0"}
    %out7_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 7) {init = 0 : i32, sym_name = "out7_0_cons_cons_lock_0"}
    %out7_0_buff_0 = aie.buffer(%tile_1_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out7_0_buff_0"} : memref<256xbf16> 
    %out7_0_buff_1 = aie.buffer(%tile_1_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out7_0_buff_1"} : memref<256xbf16> 
    %out7_0_prod_lock_0 = aie.lock(%tile_1_5, 2) {init = 2 : i32, sym_name = "out7_0_prod_lock_0"}
    %out7_0_cons_lock_0 = aie.lock(%tile_1_5, 3) {init = 0 : i32, sym_name = "out7_0_cons_lock_0"}
    %out6_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 4) {init = 0 : i32, sym_name = "out6_0_cons_prod_lock_0"}
    %out6_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 5) {init = 0 : i32, sym_name = "out6_0_cons_cons_lock_0"}
    %out6_0_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out6_0_buff_0"} : memref<256xbf16> 
    %out6_0_buff_1 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out6_0_buff_1"} : memref<256xbf16> 
    %out6_0_prod_lock_0 = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "out6_0_prod_lock_0"}
    %out6_0_cons_lock_0 = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "out6_0_cons_lock_0"}
    %out5_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 6) {init = 0 : i32, sym_name = "out5_0_cons_prod_lock_0"}
    %out5_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 7) {init = 0 : i32, sym_name = "out5_0_cons_cons_lock_0"}
    %out5_0_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out5_0_buff_0"} : memref<256xbf16> 
    %out5_0_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out5_0_buff_1"} : memref<256xbf16> 
    %out5_0_prod_lock_0 = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "out5_0_prod_lock_0"}
    %out5_0_cons_lock_0 = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "out5_0_cons_lock_0"}
    %out4_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 4) {init = 0 : i32, sym_name = "out4_0_cons_prod_lock_0"}
    %out4_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 5) {init = 0 : i32, sym_name = "out4_0_cons_cons_lock_0"}
    %out4_0_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out4_0_buff_0"} : memref<256xbf16> 
    %out4_0_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out4_0_buff_1"} : memref<256xbf16> 
    %out4_0_prod_lock_0 = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "out4_0_prod_lock_0"}
    %out4_0_cons_lock_0 = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "out4_0_cons_lock_0"}
    %out3_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 6) {init = 0 : i32, sym_name = "out3_0_cons_prod_lock_0"}
    %out3_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 7) {init = 0 : i32, sym_name = "out3_0_cons_cons_lock_0"}
    %out3_0_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out3_0_buff_0"} : memref<256xbf16> 
    %out3_0_buff_1 = aie.buffer(%tile_0_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out3_0_buff_1"} : memref<256xbf16> 
    %out3_0_prod_lock_0 = aie.lock(%tile_0_5, 2) {init = 2 : i32, sym_name = "out3_0_prod_lock_0"}
    %out3_0_cons_lock_0 = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "out3_0_cons_lock_0"}
    %out2_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 4) {init = 0 : i32, sym_name = "out2_0_cons_prod_lock_0"}
    %out2_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 5) {init = 0 : i32, sym_name = "out2_0_cons_cons_lock_0"}
    %out2_0_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out2_0_buff_0"} : memref<256xbf16> 
    %out2_0_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out2_0_buff_1"} : memref<256xbf16> 
    %out2_0_prod_lock_0 = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "out2_0_prod_lock_0"}
    %out2_0_cons_lock_0 = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "out2_0_cons_lock_0"}
    %out1_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 6) {init = 0 : i32, sym_name = "out1_0_cons_prod_lock_0"}
    %out1_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 7) {init = 0 : i32, sym_name = "out1_0_cons_cons_lock_0"}
    %out1_0_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out1_0_buff_0"} : memref<256xbf16> 
    %out1_0_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out1_0_buff_1"} : memref<256xbf16> 
    %out1_0_prod_lock_0 = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "out1_0_prod_lock_0"}
    %out1_0_cons_lock_0 = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "out1_0_cons_lock_0"}
    %out0_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 4) {init = 0 : i32, sym_name = "out0_0_cons_prod_lock_0"}
    %out0_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 5) {init = 0 : i32, sym_name = "out0_0_cons_cons_lock_0"}
    %out0_0_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out0_0_buff_0"} : memref<256xbf16> 
    %out0_0_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out0_0_buff_1"} : memref<256xbf16> 
    %out0_0_prod_lock_0 = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "out0_0_prod_lock_0"}
    %out0_0_cons_lock_0 = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "out0_0_cons_lock_0"}
    %in7_0_cons_buff_0 = aie.buffer(%tile_1_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in7_0_cons_buff_0"} : memref<256xbf16> 
    %in7_0_cons_buff_1 = aie.buffer(%tile_1_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in7_0_cons_buff_1"} : memref<256xbf16> 
    %in7_0_cons_prod_lock_0 = aie.lock(%tile_1_5, 0) {init = 2 : i32, sym_name = "in7_0_cons_prod_lock_0"}
    %in7_0_cons_cons_lock_0 = aie.lock(%tile_1_5, 1) {init = 0 : i32, sym_name = "in7_0_cons_cons_lock_0"}
    %in7_0_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 2) {init = 0 : i32, sym_name = "in7_0_prod_lock_0"}
    %in7_0_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 3) {init = 0 : i32, sym_name = "in7_0_cons_lock_0"}
    %in6_0_cons_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in6_0_cons_buff_0"} : memref<256xbf16> 
    %in6_0_cons_buff_1 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in6_0_cons_buff_1"} : memref<256xbf16> 
    %in6_0_cons_prod_lock_0 = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "in6_0_cons_prod_lock_0"}
    %in6_0_cons_cons_lock_0 = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "in6_0_cons_cons_lock_0"}
    %in6_0_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 0) {init = 0 : i32, sym_name = "in6_0_prod_lock_0"}
    %in6_0_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "in6_0_cons_lock_0"}
    %in5_0_cons_buff_0 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in5_0_cons_buff_0"} : memref<256xbf16> 
    %in5_0_cons_buff_1 = aie.buffer(%tile_1_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in5_0_cons_buff_1"} : memref<256xbf16> 
    %in5_0_cons_prod_lock_0 = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "in5_0_cons_prod_lock_0"}
    %in5_0_cons_cons_lock_0 = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "in5_0_cons_cons_lock_0"}
    %in5_0_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 2) {init = 0 : i32, sym_name = "in5_0_prod_lock_0"}
    %in5_0_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 3) {init = 0 : i32, sym_name = "in5_0_cons_lock_0"}
    %in4_0_cons_buff_0 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in4_0_cons_buff_0"} : memref<256xbf16> 
    %in4_0_cons_buff_1 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in4_0_cons_buff_1"} : memref<256xbf16> 
    %in4_0_cons_prod_lock_0 = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "in4_0_cons_prod_lock_0"}
    %in4_0_cons_cons_lock_0 = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "in4_0_cons_cons_lock_0"}
    %in4_0_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 0) {init = 0 : i32, sym_name = "in4_0_prod_lock_0"}
    %in4_0_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "in4_0_cons_lock_0"}
    %in3_0_cons_buff_0 = aie.buffer(%tile_0_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in3_0_cons_buff_0"} : memref<256xbf16> 
    %in3_0_cons_buff_1 = aie.buffer(%tile_0_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in3_0_cons_buff_1"} : memref<256xbf16> 
    %in3_0_cons_prod_lock_0 = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "in3_0_cons_prod_lock_0"}
    %in3_0_cons_cons_lock_0 = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "in3_0_cons_cons_lock_0"}
    %in3_0_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 2) {init = 0 : i32, sym_name = "in3_0_prod_lock_0"}
    %in3_0_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 3) {init = 0 : i32, sym_name = "in3_0_cons_lock_0"}
    %in2_0_cons_buff_0 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in2_0_cons_buff_0"} : memref<256xbf16> 
    %in2_0_cons_buff_1 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in2_0_cons_buff_1"} : memref<256xbf16> 
    %in2_0_cons_prod_lock_0 = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "in2_0_cons_prod_lock_0"}
    %in2_0_cons_cons_lock_0 = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "in2_0_cons_cons_lock_0"}
    %in2_0_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 0) {init = 0 : i32, sym_name = "in2_0_prod_lock_0"}
    %in2_0_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "in2_0_cons_lock_0"}
    %in1_0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in1_0_cons_buff_0"} : memref<256xbf16> 
    %in1_0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in1_0_cons_buff_1"} : memref<256xbf16> 
    %in1_0_cons_prod_lock_0 = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in1_0_cons_prod_lock_0"}
    %in1_0_cons_cons_lock_0 = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in1_0_cons_cons_lock_0"}
    %in1_0_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 2) {init = 0 : i32, sym_name = "in1_0_prod_lock_0"}
    %in1_0_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 3) {init = 0 : i32, sym_name = "in1_0_cons_lock_0"}
    %in0_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_0_cons_buff_0"} : memref<256xbf16> 
    %in0_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_0_cons_buff_1"} : memref<256xbf16> 
    %in0_0_cons_prod_lock_0 = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "in0_0_cons_prod_lock_0"}
    %in0_0_cons_cons_lock_0 = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "in0_0_cons_cons_lock_0"}
    %in0_0_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 0) {init = 0 : i32, sym_name = "in0_0_prod_lock_0"}
    %in0_0_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "in0_0_cons_lock_0"}
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 1, %tile_0_3, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %tile_0_4, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 1, %tile_0_5, DMA : 0)
    aie.flow(%shim_noc_tile_2_0, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%shim_noc_tile_2_0, DMA : 1, %tile_1_3, DMA : 0)
    aie.flow(%shim_noc_tile_3_0, DMA : 0, %tile_1_4, DMA : 0)
    aie.flow(%shim_noc_tile_3_0, DMA : 1, %tile_1_5, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %shim_noc_tile_0_0, DMA : 0)
    aie.flow(%tile_0_3, DMA : 0, %shim_noc_tile_0_0, DMA : 1)
    aie.flow(%tile_0_4, DMA : 0, %shim_noc_tile_1_0, DMA : 0)
    aie.flow(%tile_0_5, DMA : 0, %shim_noc_tile_1_0, DMA : 1)
    aie.flow(%tile_1_2, DMA : 0, %shim_noc_tile_2_0, DMA : 0)
    aie.flow(%tile_1_3, DMA : 0, %shim_noc_tile_2_0, DMA : 1)
    aie.flow(%tile_1_4, DMA : 0, %shim_noc_tile_3_0, DMA : 0)
    aie.flow(%tile_1_5, DMA : 0, %shim_noc_tile_3_0, DMA : 1)
    func.func private @relu_bf16(memref<256xbf16>, memref<256xbf16>, i32)
    %_anonymous0 = aie.buffer(%tile_0_2) {address = 1536 : i32, mem_bank = 0 : i32, sym_name = "_anonymous0"} : memref<2xi32> 
    %core_0_2 = aie.core(%tile_0_2) {
      %c1_i32 = arith.constant 1 : i32
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c256_i32 = arith.constant 256 : i32
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
      cf.br ^bb6(%out0_0_buff_0 : memref<256xbf16>)
    ^bb4:  // pred: ^bb2
      cf.br ^bb6(%out0_0_buff_1 : memref<256xbf16>)
    ^bb5:  // pred: ^bb2
      cf.br ^bb6(%out0_0_buff_0 : memref<256xbf16>)
    ^bb6(%5: memref<256xbf16>):  // 3 preds: ^bb3, ^bb4, ^bb5
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
      cf.br ^bb10(%in0_0_cons_buff_0 : memref<256xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%in0_0_cons_buff_1 : memref<256xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%in0_0_cons_buff_0 : memref<256xbf16>)
    ^bb10(%9: memref<256xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      func.call @relu_bf16(%9, %5, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
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
    %_anonymous1 = aie.buffer(%tile_0_3) {address = 1536 : i32, mem_bank = 0 : i32, sym_name = "_anonymous1"} : memref<2xi32> 
    %core_0_3 = aie.core(%tile_0_3) {
      %c1_i32 = arith.constant 1 : i32
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c256_i32 = arith.constant 256 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous1[%c0] : memref<2xi32>
      memref.store %c0_i32, %_anonymous1[%c1] : memref<2xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb10
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb11
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out1_0_prod_lock_0, AcquireGreaterEqual, 1)
      %2 = memref.load %_anonymous1[%c0] : memref<2xi32>
      %3 = arith.index_cast %2 : i32 to index
      %4 = arith.index_cast %3 : index to i32
      cf.switch %4 : i32, [
        default: ^bb5,
        0: ^bb3,
        1: ^bb4
      ]
    ^bb3:  // pred: ^bb2
      cf.br ^bb6(%out1_0_buff_0 : memref<256xbf16>)
    ^bb4:  // pred: ^bb2
      cf.br ^bb6(%out1_0_buff_1 : memref<256xbf16>)
    ^bb5:  // pred: ^bb2
      cf.br ^bb6(%out1_0_buff_0 : memref<256xbf16>)
    ^bb6(%5: memref<256xbf16>):  // 3 preds: ^bb3, ^bb4, ^bb5
      aie.use_lock(%in1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %6 = memref.load %_anonymous1[%c1] : memref<2xi32>
      %7 = arith.index_cast %6 : i32 to index
      %8 = arith.index_cast %7 : index to i32
      cf.switch %8 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%in1_0_cons_buff_0 : memref<256xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%in1_0_cons_buff_1 : memref<256xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%in1_0_cons_buff_0 : memref<256xbf16>)
    ^bb10(%9: memref<256xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      func.call @relu_bf16(%9, %5, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%in1_0_cons_prod_lock_0, Release, 1)
      %10 = memref.load %_anonymous1[%c1] : memref<2xi32>
      %11 = arith.addi %10, %c1_i32 : i32
      %12 = arith.cmpi sge, %11, %c2_i32 : i32
      %13 = arith.subi %11, %c2_i32 : i32
      %14 = arith.select %12, %13, %11 : i32
      memref.store %14, %_anonymous1[%c1] : memref<2xi32>
      aie.use_lock(%out1_0_cons_lock_0, Release, 1)
      %15 = memref.load %_anonymous1[%c0] : memref<2xi32>
      %16 = arith.addi %15, %c1_i32 : i32
      %17 = arith.cmpi sge, %16, %c2_i32 : i32
      %18 = arith.subi %16, %c2_i32 : i32
      %19 = arith.select %17, %18, %16 : i32
      memref.store %19, %_anonymous1[%c0] : memref<2xi32>
      %20 = arith.addi %0, %c1 : index
      cf.br ^bb1(%20 : index)
    ^bb11:  // pred: ^bb1
      aie.end
    } {link_with = "relu.o"}
    %_anonymous2 = aie.buffer(%tile_0_4) {address = 1536 : i32, mem_bank = 0 : i32, sym_name = "_anonymous2"} : memref<2xi32> 
    %core_0_4 = aie.core(%tile_0_4) {
      %c1_i32 = arith.constant 1 : i32
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c256_i32 = arith.constant 256 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous2[%c0] : memref<2xi32>
      memref.store %c0_i32, %_anonymous2[%c1] : memref<2xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb10
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb11
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out2_0_prod_lock_0, AcquireGreaterEqual, 1)
      %2 = memref.load %_anonymous2[%c0] : memref<2xi32>
      %3 = arith.index_cast %2 : i32 to index
      %4 = arith.index_cast %3 : index to i32
      cf.switch %4 : i32, [
        default: ^bb5,
        0: ^bb3,
        1: ^bb4
      ]
    ^bb3:  // pred: ^bb2
      cf.br ^bb6(%out2_0_buff_0 : memref<256xbf16>)
    ^bb4:  // pred: ^bb2
      cf.br ^bb6(%out2_0_buff_1 : memref<256xbf16>)
    ^bb5:  // pred: ^bb2
      cf.br ^bb6(%out2_0_buff_0 : memref<256xbf16>)
    ^bb6(%5: memref<256xbf16>):  // 3 preds: ^bb3, ^bb4, ^bb5
      aie.use_lock(%in2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %6 = memref.load %_anonymous2[%c1] : memref<2xi32>
      %7 = arith.index_cast %6 : i32 to index
      %8 = arith.index_cast %7 : index to i32
      cf.switch %8 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%in2_0_cons_buff_0 : memref<256xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%in2_0_cons_buff_1 : memref<256xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%in2_0_cons_buff_0 : memref<256xbf16>)
    ^bb10(%9: memref<256xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      func.call @relu_bf16(%9, %5, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%in2_0_cons_prod_lock_0, Release, 1)
      %10 = memref.load %_anonymous2[%c1] : memref<2xi32>
      %11 = arith.addi %10, %c1_i32 : i32
      %12 = arith.cmpi sge, %11, %c2_i32 : i32
      %13 = arith.subi %11, %c2_i32 : i32
      %14 = arith.select %12, %13, %11 : i32
      memref.store %14, %_anonymous2[%c1] : memref<2xi32>
      aie.use_lock(%out2_0_cons_lock_0, Release, 1)
      %15 = memref.load %_anonymous2[%c0] : memref<2xi32>
      %16 = arith.addi %15, %c1_i32 : i32
      %17 = arith.cmpi sge, %16, %c2_i32 : i32
      %18 = arith.subi %16, %c2_i32 : i32
      %19 = arith.select %17, %18, %16 : i32
      memref.store %19, %_anonymous2[%c0] : memref<2xi32>
      %20 = arith.addi %0, %c1 : index
      cf.br ^bb1(%20 : index)
    ^bb11:  // pred: ^bb1
      aie.end
    } {link_with = "relu.o"}
    %_anonymous3 = aie.buffer(%tile_0_5) {address = 1536 : i32, mem_bank = 0 : i32, sym_name = "_anonymous3"} : memref<2xi32> 
    %core_0_5 = aie.core(%tile_0_5) {
      %c1_i32 = arith.constant 1 : i32
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c256_i32 = arith.constant 256 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous3[%c0] : memref<2xi32>
      memref.store %c0_i32, %_anonymous3[%c1] : memref<2xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb10
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb11
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out3_0_prod_lock_0, AcquireGreaterEqual, 1)
      %2 = memref.load %_anonymous3[%c0] : memref<2xi32>
      %3 = arith.index_cast %2 : i32 to index
      %4 = arith.index_cast %3 : index to i32
      cf.switch %4 : i32, [
        default: ^bb5,
        0: ^bb3,
        1: ^bb4
      ]
    ^bb3:  // pred: ^bb2
      cf.br ^bb6(%out3_0_buff_0 : memref<256xbf16>)
    ^bb4:  // pred: ^bb2
      cf.br ^bb6(%out3_0_buff_1 : memref<256xbf16>)
    ^bb5:  // pred: ^bb2
      cf.br ^bb6(%out3_0_buff_0 : memref<256xbf16>)
    ^bb6(%5: memref<256xbf16>):  // 3 preds: ^bb3, ^bb4, ^bb5
      aie.use_lock(%in3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %6 = memref.load %_anonymous3[%c1] : memref<2xi32>
      %7 = arith.index_cast %6 : i32 to index
      %8 = arith.index_cast %7 : index to i32
      cf.switch %8 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%in3_0_cons_buff_0 : memref<256xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%in3_0_cons_buff_1 : memref<256xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%in3_0_cons_buff_0 : memref<256xbf16>)
    ^bb10(%9: memref<256xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      func.call @relu_bf16(%9, %5, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%in3_0_cons_prod_lock_0, Release, 1)
      %10 = memref.load %_anonymous3[%c1] : memref<2xi32>
      %11 = arith.addi %10, %c1_i32 : i32
      %12 = arith.cmpi sge, %11, %c2_i32 : i32
      %13 = arith.subi %11, %c2_i32 : i32
      %14 = arith.select %12, %13, %11 : i32
      memref.store %14, %_anonymous3[%c1] : memref<2xi32>
      aie.use_lock(%out3_0_cons_lock_0, Release, 1)
      %15 = memref.load %_anonymous3[%c0] : memref<2xi32>
      %16 = arith.addi %15, %c1_i32 : i32
      %17 = arith.cmpi sge, %16, %c2_i32 : i32
      %18 = arith.subi %16, %c2_i32 : i32
      %19 = arith.select %17, %18, %16 : i32
      memref.store %19, %_anonymous3[%c0] : memref<2xi32>
      %20 = arith.addi %0, %c1 : index
      cf.br ^bb1(%20 : index)
    ^bb11:  // pred: ^bb1
      aie.end
    } {link_with = "relu.o"}
    %_anonymous4 = aie.buffer(%tile_1_2) {address = 1536 : i32, mem_bank = 0 : i32, sym_name = "_anonymous4"} : memref<2xi32> 
    %core_1_2 = aie.core(%tile_1_2) {
      %c1_i32 = arith.constant 1 : i32
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c256_i32 = arith.constant 256 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous4[%c0] : memref<2xi32>
      memref.store %c0_i32, %_anonymous4[%c1] : memref<2xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb10
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb11
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out4_0_prod_lock_0, AcquireGreaterEqual, 1)
      %2 = memref.load %_anonymous4[%c0] : memref<2xi32>
      %3 = arith.index_cast %2 : i32 to index
      %4 = arith.index_cast %3 : index to i32
      cf.switch %4 : i32, [
        default: ^bb5,
        0: ^bb3,
        1: ^bb4
      ]
    ^bb3:  // pred: ^bb2
      cf.br ^bb6(%out4_0_buff_0 : memref<256xbf16>)
    ^bb4:  // pred: ^bb2
      cf.br ^bb6(%out4_0_buff_1 : memref<256xbf16>)
    ^bb5:  // pred: ^bb2
      cf.br ^bb6(%out4_0_buff_0 : memref<256xbf16>)
    ^bb6(%5: memref<256xbf16>):  // 3 preds: ^bb3, ^bb4, ^bb5
      aie.use_lock(%in4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %6 = memref.load %_anonymous4[%c1] : memref<2xi32>
      %7 = arith.index_cast %6 : i32 to index
      %8 = arith.index_cast %7 : index to i32
      cf.switch %8 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%in4_0_cons_buff_0 : memref<256xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%in4_0_cons_buff_1 : memref<256xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%in4_0_cons_buff_0 : memref<256xbf16>)
    ^bb10(%9: memref<256xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      func.call @relu_bf16(%9, %5, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%in4_0_cons_prod_lock_0, Release, 1)
      %10 = memref.load %_anonymous4[%c1] : memref<2xi32>
      %11 = arith.addi %10, %c1_i32 : i32
      %12 = arith.cmpi sge, %11, %c2_i32 : i32
      %13 = arith.subi %11, %c2_i32 : i32
      %14 = arith.select %12, %13, %11 : i32
      memref.store %14, %_anonymous4[%c1] : memref<2xi32>
      aie.use_lock(%out4_0_cons_lock_0, Release, 1)
      %15 = memref.load %_anonymous4[%c0] : memref<2xi32>
      %16 = arith.addi %15, %c1_i32 : i32
      %17 = arith.cmpi sge, %16, %c2_i32 : i32
      %18 = arith.subi %16, %c2_i32 : i32
      %19 = arith.select %17, %18, %16 : i32
      memref.store %19, %_anonymous4[%c0] : memref<2xi32>
      %20 = arith.addi %0, %c1 : index
      cf.br ^bb1(%20 : index)
    ^bb11:  // pred: ^bb1
      aie.end
    } {link_with = "relu.o"}
    %_anonymous5 = aie.buffer(%tile_1_3) {address = 1536 : i32, mem_bank = 0 : i32, sym_name = "_anonymous5"} : memref<2xi32> 
    %core_1_3 = aie.core(%tile_1_3) {
      %c1_i32 = arith.constant 1 : i32
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c256_i32 = arith.constant 256 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous5[%c0] : memref<2xi32>
      memref.store %c0_i32, %_anonymous5[%c1] : memref<2xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb10
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb11
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out5_0_prod_lock_0, AcquireGreaterEqual, 1)
      %2 = memref.load %_anonymous5[%c0] : memref<2xi32>
      %3 = arith.index_cast %2 : i32 to index
      %4 = arith.index_cast %3 : index to i32
      cf.switch %4 : i32, [
        default: ^bb5,
        0: ^bb3,
        1: ^bb4
      ]
    ^bb3:  // pred: ^bb2
      cf.br ^bb6(%out5_0_buff_0 : memref<256xbf16>)
    ^bb4:  // pred: ^bb2
      cf.br ^bb6(%out5_0_buff_1 : memref<256xbf16>)
    ^bb5:  // pred: ^bb2
      cf.br ^bb6(%out5_0_buff_0 : memref<256xbf16>)
    ^bb6(%5: memref<256xbf16>):  // 3 preds: ^bb3, ^bb4, ^bb5
      aie.use_lock(%in5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %6 = memref.load %_anonymous5[%c1] : memref<2xi32>
      %7 = arith.index_cast %6 : i32 to index
      %8 = arith.index_cast %7 : index to i32
      cf.switch %8 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%in5_0_cons_buff_0 : memref<256xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%in5_0_cons_buff_1 : memref<256xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%in5_0_cons_buff_0 : memref<256xbf16>)
    ^bb10(%9: memref<256xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      func.call @relu_bf16(%9, %5, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%in5_0_cons_prod_lock_0, Release, 1)
      %10 = memref.load %_anonymous5[%c1] : memref<2xi32>
      %11 = arith.addi %10, %c1_i32 : i32
      %12 = arith.cmpi sge, %11, %c2_i32 : i32
      %13 = arith.subi %11, %c2_i32 : i32
      %14 = arith.select %12, %13, %11 : i32
      memref.store %14, %_anonymous5[%c1] : memref<2xi32>
      aie.use_lock(%out5_0_cons_lock_0, Release, 1)
      %15 = memref.load %_anonymous5[%c0] : memref<2xi32>
      %16 = arith.addi %15, %c1_i32 : i32
      %17 = arith.cmpi sge, %16, %c2_i32 : i32
      %18 = arith.subi %16, %c2_i32 : i32
      %19 = arith.select %17, %18, %16 : i32
      memref.store %19, %_anonymous5[%c0] : memref<2xi32>
      %20 = arith.addi %0, %c1 : index
      cf.br ^bb1(%20 : index)
    ^bb11:  // pred: ^bb1
      aie.end
    } {link_with = "relu.o"}
    %_anonymous6 = aie.buffer(%tile_1_4) {address = 1536 : i32, mem_bank = 0 : i32, sym_name = "_anonymous6"} : memref<2xi32> 
    %core_1_4 = aie.core(%tile_1_4) {
      %c1_i32 = arith.constant 1 : i32
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c256_i32 = arith.constant 256 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous6[%c0] : memref<2xi32>
      memref.store %c0_i32, %_anonymous6[%c1] : memref<2xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb10
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb11
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out6_0_prod_lock_0, AcquireGreaterEqual, 1)
      %2 = memref.load %_anonymous6[%c0] : memref<2xi32>
      %3 = arith.index_cast %2 : i32 to index
      %4 = arith.index_cast %3 : index to i32
      cf.switch %4 : i32, [
        default: ^bb5,
        0: ^bb3,
        1: ^bb4
      ]
    ^bb3:  // pred: ^bb2
      cf.br ^bb6(%out6_0_buff_0 : memref<256xbf16>)
    ^bb4:  // pred: ^bb2
      cf.br ^bb6(%out6_0_buff_1 : memref<256xbf16>)
    ^bb5:  // pred: ^bb2
      cf.br ^bb6(%out6_0_buff_0 : memref<256xbf16>)
    ^bb6(%5: memref<256xbf16>):  // 3 preds: ^bb3, ^bb4, ^bb5
      aie.use_lock(%in6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %6 = memref.load %_anonymous6[%c1] : memref<2xi32>
      %7 = arith.index_cast %6 : i32 to index
      %8 = arith.index_cast %7 : index to i32
      cf.switch %8 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%in6_0_cons_buff_0 : memref<256xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%in6_0_cons_buff_1 : memref<256xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%in6_0_cons_buff_0 : memref<256xbf16>)
    ^bb10(%9: memref<256xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      func.call @relu_bf16(%9, %5, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%in6_0_cons_prod_lock_0, Release, 1)
      %10 = memref.load %_anonymous6[%c1] : memref<2xi32>
      %11 = arith.addi %10, %c1_i32 : i32
      %12 = arith.cmpi sge, %11, %c2_i32 : i32
      %13 = arith.subi %11, %c2_i32 : i32
      %14 = arith.select %12, %13, %11 : i32
      memref.store %14, %_anonymous6[%c1] : memref<2xi32>
      aie.use_lock(%out6_0_cons_lock_0, Release, 1)
      %15 = memref.load %_anonymous6[%c0] : memref<2xi32>
      %16 = arith.addi %15, %c1_i32 : i32
      %17 = arith.cmpi sge, %16, %c2_i32 : i32
      %18 = arith.subi %16, %c2_i32 : i32
      %19 = arith.select %17, %18, %16 : i32
      memref.store %19, %_anonymous6[%c0] : memref<2xi32>
      %20 = arith.addi %0, %c1 : index
      cf.br ^bb1(%20 : index)
    ^bb11:  // pred: ^bb1
      aie.end
    } {link_with = "relu.o"}
    %_anonymous7 = aie.buffer(%tile_1_5) {address = 1536 : i32, mem_bank = 0 : i32, sym_name = "_anonymous7"} : memref<2xi32> 
    %core_1_5 = aie.core(%tile_1_5) {
      %c1_i32 = arith.constant 1 : i32
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c256_i32 = arith.constant 256 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous7[%c0] : memref<2xi32>
      memref.store %c0_i32, %_anonymous7[%c1] : memref<2xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb10
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb11
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out7_0_prod_lock_0, AcquireGreaterEqual, 1)
      %2 = memref.load %_anonymous7[%c0] : memref<2xi32>
      %3 = arith.index_cast %2 : i32 to index
      %4 = arith.index_cast %3 : index to i32
      cf.switch %4 : i32, [
        default: ^bb5,
        0: ^bb3,
        1: ^bb4
      ]
    ^bb3:  // pred: ^bb2
      cf.br ^bb6(%out7_0_buff_0 : memref<256xbf16>)
    ^bb4:  // pred: ^bb2
      cf.br ^bb6(%out7_0_buff_1 : memref<256xbf16>)
    ^bb5:  // pred: ^bb2
      cf.br ^bb6(%out7_0_buff_0 : memref<256xbf16>)
    ^bb6(%5: memref<256xbf16>):  // 3 preds: ^bb3, ^bb4, ^bb5
      aie.use_lock(%in7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %6 = memref.load %_anonymous7[%c1] : memref<2xi32>
      %7 = arith.index_cast %6 : i32 to index
      %8 = arith.index_cast %7 : index to i32
      cf.switch %8 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%in7_0_cons_buff_0 : memref<256xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%in7_0_cons_buff_1 : memref<256xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%in7_0_cons_buff_0 : memref<256xbf16>)
    ^bb10(%9: memref<256xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      func.call @relu_bf16(%9, %5, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%in7_0_cons_prod_lock_0, Release, 1)
      %10 = memref.load %_anonymous7[%c1] : memref<2xi32>
      %11 = arith.addi %10, %c1_i32 : i32
      %12 = arith.cmpi sge, %11, %c2_i32 : i32
      %13 = arith.subi %11, %c2_i32 : i32
      %14 = arith.select %12, %13, %11 : i32
      memref.store %14, %_anonymous7[%c1] : memref<2xi32>
      aie.use_lock(%out7_0_cons_lock_0, Release, 1)
      %15 = memref.load %_anonymous7[%c0] : memref<2xi32>
      %16 = arith.addi %15, %c1_i32 : i32
      %17 = arith.cmpi sge, %16, %c2_i32 : i32
      %18 = arith.subi %16, %c2_i32 : i32
      %19 = arith.select %17, %18, %16 : i32
      memref.store %19, %_anonymous7[%c0] : memref<2xi32>
      %20 = arith.addi %0, %c1 : index
      cf.br ^bb1(%20 : index)
    ^bb11:  // pred: ^bb1
      aie.end
    } {link_with = "relu.o"}
    aie.runtime_sequence(%arg0: memref<2048xbf16>, %arg1: memref<2048xbf16>) {
      %0 = aiex.dma_configure_task_for @in0_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 0, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @in1_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 256, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%1)
      %2 = aiex.dma_configure_task_for @in2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 512, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%2)
      %3 = aiex.dma_configure_task_for @in3_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 768, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%3)
      %4 = aiex.dma_configure_task_for @in4_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 1024, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%4)
      %5 = aiex.dma_configure_task_for @in5_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 1280, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%5)
      %6 = aiex.dma_configure_task_for @in6_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 1536, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%6)
      %7 = aiex.dma_configure_task_for @in7_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<2048xbf16>, 1792, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%7)
      %8 = aiex.dma_configure_task_for @out0_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 0, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%8)
      %9 = aiex.dma_configure_task_for @out1_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 256, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%9)
      %10 = aiex.dma_configure_task_for @out2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 512, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%10)
      %11 = aiex.dma_configure_task_for @out3_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 768, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%11)
      %12 = aiex.dma_configure_task_for @out4_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 1024, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%12)
      %13 = aiex.dma_configure_task_for @out5_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 1280, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%13)
      %14 = aiex.dma_configure_task_for @out6_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<2048xbf16>, 1536, 256, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%14)
      %15 = aiex.dma_configure_task_for @out7_0_shim_alloc {
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
    aie.shim_dma_allocation @in0_0_shim_alloc(%shim_noc_tile_0_0, MM2S, 0)
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out0_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out0_0_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out0_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out0_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out0_0_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out0_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @in1_0_shim_alloc(%shim_noc_tile_0_0, MM2S, 1)
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_0_cons_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_0_cons_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out1_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_0_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out1_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out1_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_0_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out1_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @in2_0_shim_alloc(%shim_noc_tile_1_0, MM2S, 0)
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_0_cons_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_0_cons_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out2_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_0_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out2_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out2_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_0_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out2_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @in3_0_shim_alloc(%shim_noc_tile_1_0, MM2S, 1)
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in3_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_0_cons_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in3_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in3_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_0_cons_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in3_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out3_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out3_0_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out3_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out3_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out3_0_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out3_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @in4_0_shim_alloc(%shim_noc_tile_2_0, MM2S, 0)
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in4_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in4_0_cons_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in4_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in4_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in4_0_cons_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in4_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out4_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out4_0_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out4_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out4_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out4_0_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out4_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @in5_0_shim_alloc(%shim_noc_tile_2_0, MM2S, 1)
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in5_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in5_0_cons_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in5_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in5_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in5_0_cons_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in5_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out5_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out5_0_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out5_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out5_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out5_0_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out5_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @in6_0_shim_alloc(%shim_noc_tile_3_0, MM2S, 0)
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in6_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in6_0_cons_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in6_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in6_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in6_0_cons_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in6_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out6_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out6_0_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out6_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out6_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out6_0_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out6_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @in7_0_shim_alloc(%shim_noc_tile_3_0, MM2S, 1)
    %mem_1_5 = aie.mem(%tile_1_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in7_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in7_0_cons_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in7_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in7_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in7_0_cons_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in7_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out7_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out7_0_buff_0 : memref<256xbf16>, 0, 256) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out7_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out7_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out7_0_buff_1 : memref<256xbf16>, 0, 256) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out7_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @out0_0_shim_alloc(%shim_noc_tile_0_0, S2MM, 0)
    aie.shim_dma_allocation @out1_0_shim_alloc(%shim_noc_tile_0_0, S2MM, 1)
    aie.shim_dma_allocation @out2_0_shim_alloc(%shim_noc_tile_1_0, S2MM, 0)
    aie.shim_dma_allocation @out3_0_shim_alloc(%shim_noc_tile_1_0, S2MM, 1)
    aie.shim_dma_allocation @out4_0_shim_alloc(%shim_noc_tile_2_0, S2MM, 0)
    aie.shim_dma_allocation @out5_0_shim_alloc(%shim_noc_tile_2_0, S2MM, 1)
    aie.shim_dma_allocation @out6_0_shim_alloc(%shim_noc_tile_3_0, S2MM, 0)
    aie.shim_dma_allocation @out7_0_shim_alloc(%shim_noc_tile_3_0, S2MM, 1)
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_0_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_1_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_1_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_2_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_2_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_3_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_3_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}
