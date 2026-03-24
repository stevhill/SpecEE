module {
  aie.device(npu2) {
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_4_2 = aie.tile(4, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_4_3 = aie.tile(4, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_4_4 = aie.tile(4, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_5_2 = aie.tile(5, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_5_3 = aie.tile(5, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_5_4 = aie.tile(5, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_6_2 = aie.tile(6, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_6_3 = aie.tile(6, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_6_4 = aie.tile(6, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_7_2 = aie.tile(7, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_7_3 = aie.tile(7, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_7_4 = aie.tile(7, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %shim_noc_tile_5_0 = aie.tile(5, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_3_1 = aie.tile(3, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %shim_noc_tile_4_0 = aie.tile(4, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_6_1 = aie.tile(6, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_7_1 = aie.tile(7, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %shim_noc_tile_6_0 = aie.tile(6, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_4_1 = aie.tile(4, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %shim_noc_tile_7_0 = aie.tile(7, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %scaleOF7_buff_0 = aie.buffer(%tile_7_3) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "scaleOF7_buff_0"} : memref<256xbf16> 
    %scaleOF7_buff_1 = aie.buffer(%tile_7_3) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "scaleOF7_buff_1"} : memref<256xbf16> 
    %scaleOF7_prod_lock_0 = aie.lock(%tile_7_3, 5) {init = 2 : i32, sym_name = "scaleOF7_prod_lock_0"}
    %scaleOF7_cons_lock_0 = aie.lock(%tile_7_3, 6) {init = 0 : i32, sym_name = "scaleOF7_cons_lock_0"}
    %scaleOF6_buff_0 = aie.buffer(%tile_6_3) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "scaleOF6_buff_0"} : memref<256xbf16> 
    %scaleOF6_buff_1 = aie.buffer(%tile_6_3) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "scaleOF6_buff_1"} : memref<256xbf16> 
    %scaleOF6_prod_lock_0 = aie.lock(%tile_6_3, 5) {init = 2 : i32, sym_name = "scaleOF6_prod_lock_0"}
    %scaleOF6_cons_lock_0 = aie.lock(%tile_6_3, 6) {init = 0 : i32, sym_name = "scaleOF6_cons_lock_0"}
    %scaleOF5_buff_0 = aie.buffer(%tile_5_3) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "scaleOF5_buff_0"} : memref<256xbf16> 
    %scaleOF5_buff_1 = aie.buffer(%tile_5_3) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "scaleOF5_buff_1"} : memref<256xbf16> 
    %scaleOF5_prod_lock_0 = aie.lock(%tile_5_3, 5) {init = 2 : i32, sym_name = "scaleOF5_prod_lock_0"}
    %scaleOF5_cons_lock_0 = aie.lock(%tile_5_3, 6) {init = 0 : i32, sym_name = "scaleOF5_cons_lock_0"}
    %scaleOF4_buff_0 = aie.buffer(%tile_4_3) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "scaleOF4_buff_0"} : memref<256xbf16> 
    %scaleOF4_buff_1 = aie.buffer(%tile_4_3) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "scaleOF4_buff_1"} : memref<256xbf16> 
    %scaleOF4_prod_lock_0 = aie.lock(%tile_4_3, 5) {init = 2 : i32, sym_name = "scaleOF4_prod_lock_0"}
    %scaleOF4_cons_lock_0 = aie.lock(%tile_4_3, 6) {init = 0 : i32, sym_name = "scaleOF4_cons_lock_0"}
    %scaleOF3_buff_0 = aie.buffer(%tile_3_3) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "scaleOF3_buff_0"} : memref<256xbf16> 
    %scaleOF3_buff_1 = aie.buffer(%tile_3_3) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "scaleOF3_buff_1"} : memref<256xbf16> 
    %scaleOF3_prod_lock_0 = aie.lock(%tile_3_3, 5) {init = 2 : i32, sym_name = "scaleOF3_prod_lock_0"}
    %scaleOF3_cons_lock_0 = aie.lock(%tile_3_3, 6) {init = 0 : i32, sym_name = "scaleOF3_cons_lock_0"}
    %scaleOF2_buff_0 = aie.buffer(%tile_2_3) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "scaleOF2_buff_0"} : memref<256xbf16> 
    %scaleOF2_buff_1 = aie.buffer(%tile_2_3) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "scaleOF2_buff_1"} : memref<256xbf16> 
    %scaleOF2_prod_lock_0 = aie.lock(%tile_2_3, 5) {init = 2 : i32, sym_name = "scaleOF2_prod_lock_0"}
    %scaleOF2_cons_lock_0 = aie.lock(%tile_2_3, 6) {init = 0 : i32, sym_name = "scaleOF2_cons_lock_0"}
    %scaleOF1_buff_0 = aie.buffer(%tile_1_3) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "scaleOF1_buff_0"} : memref<256xbf16> 
    %scaleOF1_buff_1 = aie.buffer(%tile_1_3) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "scaleOF1_buff_1"} : memref<256xbf16> 
    %scaleOF1_prod_lock_0 = aie.lock(%tile_1_3, 5) {init = 2 : i32, sym_name = "scaleOF1_prod_lock_0"}
    %scaleOF1_cons_lock_0 = aie.lock(%tile_1_3, 6) {init = 0 : i32, sym_name = "scaleOF1_cons_lock_0"}
    %scaleOF0_buff_0 = aie.buffer(%tile_0_3) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "scaleOF0_buff_0"} : memref<256xbf16> 
    %scaleOF0_buff_1 = aie.buffer(%tile_0_3) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "scaleOF0_buff_1"} : memref<256xbf16> 
    %scaleOF0_prod_lock_0 = aie.lock(%tile_0_3, 5) {init = 2 : i32, sym_name = "scaleOF0_prod_lock_0"}
    %scaleOF0_cons_lock_0 = aie.lock(%tile_0_3, 6) {init = 0 : i32, sym_name = "scaleOF0_cons_lock_0"}
    %outP7_cons_buff_0 = aie.buffer(%tile_7_4) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "outP7_cons_buff_0"} : memref<64x64xbf16> 
    %outP7_cons_buff_1 = aie.buffer(%tile_7_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "outP7_cons_buff_1"} : memref<64x64xbf16> 
    %outP7_cons_prod_lock_0 = aie.lock(%tile_7_4, 5) {init = 2 : i32, sym_name = "outP7_cons_prod_lock_0"}
    %outP7_cons_cons_lock_0 = aie.lock(%tile_7_4, 6) {init = 0 : i32, sym_name = "outP7_cons_cons_lock_0"}
    %memP7_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "memP7_cons_buff_0"} : memref<64x64xbf16> 
    %memP7_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "memP7_cons_buff_1"} : memref<64x64xbf16> 
    %memP7_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 6) {init = 2 : i32, sym_name = "memP7_cons_prod_lock_0"}
    %memP7_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 7) {init = 0 : i32, sym_name = "memP7_cons_cons_lock_0"}
    %memP7_buff_0 = aie.buffer(%tile_7_3) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memP7_buff_0"} : memref<64x64xbf16> 
    %memP7_buff_1 = aie.buffer(%tile_7_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memP7_buff_1"} : memref<64x64xbf16> 
    %memP7_prod_lock_0 = aie.lock(%tile_7_3, 3) {init = 2 : i32, sym_name = "memP7_prod_lock_0"}
    %memP7_cons_lock_0 = aie.lock(%tile_7_3, 4) {init = 0 : i32, sym_name = "memP7_cons_lock_0"}
    %outP6_cons_buff_0 = aie.buffer(%tile_6_4) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "outP6_cons_buff_0"} : memref<64x64xbf16> 
    %outP6_cons_buff_1 = aie.buffer(%tile_6_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "outP6_cons_buff_1"} : memref<64x64xbf16> 
    %outP6_cons_prod_lock_0 = aie.lock(%tile_6_4, 5) {init = 2 : i32, sym_name = "outP6_cons_prod_lock_0"}
    %outP6_cons_cons_lock_0 = aie.lock(%tile_6_4, 6) {init = 0 : i32, sym_name = "outP6_cons_cons_lock_0"}
    %memP6_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 131072 : i32, mem_bank = 2 : i32, sym_name = "memP6_cons_buff_0"} : memref<64x64xbf16> 
    %memP6_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 196608 : i32, mem_bank = 3 : i32, sym_name = "memP6_cons_buff_1"} : memref<64x64xbf16> 
    %memP6_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 4) {init = 2 : i32, sym_name = "memP6_cons_prod_lock_0"}
    %memP6_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 5) {init = 0 : i32, sym_name = "memP6_cons_cons_lock_0"}
    %memP6_buff_0 = aie.buffer(%tile_6_3) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memP6_buff_0"} : memref<64x64xbf16> 
    %memP6_buff_1 = aie.buffer(%tile_6_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memP6_buff_1"} : memref<64x64xbf16> 
    %memP6_prod_lock_0 = aie.lock(%tile_6_3, 3) {init = 2 : i32, sym_name = "memP6_prod_lock_0"}
    %memP6_cons_lock_0 = aie.lock(%tile_6_3, 4) {init = 0 : i32, sym_name = "memP6_cons_lock_0"}
    %outP5_cons_buff_0 = aie.buffer(%tile_5_4) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "outP5_cons_buff_0"} : memref<64x64xbf16> 
    %outP5_cons_buff_1 = aie.buffer(%tile_5_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "outP5_cons_buff_1"} : memref<64x64xbf16> 
    %outP5_cons_prod_lock_0 = aie.lock(%tile_5_4, 5) {init = 2 : i32, sym_name = "outP5_cons_prod_lock_0"}
    %outP5_cons_cons_lock_0 = aie.lock(%tile_5_4, 6) {init = 0 : i32, sym_name = "outP5_cons_cons_lock_0"}
    %memP5_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 262144 : i32, mem_bank = 4 : i32, sym_name = "memP5_cons_buff_0"} : memref<64x64xbf16> 
    %memP5_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 327680 : i32, mem_bank = 5 : i32, sym_name = "memP5_cons_buff_1"} : memref<64x64xbf16> 
    %memP5_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 2) {init = 2 : i32, sym_name = "memP5_cons_prod_lock_0"}
    %memP5_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 3) {init = 0 : i32, sym_name = "memP5_cons_cons_lock_0"}
    %memP5_buff_0 = aie.buffer(%tile_5_3) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memP5_buff_0"} : memref<64x64xbf16> 
    %memP5_buff_1 = aie.buffer(%tile_5_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memP5_buff_1"} : memref<64x64xbf16> 
    %memP5_prod_lock_0 = aie.lock(%tile_5_3, 3) {init = 2 : i32, sym_name = "memP5_prod_lock_0"}
    %memP5_cons_lock_0 = aie.lock(%tile_5_3, 4) {init = 0 : i32, sym_name = "memP5_cons_lock_0"}
    %outP4_cons_buff_0 = aie.buffer(%tile_4_4) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "outP4_cons_buff_0"} : memref<64x64xbf16> 
    %outP4_cons_buff_1 = aie.buffer(%tile_4_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "outP4_cons_buff_1"} : memref<64x64xbf16> 
    %outP4_cons_prod_lock_0 = aie.lock(%tile_4_4, 5) {init = 2 : i32, sym_name = "outP4_cons_prod_lock_0"}
    %outP4_cons_cons_lock_0 = aie.lock(%tile_4_4, 6) {init = 0 : i32, sym_name = "outP4_cons_cons_lock_0"}
    %memP4_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 393216 : i32, mem_bank = 6 : i32, sym_name = "memP4_cons_buff_0"} : memref<64x64xbf16> 
    %memP4_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 458752 : i32, mem_bank = 7 : i32, sym_name = "memP4_cons_buff_1"} : memref<64x64xbf16> 
    %memP4_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "memP4_cons_prod_lock_0"}
    %memP4_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "memP4_cons_cons_lock_0"}
    %memP4_buff_0 = aie.buffer(%tile_4_3) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memP4_buff_0"} : memref<64x64xbf16> 
    %memP4_buff_1 = aie.buffer(%tile_4_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memP4_buff_1"} : memref<64x64xbf16> 
    %memP4_prod_lock_0 = aie.lock(%tile_4_3, 3) {init = 2 : i32, sym_name = "memP4_prod_lock_0"}
    %memP4_cons_lock_0 = aie.lock(%tile_4_3, 4) {init = 0 : i32, sym_name = "memP4_cons_lock_0"}
    %outP3_cons_buff_0 = aie.buffer(%tile_3_4) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "outP3_cons_buff_0"} : memref<64x64xbf16> 
    %outP3_cons_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "outP3_cons_buff_1"} : memref<64x64xbf16> 
    %outP3_cons_prod_lock_0 = aie.lock(%tile_3_4, 5) {init = 2 : i32, sym_name = "outP3_cons_prod_lock_0"}
    %outP3_cons_cons_lock_0 = aie.lock(%tile_3_4, 6) {init = 0 : i32, sym_name = "outP3_cons_cons_lock_0"}
    %memP3_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "memP3_cons_buff_0"} : memref<64x64xbf16> 
    %memP3_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "memP3_cons_buff_1"} : memref<64x64xbf16> 
    %memP3_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 10) {init = 2 : i32, sym_name = "memP3_cons_prod_lock_0"}
    %memP3_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 11) {init = 0 : i32, sym_name = "memP3_cons_cons_lock_0"}
    %memP3_buff_0 = aie.buffer(%tile_3_3) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memP3_buff_0"} : memref<64x64xbf16> 
    %memP3_buff_1 = aie.buffer(%tile_3_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memP3_buff_1"} : memref<64x64xbf16> 
    %memP3_prod_lock_0 = aie.lock(%tile_3_3, 3) {init = 2 : i32, sym_name = "memP3_prod_lock_0"}
    %memP3_cons_lock_0 = aie.lock(%tile_3_3, 4) {init = 0 : i32, sym_name = "memP3_cons_lock_0"}
    %outP2_cons_buff_0 = aie.buffer(%tile_2_4) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "outP2_cons_buff_0"} : memref<64x64xbf16> 
    %outP2_cons_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "outP2_cons_buff_1"} : memref<64x64xbf16> 
    %outP2_cons_prod_lock_0 = aie.lock(%tile_2_4, 5) {init = 2 : i32, sym_name = "outP2_cons_prod_lock_0"}
    %outP2_cons_cons_lock_0 = aie.lock(%tile_2_4, 6) {init = 0 : i32, sym_name = "outP2_cons_cons_lock_0"}
    %memP2_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 131072 : i32, mem_bank = 2 : i32, sym_name = "memP2_cons_buff_0"} : memref<64x64xbf16> 
    %memP2_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 196608 : i32, mem_bank = 3 : i32, sym_name = "memP2_cons_buff_1"} : memref<64x64xbf16> 
    %memP2_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 8) {init = 2 : i32, sym_name = "memP2_cons_prod_lock_0"}
    %memP2_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 9) {init = 0 : i32, sym_name = "memP2_cons_cons_lock_0"}
    %memP2_buff_0 = aie.buffer(%tile_2_3) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memP2_buff_0"} : memref<64x64xbf16> 
    %memP2_buff_1 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memP2_buff_1"} : memref<64x64xbf16> 
    %memP2_prod_lock_0 = aie.lock(%tile_2_3, 3) {init = 2 : i32, sym_name = "memP2_prod_lock_0"}
    %memP2_cons_lock_0 = aie.lock(%tile_2_3, 4) {init = 0 : i32, sym_name = "memP2_cons_lock_0"}
    %outP1_cons_buff_0 = aie.buffer(%tile_1_4) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "outP1_cons_buff_0"} : memref<64x64xbf16> 
    %outP1_cons_buff_1 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "outP1_cons_buff_1"} : memref<64x64xbf16> 
    %outP1_cons_prod_lock_0 = aie.lock(%tile_1_4, 5) {init = 2 : i32, sym_name = "outP1_cons_prod_lock_0"}
    %outP1_cons_cons_lock_0 = aie.lock(%tile_1_4, 6) {init = 0 : i32, sym_name = "outP1_cons_cons_lock_0"}
    %memP1_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 262144 : i32, mem_bank = 4 : i32, sym_name = "memP1_cons_buff_0"} : memref<64x64xbf16> 
    %memP1_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 327680 : i32, mem_bank = 5 : i32, sym_name = "memP1_cons_buff_1"} : memref<64x64xbf16> 
    %memP1_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 6) {init = 2 : i32, sym_name = "memP1_cons_prod_lock_0"}
    %memP1_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 7) {init = 0 : i32, sym_name = "memP1_cons_cons_lock_0"}
    %memP1_buff_0 = aie.buffer(%tile_1_3) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memP1_buff_0"} : memref<64x64xbf16> 
    %memP1_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memP1_buff_1"} : memref<64x64xbf16> 
    %memP1_prod_lock_0 = aie.lock(%tile_1_3, 3) {init = 2 : i32, sym_name = "memP1_prod_lock_0"}
    %memP1_cons_lock_0 = aie.lock(%tile_1_3, 4) {init = 0 : i32, sym_name = "memP1_cons_lock_0"}
    %outP0_cons_buff_0 = aie.buffer(%tile_0_4) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "outP0_cons_buff_0"} : memref<64x64xbf16> 
    %outP0_cons_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "outP0_cons_buff_1"} : memref<64x64xbf16> 
    %outP0_cons_prod_lock_0 = aie.lock(%tile_0_4, 5) {init = 2 : i32, sym_name = "outP0_cons_prod_lock_0"}
    %outP0_cons_cons_lock_0 = aie.lock(%tile_0_4, 6) {init = 0 : i32, sym_name = "outP0_cons_cons_lock_0"}
    %memP0_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 393216 : i32, mem_bank = 6 : i32, sym_name = "memP0_cons_buff_0"} : memref<64x64xbf16> 
    %memP0_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 458752 : i32, mem_bank = 7 : i32, sym_name = "memP0_cons_buff_1"} : memref<64x64xbf16> 
    %memP0_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 4) {init = 2 : i32, sym_name = "memP0_cons_prod_lock_0"}
    %memP0_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 5) {init = 0 : i32, sym_name = "memP0_cons_cons_lock_0"}
    %memP0_buff_0 = aie.buffer(%tile_0_3) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memP0_buff_0"} : memref<64x64xbf16> 
    %memP0_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memP0_buff_1"} : memref<64x64xbf16> 
    %memP0_prod_lock_0 = aie.lock(%tile_0_3, 3) {init = 2 : i32, sym_name = "memP0_prod_lock_0"}
    %memP0_cons_lock_0 = aie.lock(%tile_0_3, 4) {init = 0 : i32, sym_name = "memP0_cons_lock_0"}
    %outO23_buff_0 = aie.buffer(%tile_7_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outO23_buff_0"} : memref<64x64xbf16> 
    %outO23_buff_1 = aie.buffer(%tile_7_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outO23_buff_1"} : memref<64x64xbf16> 
    %outO23_prod_lock_0 = aie.lock(%tile_7_4, 3) {init = 2 : i32, sym_name = "outO23_prod_lock_0"}
    %outO23_cons_lock_0 = aie.lock(%tile_7_4, 4) {init = 0 : i32, sym_name = "outO23_cons_lock_0"}
    %outO22_buff_0 = aie.buffer(%tile_6_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outO22_buff_0"} : memref<64x64xbf16> 
    %outO22_buff_1 = aie.buffer(%tile_6_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outO22_buff_1"} : memref<64x64xbf16> 
    %outO22_prod_lock_0 = aie.lock(%tile_6_4, 3) {init = 2 : i32, sym_name = "outO22_prod_lock_0"}
    %outO22_cons_lock_0 = aie.lock(%tile_6_4, 4) {init = 0 : i32, sym_name = "outO22_cons_lock_0"}
    %outO21_buff_0 = aie.buffer(%tile_5_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outO21_buff_0"} : memref<64x64xbf16> 
    %outO21_buff_1 = aie.buffer(%tile_5_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outO21_buff_1"} : memref<64x64xbf16> 
    %outO21_prod_lock_0 = aie.lock(%tile_5_4, 3) {init = 2 : i32, sym_name = "outO21_prod_lock_0"}
    %outO21_cons_lock_0 = aie.lock(%tile_5_4, 4) {init = 0 : i32, sym_name = "outO21_cons_lock_0"}
    %outO20_buff_0 = aie.buffer(%tile_4_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outO20_buff_0"} : memref<64x64xbf16> 
    %outO20_buff_1 = aie.buffer(%tile_4_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outO20_buff_1"} : memref<64x64xbf16> 
    %outO20_prod_lock_0 = aie.lock(%tile_4_4, 3) {init = 2 : i32, sym_name = "outO20_prod_lock_0"}
    %outO20_cons_lock_0 = aie.lock(%tile_4_4, 4) {init = 0 : i32, sym_name = "outO20_cons_lock_0"}
    %memO2_cons_prod_lock_0 = aie.lock(%shim_noc_tile_7_0, 2) {init = 0 : i32, sym_name = "memO2_cons_prod_lock_0"}
    %memO2_cons_cons_lock_0 = aie.lock(%shim_noc_tile_7_0, 3) {init = 0 : i32, sym_name = "memO2_cons_cons_lock_0"}
    %memO2_buff_0 = aie.buffer(%mem_tile_7_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "memO2_buff_0"} : memref<256x64xbf16> 
    %memO2_buff_1 = aie.buffer(%mem_tile_7_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "memO2_buff_1"} : memref<256x64xbf16> 
    %memO2_prod_lock_0 = aie.lock(%mem_tile_7_1, 8) {init = 2 : i32, sym_name = "memO2_prod_lock_0"}
    %memO2_cons_lock_0 = aie.lock(%mem_tile_7_1, 9) {init = 0 : i32, sym_name = "memO2_cons_lock_0"}
    %memO2_prod_lock_1 = aie.lock(%mem_tile_7_1, 10) {init = 2 : i32, sym_name = "memO2_prod_lock_1"}
    %memO2_cons_lock_1 = aie.lock(%mem_tile_7_1, 11) {init = 0 : i32, sym_name = "memO2_cons_lock_1"}
    %memO2_prod_lock_2 = aie.lock(%mem_tile_7_1, 12) {init = 2 : i32, sym_name = "memO2_prod_lock_2"}
    %memO2_cons_lock_2 = aie.lock(%mem_tile_7_1, 13) {init = 0 : i32, sym_name = "memO2_cons_lock_2"}
    %memO2_prod_lock_3 = aie.lock(%mem_tile_7_1, 14) {init = 2 : i32, sym_name = "memO2_prod_lock_3"}
    %memO2_cons_lock_3 = aie.lock(%mem_tile_7_1, 15) {init = 0 : i32, sym_name = "memO2_cons_lock_3"}
    %outO3_buff_0 = aie.buffer(%tile_3_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outO3_buff_0"} : memref<64x64xbf16> 
    %outO3_buff_1 = aie.buffer(%tile_3_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outO3_buff_1"} : memref<64x64xbf16> 
    %outO3_prod_lock_0 = aie.lock(%tile_3_4, 3) {init = 2 : i32, sym_name = "outO3_prod_lock_0"}
    %outO3_cons_lock_0 = aie.lock(%tile_3_4, 4) {init = 0 : i32, sym_name = "outO3_cons_lock_0"}
    %outO2_buff_0 = aie.buffer(%tile_2_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outO2_buff_0"} : memref<64x64xbf16> 
    %outO2_buff_1 = aie.buffer(%tile_2_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outO2_buff_1"} : memref<64x64xbf16> 
    %outO2_prod_lock_0 = aie.lock(%tile_2_4, 3) {init = 2 : i32, sym_name = "outO2_prod_lock_0"}
    %outO2_cons_lock_0 = aie.lock(%tile_2_4, 4) {init = 0 : i32, sym_name = "outO2_cons_lock_0"}
    %outO1_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outO1_buff_0"} : memref<64x64xbf16> 
    %outO1_buff_1 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outO1_buff_1"} : memref<64x64xbf16> 
    %outO1_prod_lock_0 = aie.lock(%tile_1_4, 3) {init = 2 : i32, sym_name = "outO1_prod_lock_0"}
    %outO1_cons_lock_0 = aie.lock(%tile_1_4, 4) {init = 0 : i32, sym_name = "outO1_cons_lock_0"}
    %outO0_buff_0 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outO0_buff_0"} : memref<64x64xbf16> 
    %outO0_buff_1 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outO0_buff_1"} : memref<64x64xbf16> 
    %outO0_prod_lock_0 = aie.lock(%tile_0_4, 3) {init = 2 : i32, sym_name = "outO0_prod_lock_0"}
    %outO0_cons_lock_0 = aie.lock(%tile_0_4, 4) {init = 0 : i32, sym_name = "outO0_cons_lock_0"}
    %memO_cons_prod_lock_0 = aie.lock(%shim_noc_tile_7_0, 0) {init = 0 : i32, sym_name = "memO_cons_prod_lock_0"}
    %memO_cons_cons_lock_0 = aie.lock(%shim_noc_tile_7_0, 1) {init = 0 : i32, sym_name = "memO_cons_cons_lock_0"}
    %memO_buff_0 = aie.buffer(%mem_tile_6_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "memO_buff_0"} : memref<256x64xbf16> 
    %memO_buff_1 = aie.buffer(%mem_tile_6_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "memO_buff_1"} : memref<256x64xbf16> 
    %memO_prod_lock_0 = aie.lock(%mem_tile_6_1, 8) {init = 2 : i32, sym_name = "memO_prod_lock_0"}
    %memO_cons_lock_0 = aie.lock(%mem_tile_6_1, 9) {init = 0 : i32, sym_name = "memO_cons_lock_0"}
    %memO_prod_lock_1 = aie.lock(%mem_tile_6_1, 10) {init = 2 : i32, sym_name = "memO_prod_lock_1"}
    %memO_cons_lock_1 = aie.lock(%mem_tile_6_1, 11) {init = 0 : i32, sym_name = "memO_cons_lock_1"}
    %memO_prod_lock_2 = aie.lock(%mem_tile_6_1, 12) {init = 2 : i32, sym_name = "memO_prod_lock_2"}
    %memO_cons_lock_2 = aie.lock(%mem_tile_6_1, 13) {init = 0 : i32, sym_name = "memO_cons_lock_2"}
    %memO_prod_lock_3 = aie.lock(%mem_tile_6_1, 14) {init = 2 : i32, sym_name = "memO_prod_lock_3"}
    %memO_cons_lock_3 = aie.lock(%mem_tile_6_1, 15) {init = 0 : i32, sym_name = "memO_cons_lock_3"}
    %outA7_cons_buff_0 = aie.buffer(%tile_7_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outA7_cons_buff_0"} : memref<64x64xbf16> 
    %outA7_cons_buff_1 = aie.buffer(%tile_7_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outA7_cons_buff_1"} : memref<64x64xbf16> 
    %outA7_cons_prod_lock_0 = aie.lock(%tile_7_3, 1) {init = 2 : i32, sym_name = "outA7_cons_prod_lock_0"}
    %outA7_cons_cons_lock_0 = aie.lock(%tile_7_3, 2) {init = 0 : i32, sym_name = "outA7_cons_cons_lock_0"}
    %memA7_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 8192 : i32, mem_bank = 0 : i32, sym_name = "memA7_cons_buff_0"} : memref<64x64xbf16> 
    %memA7_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 73728 : i32, mem_bank = 1 : i32, sym_name = "memA7_cons_buff_1"} : memref<64x64xbf16> 
    %memA7_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 2) {init = 2 : i32, sym_name = "memA7_cons_prod_lock_0"}
    %memA7_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 3) {init = 0 : i32, sym_name = "memA7_cons_cons_lock_0"}
    %memA7_buff_0 = aie.buffer(%tile_7_2) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memA7_buff_0"} : memref<64x64xbf16> 
    %memA7_buff_1 = aie.buffer(%tile_7_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memA7_buff_1"} : memref<64x64xbf16> 
    %memA7_prod_lock_0 = aie.lock(%tile_7_2, 5) {init = 2 : i32, sym_name = "memA7_prod_lock_0"}
    %memA7_cons_lock_0 = aie.lock(%tile_7_2, 6) {init = 0 : i32, sym_name = "memA7_cons_lock_0"}
    %outA6_cons_buff_0 = aie.buffer(%tile_6_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outA6_cons_buff_0"} : memref<64x64xbf16> 
    %outA6_cons_buff_1 = aie.buffer(%tile_6_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outA6_cons_buff_1"} : memref<64x64xbf16> 
    %outA6_cons_prod_lock_0 = aie.lock(%tile_6_3, 1) {init = 2 : i32, sym_name = "outA6_cons_prod_lock_0"}
    %outA6_cons_cons_lock_0 = aie.lock(%tile_6_3, 2) {init = 0 : i32, sym_name = "outA6_cons_cons_lock_0"}
    %memA6_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 139264 : i32, mem_bank = 2 : i32, sym_name = "memA6_cons_buff_0"} : memref<64x64xbf16> 
    %memA6_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 204800 : i32, mem_bank = 3 : i32, sym_name = "memA6_cons_buff_1"} : memref<64x64xbf16> 
    %memA6_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "memA6_cons_prod_lock_0"}
    %memA6_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "memA6_cons_cons_lock_0"}
    %memA6_buff_0 = aie.buffer(%tile_6_2) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memA6_buff_0"} : memref<64x64xbf16> 
    %memA6_buff_1 = aie.buffer(%tile_6_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memA6_buff_1"} : memref<64x64xbf16> 
    %memA6_prod_lock_0 = aie.lock(%tile_6_2, 5) {init = 2 : i32, sym_name = "memA6_prod_lock_0"}
    %memA6_cons_lock_0 = aie.lock(%tile_6_2, 6) {init = 0 : i32, sym_name = "memA6_cons_lock_0"}
    %outA5_cons_buff_0 = aie.buffer(%tile_5_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outA5_cons_buff_0"} : memref<64x64xbf16> 
    %outA5_cons_buff_1 = aie.buffer(%tile_5_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outA5_cons_buff_1"} : memref<64x64xbf16> 
    %outA5_cons_prod_lock_0 = aie.lock(%tile_5_3, 1) {init = 2 : i32, sym_name = "outA5_cons_prod_lock_0"}
    %outA5_cons_cons_lock_0 = aie.lock(%tile_5_3, 2) {init = 0 : i32, sym_name = "outA5_cons_cons_lock_0"}
    %memA5_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "memA5_cons_buff_0"} : memref<64x64xbf16> 
    %memA5_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "memA5_cons_buff_1"} : memref<64x64xbf16> 
    %memA5_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 10) {init = 2 : i32, sym_name = "memA5_cons_prod_lock_0"}
    %memA5_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 11) {init = 0 : i32, sym_name = "memA5_cons_cons_lock_0"}
    %memA5_buff_0 = aie.buffer(%tile_5_2) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memA5_buff_0"} : memref<64x64xbf16> 
    %memA5_buff_1 = aie.buffer(%tile_5_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memA5_buff_1"} : memref<64x64xbf16> 
    %memA5_prod_lock_0 = aie.lock(%tile_5_2, 5) {init = 2 : i32, sym_name = "memA5_prod_lock_0"}
    %memA5_cons_lock_0 = aie.lock(%tile_5_2, 6) {init = 0 : i32, sym_name = "memA5_cons_lock_0"}
    %outA4_cons_buff_0 = aie.buffer(%tile_4_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outA4_cons_buff_0"} : memref<64x64xbf16> 
    %outA4_cons_buff_1 = aie.buffer(%tile_4_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outA4_cons_buff_1"} : memref<64x64xbf16> 
    %outA4_cons_prod_lock_0 = aie.lock(%tile_4_3, 1) {init = 2 : i32, sym_name = "outA4_cons_prod_lock_0"}
    %outA4_cons_cons_lock_0 = aie.lock(%tile_4_3, 2) {init = 0 : i32, sym_name = "outA4_cons_cons_lock_0"}
    %memA4_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 131072 : i32, mem_bank = 2 : i32, sym_name = "memA4_cons_buff_0"} : memref<64x64xbf16> 
    %memA4_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 196608 : i32, mem_bank = 3 : i32, sym_name = "memA4_cons_buff_1"} : memref<64x64xbf16> 
    %memA4_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 8) {init = 2 : i32, sym_name = "memA4_cons_prod_lock_0"}
    %memA4_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 9) {init = 0 : i32, sym_name = "memA4_cons_cons_lock_0"}
    %memA4_buff_0 = aie.buffer(%tile_4_2) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memA4_buff_0"} : memref<64x64xbf16> 
    %memA4_buff_1 = aie.buffer(%tile_4_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memA4_buff_1"} : memref<64x64xbf16> 
    %memA4_prod_lock_0 = aie.lock(%tile_4_2, 5) {init = 2 : i32, sym_name = "memA4_prod_lock_0"}
    %memA4_cons_lock_0 = aie.lock(%tile_4_2, 6) {init = 0 : i32, sym_name = "memA4_cons_lock_0"}
    %outA3_cons_buff_0 = aie.buffer(%tile_3_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outA3_cons_buff_0"} : memref<64x64xbf16> 
    %outA3_cons_buff_1 = aie.buffer(%tile_3_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outA3_cons_buff_1"} : memref<64x64xbf16> 
    %outA3_cons_prod_lock_0 = aie.lock(%tile_3_3, 1) {init = 2 : i32, sym_name = "outA3_cons_prod_lock_0"}
    %outA3_cons_cons_lock_0 = aie.lock(%tile_3_3, 2) {init = 0 : i32, sym_name = "outA3_cons_cons_lock_0"}
    %memA3_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 262144 : i32, mem_bank = 4 : i32, sym_name = "memA3_cons_buff_0"} : memref<64x64xbf16> 
    %memA3_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 327680 : i32, mem_bank = 5 : i32, sym_name = "memA3_cons_buff_1"} : memref<64x64xbf16> 
    %memA3_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 6) {init = 2 : i32, sym_name = "memA3_cons_prod_lock_0"}
    %memA3_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 7) {init = 0 : i32, sym_name = "memA3_cons_cons_lock_0"}
    %memA3_buff_0 = aie.buffer(%tile_3_2) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memA3_buff_0"} : memref<64x64xbf16> 
    %memA3_buff_1 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memA3_buff_1"} : memref<64x64xbf16> 
    %memA3_prod_lock_0 = aie.lock(%tile_3_2, 5) {init = 2 : i32, sym_name = "memA3_prod_lock_0"}
    %memA3_cons_lock_0 = aie.lock(%tile_3_2, 6) {init = 0 : i32, sym_name = "memA3_cons_lock_0"}
    %outA2_cons_buff_0 = aie.buffer(%tile_2_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outA2_cons_buff_0"} : memref<64x64xbf16> 
    %outA2_cons_buff_1 = aie.buffer(%tile_2_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outA2_cons_buff_1"} : memref<64x64xbf16> 
    %outA2_cons_prod_lock_0 = aie.lock(%tile_2_3, 1) {init = 2 : i32, sym_name = "outA2_cons_prod_lock_0"}
    %outA2_cons_cons_lock_0 = aie.lock(%tile_2_3, 2) {init = 0 : i32, sym_name = "outA2_cons_cons_lock_0"}
    %memA2_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 393216 : i32, mem_bank = 6 : i32, sym_name = "memA2_cons_buff_0"} : memref<64x64xbf16> 
    %memA2_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 458752 : i32, mem_bank = 7 : i32, sym_name = "memA2_cons_buff_1"} : memref<64x64xbf16> 
    %memA2_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 4) {init = 2 : i32, sym_name = "memA2_cons_prod_lock_0"}
    %memA2_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 5) {init = 0 : i32, sym_name = "memA2_cons_cons_lock_0"}
    %memA2_buff_0 = aie.buffer(%tile_2_2) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memA2_buff_0"} : memref<64x64xbf16> 
    %memA2_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memA2_buff_1"} : memref<64x64xbf16> 
    %memA2_prod_lock_0 = aie.lock(%tile_2_2, 5) {init = 2 : i32, sym_name = "memA2_prod_lock_0"}
    %memA2_cons_lock_0 = aie.lock(%tile_2_2, 6) {init = 0 : i32, sym_name = "memA2_cons_lock_0"}
    %outA1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outA1_cons_buff_0"} : memref<64x64xbf16> 
    %outA1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outA1_cons_buff_1"} : memref<64x64xbf16> 
    %outA1_cons_prod_lock_0 = aie.lock(%tile_1_3, 1) {init = 2 : i32, sym_name = "outA1_cons_prod_lock_0"}
    %outA1_cons_cons_lock_0 = aie.lock(%tile_1_3, 2) {init = 0 : i32, sym_name = "outA1_cons_cons_lock_0"}
    %memA1_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 8192 : i32, mem_bank = 0 : i32, sym_name = "memA1_cons_buff_0"} : memref<64x64xbf16> 
    %memA1_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 73728 : i32, mem_bank = 1 : i32, sym_name = "memA1_cons_buff_1"} : memref<64x64xbf16> 
    %memA1_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 2) {init = 2 : i32, sym_name = "memA1_cons_prod_lock_0"}
    %memA1_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 3) {init = 0 : i32, sym_name = "memA1_cons_cons_lock_0"}
    %memA1_buff_0 = aie.buffer(%tile_1_2) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memA1_buff_0"} : memref<64x64xbf16> 
    %memA1_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memA1_buff_1"} : memref<64x64xbf16> 
    %memA1_prod_lock_0 = aie.lock(%tile_1_2, 5) {init = 2 : i32, sym_name = "memA1_prod_lock_0"}
    %memA1_cons_lock_0 = aie.lock(%tile_1_2, 6) {init = 0 : i32, sym_name = "memA1_cons_lock_0"}
    %outA0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "outA0_cons_buff_0"} : memref<64x64xbf16> 
    %outA0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "outA0_cons_buff_1"} : memref<64x64xbf16> 
    %outA0_cons_prod_lock_0 = aie.lock(%tile_0_3, 1) {init = 2 : i32, sym_name = "outA0_cons_prod_lock_0"}
    %outA0_cons_cons_lock_0 = aie.lock(%tile_0_3, 2) {init = 0 : i32, sym_name = "outA0_cons_cons_lock_0"}
    %memA0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 139264 : i32, mem_bank = 2 : i32, sym_name = "memA0_cons_buff_0"} : memref<64x64xbf16> 
    %memA0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 204800 : i32, mem_bank = 3 : i32, sym_name = "memA0_cons_buff_1"} : memref<64x64xbf16> 
    %memA0_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 0) {init = 2 : i32, sym_name = "memA0_cons_prod_lock_0"}
    %memA0_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "memA0_cons_cons_lock_0"}
    %memA0_buff_0 = aie.buffer(%tile_0_2) {address = 3328 : i32, mem_bank = 0 : i32, sym_name = "memA0_buff_0"} : memref<64x64xbf16> 
    %memA0_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memA0_buff_1"} : memref<64x64xbf16> 
    %memA0_prod_lock_0 = aie.lock(%tile_0_2, 5) {init = 2 : i32, sym_name = "memA0_prod_lock_0"}
    %memA0_cons_lock_0 = aie.lock(%tile_0_2, 6) {init = 0 : i32, sym_name = "memA0_cons_lock_0"}
    %memV_0_cons_buff_0 = aie.buffer(%tile_0_4) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memV_0_cons_buff_0"} : memref<64x64xbf16> 
    %memV_0_cons_buff_1 = aie.buffer(%tile_0_4) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memV_0_cons_buff_1"} : memref<64x64xbf16> 
    %memV_0_cons_prod_lock_0 = aie.lock(%tile_0_4, 1) {init = 2 : i32, sym_name = "memV_0_cons_prod_lock_0"}
    %memV_0_cons_cons_lock_0 = aie.lock(%tile_0_4, 2) {init = 0 : i32, sym_name = "memV_0_cons_cons_lock_0"}
    %memV_1_cons_buff_0 = aie.buffer(%tile_1_4) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memV_1_cons_buff_0"} : memref<64x64xbf16> 
    %memV_1_cons_buff_1 = aie.buffer(%tile_1_4) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memV_1_cons_buff_1"} : memref<64x64xbf16> 
    %memV_1_cons_prod_lock_0 = aie.lock(%tile_1_4, 1) {init = 2 : i32, sym_name = "memV_1_cons_prod_lock_0"}
    %memV_1_cons_cons_lock_0 = aie.lock(%tile_1_4, 2) {init = 0 : i32, sym_name = "memV_1_cons_cons_lock_0"}
    %memV_2_cons_buff_0 = aie.buffer(%tile_2_4) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memV_2_cons_buff_0"} : memref<64x64xbf16> 
    %memV_2_cons_buff_1 = aie.buffer(%tile_2_4) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memV_2_cons_buff_1"} : memref<64x64xbf16> 
    %memV_2_cons_prod_lock_0 = aie.lock(%tile_2_4, 1) {init = 2 : i32, sym_name = "memV_2_cons_prod_lock_0"}
    %memV_2_cons_cons_lock_0 = aie.lock(%tile_2_4, 2) {init = 0 : i32, sym_name = "memV_2_cons_cons_lock_0"}
    %memV_3_cons_buff_0 = aie.buffer(%tile_3_4) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memV_3_cons_buff_0"} : memref<64x64xbf16> 
    %memV_3_cons_buff_1 = aie.buffer(%tile_3_4) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memV_3_cons_buff_1"} : memref<64x64xbf16> 
    %memV_3_cons_prod_lock_0 = aie.lock(%tile_3_4, 1) {init = 2 : i32, sym_name = "memV_3_cons_prod_lock_0"}
    %memV_3_cons_cons_lock_0 = aie.lock(%tile_3_4, 2) {init = 0 : i32, sym_name = "memV_3_cons_cons_lock_0"}
    %memV_4_cons_buff_0 = aie.buffer(%tile_4_4) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memV_4_cons_buff_0"} : memref<64x64xbf16> 
    %memV_4_cons_buff_1 = aie.buffer(%tile_4_4) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memV_4_cons_buff_1"} : memref<64x64xbf16> 
    %memV_4_cons_prod_lock_0 = aie.lock(%tile_4_4, 1) {init = 2 : i32, sym_name = "memV_4_cons_prod_lock_0"}
    %memV_4_cons_cons_lock_0 = aie.lock(%tile_4_4, 2) {init = 0 : i32, sym_name = "memV_4_cons_cons_lock_0"}
    %memV_5_cons_buff_0 = aie.buffer(%tile_5_4) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memV_5_cons_buff_0"} : memref<64x64xbf16> 
    %memV_5_cons_buff_1 = aie.buffer(%tile_5_4) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memV_5_cons_buff_1"} : memref<64x64xbf16> 
    %memV_5_cons_prod_lock_0 = aie.lock(%tile_5_4, 1) {init = 2 : i32, sym_name = "memV_5_cons_prod_lock_0"}
    %memV_5_cons_cons_lock_0 = aie.lock(%tile_5_4, 2) {init = 0 : i32, sym_name = "memV_5_cons_cons_lock_0"}
    %memV_6_cons_buff_0 = aie.buffer(%tile_6_4) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memV_6_cons_buff_0"} : memref<64x64xbf16> 
    %memV_6_cons_buff_1 = aie.buffer(%tile_6_4) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memV_6_cons_buff_1"} : memref<64x64xbf16> 
    %memV_6_cons_prod_lock_0 = aie.lock(%tile_6_4, 1) {init = 2 : i32, sym_name = "memV_6_cons_prod_lock_0"}
    %memV_6_cons_cons_lock_0 = aie.lock(%tile_6_4, 2) {init = 0 : i32, sym_name = "memV_6_cons_cons_lock_0"}
    %memV_7_cons_buff_0 = aie.buffer(%tile_7_4) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memV_7_cons_buff_0"} : memref<64x64xbf16> 
    %memV_7_cons_buff_1 = aie.buffer(%tile_7_4) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memV_7_cons_buff_1"} : memref<64x64xbf16> 
    %memV_7_cons_prod_lock_0 = aie.lock(%tile_7_4, 1) {init = 2 : i32, sym_name = "memV_7_cons_prod_lock_0"}
    %memV_7_cons_cons_lock_0 = aie.lock(%tile_7_4, 2) {init = 0 : i32, sym_name = "memV_7_cons_cons_lock_0"}
    %inV_cons_buff_0 = aie.buffer(%mem_tile_4_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "inV_cons_buff_0"} : memref<64x64xbf16> 
    %inV_cons_buff_1 = aie.buffer(%mem_tile_4_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "inV_cons_buff_1"} : memref<64x64xbf16> 
    %inV_cons_prod_lock_0 = aie.lock(%mem_tile_4_1, 0) {init = 2 : i32, sym_name = "inV_cons_prod_lock_0"}
    %inV_cons_cons_lock_0 = aie.lock(%mem_tile_4_1, 1) {init = 0 : i32, sym_name = "inV_cons_cons_lock_0"}
    %inV_prod_lock_0 = aie.lock(%shim_noc_tile_6_0, 0) {init = 0 : i32, sym_name = "inV_prod_lock_0"}
    %inV_cons_lock_0 = aie.lock(%shim_noc_tile_6_0, 1) {init = 0 : i32, sym_name = "inV_cons_lock_0"}
    %memQ23_cons_buff_0 = aie.buffer(%tile_7_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memQ23_cons_buff_0"} : memref<64x64xbf16> 
    %memQ23_cons_buff_1 = aie.buffer(%tile_7_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memQ23_cons_buff_1"} : memref<64x64xbf16> 
    %memQ23_cons_prod_lock_0 = aie.lock(%tile_7_2, 3) {init = 2 : i32, sym_name = "memQ23_cons_prod_lock_0"}
    %memQ23_cons_cons_lock_0 = aie.lock(%tile_7_2, 4) {init = 0 : i32, sym_name = "memQ23_cons_cons_lock_0"}
    %memQ22_cons_buff_0 = aie.buffer(%tile_6_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memQ22_cons_buff_0"} : memref<64x64xbf16> 
    %memQ22_cons_buff_1 = aie.buffer(%tile_6_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memQ22_cons_buff_1"} : memref<64x64xbf16> 
    %memQ22_cons_prod_lock_0 = aie.lock(%tile_6_2, 3) {init = 2 : i32, sym_name = "memQ22_cons_prod_lock_0"}
    %memQ22_cons_cons_lock_0 = aie.lock(%tile_6_2, 4) {init = 0 : i32, sym_name = "memQ22_cons_cons_lock_0"}
    %memQ21_cons_buff_0 = aie.buffer(%tile_5_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memQ21_cons_buff_0"} : memref<64x64xbf16> 
    %memQ21_cons_buff_1 = aie.buffer(%tile_5_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memQ21_cons_buff_1"} : memref<64x64xbf16> 
    %memQ21_cons_prod_lock_0 = aie.lock(%tile_5_2, 3) {init = 2 : i32, sym_name = "memQ21_cons_prod_lock_0"}
    %memQ21_cons_cons_lock_0 = aie.lock(%tile_5_2, 4) {init = 0 : i32, sym_name = "memQ21_cons_cons_lock_0"}
    %memQ20_cons_buff_0 = aie.buffer(%tile_4_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memQ20_cons_buff_0"} : memref<64x64xbf16> 
    %memQ20_cons_buff_1 = aie.buffer(%tile_4_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memQ20_cons_buff_1"} : memref<64x64xbf16> 
    %memQ20_cons_prod_lock_0 = aie.lock(%tile_4_2, 3) {init = 2 : i32, sym_name = "memQ20_cons_prod_lock_0"}
    %memQ20_cons_cons_lock_0 = aie.lock(%tile_4_2, 4) {init = 0 : i32, sym_name = "memQ20_cons_cons_lock_0"}
    %inQ2_cons_buff_0 = aie.buffer(%mem_tile_7_1) {address = 131072 : i32, mem_bank = 2 : i32, sym_name = "inQ2_cons_buff_0"} : memref<256x64xbf16> 
    %inQ2_cons_buff_1 = aie.buffer(%mem_tile_7_1) {address = 196608 : i32, mem_bank = 3 : i32, sym_name = "inQ2_cons_buff_1"} : memref<256x64xbf16> 
    %inQ2_cons_prod_lock_0 = aie.lock(%mem_tile_7_1, 0) {init = 2 : i32, sym_name = "inQ2_cons_prod_lock_0"}
    %inQ2_cons_cons_lock_0 = aie.lock(%mem_tile_7_1, 1) {init = 0 : i32, sym_name = "inQ2_cons_cons_lock_0"}
    %inQ2_cons_prod_lock_1 = aie.lock(%mem_tile_7_1, 2) {init = 2 : i32, sym_name = "inQ2_cons_prod_lock_1"}
    %inQ2_cons_cons_lock_1 = aie.lock(%mem_tile_7_1, 3) {init = 0 : i32, sym_name = "inQ2_cons_cons_lock_1"}
    %inQ2_cons_prod_lock_2 = aie.lock(%mem_tile_7_1, 4) {init = 2 : i32, sym_name = "inQ2_cons_prod_lock_2"}
    %inQ2_cons_cons_lock_2 = aie.lock(%mem_tile_7_1, 5) {init = 0 : i32, sym_name = "inQ2_cons_cons_lock_2"}
    %inQ2_cons_prod_lock_3 = aie.lock(%mem_tile_7_1, 6) {init = 2 : i32, sym_name = "inQ2_cons_prod_lock_3"}
    %inQ2_cons_cons_lock_3 = aie.lock(%mem_tile_7_1, 7) {init = 0 : i32, sym_name = "inQ2_cons_cons_lock_3"}
    %inQ2_prod_lock_0 = aie.lock(%shim_noc_tile_4_0, 2) {init = 0 : i32, sym_name = "inQ2_prod_lock_0"}
    %inQ2_cons_lock_0 = aie.lock(%shim_noc_tile_4_0, 3) {init = 0 : i32, sym_name = "inQ2_cons_lock_0"}
    %memQ3_cons_buff_0 = aie.buffer(%tile_3_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memQ3_cons_buff_0"} : memref<64x64xbf16> 
    %memQ3_cons_buff_1 = aie.buffer(%tile_3_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memQ3_cons_buff_1"} : memref<64x64xbf16> 
    %memQ3_cons_prod_lock_0 = aie.lock(%tile_3_2, 3) {init = 2 : i32, sym_name = "memQ3_cons_prod_lock_0"}
    %memQ3_cons_cons_lock_0 = aie.lock(%tile_3_2, 4) {init = 0 : i32, sym_name = "memQ3_cons_cons_lock_0"}
    %memQ2_cons_buff_0 = aie.buffer(%tile_2_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memQ2_cons_buff_0"} : memref<64x64xbf16> 
    %memQ2_cons_buff_1 = aie.buffer(%tile_2_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memQ2_cons_buff_1"} : memref<64x64xbf16> 
    %memQ2_cons_prod_lock_0 = aie.lock(%tile_2_2, 3) {init = 2 : i32, sym_name = "memQ2_cons_prod_lock_0"}
    %memQ2_cons_cons_lock_0 = aie.lock(%tile_2_2, 4) {init = 0 : i32, sym_name = "memQ2_cons_cons_lock_0"}
    %memQ1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memQ1_cons_buff_0"} : memref<64x64xbf16> 
    %memQ1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memQ1_cons_buff_1"} : memref<64x64xbf16> 
    %memQ1_cons_prod_lock_0 = aie.lock(%tile_1_2, 3) {init = 2 : i32, sym_name = "memQ1_cons_prod_lock_0"}
    %memQ1_cons_cons_lock_0 = aie.lock(%tile_1_2, 4) {init = 0 : i32, sym_name = "memQ1_cons_cons_lock_0"}
    %memQ0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memQ0_cons_buff_0"} : memref<64x64xbf16> 
    %memQ0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memQ0_cons_buff_1"} : memref<64x64xbf16> 
    %memQ0_cons_prod_lock_0 = aie.lock(%tile_0_2, 3) {init = 2 : i32, sym_name = "memQ0_cons_prod_lock_0"}
    %memQ0_cons_cons_lock_0 = aie.lock(%tile_0_2, 4) {init = 0 : i32, sym_name = "memQ0_cons_cons_lock_0"}
    %inQ_cons_buff_0 = aie.buffer(%mem_tile_6_1) {address = 131072 : i32, mem_bank = 2 : i32, sym_name = "inQ_cons_buff_0"} : memref<256x64xbf16> 
    %inQ_cons_buff_1 = aie.buffer(%mem_tile_6_1) {address = 196608 : i32, mem_bank = 3 : i32, sym_name = "inQ_cons_buff_1"} : memref<256x64xbf16> 
    %inQ_cons_prod_lock_0 = aie.lock(%mem_tile_6_1, 0) {init = 2 : i32, sym_name = "inQ_cons_prod_lock_0"}
    %inQ_cons_cons_lock_0 = aie.lock(%mem_tile_6_1, 1) {init = 0 : i32, sym_name = "inQ_cons_cons_lock_0"}
    %inQ_cons_prod_lock_1 = aie.lock(%mem_tile_6_1, 2) {init = 2 : i32, sym_name = "inQ_cons_prod_lock_1"}
    %inQ_cons_cons_lock_1 = aie.lock(%mem_tile_6_1, 3) {init = 0 : i32, sym_name = "inQ_cons_cons_lock_1"}
    %inQ_cons_prod_lock_2 = aie.lock(%mem_tile_6_1, 4) {init = 2 : i32, sym_name = "inQ_cons_prod_lock_2"}
    %inQ_cons_cons_lock_2 = aie.lock(%mem_tile_6_1, 5) {init = 0 : i32, sym_name = "inQ_cons_cons_lock_2"}
    %inQ_cons_prod_lock_3 = aie.lock(%mem_tile_6_1, 6) {init = 2 : i32, sym_name = "inQ_cons_prod_lock_3"}
    %inQ_cons_cons_lock_3 = aie.lock(%mem_tile_6_1, 7) {init = 0 : i32, sym_name = "inQ_cons_cons_lock_3"}
    %inQ_prod_lock_0 = aie.lock(%shim_noc_tile_4_0, 0) {init = 0 : i32, sym_name = "inQ_prod_lock_0"}
    %inQ_cons_lock_0 = aie.lock(%shim_noc_tile_4_0, 1) {init = 0 : i32, sym_name = "inQ_cons_lock_0"}
    %memK_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memK_0_cons_buff_0"} : memref<64x64xbf16> 
    %memK_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memK_0_cons_buff_1"} : memref<64x64xbf16> 
    %memK_0_cons_prod_lock_0 = aie.lock(%tile_0_2, 1) {init = 2 : i32, sym_name = "memK_0_cons_prod_lock_0"}
    %memK_0_cons_cons_lock_0 = aie.lock(%tile_0_2, 2) {init = 0 : i32, sym_name = "memK_0_cons_cons_lock_0"}
    %memK_1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memK_1_cons_buff_0"} : memref<64x64xbf16> 
    %memK_1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memK_1_cons_buff_1"} : memref<64x64xbf16> 
    %memK_1_cons_prod_lock_0 = aie.lock(%tile_1_2, 1) {init = 2 : i32, sym_name = "memK_1_cons_prod_lock_0"}
    %memK_1_cons_cons_lock_0 = aie.lock(%tile_1_2, 2) {init = 0 : i32, sym_name = "memK_1_cons_cons_lock_0"}
    %memK_2_cons_buff_0 = aie.buffer(%tile_2_2) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memK_2_cons_buff_0"} : memref<64x64xbf16> 
    %memK_2_cons_buff_1 = aie.buffer(%tile_2_2) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memK_2_cons_buff_1"} : memref<64x64xbf16> 
    %memK_2_cons_prod_lock_0 = aie.lock(%tile_2_2, 1) {init = 2 : i32, sym_name = "memK_2_cons_prod_lock_0"}
    %memK_2_cons_cons_lock_0 = aie.lock(%tile_2_2, 2) {init = 0 : i32, sym_name = "memK_2_cons_cons_lock_0"}
    %memK_3_cons_buff_0 = aie.buffer(%tile_3_2) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memK_3_cons_buff_0"} : memref<64x64xbf16> 
    %memK_3_cons_buff_1 = aie.buffer(%tile_3_2) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memK_3_cons_buff_1"} : memref<64x64xbf16> 
    %memK_3_cons_prod_lock_0 = aie.lock(%tile_3_2, 1) {init = 2 : i32, sym_name = "memK_3_cons_prod_lock_0"}
    %memK_3_cons_cons_lock_0 = aie.lock(%tile_3_2, 2) {init = 0 : i32, sym_name = "memK_3_cons_cons_lock_0"}
    %memK_4_cons_buff_0 = aie.buffer(%tile_4_2) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memK_4_cons_buff_0"} : memref<64x64xbf16> 
    %memK_4_cons_buff_1 = aie.buffer(%tile_4_2) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memK_4_cons_buff_1"} : memref<64x64xbf16> 
    %memK_4_cons_prod_lock_0 = aie.lock(%tile_4_2, 1) {init = 2 : i32, sym_name = "memK_4_cons_prod_lock_0"}
    %memK_4_cons_cons_lock_0 = aie.lock(%tile_4_2, 2) {init = 0 : i32, sym_name = "memK_4_cons_cons_lock_0"}
    %memK_5_cons_buff_0 = aie.buffer(%tile_5_2) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memK_5_cons_buff_0"} : memref<64x64xbf16> 
    %memK_5_cons_buff_1 = aie.buffer(%tile_5_2) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memK_5_cons_buff_1"} : memref<64x64xbf16> 
    %memK_5_cons_prod_lock_0 = aie.lock(%tile_5_2, 1) {init = 2 : i32, sym_name = "memK_5_cons_prod_lock_0"}
    %memK_5_cons_cons_lock_0 = aie.lock(%tile_5_2, 2) {init = 0 : i32, sym_name = "memK_5_cons_cons_lock_0"}
    %memK_6_cons_buff_0 = aie.buffer(%tile_6_2) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memK_6_cons_buff_0"} : memref<64x64xbf16> 
    %memK_6_cons_buff_1 = aie.buffer(%tile_6_2) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memK_6_cons_buff_1"} : memref<64x64xbf16> 
    %memK_6_cons_prod_lock_0 = aie.lock(%tile_6_2, 1) {init = 2 : i32, sym_name = "memK_6_cons_prod_lock_0"}
    %memK_6_cons_cons_lock_0 = aie.lock(%tile_6_2, 2) {init = 0 : i32, sym_name = "memK_6_cons_cons_lock_0"}
    %memK_7_cons_buff_0 = aie.buffer(%tile_7_2) {address = 24576 : i32, mem_bank = 1 : i32, sym_name = "memK_7_cons_buff_0"} : memref<64x64xbf16> 
    %memK_7_cons_buff_1 = aie.buffer(%tile_7_2) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "memK_7_cons_buff_1"} : memref<64x64xbf16> 
    %memK_7_cons_prod_lock_0 = aie.lock(%tile_7_2, 1) {init = 2 : i32, sym_name = "memK_7_cons_prod_lock_0"}
    %memK_7_cons_cons_lock_0 = aie.lock(%tile_7_2, 2) {init = 0 : i32, sym_name = "memK_7_cons_cons_lock_0"}
    %inK_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "inK_cons_buff_0"} : memref<64x64xbf16> 
    %inK_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "inK_cons_buff_1"} : memref<64x64xbf16> 
    %inK_cons_prod_lock_0 = aie.lock(%mem_tile_3_1, 0) {init = 2 : i32, sym_name = "inK_cons_prod_lock_0"}
    %inK_cons_cons_lock_0 = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "inK_cons_cons_lock_0"}
    %inK_prod_lock_0 = aie.lock(%shim_noc_tile_5_0, 0) {init = 0 : i32, sym_name = "inK_prod_lock_0"}
    %inK_cons_lock_0 = aie.lock(%shim_noc_tile_5_0, 1) {init = 0 : i32, sym_name = "inK_cons_lock_0"}
    aie.flow(%shim_noc_tile_5_0, DMA : 0, %mem_tile_3_1, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_7_2, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_6_2, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_5_2, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_4_2, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_3_2, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_2_2, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%shim_noc_tile_4_0, DMA : 0, %mem_tile_6_1, DMA : 0)
    aie.flow(%mem_tile_6_1, DMA : 0, %tile_0_2, DMA : 1)
    aie.flow(%mem_tile_6_1, DMA : 1, %tile_1_2, DMA : 1)
    aie.flow(%mem_tile_6_1, DMA : 2, %tile_2_2, DMA : 1)
    aie.flow(%mem_tile_6_1, DMA : 3, %tile_3_2, DMA : 1)
    aie.flow(%shim_noc_tile_4_0, DMA : 1, %mem_tile_7_1, DMA : 0)
    aie.flow(%mem_tile_7_1, DMA : 0, %tile_4_2, DMA : 1)
    aie.flow(%mem_tile_7_1, DMA : 1, %tile_5_2, DMA : 1)
    aie.flow(%mem_tile_7_1, DMA : 2, %tile_6_2, DMA : 1)
    aie.flow(%mem_tile_7_1, DMA : 3, %tile_7_2, DMA : 1)
    aie.flow(%shim_noc_tile_6_0, DMA : 0, %mem_tile_4_1, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_7_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_6_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_5_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_4_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_3_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_2_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_1_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_0_4, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %mem_tile_0_1, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_0_3, DMA : 0)
    aie.flow(%tile_1_2, DMA : 0, %mem_tile_0_1, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_1_3, DMA : 0)
    aie.flow(%tile_2_2, DMA : 0, %mem_tile_0_1, DMA : 2)
    aie.flow(%mem_tile_0_1, DMA : 2, %tile_2_3, DMA : 0)
    aie.flow(%tile_3_2, DMA : 0, %mem_tile_0_1, DMA : 3)
    aie.flow(%mem_tile_0_1, DMA : 3, %tile_3_3, DMA : 0)
    aie.flow(%tile_4_2, DMA : 0, %mem_tile_0_1, DMA : 4)
    aie.flow(%mem_tile_0_1, DMA : 4, %tile_4_3, DMA : 0)
    aie.flow(%tile_5_2, DMA : 0, %mem_tile_0_1, DMA : 5)
    aie.flow(%mem_tile_0_1, DMA : 5, %tile_5_3, DMA : 0)
    aie.flow(%tile_6_2, DMA : 0, %mem_tile_1_1, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_6_3, DMA : 0)
    aie.flow(%tile_7_2, DMA : 0, %mem_tile_1_1, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 1, %tile_7_3, DMA : 0)
    aie.flow(%mem_tile_6_1, DMA : 4, %shim_noc_tile_7_0, DMA : 0)
    aie.flow(%tile_0_4, DMA : 0, %mem_tile_6_1, DMA : 1)
    aie.flow(%tile_1_4, DMA : 0, %mem_tile_6_1, DMA : 2)
    aie.flow(%tile_2_4, DMA : 0, %mem_tile_6_1, DMA : 3)
    aie.flow(%tile_3_4, DMA : 0, %mem_tile_6_1, DMA : 4)
    aie.flow(%mem_tile_7_1, DMA : 4, %shim_noc_tile_7_0, DMA : 1)
    aie.flow(%tile_4_4, DMA : 0, %mem_tile_7_1, DMA : 1)
    aie.flow(%tile_5_4, DMA : 0, %mem_tile_7_1, DMA : 2)
    aie.flow(%tile_6_4, DMA : 0, %mem_tile_7_1, DMA : 3)
    aie.flow(%tile_7_4, DMA : 0, %mem_tile_7_1, DMA : 4)
    aie.flow(%tile_0_3, DMA : 0, %mem_tile_1_1, DMA : 2)
    aie.flow(%mem_tile_1_1, DMA : 2, %tile_0_4, DMA : 1)
    aie.flow(%tile_1_3, DMA : 0, %mem_tile_1_1, DMA : 3)
    aie.flow(%mem_tile_1_1, DMA : 3, %tile_1_4, DMA : 1)
    aie.flow(%tile_2_3, DMA : 0, %mem_tile_1_1, DMA : 4)
    aie.flow(%mem_tile_1_1, DMA : 4, %tile_2_4, DMA : 1)
    aie.flow(%tile_3_3, DMA : 0, %mem_tile_1_1, DMA : 5)
    aie.flow(%mem_tile_1_1, DMA : 5, %tile_3_4, DMA : 1)
    aie.flow(%tile_4_3, DMA : 0, %mem_tile_2_1, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_4_4, DMA : 1)
    aie.flow(%tile_5_3, DMA : 0, %mem_tile_2_1, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_5_4, DMA : 1)
    aie.flow(%tile_6_3, DMA : 0, %mem_tile_2_1, DMA : 2)
    aie.flow(%mem_tile_2_1, DMA : 2, %tile_6_4, DMA : 1)
    aie.flow(%tile_7_3, DMA : 0, %mem_tile_2_1, DMA : 3)
    aie.flow(%mem_tile_2_1, DMA : 3, %tile_7_4, DMA : 1)
    func.func private @zero_bf16(memref<64x64xbf16>)
    func.func private @matmul_bf16_bf16_wrapper(memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>)
    %mha_rtpss_0_stage0 = aie.buffer(%tile_0_2) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_0_stage0"} : memref<4xi32> 
    %idx_buffer_qk_0 = aie.buffer(%tile_0_2) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_qk_0"} : memref<2xi32> = dense<0>
    func.func private @partial_softmax(memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32)
    func.func private @init_scale_buffer(memref<256xbf16>, i32)
    func.func private @passThroughLine(memref<256xbf16>, memref<256xbf16>, i32)
    %mha_rtpss_0_stage1 = aie.buffer(%tile_0_3) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_0_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_0 = aie.buffer(%tile_0_3) {address = 25088 : i32, mem_bank = 1 : i32, sym_name = "idx_buffer_softmax_0"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_0 = aie.buffer(%tile_0_3) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "scale_buffer_softmax_0"} : memref<256xbf16> = dense<0.000000e+00>
    func.func private @matmul_PV(memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>)
    func.func private @rescale_O(memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>)
    %mha_rtpss_0_stage2 = aie.buffer(%tile_0_4) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_0_stage2"} : memref<4xi32> 
    %idx_buffer_pv_0 = aie.buffer(%tile_0_4) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_pv_0"} : memref<2xi32> = dense<0>
    %mha_rtpss_1_stage0 = aie.buffer(%tile_1_2) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_1_stage0"} : memref<4xi32> 
    %idx_buffer_qk_1 = aie.buffer(%tile_1_2) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_qk_1"} : memref<2xi32> = dense<0>
    %mha_rtpss_1_stage1 = aie.buffer(%tile_1_3) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_1_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_1 = aie.buffer(%tile_1_3) {address = 25088 : i32, mem_bank = 1 : i32, sym_name = "idx_buffer_softmax_1"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_1 = aie.buffer(%tile_1_3) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "scale_buffer_softmax_1"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_1_stage2 = aie.buffer(%tile_1_4) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_1_stage2"} : memref<4xi32> 
    %idx_buffer_pv_1 = aie.buffer(%tile_1_4) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_pv_1"} : memref<2xi32> = dense<0>
    %mha_rtpss_2_stage0 = aie.buffer(%tile_2_2) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_2_stage0"} : memref<4xi32> 
    %idx_buffer_qk_2 = aie.buffer(%tile_2_2) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_qk_2"} : memref<2xi32> = dense<0>
    %mha_rtpss_2_stage1 = aie.buffer(%tile_2_3) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_2_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_2 = aie.buffer(%tile_2_3) {address = 25088 : i32, mem_bank = 1 : i32, sym_name = "idx_buffer_softmax_2"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_2 = aie.buffer(%tile_2_3) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "scale_buffer_softmax_2"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_2_stage2 = aie.buffer(%tile_2_4) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_2_stage2"} : memref<4xi32> 
    %idx_buffer_pv_2 = aie.buffer(%tile_2_4) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_pv_2"} : memref<2xi32> = dense<0>
    %mha_rtpss_3_stage0 = aie.buffer(%tile_3_2) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_3_stage0"} : memref<4xi32> 
    %idx_buffer_qk_3 = aie.buffer(%tile_3_2) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_qk_3"} : memref<2xi32> = dense<0>
    %mha_rtpss_3_stage1 = aie.buffer(%tile_3_3) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_3_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_3 = aie.buffer(%tile_3_3) {address = 25088 : i32, mem_bank = 1 : i32, sym_name = "idx_buffer_softmax_3"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_3 = aie.buffer(%tile_3_3) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "scale_buffer_softmax_3"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_3_stage2 = aie.buffer(%tile_3_4) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_3_stage2"} : memref<4xi32> 
    %idx_buffer_pv_3 = aie.buffer(%tile_3_4) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_pv_3"} : memref<2xi32> = dense<0>
    %mha_rtpss_4_stage0 = aie.buffer(%tile_4_2) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_4_stage0"} : memref<4xi32> 
    %idx_buffer_qk_4 = aie.buffer(%tile_4_2) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_qk_4"} : memref<2xi32> = dense<0>
    %mha_rtpss_4_stage1 = aie.buffer(%tile_4_3) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_4_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_4 = aie.buffer(%tile_4_3) {address = 25088 : i32, mem_bank = 1 : i32, sym_name = "idx_buffer_softmax_4"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_4 = aie.buffer(%tile_4_3) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "scale_buffer_softmax_4"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_4_stage2 = aie.buffer(%tile_4_4) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_4_stage2"} : memref<4xi32> 
    %idx_buffer_pv_4 = aie.buffer(%tile_4_4) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_pv_4"} : memref<2xi32> = dense<0>
    %mha_rtpss_5_stage0 = aie.buffer(%tile_5_2) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_5_stage0"} : memref<4xi32> 
    %idx_buffer_qk_5 = aie.buffer(%tile_5_2) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_qk_5"} : memref<2xi32> = dense<0>
    %mha_rtpss_5_stage1 = aie.buffer(%tile_5_3) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_5_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_5 = aie.buffer(%tile_5_3) {address = 25088 : i32, mem_bank = 1 : i32, sym_name = "idx_buffer_softmax_5"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_5 = aie.buffer(%tile_5_3) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "scale_buffer_softmax_5"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_5_stage2 = aie.buffer(%tile_5_4) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_5_stage2"} : memref<4xi32> 
    %idx_buffer_pv_5 = aie.buffer(%tile_5_4) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_pv_5"} : memref<2xi32> = dense<0>
    %mha_rtpss_6_stage0 = aie.buffer(%tile_6_2) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_6_stage0"} : memref<4xi32> 
    %idx_buffer_qk_6 = aie.buffer(%tile_6_2) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_qk_6"} : memref<2xi32> = dense<0>
    %mha_rtpss_6_stage1 = aie.buffer(%tile_6_3) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_6_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_6 = aie.buffer(%tile_6_3) {address = 25088 : i32, mem_bank = 1 : i32, sym_name = "idx_buffer_softmax_6"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_6 = aie.buffer(%tile_6_3) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "scale_buffer_softmax_6"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_6_stage2 = aie.buffer(%tile_6_4) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_6_stage2"} : memref<4xi32> 
    %idx_buffer_pv_6 = aie.buffer(%tile_6_4) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_pv_6"} : memref<2xi32> = dense<0>
    %mha_rtpss_7_stage0 = aie.buffer(%tile_7_2) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_7_stage0"} : memref<4xi32> 
    %idx_buffer_qk_7 = aie.buffer(%tile_7_2) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_qk_7"} : memref<2xi32> = dense<0>
    %mha_rtpss_7_stage1 = aie.buffer(%tile_7_3) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_7_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_7 = aie.buffer(%tile_7_3) {address = 25088 : i32, mem_bank = 1 : i32, sym_name = "idx_buffer_softmax_7"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_7 = aie.buffer(%tile_7_3) {address = 40960 : i32, mem_bank = 2 : i32, sym_name = "scale_buffer_softmax_7"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_7_stage2 = aie.buffer(%tile_7_4) {address = 57344 : i32, mem_bank = 3 : i32, sym_name = "mha_rtpss_7_stage2"} : memref<4xi32> 
    %idx_buffer_pv_7 = aie.buffer(%tile_7_4) {address = 57360 : i32, mem_bank = 3 : i32, sym_name = "idx_buffer_pv_7"} : memref<2xi32> = dense<0>
    %lock_0_2 = aie.lock(%tile_0_2, 0)
    %_anonymous0 = aie.buffer(%tile_0_2) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous0"} : memref<3xi32> 
    %core_0_2 = aie.core(%tile_0_2) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous0[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous0[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous0[%c2] : memref<3xi32>
      aie.use_lock(%lock_0_2, Acquire, 1)
      %0 = memref.load %mha_rtpss_0_stage0[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_0_stage0[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%4: index):  // 2 preds: ^bb0, ^bb20
      %5 = arith.cmpi slt, %4, %c9223372036854775807 : index
      cf.cond_br %5, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_qk_0[%c0] : memref<2xi32>
      memref.store %c0_i32, %idx_buffer_qk_0[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%6: index):  // 2 preds: ^bb2, ^bb19
      %7 = arith.cmpi slt, %6, %2 : index
      cf.cond_br %7, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memQ0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous0[%c0] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%memQ0_cons_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%memQ0_cons_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%memQ0_cons_buff_0 : memref<64x64xbf16>)
    ^bb8(%11: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      cf.br ^bb9(%c0 : index)
    ^bb9(%12: index):  // 2 preds: ^bb8, ^bb18
      %13 = arith.cmpi slt, %12, %3 : index
      cf.cond_br %13, ^bb10, ^bb19
    ^bb10:  // pred: ^bb9
      aie.use_lock(%memK_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %14 = memref.load %_anonymous0[%c1] : memref<3xi32>
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.index_cast %15 : index to i32
      cf.switch %16 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%memK_0_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%memK_0_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%memK_0_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%17: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%memA0_prod_lock_0, AcquireGreaterEqual, 1)
      %18 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %19 = arith.index_cast %18 : i32 to index
      %20 = arith.index_cast %19 : index to i32
      cf.switch %20 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%memA0_buff_0 : memref<64x64xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%memA0_buff_1 : memref<64x64xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%memA0_buff_0 : memref<64x64xbf16>)
    ^bb18(%21: memref<64x64xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @zero_bf16(%21) : (memref<64x64xbf16>) -> ()
      func.call @matmul_bf16_bf16_wrapper(%11, %17, %21, %idx_buffer_qk_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
      aie.use_lock(%memK_0_cons_prod_lock_0, Release, 1)
      %22 = memref.load %_anonymous0[%c1] : memref<3xi32>
      %23 = arith.addi %22, %c1_i32 : i32
      %24 = arith.cmpi sge, %23, %c2_i32 : i32
      %25 = arith.subi %23, %c2_i32 : i32
      %26 = arith.select %24, %25, %23 : i32
      memref.store %26, %_anonymous0[%c1] : memref<3xi32>
      aie.use_lock(%memA0_cons_lock_0, Release, 1)
      %27 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %28 = arith.addi %27, %c1_i32 : i32
      %29 = arith.cmpi sge, %28, %c2_i32 : i32
      %30 = arith.subi %28, %c2_i32 : i32
      %31 = arith.select %29, %30, %28 : i32
      memref.store %31, %_anonymous0[%c2] : memref<3xi32>
      %32 = memref.load %idx_buffer_qk_0[%c0] : memref<2xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      memref.store %33, %idx_buffer_qk_0[%c0] : memref<2xi32>
      %34 = arith.addi %12, %c1 : index
      cf.br ^bb9(%34 : index)
    ^bb19:  // pred: ^bb9
      memref.store %c0_i32, %idx_buffer_qk_0[%c0] : memref<2xi32>
      %35 = memref.load %idx_buffer_qk_0[%c1] : memref<2xi32>
      %36 = arith.addi %35, %c8_i32 : i32
      memref.store %36, %idx_buffer_qk_0[%c1] : memref<2xi32>
      aie.use_lock(%memQ0_cons_prod_lock_0, Release, 1)
      %37 = memref.load %_anonymous0[%c0] : memref<3xi32>
      %38 = arith.addi %37, %c1_i32 : i32
      %39 = arith.cmpi sge, %38, %c2_i32 : i32
      %40 = arith.subi %38, %c2_i32 : i32
      %41 = arith.select %39, %40, %38 : i32
      memref.store %41, %_anonymous0[%c0] : memref<3xi32>
      %42 = arith.addi %6, %c1 : index
      cf.br ^bb3(%42 : index)
    ^bb20:  // pred: ^bb3
      %43 = arith.addi %4, %c1 : index
      cf.br ^bb1(%43 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_0_3 = aie.lock(%tile_0_3, 0)
    %_anonymous1 = aie.buffer(%tile_0_3) {address = 12032 : i32, mem_bank = 0 : i32, sym_name = "_anonymous1"} : memref<3xi32> 
    %core_0_3 = aie.core(%tile_0_3) {
      %c3 = arith.constant 3 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c64_i32 = arith.constant 64 : i32
      %cst = arith.constant 1.806640e-01 : bf16
      %c256_i32 = arith.constant 256 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous1[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous1[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous1[%c2] : memref<3xi32>
      aie.use_lock(%lock_0_3, Acquire, 1)
      %0 = memref.load %mha_rtpss_0_stage1[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_0_stage1[%c1] : memref<4xi32>
      %2 = memref.load %mha_rtpss_0_stage1[%c2] : memref<4xi32>
      %3 = memref.load %mha_rtpss_0_stage1[%c3] : memref<4xi32>
      %4 = arith.index_cast %0 : i32 to index
      %5 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%6: index):  // 2 preds: ^bb0, ^bb20
      %7 = arith.cmpi slt, %6, %c9223372036854775807 : index
      cf.cond_br %7, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_softmax_0[%c0] : memref<2xi32>
      memref.store %c0_i32, %idx_buffer_softmax_0[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%8: index):  // 2 preds: ^bb2, ^bb19
      %9 = arith.cmpi slt, %8, %4 : index
      cf.cond_br %9, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      func.call @init_scale_buffer(%scale_buffer_softmax_0, %c64_i32) : (memref<256xbf16>, i32) -> ()
      cf.br ^bb5(%c0 : index)
    ^bb5(%10: index):  // 2 preds: ^bb4, ^bb18
      %11 = arith.cmpi slt, %10, %5 : index
      cf.cond_br %11, ^bb6, ^bb19
    ^bb6:  // pred: ^bb5
      aie.use_lock(%memP0_prod_lock_0, AcquireGreaterEqual, 1)
      %12 = memref.load %_anonymous1[%c0] : memref<3xi32>
      %13 = arith.index_cast %12 : i32 to index
      %14 = arith.index_cast %13 : index to i32
      cf.switch %14 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%memP0_buff_0 : memref<64x64xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%memP0_buff_1 : memref<64x64xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%memP0_buff_0 : memref<64x64xbf16>)
    ^bb10(%15: memref<64x64xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      aie.use_lock(%outA0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %16 = memref.load %_anonymous1[%c1] : memref<3xi32>
      %17 = arith.index_cast %16 : i32 to index
      %18 = arith.index_cast %17 : index to i32
      cf.switch %18 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%outA0_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%outA0_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%outA0_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%19: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%scaleOF0_prod_lock_0, AcquireGreaterEqual, 1)
      %20 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %21 = arith.index_cast %20 : i32 to index
      %22 = arith.index_cast %21 : index to i32
      cf.switch %22 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%scaleOF0_buff_0 : memref<256xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%scaleOF0_buff_1 : memref<256xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%scaleOF0_buff_0 : memref<256xbf16>)
    ^bb18(%23: memref<256xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @partial_softmax(%19, %15, %scale_buffer_softmax_0, %idx_buffer_softmax_0, %cst, %c64_i32, %c64_i32, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
      func.call @passThroughLine(%scale_buffer_softmax_0, %23, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%outA0_cons_prod_lock_0, Release, 1)
      %24 = memref.load %_anonymous1[%c1] : memref<3xi32>
      %25 = arith.addi %24, %c1_i32 : i32
      %26 = arith.cmpi sge, %25, %c2_i32 : i32
      %27 = arith.subi %25, %c2_i32 : i32
      %28 = arith.select %26, %27, %25 : i32
      memref.store %28, %_anonymous1[%c1] : memref<3xi32>
      aie.use_lock(%memP0_cons_lock_0, Release, 1)
      %29 = memref.load %_anonymous1[%c0] : memref<3xi32>
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = arith.cmpi sge, %30, %c2_i32 : i32
      %32 = arith.subi %30, %c2_i32 : i32
      %33 = arith.select %31, %32, %30 : i32
      memref.store %33, %_anonymous1[%c0] : memref<3xi32>
      aie.use_lock(%scaleOF0_cons_lock_0, Release, 1)
      %34 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %35 = arith.addi %34, %c1_i32 : i32
      %36 = arith.cmpi sge, %35, %c2_i32 : i32
      %37 = arith.subi %35, %c2_i32 : i32
      %38 = arith.select %36, %37, %35 : i32
      memref.store %38, %_anonymous1[%c2] : memref<3xi32>
      %39 = memref.load %idx_buffer_softmax_0[%c0] : memref<2xi32>
      %40 = arith.addi %39, %c1_i32 : i32
      memref.store %40, %idx_buffer_softmax_0[%c0] : memref<2xi32>
      %41 = arith.addi %10, %c1 : index
      cf.br ^bb5(%41 : index)
    ^bb19:  // pred: ^bb5
      memref.store %c0_i32, %idx_buffer_softmax_0[%c0] : memref<2xi32>
      %42 = memref.load %idx_buffer_softmax_0[%c1] : memref<2xi32>
      %43 = arith.addi %42, %c8_i32 : i32
      memref.store %43, %idx_buffer_softmax_0[%c1] : memref<2xi32>
      %44 = arith.addi %8, %c1 : index
      cf.br ^bb3(%44 : index)
    ^bb20:  // pred: ^bb3
      %45 = arith.addi %6, %c1 : index
      cf.br ^bb1(%45 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_0_4 = aie.lock(%tile_0_4, 0)
    %_anonymous2 = aie.buffer(%tile_0_4) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous2"} : memref<4xi32> 
    %core_0_4 = aie.core(%tile_0_4) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c64_i32 = arith.constant 64 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c3 = arith.constant 3 : index
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous2[%c0] : memref<4xi32>
      memref.store %c0_i32, %_anonymous2[%c1] : memref<4xi32>
      memref.store %c0_i32, %_anonymous2[%c2] : memref<4xi32>
      memref.store %c0_i32, %_anonymous2[%c3] : memref<4xi32>
      aie.use_lock(%lock_0_4, Acquire, 1)
      %0 = memref.load %mha_rtpss_0_stage2[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_0_stage2[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.cmpi sgt, %1, %c2_i32 : i32
      %4 = arith.cmpi sgt, %1, %c1_i32 : i32
      cf.br ^bb1(%c0 : index)
    ^bb1(%5: index):  // 2 preds: ^bb0, ^bb53
      %6 = arith.cmpi slt, %5, %c9223372036854775807 : index
      cf.cond_br %6, ^bb2, ^bb54
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_pv_0[%c0] : memref<2xi32>
      memref.store %c0_i32, %idx_buffer_pv_0[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%7: index):  // 2 preds: ^bb2, ^bb52
      %8 = arith.cmpi slt, %7, %2 : index
      cf.cond_br %8, ^bb4, ^bb53
    ^bb4:  // pred: ^bb3
      aie.use_lock(%outO0_prod_lock_0, AcquireGreaterEqual, 1)
      %9 = memref.load %_anonymous2[%c0] : memref<4xi32>
      %10 = arith.index_cast %9 : i32 to index
      %11 = arith.index_cast %10 : index to i32
      cf.switch %11 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%outO0_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%outO0_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%outO0_buff_0 : memref<64x64xbf16>)
    ^bb8(%12: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      func.call @zero_bf16(%12) : (memref<64x64xbf16>) -> ()
      aie.use_lock(%outP0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %13 = memref.load %_anonymous2[%c1] : memref<4xi32>
      %14 = arith.index_cast %13 : i32 to index
      %15 = arith.index_cast %14 : index to i32
      cf.switch %15 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%outP0_cons_buff_0 : memref<64x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%outP0_cons_buff_1 : memref<64x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%outP0_cons_buff_0 : memref<64x64xbf16>)
    ^bb12(%16: memref<64x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      aie.use_lock(%memV_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous2[%c2] : memref<4xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%memV_0_cons_buff_0 : memref<64x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%memV_0_cons_buff_1 : memref<64x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%memV_0_cons_buff_0 : memref<64x64xbf16>)
    ^bb16(%20: memref<64x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      aie.use_lock(%scaleOF0_cons_lock_0, AcquireGreaterEqual, 1)
      %21 = memref.load %_anonymous2[%c3] : memref<4xi32>
      %22 = arith.index_cast %21 : i32 to index
      %23 = arith.index_cast %22 : index to i32
      cf.switch %23 : i32, [
        default: ^bb19,
        0: ^bb17,
        1: ^bb18
      ]
    ^bb17:  // pred: ^bb16
      cf.br ^bb20(%scaleOF0_buff_0 : memref<256xbf16>)
    ^bb18:  // pred: ^bb16
      cf.br ^bb20(%scaleOF0_buff_1 : memref<256xbf16>)
    ^bb19:  // pred: ^bb16
      cf.br ^bb20(%scaleOF0_buff_0 : memref<256xbf16>)
    ^bb20(%24: memref<256xbf16>):  // 3 preds: ^bb17, ^bb18, ^bb19
      func.call @matmul_PV(%16, %20, %12, %24, %c64_i32, %c0_i32, %idx_buffer_pv_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP0_cons_prod_lock_0, Release, 1)
      %25 = memref.load %_anonymous2[%c1] : memref<4xi32>
      %26 = arith.addi %25, %c1_i32 : i32
      %27 = arith.cmpi sge, %26, %c2_i32 : i32
      %28 = arith.subi %26, %c2_i32 : i32
      %29 = arith.select %27, %28, %26 : i32
      memref.store %29, %_anonymous2[%c1] : memref<4xi32>
      aie.use_lock(%memV_0_cons_prod_lock_0, Release, 1)
      %30 = memref.load %_anonymous2[%c2] : memref<4xi32>
      %31 = arith.addi %30, %c1_i32 : i32
      %32 = arith.cmpi sge, %31, %c2_i32 : i32
      %33 = arith.subi %31, %c2_i32 : i32
      %34 = arith.select %32, %33, %31 : i32
      memref.store %34, %_anonymous2[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF0_prod_lock_0, Release, 1)
      %35 = memref.load %_anonymous2[%c3] : memref<4xi32>
      %36 = arith.addi %35, %c1_i32 : i32
      %37 = arith.cmpi sge, %36, %c2_i32 : i32
      %38 = arith.subi %36, %c2_i32 : i32
      %39 = arith.select %37, %38, %36 : i32
      memref.store %39, %_anonymous2[%c3] : memref<4xi32>
      %40 = memref.load %idx_buffer_pv_0[%c0] : memref<2xi32>
      %41 = arith.addi %40, %c1_i32 : i32
      memref.store %41, %idx_buffer_pv_0[%c0] : memref<2xi32>
      cf.cond_br %3, ^bb21, ^bb37
    ^bb21:  // pred: ^bb20
      %42 = arith.subi %1, %c2_i32 : i32
      %43 = arith.index_cast %42 : i32 to index
      cf.br ^bb22(%c0 : index)
    ^bb22(%44: index):  // 2 preds: ^bb21, ^bb35
      %45 = arith.cmpi slt, %44, %43 : index
      cf.cond_br %45, ^bb23, ^bb36
    ^bb23:  // pred: ^bb22
      aie.use_lock(%outP0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %46 = memref.load %_anonymous2[%c1] : memref<4xi32>
      %47 = arith.index_cast %46 : i32 to index
      %48 = arith.index_cast %47 : index to i32
      cf.switch %48 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%outP0_cons_buff_0 : memref<64x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%outP0_cons_buff_1 : memref<64x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%outP0_cons_buff_0 : memref<64x64xbf16>)
    ^bb27(%49: memref<64x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      aie.use_lock(%memV_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %50 = memref.load %_anonymous2[%c2] : memref<4xi32>
      %51 = arith.index_cast %50 : i32 to index
      %52 = arith.index_cast %51 : index to i32
      cf.switch %52 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%memV_0_cons_buff_0 : memref<64x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%memV_0_cons_buff_1 : memref<64x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%memV_0_cons_buff_0 : memref<64x64xbf16>)
    ^bb31(%53: memref<64x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      aie.use_lock(%scaleOF0_cons_lock_0, AcquireGreaterEqual, 1)
      %54 = memref.load %_anonymous2[%c3] : memref<4xi32>
      %55 = arith.index_cast %54 : i32 to index
      %56 = arith.index_cast %55 : index to i32
      cf.switch %56 : i32, [
        default: ^bb34,
        0: ^bb32,
        1: ^bb33
      ]
    ^bb32:  // pred: ^bb31
      cf.br ^bb35(%scaleOF0_buff_0 : memref<256xbf16>)
    ^bb33:  // pred: ^bb31
      cf.br ^bb35(%scaleOF0_buff_1 : memref<256xbf16>)
    ^bb34:  // pred: ^bb31
      cf.br ^bb35(%scaleOF0_buff_0 : memref<256xbf16>)
    ^bb35(%57: memref<256xbf16>):  // 3 preds: ^bb32, ^bb33, ^bb34
      func.call @matmul_PV(%49, %53, %12, %57, %c64_i32, %c1_i32, %idx_buffer_pv_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP0_cons_prod_lock_0, Release, 1)
      %58 = memref.load %_anonymous2[%c1] : memref<4xi32>
      %59 = arith.addi %58, %c1_i32 : i32
      %60 = arith.cmpi sge, %59, %c2_i32 : i32
      %61 = arith.subi %59, %c2_i32 : i32
      %62 = arith.select %60, %61, %59 : i32
      memref.store %62, %_anonymous2[%c1] : memref<4xi32>
      aie.use_lock(%memV_0_cons_prod_lock_0, Release, 1)
      %63 = memref.load %_anonymous2[%c2] : memref<4xi32>
      %64 = arith.addi %63, %c1_i32 : i32
      %65 = arith.cmpi sge, %64, %c2_i32 : i32
      %66 = arith.subi %64, %c2_i32 : i32
      %67 = arith.select %65, %66, %64 : i32
      memref.store %67, %_anonymous2[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF0_prod_lock_0, Release, 1)
      %68 = memref.load %_anonymous2[%c3] : memref<4xi32>
      %69 = arith.addi %68, %c1_i32 : i32
      %70 = arith.cmpi sge, %69, %c2_i32 : i32
      %71 = arith.subi %69, %c2_i32 : i32
      %72 = arith.select %70, %71, %69 : i32
      memref.store %72, %_anonymous2[%c3] : memref<4xi32>
      %73 = memref.load %idx_buffer_pv_0[%c0] : memref<2xi32>
      %74 = arith.addi %73, %c1_i32 : i32
      memref.store %74, %idx_buffer_pv_0[%c0] : memref<2xi32>
      %75 = arith.addi %44, %c1 : index
      cf.br ^bb22(%75 : index)
    ^bb36:  // pred: ^bb22
      cf.br ^bb37
    ^bb37:  // 2 preds: ^bb20, ^bb36
      cf.cond_br %4, ^bb38, ^bb51
    ^bb38:  // pred: ^bb37
      aie.use_lock(%outP0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous2[%c1] : memref<4xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%outP0_cons_buff_0 : memref<64x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%outP0_cons_buff_1 : memref<64x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%outP0_cons_buff_0 : memref<64x64xbf16>)
    ^bb42(%79: memref<64x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      aie.use_lock(%memV_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %80 = memref.load %_anonymous2[%c2] : memref<4xi32>
      %81 = arith.index_cast %80 : i32 to index
      %82 = arith.index_cast %81 : index to i32
      cf.switch %82 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%memV_0_cons_buff_0 : memref<64x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%memV_0_cons_buff_1 : memref<64x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%memV_0_cons_buff_0 : memref<64x64xbf16>)
    ^bb46(%83: memref<64x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      aie.use_lock(%scaleOF0_cons_lock_0, AcquireGreaterEqual, 1)
      %84 = memref.load %_anonymous2[%c3] : memref<4xi32>
      %85 = arith.index_cast %84 : i32 to index
      %86 = arith.index_cast %85 : index to i32
      cf.switch %86 : i32, [
        default: ^bb49,
        0: ^bb47,
        1: ^bb48
      ]
    ^bb47:  // pred: ^bb46
      cf.br ^bb50(%scaleOF0_buff_0 : memref<256xbf16>)
    ^bb48:  // pred: ^bb46
      cf.br ^bb50(%scaleOF0_buff_1 : memref<256xbf16>)
    ^bb49:  // pred: ^bb46
      cf.br ^bb50(%scaleOF0_buff_0 : memref<256xbf16>)
    ^bb50(%87: memref<256xbf16>):  // 3 preds: ^bb47, ^bb48, ^bb49
      func.call @matmul_PV(%79, %83, %12, %87, %c64_i32, %c1_i32, %idx_buffer_pv_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      func.call @rescale_O(%12, %87, %c64_i32, %idx_buffer_pv_0) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP0_cons_prod_lock_0, Release, 1)
      %88 = memref.load %_anonymous2[%c1] : memref<4xi32>
      %89 = arith.addi %88, %c1_i32 : i32
      %90 = arith.cmpi sge, %89, %c2_i32 : i32
      %91 = arith.subi %89, %c2_i32 : i32
      %92 = arith.select %90, %91, %89 : i32
      memref.store %92, %_anonymous2[%c1] : memref<4xi32>
      aie.use_lock(%memV_0_cons_prod_lock_0, Release, 1)
      %93 = memref.load %_anonymous2[%c2] : memref<4xi32>
      %94 = arith.addi %93, %c1_i32 : i32
      %95 = arith.cmpi sge, %94, %c2_i32 : i32
      %96 = arith.subi %94, %c2_i32 : i32
      %97 = arith.select %95, %96, %94 : i32
      memref.store %97, %_anonymous2[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF0_prod_lock_0, Release, 1)
      %98 = memref.load %_anonymous2[%c3] : memref<4xi32>
      %99 = arith.addi %98, %c1_i32 : i32
      %100 = arith.cmpi sge, %99, %c2_i32 : i32
      %101 = arith.subi %99, %c2_i32 : i32
      %102 = arith.select %100, %101, %99 : i32
      memref.store %102, %_anonymous2[%c3] : memref<4xi32>
      %103 = memref.load %idx_buffer_pv_0[%c0] : memref<2xi32>
      %104 = arith.addi %103, %c1_i32 : i32
      memref.store %104, %idx_buffer_pv_0[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb51:  // pred: ^bb37
      func.call @rescale_O(%12, %24, %c64_i32, %idx_buffer_pv_0) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      %105 = memref.load %idx_buffer_pv_0[%c0] : memref<2xi32>
      %106 = arith.addi %105, %c1_i32 : i32
      memref.store %106, %idx_buffer_pv_0[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb52:  // 2 preds: ^bb50, ^bb51
      memref.store %c0_i32, %idx_buffer_pv_0[%c0] : memref<2xi32>
      %107 = memref.load %idx_buffer_pv_0[%c1] : memref<2xi32>
      %108 = arith.addi %107, %c8_i32 : i32
      memref.store %108, %idx_buffer_pv_0[%c1] : memref<2xi32>
      aie.use_lock(%outO0_cons_lock_0, Release, 1)
      %109 = memref.load %_anonymous2[%c0] : memref<4xi32>
      %110 = arith.addi %109, %c1_i32 : i32
      %111 = arith.cmpi sge, %110, %c2_i32 : i32
      %112 = arith.subi %110, %c2_i32 : i32
      %113 = arith.select %111, %112, %110 : i32
      memref.store %113, %_anonymous2[%c0] : memref<4xi32>
      %114 = arith.addi %7, %c1 : index
      cf.br ^bb3(%114 : index)
    ^bb53:  // pred: ^bb3
      %115 = arith.addi %5, %c1 : index
      cf.br ^bb1(%115 : index)
    ^bb54:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_1_2 = aie.lock(%tile_1_2, 0)
    %_anonymous3 = aie.buffer(%tile_1_2) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous3"} : memref<3xi32> 
    %core_1_2 = aie.core(%tile_1_2) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous3[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous3[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous3[%c2] : memref<3xi32>
      aie.use_lock(%lock_1_2, Acquire, 1)
      %0 = memref.load %mha_rtpss_1_stage0[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_1_stage0[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%4: index):  // 2 preds: ^bb0, ^bb20
      %5 = arith.cmpi slt, %4, %c9223372036854775807 : index
      cf.cond_br %5, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_qk_1[%c0] : memref<2xi32>
      memref.store %c1_i32, %idx_buffer_qk_1[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%6: index):  // 2 preds: ^bb2, ^bb19
      %7 = arith.cmpi slt, %6, %2 : index
      cf.cond_br %7, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memQ1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous3[%c0] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%memQ1_cons_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%memQ1_cons_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%memQ1_cons_buff_0 : memref<64x64xbf16>)
    ^bb8(%11: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      cf.br ^bb9(%c0 : index)
    ^bb9(%12: index):  // 2 preds: ^bb8, ^bb18
      %13 = arith.cmpi slt, %12, %3 : index
      cf.cond_br %13, ^bb10, ^bb19
    ^bb10:  // pred: ^bb9
      aie.use_lock(%memK_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %14 = memref.load %_anonymous3[%c1] : memref<3xi32>
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.index_cast %15 : index to i32
      cf.switch %16 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%memK_1_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%memK_1_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%memK_1_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%17: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%memA1_prod_lock_0, AcquireGreaterEqual, 1)
      %18 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %19 = arith.index_cast %18 : i32 to index
      %20 = arith.index_cast %19 : index to i32
      cf.switch %20 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%memA1_buff_0 : memref<64x64xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%memA1_buff_1 : memref<64x64xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%memA1_buff_0 : memref<64x64xbf16>)
    ^bb18(%21: memref<64x64xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @zero_bf16(%21) : (memref<64x64xbf16>) -> ()
      func.call @matmul_bf16_bf16_wrapper(%11, %17, %21, %idx_buffer_qk_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
      aie.use_lock(%memK_1_cons_prod_lock_0, Release, 1)
      %22 = memref.load %_anonymous3[%c1] : memref<3xi32>
      %23 = arith.addi %22, %c1_i32 : i32
      %24 = arith.cmpi sge, %23, %c2_i32 : i32
      %25 = arith.subi %23, %c2_i32 : i32
      %26 = arith.select %24, %25, %23 : i32
      memref.store %26, %_anonymous3[%c1] : memref<3xi32>
      aie.use_lock(%memA1_cons_lock_0, Release, 1)
      %27 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %28 = arith.addi %27, %c1_i32 : i32
      %29 = arith.cmpi sge, %28, %c2_i32 : i32
      %30 = arith.subi %28, %c2_i32 : i32
      %31 = arith.select %29, %30, %28 : i32
      memref.store %31, %_anonymous3[%c2] : memref<3xi32>
      %32 = memref.load %idx_buffer_qk_1[%c0] : memref<2xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      memref.store %33, %idx_buffer_qk_1[%c0] : memref<2xi32>
      %34 = arith.addi %12, %c1 : index
      cf.br ^bb9(%34 : index)
    ^bb19:  // pred: ^bb9
      memref.store %c0_i32, %idx_buffer_qk_1[%c0] : memref<2xi32>
      %35 = memref.load %idx_buffer_qk_1[%c1] : memref<2xi32>
      %36 = arith.addi %35, %c8_i32 : i32
      memref.store %36, %idx_buffer_qk_1[%c1] : memref<2xi32>
      aie.use_lock(%memQ1_cons_prod_lock_0, Release, 1)
      %37 = memref.load %_anonymous3[%c0] : memref<3xi32>
      %38 = arith.addi %37, %c1_i32 : i32
      %39 = arith.cmpi sge, %38, %c2_i32 : i32
      %40 = arith.subi %38, %c2_i32 : i32
      %41 = arith.select %39, %40, %38 : i32
      memref.store %41, %_anonymous3[%c0] : memref<3xi32>
      %42 = arith.addi %6, %c1 : index
      cf.br ^bb3(%42 : index)
    ^bb20:  // pred: ^bb3
      %43 = arith.addi %4, %c1 : index
      cf.br ^bb1(%43 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_1_3 = aie.lock(%tile_1_3, 0)
    %_anonymous4 = aie.buffer(%tile_1_3) {address = 12032 : i32, mem_bank = 0 : i32, sym_name = "_anonymous4"} : memref<3xi32> 
    %core_1_3 = aie.core(%tile_1_3) {
      %c3 = arith.constant 3 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_i32 = arith.constant 1 : i32
      %c64_i32 = arith.constant 64 : i32
      %cst = arith.constant 1.806640e-01 : bf16
      %c256_i32 = arith.constant 256 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous4[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous4[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous4[%c2] : memref<3xi32>
      aie.use_lock(%lock_1_3, Acquire, 1)
      %0 = memref.load %mha_rtpss_1_stage1[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_1_stage1[%c1] : memref<4xi32>
      %2 = memref.load %mha_rtpss_1_stage1[%c2] : memref<4xi32>
      %3 = memref.load %mha_rtpss_1_stage1[%c3] : memref<4xi32>
      %4 = arith.index_cast %0 : i32 to index
      %5 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%6: index):  // 2 preds: ^bb0, ^bb20
      %7 = arith.cmpi slt, %6, %c9223372036854775807 : index
      cf.cond_br %7, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_softmax_1[%c0] : memref<2xi32>
      memref.store %c1_i32, %idx_buffer_softmax_1[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%8: index):  // 2 preds: ^bb2, ^bb19
      %9 = arith.cmpi slt, %8, %4 : index
      cf.cond_br %9, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      func.call @init_scale_buffer(%scale_buffer_softmax_1, %c64_i32) : (memref<256xbf16>, i32) -> ()
      cf.br ^bb5(%c0 : index)
    ^bb5(%10: index):  // 2 preds: ^bb4, ^bb18
      %11 = arith.cmpi slt, %10, %5 : index
      cf.cond_br %11, ^bb6, ^bb19
    ^bb6:  // pred: ^bb5
      aie.use_lock(%memP1_prod_lock_0, AcquireGreaterEqual, 1)
      %12 = memref.load %_anonymous4[%c0] : memref<3xi32>
      %13 = arith.index_cast %12 : i32 to index
      %14 = arith.index_cast %13 : index to i32
      cf.switch %14 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%memP1_buff_0 : memref<64x64xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%memP1_buff_1 : memref<64x64xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%memP1_buff_0 : memref<64x64xbf16>)
    ^bb10(%15: memref<64x64xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      aie.use_lock(%outA1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %16 = memref.load %_anonymous4[%c1] : memref<3xi32>
      %17 = arith.index_cast %16 : i32 to index
      %18 = arith.index_cast %17 : index to i32
      cf.switch %18 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%outA1_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%outA1_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%outA1_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%19: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%scaleOF1_prod_lock_0, AcquireGreaterEqual, 1)
      %20 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %21 = arith.index_cast %20 : i32 to index
      %22 = arith.index_cast %21 : index to i32
      cf.switch %22 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%scaleOF1_buff_0 : memref<256xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%scaleOF1_buff_1 : memref<256xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%scaleOF1_buff_0 : memref<256xbf16>)
    ^bb18(%23: memref<256xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @partial_softmax(%19, %15, %scale_buffer_softmax_1, %idx_buffer_softmax_1, %cst, %c64_i32, %c64_i32, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
      func.call @passThroughLine(%scale_buffer_softmax_1, %23, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%outA1_cons_prod_lock_0, Release, 1)
      %24 = memref.load %_anonymous4[%c1] : memref<3xi32>
      %25 = arith.addi %24, %c1_i32 : i32
      %26 = arith.cmpi sge, %25, %c2_i32 : i32
      %27 = arith.subi %25, %c2_i32 : i32
      %28 = arith.select %26, %27, %25 : i32
      memref.store %28, %_anonymous4[%c1] : memref<3xi32>
      aie.use_lock(%memP1_cons_lock_0, Release, 1)
      %29 = memref.load %_anonymous4[%c0] : memref<3xi32>
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = arith.cmpi sge, %30, %c2_i32 : i32
      %32 = arith.subi %30, %c2_i32 : i32
      %33 = arith.select %31, %32, %30 : i32
      memref.store %33, %_anonymous4[%c0] : memref<3xi32>
      aie.use_lock(%scaleOF1_cons_lock_0, Release, 1)
      %34 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %35 = arith.addi %34, %c1_i32 : i32
      %36 = arith.cmpi sge, %35, %c2_i32 : i32
      %37 = arith.subi %35, %c2_i32 : i32
      %38 = arith.select %36, %37, %35 : i32
      memref.store %38, %_anonymous4[%c2] : memref<3xi32>
      %39 = memref.load %idx_buffer_softmax_1[%c0] : memref<2xi32>
      %40 = arith.addi %39, %c1_i32 : i32
      memref.store %40, %idx_buffer_softmax_1[%c0] : memref<2xi32>
      %41 = arith.addi %10, %c1 : index
      cf.br ^bb5(%41 : index)
    ^bb19:  // pred: ^bb5
      memref.store %c0_i32, %idx_buffer_softmax_1[%c0] : memref<2xi32>
      %42 = memref.load %idx_buffer_softmax_1[%c1] : memref<2xi32>
      %43 = arith.addi %42, %c8_i32 : i32
      memref.store %43, %idx_buffer_softmax_1[%c1] : memref<2xi32>
      %44 = arith.addi %8, %c1 : index
      cf.br ^bb3(%44 : index)
    ^bb20:  // pred: ^bb3
      %45 = arith.addi %6, %c1 : index
      cf.br ^bb1(%45 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_1_4 = aie.lock(%tile_1_4, 0)
    %_anonymous5 = aie.buffer(%tile_1_4) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous5"} : memref<4xi32> 
    %core_1_4 = aie.core(%tile_1_4) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_i32 = arith.constant 1 : i32
      %c64_i32 = arith.constant 64 : i32
      %c8_i32 = arith.constant 8 : i32
      %c3 = arith.constant 3 : index
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous5[%c0] : memref<4xi32>
      memref.store %c0_i32, %_anonymous5[%c1] : memref<4xi32>
      memref.store %c0_i32, %_anonymous5[%c2] : memref<4xi32>
      memref.store %c0_i32, %_anonymous5[%c3] : memref<4xi32>
      aie.use_lock(%lock_1_4, Acquire, 1)
      %0 = memref.load %mha_rtpss_1_stage2[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_1_stage2[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.cmpi sgt, %1, %c2_i32 : i32
      %4 = arith.cmpi sgt, %1, %c1_i32 : i32
      cf.br ^bb1(%c0 : index)
    ^bb1(%5: index):  // 2 preds: ^bb0, ^bb53
      %6 = arith.cmpi slt, %5, %c9223372036854775807 : index
      cf.cond_br %6, ^bb2, ^bb54
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_pv_1[%c0] : memref<2xi32>
      memref.store %c1_i32, %idx_buffer_pv_1[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%7: index):  // 2 preds: ^bb2, ^bb52
      %8 = arith.cmpi slt, %7, %2 : index
      cf.cond_br %8, ^bb4, ^bb53
    ^bb4:  // pred: ^bb3
      aie.use_lock(%outO1_prod_lock_0, AcquireGreaterEqual, 1)
      %9 = memref.load %_anonymous5[%c0] : memref<4xi32>
      %10 = arith.index_cast %9 : i32 to index
      %11 = arith.index_cast %10 : index to i32
      cf.switch %11 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%outO1_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%outO1_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%outO1_buff_0 : memref<64x64xbf16>)
    ^bb8(%12: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      func.call @zero_bf16(%12) : (memref<64x64xbf16>) -> ()
      aie.use_lock(%outP1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %13 = memref.load %_anonymous5[%c1] : memref<4xi32>
      %14 = arith.index_cast %13 : i32 to index
      %15 = arith.index_cast %14 : index to i32
      cf.switch %15 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%outP1_cons_buff_0 : memref<64x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%outP1_cons_buff_1 : memref<64x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%outP1_cons_buff_0 : memref<64x64xbf16>)
    ^bb12(%16: memref<64x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      aie.use_lock(%memV_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous5[%c2] : memref<4xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%memV_1_cons_buff_0 : memref<64x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%memV_1_cons_buff_1 : memref<64x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%memV_1_cons_buff_0 : memref<64x64xbf16>)
    ^bb16(%20: memref<64x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      aie.use_lock(%scaleOF1_cons_lock_0, AcquireGreaterEqual, 1)
      %21 = memref.load %_anonymous5[%c3] : memref<4xi32>
      %22 = arith.index_cast %21 : i32 to index
      %23 = arith.index_cast %22 : index to i32
      cf.switch %23 : i32, [
        default: ^bb19,
        0: ^bb17,
        1: ^bb18
      ]
    ^bb17:  // pred: ^bb16
      cf.br ^bb20(%scaleOF1_buff_0 : memref<256xbf16>)
    ^bb18:  // pred: ^bb16
      cf.br ^bb20(%scaleOF1_buff_1 : memref<256xbf16>)
    ^bb19:  // pred: ^bb16
      cf.br ^bb20(%scaleOF1_buff_0 : memref<256xbf16>)
    ^bb20(%24: memref<256xbf16>):  // 3 preds: ^bb17, ^bb18, ^bb19
      func.call @matmul_PV(%16, %20, %12, %24, %c64_i32, %c0_i32, %idx_buffer_pv_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP1_cons_prod_lock_0, Release, 1)
      %25 = memref.load %_anonymous5[%c1] : memref<4xi32>
      %26 = arith.addi %25, %c1_i32 : i32
      %27 = arith.cmpi sge, %26, %c2_i32 : i32
      %28 = arith.subi %26, %c2_i32 : i32
      %29 = arith.select %27, %28, %26 : i32
      memref.store %29, %_anonymous5[%c1] : memref<4xi32>
      aie.use_lock(%memV_1_cons_prod_lock_0, Release, 1)
      %30 = memref.load %_anonymous5[%c2] : memref<4xi32>
      %31 = arith.addi %30, %c1_i32 : i32
      %32 = arith.cmpi sge, %31, %c2_i32 : i32
      %33 = arith.subi %31, %c2_i32 : i32
      %34 = arith.select %32, %33, %31 : i32
      memref.store %34, %_anonymous5[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF1_prod_lock_0, Release, 1)
      %35 = memref.load %_anonymous5[%c3] : memref<4xi32>
      %36 = arith.addi %35, %c1_i32 : i32
      %37 = arith.cmpi sge, %36, %c2_i32 : i32
      %38 = arith.subi %36, %c2_i32 : i32
      %39 = arith.select %37, %38, %36 : i32
      memref.store %39, %_anonymous5[%c3] : memref<4xi32>
      %40 = memref.load %idx_buffer_pv_1[%c0] : memref<2xi32>
      %41 = arith.addi %40, %c1_i32 : i32
      memref.store %41, %idx_buffer_pv_1[%c0] : memref<2xi32>
      cf.cond_br %3, ^bb21, ^bb37
    ^bb21:  // pred: ^bb20
      %42 = arith.subi %1, %c2_i32 : i32
      %43 = arith.index_cast %42 : i32 to index
      cf.br ^bb22(%c0 : index)
    ^bb22(%44: index):  // 2 preds: ^bb21, ^bb35
      %45 = arith.cmpi slt, %44, %43 : index
      cf.cond_br %45, ^bb23, ^bb36
    ^bb23:  // pred: ^bb22
      aie.use_lock(%outP1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %46 = memref.load %_anonymous5[%c1] : memref<4xi32>
      %47 = arith.index_cast %46 : i32 to index
      %48 = arith.index_cast %47 : index to i32
      cf.switch %48 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%outP1_cons_buff_0 : memref<64x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%outP1_cons_buff_1 : memref<64x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%outP1_cons_buff_0 : memref<64x64xbf16>)
    ^bb27(%49: memref<64x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      aie.use_lock(%memV_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %50 = memref.load %_anonymous5[%c2] : memref<4xi32>
      %51 = arith.index_cast %50 : i32 to index
      %52 = arith.index_cast %51 : index to i32
      cf.switch %52 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%memV_1_cons_buff_0 : memref<64x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%memV_1_cons_buff_1 : memref<64x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%memV_1_cons_buff_0 : memref<64x64xbf16>)
    ^bb31(%53: memref<64x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      aie.use_lock(%scaleOF1_cons_lock_0, AcquireGreaterEqual, 1)
      %54 = memref.load %_anonymous5[%c3] : memref<4xi32>
      %55 = arith.index_cast %54 : i32 to index
      %56 = arith.index_cast %55 : index to i32
      cf.switch %56 : i32, [
        default: ^bb34,
        0: ^bb32,
        1: ^bb33
      ]
    ^bb32:  // pred: ^bb31
      cf.br ^bb35(%scaleOF1_buff_0 : memref<256xbf16>)
    ^bb33:  // pred: ^bb31
      cf.br ^bb35(%scaleOF1_buff_1 : memref<256xbf16>)
    ^bb34:  // pred: ^bb31
      cf.br ^bb35(%scaleOF1_buff_0 : memref<256xbf16>)
    ^bb35(%57: memref<256xbf16>):  // 3 preds: ^bb32, ^bb33, ^bb34
      func.call @matmul_PV(%49, %53, %12, %57, %c64_i32, %c1_i32, %idx_buffer_pv_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP1_cons_prod_lock_0, Release, 1)
      %58 = memref.load %_anonymous5[%c1] : memref<4xi32>
      %59 = arith.addi %58, %c1_i32 : i32
      %60 = arith.cmpi sge, %59, %c2_i32 : i32
      %61 = arith.subi %59, %c2_i32 : i32
      %62 = arith.select %60, %61, %59 : i32
      memref.store %62, %_anonymous5[%c1] : memref<4xi32>
      aie.use_lock(%memV_1_cons_prod_lock_0, Release, 1)
      %63 = memref.load %_anonymous5[%c2] : memref<4xi32>
      %64 = arith.addi %63, %c1_i32 : i32
      %65 = arith.cmpi sge, %64, %c2_i32 : i32
      %66 = arith.subi %64, %c2_i32 : i32
      %67 = arith.select %65, %66, %64 : i32
      memref.store %67, %_anonymous5[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF1_prod_lock_0, Release, 1)
      %68 = memref.load %_anonymous5[%c3] : memref<4xi32>
      %69 = arith.addi %68, %c1_i32 : i32
      %70 = arith.cmpi sge, %69, %c2_i32 : i32
      %71 = arith.subi %69, %c2_i32 : i32
      %72 = arith.select %70, %71, %69 : i32
      memref.store %72, %_anonymous5[%c3] : memref<4xi32>
      %73 = memref.load %idx_buffer_pv_1[%c0] : memref<2xi32>
      %74 = arith.addi %73, %c1_i32 : i32
      memref.store %74, %idx_buffer_pv_1[%c0] : memref<2xi32>
      %75 = arith.addi %44, %c1 : index
      cf.br ^bb22(%75 : index)
    ^bb36:  // pred: ^bb22
      cf.br ^bb37
    ^bb37:  // 2 preds: ^bb20, ^bb36
      cf.cond_br %4, ^bb38, ^bb51
    ^bb38:  // pred: ^bb37
      aie.use_lock(%outP1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous5[%c1] : memref<4xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%outP1_cons_buff_0 : memref<64x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%outP1_cons_buff_1 : memref<64x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%outP1_cons_buff_0 : memref<64x64xbf16>)
    ^bb42(%79: memref<64x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      aie.use_lock(%memV_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %80 = memref.load %_anonymous5[%c2] : memref<4xi32>
      %81 = arith.index_cast %80 : i32 to index
      %82 = arith.index_cast %81 : index to i32
      cf.switch %82 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%memV_1_cons_buff_0 : memref<64x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%memV_1_cons_buff_1 : memref<64x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%memV_1_cons_buff_0 : memref<64x64xbf16>)
    ^bb46(%83: memref<64x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      aie.use_lock(%scaleOF1_cons_lock_0, AcquireGreaterEqual, 1)
      %84 = memref.load %_anonymous5[%c3] : memref<4xi32>
      %85 = arith.index_cast %84 : i32 to index
      %86 = arith.index_cast %85 : index to i32
      cf.switch %86 : i32, [
        default: ^bb49,
        0: ^bb47,
        1: ^bb48
      ]
    ^bb47:  // pred: ^bb46
      cf.br ^bb50(%scaleOF1_buff_0 : memref<256xbf16>)
    ^bb48:  // pred: ^bb46
      cf.br ^bb50(%scaleOF1_buff_1 : memref<256xbf16>)
    ^bb49:  // pred: ^bb46
      cf.br ^bb50(%scaleOF1_buff_0 : memref<256xbf16>)
    ^bb50(%87: memref<256xbf16>):  // 3 preds: ^bb47, ^bb48, ^bb49
      func.call @matmul_PV(%79, %83, %12, %87, %c64_i32, %c1_i32, %idx_buffer_pv_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      func.call @rescale_O(%12, %87, %c64_i32, %idx_buffer_pv_1) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP1_cons_prod_lock_0, Release, 1)
      %88 = memref.load %_anonymous5[%c1] : memref<4xi32>
      %89 = arith.addi %88, %c1_i32 : i32
      %90 = arith.cmpi sge, %89, %c2_i32 : i32
      %91 = arith.subi %89, %c2_i32 : i32
      %92 = arith.select %90, %91, %89 : i32
      memref.store %92, %_anonymous5[%c1] : memref<4xi32>
      aie.use_lock(%memV_1_cons_prod_lock_0, Release, 1)
      %93 = memref.load %_anonymous5[%c2] : memref<4xi32>
      %94 = arith.addi %93, %c1_i32 : i32
      %95 = arith.cmpi sge, %94, %c2_i32 : i32
      %96 = arith.subi %94, %c2_i32 : i32
      %97 = arith.select %95, %96, %94 : i32
      memref.store %97, %_anonymous5[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF1_prod_lock_0, Release, 1)
      %98 = memref.load %_anonymous5[%c3] : memref<4xi32>
      %99 = arith.addi %98, %c1_i32 : i32
      %100 = arith.cmpi sge, %99, %c2_i32 : i32
      %101 = arith.subi %99, %c2_i32 : i32
      %102 = arith.select %100, %101, %99 : i32
      memref.store %102, %_anonymous5[%c3] : memref<4xi32>
      %103 = memref.load %idx_buffer_pv_1[%c0] : memref<2xi32>
      %104 = arith.addi %103, %c1_i32 : i32
      memref.store %104, %idx_buffer_pv_1[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb51:  // pred: ^bb37
      func.call @rescale_O(%12, %24, %c64_i32, %idx_buffer_pv_1) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      %105 = memref.load %idx_buffer_pv_1[%c0] : memref<2xi32>
      %106 = arith.addi %105, %c1_i32 : i32
      memref.store %106, %idx_buffer_pv_1[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb52:  // 2 preds: ^bb50, ^bb51
      memref.store %c0_i32, %idx_buffer_pv_1[%c0] : memref<2xi32>
      %107 = memref.load %idx_buffer_pv_1[%c1] : memref<2xi32>
      %108 = arith.addi %107, %c8_i32 : i32
      memref.store %108, %idx_buffer_pv_1[%c1] : memref<2xi32>
      aie.use_lock(%outO1_cons_lock_0, Release, 1)
      %109 = memref.load %_anonymous5[%c0] : memref<4xi32>
      %110 = arith.addi %109, %c1_i32 : i32
      %111 = arith.cmpi sge, %110, %c2_i32 : i32
      %112 = arith.subi %110, %c2_i32 : i32
      %113 = arith.select %111, %112, %110 : i32
      memref.store %113, %_anonymous5[%c0] : memref<4xi32>
      %114 = arith.addi %7, %c1 : index
      cf.br ^bb3(%114 : index)
    ^bb53:  // pred: ^bb3
      %115 = arith.addi %5, %c1 : index
      cf.br ^bb1(%115 : index)
    ^bb54:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_2_2 = aie.lock(%tile_2_2, 0)
    %_anonymous6 = aie.buffer(%tile_2_2) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous6"} : memref<3xi32> 
    %core_2_2 = aie.core(%tile_2_2) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous6[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous6[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous6[%c2] : memref<3xi32>
      aie.use_lock(%lock_2_2, Acquire, 1)
      %0 = memref.load %mha_rtpss_2_stage0[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_2_stage0[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%4: index):  // 2 preds: ^bb0, ^bb20
      %5 = arith.cmpi slt, %4, %c9223372036854775807 : index
      cf.cond_br %5, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_qk_2[%c0] : memref<2xi32>
      memref.store %c2_i32, %idx_buffer_qk_2[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%6: index):  // 2 preds: ^bb2, ^bb19
      %7 = arith.cmpi slt, %6, %2 : index
      cf.cond_br %7, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memQ2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous6[%c0] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%memQ2_cons_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%memQ2_cons_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%memQ2_cons_buff_0 : memref<64x64xbf16>)
    ^bb8(%11: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      cf.br ^bb9(%c0 : index)
    ^bb9(%12: index):  // 2 preds: ^bb8, ^bb18
      %13 = arith.cmpi slt, %12, %3 : index
      cf.cond_br %13, ^bb10, ^bb19
    ^bb10:  // pred: ^bb9
      aie.use_lock(%memK_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %14 = memref.load %_anonymous6[%c1] : memref<3xi32>
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.index_cast %15 : index to i32
      cf.switch %16 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%memK_2_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%memK_2_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%memK_2_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%17: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%memA2_prod_lock_0, AcquireGreaterEqual, 1)
      %18 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %19 = arith.index_cast %18 : i32 to index
      %20 = arith.index_cast %19 : index to i32
      cf.switch %20 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%memA2_buff_0 : memref<64x64xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%memA2_buff_1 : memref<64x64xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%memA2_buff_0 : memref<64x64xbf16>)
    ^bb18(%21: memref<64x64xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @zero_bf16(%21) : (memref<64x64xbf16>) -> ()
      func.call @matmul_bf16_bf16_wrapper(%11, %17, %21, %idx_buffer_qk_2) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
      aie.use_lock(%memK_2_cons_prod_lock_0, Release, 1)
      %22 = memref.load %_anonymous6[%c1] : memref<3xi32>
      %23 = arith.addi %22, %c1_i32 : i32
      %24 = arith.cmpi sge, %23, %c2_i32 : i32
      %25 = arith.subi %23, %c2_i32 : i32
      %26 = arith.select %24, %25, %23 : i32
      memref.store %26, %_anonymous6[%c1] : memref<3xi32>
      aie.use_lock(%memA2_cons_lock_0, Release, 1)
      %27 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %28 = arith.addi %27, %c1_i32 : i32
      %29 = arith.cmpi sge, %28, %c2_i32 : i32
      %30 = arith.subi %28, %c2_i32 : i32
      %31 = arith.select %29, %30, %28 : i32
      memref.store %31, %_anonymous6[%c2] : memref<3xi32>
      %32 = memref.load %idx_buffer_qk_2[%c0] : memref<2xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      memref.store %33, %idx_buffer_qk_2[%c0] : memref<2xi32>
      %34 = arith.addi %12, %c1 : index
      cf.br ^bb9(%34 : index)
    ^bb19:  // pred: ^bb9
      memref.store %c0_i32, %idx_buffer_qk_2[%c0] : memref<2xi32>
      %35 = memref.load %idx_buffer_qk_2[%c1] : memref<2xi32>
      %36 = arith.addi %35, %c8_i32 : i32
      memref.store %36, %idx_buffer_qk_2[%c1] : memref<2xi32>
      aie.use_lock(%memQ2_cons_prod_lock_0, Release, 1)
      %37 = memref.load %_anonymous6[%c0] : memref<3xi32>
      %38 = arith.addi %37, %c1_i32 : i32
      %39 = arith.cmpi sge, %38, %c2_i32 : i32
      %40 = arith.subi %38, %c2_i32 : i32
      %41 = arith.select %39, %40, %38 : i32
      memref.store %41, %_anonymous6[%c0] : memref<3xi32>
      %42 = arith.addi %6, %c1 : index
      cf.br ^bb3(%42 : index)
    ^bb20:  // pred: ^bb3
      %43 = arith.addi %4, %c1 : index
      cf.br ^bb1(%43 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_2_3 = aie.lock(%tile_2_3, 0)
    %_anonymous7 = aie.buffer(%tile_2_3) {address = 12032 : i32, mem_bank = 0 : i32, sym_name = "_anonymous7"} : memref<3xi32> 
    %core_2_3 = aie.core(%tile_2_3) {
      %c3 = arith.constant 3 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c64_i32 = arith.constant 64 : i32
      %cst = arith.constant 1.806640e-01 : bf16
      %c256_i32 = arith.constant 256 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous7[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous7[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous7[%c2] : memref<3xi32>
      aie.use_lock(%lock_2_3, Acquire, 1)
      %0 = memref.load %mha_rtpss_2_stage1[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_2_stage1[%c1] : memref<4xi32>
      %2 = memref.load %mha_rtpss_2_stage1[%c2] : memref<4xi32>
      %3 = memref.load %mha_rtpss_2_stage1[%c3] : memref<4xi32>
      %4 = arith.index_cast %0 : i32 to index
      %5 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%6: index):  // 2 preds: ^bb0, ^bb20
      %7 = arith.cmpi slt, %6, %c9223372036854775807 : index
      cf.cond_br %7, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_softmax_2[%c0] : memref<2xi32>
      memref.store %c2_i32, %idx_buffer_softmax_2[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%8: index):  // 2 preds: ^bb2, ^bb19
      %9 = arith.cmpi slt, %8, %4 : index
      cf.cond_br %9, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      func.call @init_scale_buffer(%scale_buffer_softmax_2, %c64_i32) : (memref<256xbf16>, i32) -> ()
      cf.br ^bb5(%c0 : index)
    ^bb5(%10: index):  // 2 preds: ^bb4, ^bb18
      %11 = arith.cmpi slt, %10, %5 : index
      cf.cond_br %11, ^bb6, ^bb19
    ^bb6:  // pred: ^bb5
      aie.use_lock(%memP2_prod_lock_0, AcquireGreaterEqual, 1)
      %12 = memref.load %_anonymous7[%c0] : memref<3xi32>
      %13 = arith.index_cast %12 : i32 to index
      %14 = arith.index_cast %13 : index to i32
      cf.switch %14 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%memP2_buff_0 : memref<64x64xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%memP2_buff_1 : memref<64x64xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%memP2_buff_0 : memref<64x64xbf16>)
    ^bb10(%15: memref<64x64xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      aie.use_lock(%outA2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %16 = memref.load %_anonymous7[%c1] : memref<3xi32>
      %17 = arith.index_cast %16 : i32 to index
      %18 = arith.index_cast %17 : index to i32
      cf.switch %18 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%outA2_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%outA2_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%outA2_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%19: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%scaleOF2_prod_lock_0, AcquireGreaterEqual, 1)
      %20 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %21 = arith.index_cast %20 : i32 to index
      %22 = arith.index_cast %21 : index to i32
      cf.switch %22 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%scaleOF2_buff_0 : memref<256xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%scaleOF2_buff_1 : memref<256xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%scaleOF2_buff_0 : memref<256xbf16>)
    ^bb18(%23: memref<256xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @partial_softmax(%19, %15, %scale_buffer_softmax_2, %idx_buffer_softmax_2, %cst, %c64_i32, %c64_i32, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
      func.call @passThroughLine(%scale_buffer_softmax_2, %23, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%outA2_cons_prod_lock_0, Release, 1)
      %24 = memref.load %_anonymous7[%c1] : memref<3xi32>
      %25 = arith.addi %24, %c1_i32 : i32
      %26 = arith.cmpi sge, %25, %c2_i32 : i32
      %27 = arith.subi %25, %c2_i32 : i32
      %28 = arith.select %26, %27, %25 : i32
      memref.store %28, %_anonymous7[%c1] : memref<3xi32>
      aie.use_lock(%memP2_cons_lock_0, Release, 1)
      %29 = memref.load %_anonymous7[%c0] : memref<3xi32>
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = arith.cmpi sge, %30, %c2_i32 : i32
      %32 = arith.subi %30, %c2_i32 : i32
      %33 = arith.select %31, %32, %30 : i32
      memref.store %33, %_anonymous7[%c0] : memref<3xi32>
      aie.use_lock(%scaleOF2_cons_lock_0, Release, 1)
      %34 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %35 = arith.addi %34, %c1_i32 : i32
      %36 = arith.cmpi sge, %35, %c2_i32 : i32
      %37 = arith.subi %35, %c2_i32 : i32
      %38 = arith.select %36, %37, %35 : i32
      memref.store %38, %_anonymous7[%c2] : memref<3xi32>
      %39 = memref.load %idx_buffer_softmax_2[%c0] : memref<2xi32>
      %40 = arith.addi %39, %c1_i32 : i32
      memref.store %40, %idx_buffer_softmax_2[%c0] : memref<2xi32>
      %41 = arith.addi %10, %c1 : index
      cf.br ^bb5(%41 : index)
    ^bb19:  // pred: ^bb5
      memref.store %c0_i32, %idx_buffer_softmax_2[%c0] : memref<2xi32>
      %42 = memref.load %idx_buffer_softmax_2[%c1] : memref<2xi32>
      %43 = arith.addi %42, %c8_i32 : i32
      memref.store %43, %idx_buffer_softmax_2[%c1] : memref<2xi32>
      %44 = arith.addi %8, %c1 : index
      cf.br ^bb3(%44 : index)
    ^bb20:  // pred: ^bb3
      %45 = arith.addi %6, %c1 : index
      cf.br ^bb1(%45 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_2_4 = aie.lock(%tile_2_4, 0)
    %_anonymous8 = aie.buffer(%tile_2_4) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous8"} : memref<4xi32> 
    %core_2_4 = aie.core(%tile_2_4) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c64_i32 = arith.constant 64 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c3 = arith.constant 3 : index
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous8[%c0] : memref<4xi32>
      memref.store %c0_i32, %_anonymous8[%c1] : memref<4xi32>
      memref.store %c0_i32, %_anonymous8[%c2] : memref<4xi32>
      memref.store %c0_i32, %_anonymous8[%c3] : memref<4xi32>
      aie.use_lock(%lock_2_4, Acquire, 1)
      %0 = memref.load %mha_rtpss_2_stage2[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_2_stage2[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.cmpi sgt, %1, %c2_i32 : i32
      %4 = arith.cmpi sgt, %1, %c1_i32 : i32
      cf.br ^bb1(%c0 : index)
    ^bb1(%5: index):  // 2 preds: ^bb0, ^bb53
      %6 = arith.cmpi slt, %5, %c9223372036854775807 : index
      cf.cond_br %6, ^bb2, ^bb54
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_pv_2[%c0] : memref<2xi32>
      memref.store %c2_i32, %idx_buffer_pv_2[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%7: index):  // 2 preds: ^bb2, ^bb52
      %8 = arith.cmpi slt, %7, %2 : index
      cf.cond_br %8, ^bb4, ^bb53
    ^bb4:  // pred: ^bb3
      aie.use_lock(%outO2_prod_lock_0, AcquireGreaterEqual, 1)
      %9 = memref.load %_anonymous8[%c0] : memref<4xi32>
      %10 = arith.index_cast %9 : i32 to index
      %11 = arith.index_cast %10 : index to i32
      cf.switch %11 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%outO2_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%outO2_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%outO2_buff_0 : memref<64x64xbf16>)
    ^bb8(%12: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      func.call @zero_bf16(%12) : (memref<64x64xbf16>) -> ()
      aie.use_lock(%outP2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %13 = memref.load %_anonymous8[%c1] : memref<4xi32>
      %14 = arith.index_cast %13 : i32 to index
      %15 = arith.index_cast %14 : index to i32
      cf.switch %15 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%outP2_cons_buff_0 : memref<64x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%outP2_cons_buff_1 : memref<64x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%outP2_cons_buff_0 : memref<64x64xbf16>)
    ^bb12(%16: memref<64x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      aie.use_lock(%memV_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous8[%c2] : memref<4xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%memV_2_cons_buff_0 : memref<64x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%memV_2_cons_buff_1 : memref<64x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%memV_2_cons_buff_0 : memref<64x64xbf16>)
    ^bb16(%20: memref<64x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      aie.use_lock(%scaleOF2_cons_lock_0, AcquireGreaterEqual, 1)
      %21 = memref.load %_anonymous8[%c3] : memref<4xi32>
      %22 = arith.index_cast %21 : i32 to index
      %23 = arith.index_cast %22 : index to i32
      cf.switch %23 : i32, [
        default: ^bb19,
        0: ^bb17,
        1: ^bb18
      ]
    ^bb17:  // pred: ^bb16
      cf.br ^bb20(%scaleOF2_buff_0 : memref<256xbf16>)
    ^bb18:  // pred: ^bb16
      cf.br ^bb20(%scaleOF2_buff_1 : memref<256xbf16>)
    ^bb19:  // pred: ^bb16
      cf.br ^bb20(%scaleOF2_buff_0 : memref<256xbf16>)
    ^bb20(%24: memref<256xbf16>):  // 3 preds: ^bb17, ^bb18, ^bb19
      func.call @matmul_PV(%16, %20, %12, %24, %c64_i32, %c0_i32, %idx_buffer_pv_2) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP2_cons_prod_lock_0, Release, 1)
      %25 = memref.load %_anonymous8[%c1] : memref<4xi32>
      %26 = arith.addi %25, %c1_i32 : i32
      %27 = arith.cmpi sge, %26, %c2_i32 : i32
      %28 = arith.subi %26, %c2_i32 : i32
      %29 = arith.select %27, %28, %26 : i32
      memref.store %29, %_anonymous8[%c1] : memref<4xi32>
      aie.use_lock(%memV_2_cons_prod_lock_0, Release, 1)
      %30 = memref.load %_anonymous8[%c2] : memref<4xi32>
      %31 = arith.addi %30, %c1_i32 : i32
      %32 = arith.cmpi sge, %31, %c2_i32 : i32
      %33 = arith.subi %31, %c2_i32 : i32
      %34 = arith.select %32, %33, %31 : i32
      memref.store %34, %_anonymous8[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF2_prod_lock_0, Release, 1)
      %35 = memref.load %_anonymous8[%c3] : memref<4xi32>
      %36 = arith.addi %35, %c1_i32 : i32
      %37 = arith.cmpi sge, %36, %c2_i32 : i32
      %38 = arith.subi %36, %c2_i32 : i32
      %39 = arith.select %37, %38, %36 : i32
      memref.store %39, %_anonymous8[%c3] : memref<4xi32>
      %40 = memref.load %idx_buffer_pv_2[%c0] : memref<2xi32>
      %41 = arith.addi %40, %c1_i32 : i32
      memref.store %41, %idx_buffer_pv_2[%c0] : memref<2xi32>
      cf.cond_br %3, ^bb21, ^bb37
    ^bb21:  // pred: ^bb20
      %42 = arith.subi %1, %c2_i32 : i32
      %43 = arith.index_cast %42 : i32 to index
      cf.br ^bb22(%c0 : index)
    ^bb22(%44: index):  // 2 preds: ^bb21, ^bb35
      %45 = arith.cmpi slt, %44, %43 : index
      cf.cond_br %45, ^bb23, ^bb36
    ^bb23:  // pred: ^bb22
      aie.use_lock(%outP2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %46 = memref.load %_anonymous8[%c1] : memref<4xi32>
      %47 = arith.index_cast %46 : i32 to index
      %48 = arith.index_cast %47 : index to i32
      cf.switch %48 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%outP2_cons_buff_0 : memref<64x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%outP2_cons_buff_1 : memref<64x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%outP2_cons_buff_0 : memref<64x64xbf16>)
    ^bb27(%49: memref<64x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      aie.use_lock(%memV_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %50 = memref.load %_anonymous8[%c2] : memref<4xi32>
      %51 = arith.index_cast %50 : i32 to index
      %52 = arith.index_cast %51 : index to i32
      cf.switch %52 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%memV_2_cons_buff_0 : memref<64x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%memV_2_cons_buff_1 : memref<64x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%memV_2_cons_buff_0 : memref<64x64xbf16>)
    ^bb31(%53: memref<64x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      aie.use_lock(%scaleOF2_cons_lock_0, AcquireGreaterEqual, 1)
      %54 = memref.load %_anonymous8[%c3] : memref<4xi32>
      %55 = arith.index_cast %54 : i32 to index
      %56 = arith.index_cast %55 : index to i32
      cf.switch %56 : i32, [
        default: ^bb34,
        0: ^bb32,
        1: ^bb33
      ]
    ^bb32:  // pred: ^bb31
      cf.br ^bb35(%scaleOF2_buff_0 : memref<256xbf16>)
    ^bb33:  // pred: ^bb31
      cf.br ^bb35(%scaleOF2_buff_1 : memref<256xbf16>)
    ^bb34:  // pred: ^bb31
      cf.br ^bb35(%scaleOF2_buff_0 : memref<256xbf16>)
    ^bb35(%57: memref<256xbf16>):  // 3 preds: ^bb32, ^bb33, ^bb34
      func.call @matmul_PV(%49, %53, %12, %57, %c64_i32, %c1_i32, %idx_buffer_pv_2) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP2_cons_prod_lock_0, Release, 1)
      %58 = memref.load %_anonymous8[%c1] : memref<4xi32>
      %59 = arith.addi %58, %c1_i32 : i32
      %60 = arith.cmpi sge, %59, %c2_i32 : i32
      %61 = arith.subi %59, %c2_i32 : i32
      %62 = arith.select %60, %61, %59 : i32
      memref.store %62, %_anonymous8[%c1] : memref<4xi32>
      aie.use_lock(%memV_2_cons_prod_lock_0, Release, 1)
      %63 = memref.load %_anonymous8[%c2] : memref<4xi32>
      %64 = arith.addi %63, %c1_i32 : i32
      %65 = arith.cmpi sge, %64, %c2_i32 : i32
      %66 = arith.subi %64, %c2_i32 : i32
      %67 = arith.select %65, %66, %64 : i32
      memref.store %67, %_anonymous8[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF2_prod_lock_0, Release, 1)
      %68 = memref.load %_anonymous8[%c3] : memref<4xi32>
      %69 = arith.addi %68, %c1_i32 : i32
      %70 = arith.cmpi sge, %69, %c2_i32 : i32
      %71 = arith.subi %69, %c2_i32 : i32
      %72 = arith.select %70, %71, %69 : i32
      memref.store %72, %_anonymous8[%c3] : memref<4xi32>
      %73 = memref.load %idx_buffer_pv_2[%c0] : memref<2xi32>
      %74 = arith.addi %73, %c1_i32 : i32
      memref.store %74, %idx_buffer_pv_2[%c0] : memref<2xi32>
      %75 = arith.addi %44, %c1 : index
      cf.br ^bb22(%75 : index)
    ^bb36:  // pred: ^bb22
      cf.br ^bb37
    ^bb37:  // 2 preds: ^bb20, ^bb36
      cf.cond_br %4, ^bb38, ^bb51
    ^bb38:  // pred: ^bb37
      aie.use_lock(%outP2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous8[%c1] : memref<4xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%outP2_cons_buff_0 : memref<64x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%outP2_cons_buff_1 : memref<64x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%outP2_cons_buff_0 : memref<64x64xbf16>)
    ^bb42(%79: memref<64x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      aie.use_lock(%memV_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %80 = memref.load %_anonymous8[%c2] : memref<4xi32>
      %81 = arith.index_cast %80 : i32 to index
      %82 = arith.index_cast %81 : index to i32
      cf.switch %82 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%memV_2_cons_buff_0 : memref<64x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%memV_2_cons_buff_1 : memref<64x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%memV_2_cons_buff_0 : memref<64x64xbf16>)
    ^bb46(%83: memref<64x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      aie.use_lock(%scaleOF2_cons_lock_0, AcquireGreaterEqual, 1)
      %84 = memref.load %_anonymous8[%c3] : memref<4xi32>
      %85 = arith.index_cast %84 : i32 to index
      %86 = arith.index_cast %85 : index to i32
      cf.switch %86 : i32, [
        default: ^bb49,
        0: ^bb47,
        1: ^bb48
      ]
    ^bb47:  // pred: ^bb46
      cf.br ^bb50(%scaleOF2_buff_0 : memref<256xbf16>)
    ^bb48:  // pred: ^bb46
      cf.br ^bb50(%scaleOF2_buff_1 : memref<256xbf16>)
    ^bb49:  // pred: ^bb46
      cf.br ^bb50(%scaleOF2_buff_0 : memref<256xbf16>)
    ^bb50(%87: memref<256xbf16>):  // 3 preds: ^bb47, ^bb48, ^bb49
      func.call @matmul_PV(%79, %83, %12, %87, %c64_i32, %c1_i32, %idx_buffer_pv_2) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      func.call @rescale_O(%12, %87, %c64_i32, %idx_buffer_pv_2) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP2_cons_prod_lock_0, Release, 1)
      %88 = memref.load %_anonymous8[%c1] : memref<4xi32>
      %89 = arith.addi %88, %c1_i32 : i32
      %90 = arith.cmpi sge, %89, %c2_i32 : i32
      %91 = arith.subi %89, %c2_i32 : i32
      %92 = arith.select %90, %91, %89 : i32
      memref.store %92, %_anonymous8[%c1] : memref<4xi32>
      aie.use_lock(%memV_2_cons_prod_lock_0, Release, 1)
      %93 = memref.load %_anonymous8[%c2] : memref<4xi32>
      %94 = arith.addi %93, %c1_i32 : i32
      %95 = arith.cmpi sge, %94, %c2_i32 : i32
      %96 = arith.subi %94, %c2_i32 : i32
      %97 = arith.select %95, %96, %94 : i32
      memref.store %97, %_anonymous8[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF2_prod_lock_0, Release, 1)
      %98 = memref.load %_anonymous8[%c3] : memref<4xi32>
      %99 = arith.addi %98, %c1_i32 : i32
      %100 = arith.cmpi sge, %99, %c2_i32 : i32
      %101 = arith.subi %99, %c2_i32 : i32
      %102 = arith.select %100, %101, %99 : i32
      memref.store %102, %_anonymous8[%c3] : memref<4xi32>
      %103 = memref.load %idx_buffer_pv_2[%c0] : memref<2xi32>
      %104 = arith.addi %103, %c1_i32 : i32
      memref.store %104, %idx_buffer_pv_2[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb51:  // pred: ^bb37
      func.call @rescale_O(%12, %24, %c64_i32, %idx_buffer_pv_2) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      %105 = memref.load %idx_buffer_pv_2[%c0] : memref<2xi32>
      %106 = arith.addi %105, %c1_i32 : i32
      memref.store %106, %idx_buffer_pv_2[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb52:  // 2 preds: ^bb50, ^bb51
      memref.store %c0_i32, %idx_buffer_pv_2[%c0] : memref<2xi32>
      %107 = memref.load %idx_buffer_pv_2[%c1] : memref<2xi32>
      %108 = arith.addi %107, %c8_i32 : i32
      memref.store %108, %idx_buffer_pv_2[%c1] : memref<2xi32>
      aie.use_lock(%outO2_cons_lock_0, Release, 1)
      %109 = memref.load %_anonymous8[%c0] : memref<4xi32>
      %110 = arith.addi %109, %c1_i32 : i32
      %111 = arith.cmpi sge, %110, %c2_i32 : i32
      %112 = arith.subi %110, %c2_i32 : i32
      %113 = arith.select %111, %112, %110 : i32
      memref.store %113, %_anonymous8[%c0] : memref<4xi32>
      %114 = arith.addi %7, %c1 : index
      cf.br ^bb3(%114 : index)
    ^bb53:  // pred: ^bb3
      %115 = arith.addi %5, %c1 : index
      cf.br ^bb1(%115 : index)
    ^bb54:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_3_2 = aie.lock(%tile_3_2, 0)
    %_anonymous9 = aie.buffer(%tile_3_2) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous9"} : memref<3xi32> 
    %core_3_2 = aie.core(%tile_3_2) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c3_i32 = arith.constant 3 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous9[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous9[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous9[%c2] : memref<3xi32>
      aie.use_lock(%lock_3_2, Acquire, 1)
      %0 = memref.load %mha_rtpss_3_stage0[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_3_stage0[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%4: index):  // 2 preds: ^bb0, ^bb20
      %5 = arith.cmpi slt, %4, %c9223372036854775807 : index
      cf.cond_br %5, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_qk_3[%c0] : memref<2xi32>
      memref.store %c3_i32, %idx_buffer_qk_3[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%6: index):  // 2 preds: ^bb2, ^bb19
      %7 = arith.cmpi slt, %6, %2 : index
      cf.cond_br %7, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memQ3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous9[%c0] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%memQ3_cons_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%memQ3_cons_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%memQ3_cons_buff_0 : memref<64x64xbf16>)
    ^bb8(%11: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      cf.br ^bb9(%c0 : index)
    ^bb9(%12: index):  // 2 preds: ^bb8, ^bb18
      %13 = arith.cmpi slt, %12, %3 : index
      cf.cond_br %13, ^bb10, ^bb19
    ^bb10:  // pred: ^bb9
      aie.use_lock(%memK_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %14 = memref.load %_anonymous9[%c1] : memref<3xi32>
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.index_cast %15 : index to i32
      cf.switch %16 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%memK_3_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%memK_3_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%memK_3_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%17: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%memA3_prod_lock_0, AcquireGreaterEqual, 1)
      %18 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %19 = arith.index_cast %18 : i32 to index
      %20 = arith.index_cast %19 : index to i32
      cf.switch %20 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%memA3_buff_0 : memref<64x64xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%memA3_buff_1 : memref<64x64xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%memA3_buff_0 : memref<64x64xbf16>)
    ^bb18(%21: memref<64x64xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @zero_bf16(%21) : (memref<64x64xbf16>) -> ()
      func.call @matmul_bf16_bf16_wrapper(%11, %17, %21, %idx_buffer_qk_3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
      aie.use_lock(%memK_3_cons_prod_lock_0, Release, 1)
      %22 = memref.load %_anonymous9[%c1] : memref<3xi32>
      %23 = arith.addi %22, %c1_i32 : i32
      %24 = arith.cmpi sge, %23, %c2_i32 : i32
      %25 = arith.subi %23, %c2_i32 : i32
      %26 = arith.select %24, %25, %23 : i32
      memref.store %26, %_anonymous9[%c1] : memref<3xi32>
      aie.use_lock(%memA3_cons_lock_0, Release, 1)
      %27 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %28 = arith.addi %27, %c1_i32 : i32
      %29 = arith.cmpi sge, %28, %c2_i32 : i32
      %30 = arith.subi %28, %c2_i32 : i32
      %31 = arith.select %29, %30, %28 : i32
      memref.store %31, %_anonymous9[%c2] : memref<3xi32>
      %32 = memref.load %idx_buffer_qk_3[%c0] : memref<2xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      memref.store %33, %idx_buffer_qk_3[%c0] : memref<2xi32>
      %34 = arith.addi %12, %c1 : index
      cf.br ^bb9(%34 : index)
    ^bb19:  // pred: ^bb9
      memref.store %c0_i32, %idx_buffer_qk_3[%c0] : memref<2xi32>
      %35 = memref.load %idx_buffer_qk_3[%c1] : memref<2xi32>
      %36 = arith.addi %35, %c8_i32 : i32
      memref.store %36, %idx_buffer_qk_3[%c1] : memref<2xi32>
      aie.use_lock(%memQ3_cons_prod_lock_0, Release, 1)
      %37 = memref.load %_anonymous9[%c0] : memref<3xi32>
      %38 = arith.addi %37, %c1_i32 : i32
      %39 = arith.cmpi sge, %38, %c2_i32 : i32
      %40 = arith.subi %38, %c2_i32 : i32
      %41 = arith.select %39, %40, %38 : i32
      memref.store %41, %_anonymous9[%c0] : memref<3xi32>
      %42 = arith.addi %6, %c1 : index
      cf.br ^bb3(%42 : index)
    ^bb20:  // pred: ^bb3
      %43 = arith.addi %4, %c1 : index
      cf.br ^bb1(%43 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_3_3 = aie.lock(%tile_3_3, 0)
    %_anonymous10 = aie.buffer(%tile_3_3) {address = 12032 : i32, mem_bank = 0 : i32, sym_name = "_anonymous10"} : memref<3xi32> 
    %core_3_3 = aie.core(%tile_3_3) {
      %c3 = arith.constant 3 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c3_i32 = arith.constant 3 : i32
      %c64_i32 = arith.constant 64 : i32
      %cst = arith.constant 1.806640e-01 : bf16
      %c256_i32 = arith.constant 256 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous10[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous10[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous10[%c2] : memref<3xi32>
      aie.use_lock(%lock_3_3, Acquire, 1)
      %0 = memref.load %mha_rtpss_3_stage1[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_3_stage1[%c1] : memref<4xi32>
      %2 = memref.load %mha_rtpss_3_stage1[%c2] : memref<4xi32>
      %3 = memref.load %mha_rtpss_3_stage1[%c3] : memref<4xi32>
      %4 = arith.index_cast %0 : i32 to index
      %5 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%6: index):  // 2 preds: ^bb0, ^bb20
      %7 = arith.cmpi slt, %6, %c9223372036854775807 : index
      cf.cond_br %7, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_softmax_3[%c0] : memref<2xi32>
      memref.store %c3_i32, %idx_buffer_softmax_3[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%8: index):  // 2 preds: ^bb2, ^bb19
      %9 = arith.cmpi slt, %8, %4 : index
      cf.cond_br %9, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      func.call @init_scale_buffer(%scale_buffer_softmax_3, %c64_i32) : (memref<256xbf16>, i32) -> ()
      cf.br ^bb5(%c0 : index)
    ^bb5(%10: index):  // 2 preds: ^bb4, ^bb18
      %11 = arith.cmpi slt, %10, %5 : index
      cf.cond_br %11, ^bb6, ^bb19
    ^bb6:  // pred: ^bb5
      aie.use_lock(%memP3_prod_lock_0, AcquireGreaterEqual, 1)
      %12 = memref.load %_anonymous10[%c0] : memref<3xi32>
      %13 = arith.index_cast %12 : i32 to index
      %14 = arith.index_cast %13 : index to i32
      cf.switch %14 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%memP3_buff_0 : memref<64x64xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%memP3_buff_1 : memref<64x64xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%memP3_buff_0 : memref<64x64xbf16>)
    ^bb10(%15: memref<64x64xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      aie.use_lock(%outA3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %16 = memref.load %_anonymous10[%c1] : memref<3xi32>
      %17 = arith.index_cast %16 : i32 to index
      %18 = arith.index_cast %17 : index to i32
      cf.switch %18 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%outA3_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%outA3_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%outA3_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%19: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%scaleOF3_prod_lock_0, AcquireGreaterEqual, 1)
      %20 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %21 = arith.index_cast %20 : i32 to index
      %22 = arith.index_cast %21 : index to i32
      cf.switch %22 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%scaleOF3_buff_0 : memref<256xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%scaleOF3_buff_1 : memref<256xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%scaleOF3_buff_0 : memref<256xbf16>)
    ^bb18(%23: memref<256xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @partial_softmax(%19, %15, %scale_buffer_softmax_3, %idx_buffer_softmax_3, %cst, %c64_i32, %c64_i32, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
      func.call @passThroughLine(%scale_buffer_softmax_3, %23, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%outA3_cons_prod_lock_0, Release, 1)
      %24 = memref.load %_anonymous10[%c1] : memref<3xi32>
      %25 = arith.addi %24, %c1_i32 : i32
      %26 = arith.cmpi sge, %25, %c2_i32 : i32
      %27 = arith.subi %25, %c2_i32 : i32
      %28 = arith.select %26, %27, %25 : i32
      memref.store %28, %_anonymous10[%c1] : memref<3xi32>
      aie.use_lock(%memP3_cons_lock_0, Release, 1)
      %29 = memref.load %_anonymous10[%c0] : memref<3xi32>
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = arith.cmpi sge, %30, %c2_i32 : i32
      %32 = arith.subi %30, %c2_i32 : i32
      %33 = arith.select %31, %32, %30 : i32
      memref.store %33, %_anonymous10[%c0] : memref<3xi32>
      aie.use_lock(%scaleOF3_cons_lock_0, Release, 1)
      %34 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %35 = arith.addi %34, %c1_i32 : i32
      %36 = arith.cmpi sge, %35, %c2_i32 : i32
      %37 = arith.subi %35, %c2_i32 : i32
      %38 = arith.select %36, %37, %35 : i32
      memref.store %38, %_anonymous10[%c2] : memref<3xi32>
      %39 = memref.load %idx_buffer_softmax_3[%c0] : memref<2xi32>
      %40 = arith.addi %39, %c1_i32 : i32
      memref.store %40, %idx_buffer_softmax_3[%c0] : memref<2xi32>
      %41 = arith.addi %10, %c1 : index
      cf.br ^bb5(%41 : index)
    ^bb19:  // pred: ^bb5
      memref.store %c0_i32, %idx_buffer_softmax_3[%c0] : memref<2xi32>
      %42 = memref.load %idx_buffer_softmax_3[%c1] : memref<2xi32>
      %43 = arith.addi %42, %c8_i32 : i32
      memref.store %43, %idx_buffer_softmax_3[%c1] : memref<2xi32>
      %44 = arith.addi %8, %c1 : index
      cf.br ^bb3(%44 : index)
    ^bb20:  // pred: ^bb3
      %45 = arith.addi %6, %c1 : index
      cf.br ^bb1(%45 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_3_4 = aie.lock(%tile_3_4, 0)
    %_anonymous11 = aie.buffer(%tile_3_4) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous11"} : memref<4xi32> 
    %core_3_4 = aie.core(%tile_3_4) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c3_i32 = arith.constant 3 : i32
      %c64_i32 = arith.constant 64 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c3 = arith.constant 3 : index
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous11[%c0] : memref<4xi32>
      memref.store %c0_i32, %_anonymous11[%c1] : memref<4xi32>
      memref.store %c0_i32, %_anonymous11[%c2] : memref<4xi32>
      memref.store %c0_i32, %_anonymous11[%c3] : memref<4xi32>
      aie.use_lock(%lock_3_4, Acquire, 1)
      %0 = memref.load %mha_rtpss_3_stage2[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_3_stage2[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.cmpi sgt, %1, %c2_i32 : i32
      %4 = arith.cmpi sgt, %1, %c1_i32 : i32
      cf.br ^bb1(%c0 : index)
    ^bb1(%5: index):  // 2 preds: ^bb0, ^bb53
      %6 = arith.cmpi slt, %5, %c9223372036854775807 : index
      cf.cond_br %6, ^bb2, ^bb54
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_pv_3[%c0] : memref<2xi32>
      memref.store %c3_i32, %idx_buffer_pv_3[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%7: index):  // 2 preds: ^bb2, ^bb52
      %8 = arith.cmpi slt, %7, %2 : index
      cf.cond_br %8, ^bb4, ^bb53
    ^bb4:  // pred: ^bb3
      aie.use_lock(%outO3_prod_lock_0, AcquireGreaterEqual, 1)
      %9 = memref.load %_anonymous11[%c0] : memref<4xi32>
      %10 = arith.index_cast %9 : i32 to index
      %11 = arith.index_cast %10 : index to i32
      cf.switch %11 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%outO3_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%outO3_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%outO3_buff_0 : memref<64x64xbf16>)
    ^bb8(%12: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      func.call @zero_bf16(%12) : (memref<64x64xbf16>) -> ()
      aie.use_lock(%outP3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %13 = memref.load %_anonymous11[%c1] : memref<4xi32>
      %14 = arith.index_cast %13 : i32 to index
      %15 = arith.index_cast %14 : index to i32
      cf.switch %15 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%outP3_cons_buff_0 : memref<64x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%outP3_cons_buff_1 : memref<64x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%outP3_cons_buff_0 : memref<64x64xbf16>)
    ^bb12(%16: memref<64x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      aie.use_lock(%memV_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous11[%c2] : memref<4xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%memV_3_cons_buff_0 : memref<64x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%memV_3_cons_buff_1 : memref<64x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%memV_3_cons_buff_0 : memref<64x64xbf16>)
    ^bb16(%20: memref<64x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      aie.use_lock(%scaleOF3_cons_lock_0, AcquireGreaterEqual, 1)
      %21 = memref.load %_anonymous11[%c3] : memref<4xi32>
      %22 = arith.index_cast %21 : i32 to index
      %23 = arith.index_cast %22 : index to i32
      cf.switch %23 : i32, [
        default: ^bb19,
        0: ^bb17,
        1: ^bb18
      ]
    ^bb17:  // pred: ^bb16
      cf.br ^bb20(%scaleOF3_buff_0 : memref<256xbf16>)
    ^bb18:  // pred: ^bb16
      cf.br ^bb20(%scaleOF3_buff_1 : memref<256xbf16>)
    ^bb19:  // pred: ^bb16
      cf.br ^bb20(%scaleOF3_buff_0 : memref<256xbf16>)
    ^bb20(%24: memref<256xbf16>):  // 3 preds: ^bb17, ^bb18, ^bb19
      func.call @matmul_PV(%16, %20, %12, %24, %c64_i32, %c0_i32, %idx_buffer_pv_3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP3_cons_prod_lock_0, Release, 1)
      %25 = memref.load %_anonymous11[%c1] : memref<4xi32>
      %26 = arith.addi %25, %c1_i32 : i32
      %27 = arith.cmpi sge, %26, %c2_i32 : i32
      %28 = arith.subi %26, %c2_i32 : i32
      %29 = arith.select %27, %28, %26 : i32
      memref.store %29, %_anonymous11[%c1] : memref<4xi32>
      aie.use_lock(%memV_3_cons_prod_lock_0, Release, 1)
      %30 = memref.load %_anonymous11[%c2] : memref<4xi32>
      %31 = arith.addi %30, %c1_i32 : i32
      %32 = arith.cmpi sge, %31, %c2_i32 : i32
      %33 = arith.subi %31, %c2_i32 : i32
      %34 = arith.select %32, %33, %31 : i32
      memref.store %34, %_anonymous11[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF3_prod_lock_0, Release, 1)
      %35 = memref.load %_anonymous11[%c3] : memref<4xi32>
      %36 = arith.addi %35, %c1_i32 : i32
      %37 = arith.cmpi sge, %36, %c2_i32 : i32
      %38 = arith.subi %36, %c2_i32 : i32
      %39 = arith.select %37, %38, %36 : i32
      memref.store %39, %_anonymous11[%c3] : memref<4xi32>
      %40 = memref.load %idx_buffer_pv_3[%c0] : memref<2xi32>
      %41 = arith.addi %40, %c1_i32 : i32
      memref.store %41, %idx_buffer_pv_3[%c0] : memref<2xi32>
      cf.cond_br %3, ^bb21, ^bb37
    ^bb21:  // pred: ^bb20
      %42 = arith.subi %1, %c2_i32 : i32
      %43 = arith.index_cast %42 : i32 to index
      cf.br ^bb22(%c0 : index)
    ^bb22(%44: index):  // 2 preds: ^bb21, ^bb35
      %45 = arith.cmpi slt, %44, %43 : index
      cf.cond_br %45, ^bb23, ^bb36
    ^bb23:  // pred: ^bb22
      aie.use_lock(%outP3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %46 = memref.load %_anonymous11[%c1] : memref<4xi32>
      %47 = arith.index_cast %46 : i32 to index
      %48 = arith.index_cast %47 : index to i32
      cf.switch %48 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%outP3_cons_buff_0 : memref<64x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%outP3_cons_buff_1 : memref<64x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%outP3_cons_buff_0 : memref<64x64xbf16>)
    ^bb27(%49: memref<64x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      aie.use_lock(%memV_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %50 = memref.load %_anonymous11[%c2] : memref<4xi32>
      %51 = arith.index_cast %50 : i32 to index
      %52 = arith.index_cast %51 : index to i32
      cf.switch %52 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%memV_3_cons_buff_0 : memref<64x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%memV_3_cons_buff_1 : memref<64x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%memV_3_cons_buff_0 : memref<64x64xbf16>)
    ^bb31(%53: memref<64x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      aie.use_lock(%scaleOF3_cons_lock_0, AcquireGreaterEqual, 1)
      %54 = memref.load %_anonymous11[%c3] : memref<4xi32>
      %55 = arith.index_cast %54 : i32 to index
      %56 = arith.index_cast %55 : index to i32
      cf.switch %56 : i32, [
        default: ^bb34,
        0: ^bb32,
        1: ^bb33
      ]
    ^bb32:  // pred: ^bb31
      cf.br ^bb35(%scaleOF3_buff_0 : memref<256xbf16>)
    ^bb33:  // pred: ^bb31
      cf.br ^bb35(%scaleOF3_buff_1 : memref<256xbf16>)
    ^bb34:  // pred: ^bb31
      cf.br ^bb35(%scaleOF3_buff_0 : memref<256xbf16>)
    ^bb35(%57: memref<256xbf16>):  // 3 preds: ^bb32, ^bb33, ^bb34
      func.call @matmul_PV(%49, %53, %12, %57, %c64_i32, %c1_i32, %idx_buffer_pv_3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP3_cons_prod_lock_0, Release, 1)
      %58 = memref.load %_anonymous11[%c1] : memref<4xi32>
      %59 = arith.addi %58, %c1_i32 : i32
      %60 = arith.cmpi sge, %59, %c2_i32 : i32
      %61 = arith.subi %59, %c2_i32 : i32
      %62 = arith.select %60, %61, %59 : i32
      memref.store %62, %_anonymous11[%c1] : memref<4xi32>
      aie.use_lock(%memV_3_cons_prod_lock_0, Release, 1)
      %63 = memref.load %_anonymous11[%c2] : memref<4xi32>
      %64 = arith.addi %63, %c1_i32 : i32
      %65 = arith.cmpi sge, %64, %c2_i32 : i32
      %66 = arith.subi %64, %c2_i32 : i32
      %67 = arith.select %65, %66, %64 : i32
      memref.store %67, %_anonymous11[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF3_prod_lock_0, Release, 1)
      %68 = memref.load %_anonymous11[%c3] : memref<4xi32>
      %69 = arith.addi %68, %c1_i32 : i32
      %70 = arith.cmpi sge, %69, %c2_i32 : i32
      %71 = arith.subi %69, %c2_i32 : i32
      %72 = arith.select %70, %71, %69 : i32
      memref.store %72, %_anonymous11[%c3] : memref<4xi32>
      %73 = memref.load %idx_buffer_pv_3[%c0] : memref<2xi32>
      %74 = arith.addi %73, %c1_i32 : i32
      memref.store %74, %idx_buffer_pv_3[%c0] : memref<2xi32>
      %75 = arith.addi %44, %c1 : index
      cf.br ^bb22(%75 : index)
    ^bb36:  // pred: ^bb22
      cf.br ^bb37
    ^bb37:  // 2 preds: ^bb20, ^bb36
      cf.cond_br %4, ^bb38, ^bb51
    ^bb38:  // pred: ^bb37
      aie.use_lock(%outP3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous11[%c1] : memref<4xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%outP3_cons_buff_0 : memref<64x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%outP3_cons_buff_1 : memref<64x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%outP3_cons_buff_0 : memref<64x64xbf16>)
    ^bb42(%79: memref<64x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      aie.use_lock(%memV_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %80 = memref.load %_anonymous11[%c2] : memref<4xi32>
      %81 = arith.index_cast %80 : i32 to index
      %82 = arith.index_cast %81 : index to i32
      cf.switch %82 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%memV_3_cons_buff_0 : memref<64x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%memV_3_cons_buff_1 : memref<64x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%memV_3_cons_buff_0 : memref<64x64xbf16>)
    ^bb46(%83: memref<64x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      aie.use_lock(%scaleOF3_cons_lock_0, AcquireGreaterEqual, 1)
      %84 = memref.load %_anonymous11[%c3] : memref<4xi32>
      %85 = arith.index_cast %84 : i32 to index
      %86 = arith.index_cast %85 : index to i32
      cf.switch %86 : i32, [
        default: ^bb49,
        0: ^bb47,
        1: ^bb48
      ]
    ^bb47:  // pred: ^bb46
      cf.br ^bb50(%scaleOF3_buff_0 : memref<256xbf16>)
    ^bb48:  // pred: ^bb46
      cf.br ^bb50(%scaleOF3_buff_1 : memref<256xbf16>)
    ^bb49:  // pred: ^bb46
      cf.br ^bb50(%scaleOF3_buff_0 : memref<256xbf16>)
    ^bb50(%87: memref<256xbf16>):  // 3 preds: ^bb47, ^bb48, ^bb49
      func.call @matmul_PV(%79, %83, %12, %87, %c64_i32, %c1_i32, %idx_buffer_pv_3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      func.call @rescale_O(%12, %87, %c64_i32, %idx_buffer_pv_3) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP3_cons_prod_lock_0, Release, 1)
      %88 = memref.load %_anonymous11[%c1] : memref<4xi32>
      %89 = arith.addi %88, %c1_i32 : i32
      %90 = arith.cmpi sge, %89, %c2_i32 : i32
      %91 = arith.subi %89, %c2_i32 : i32
      %92 = arith.select %90, %91, %89 : i32
      memref.store %92, %_anonymous11[%c1] : memref<4xi32>
      aie.use_lock(%memV_3_cons_prod_lock_0, Release, 1)
      %93 = memref.load %_anonymous11[%c2] : memref<4xi32>
      %94 = arith.addi %93, %c1_i32 : i32
      %95 = arith.cmpi sge, %94, %c2_i32 : i32
      %96 = arith.subi %94, %c2_i32 : i32
      %97 = arith.select %95, %96, %94 : i32
      memref.store %97, %_anonymous11[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF3_prod_lock_0, Release, 1)
      %98 = memref.load %_anonymous11[%c3] : memref<4xi32>
      %99 = arith.addi %98, %c1_i32 : i32
      %100 = arith.cmpi sge, %99, %c2_i32 : i32
      %101 = arith.subi %99, %c2_i32 : i32
      %102 = arith.select %100, %101, %99 : i32
      memref.store %102, %_anonymous11[%c3] : memref<4xi32>
      %103 = memref.load %idx_buffer_pv_3[%c0] : memref<2xi32>
      %104 = arith.addi %103, %c1_i32 : i32
      memref.store %104, %idx_buffer_pv_3[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb51:  // pred: ^bb37
      func.call @rescale_O(%12, %24, %c64_i32, %idx_buffer_pv_3) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      %105 = memref.load %idx_buffer_pv_3[%c0] : memref<2xi32>
      %106 = arith.addi %105, %c1_i32 : i32
      memref.store %106, %idx_buffer_pv_3[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb52:  // 2 preds: ^bb50, ^bb51
      memref.store %c0_i32, %idx_buffer_pv_3[%c0] : memref<2xi32>
      %107 = memref.load %idx_buffer_pv_3[%c1] : memref<2xi32>
      %108 = arith.addi %107, %c8_i32 : i32
      memref.store %108, %idx_buffer_pv_3[%c1] : memref<2xi32>
      aie.use_lock(%outO3_cons_lock_0, Release, 1)
      %109 = memref.load %_anonymous11[%c0] : memref<4xi32>
      %110 = arith.addi %109, %c1_i32 : i32
      %111 = arith.cmpi sge, %110, %c2_i32 : i32
      %112 = arith.subi %110, %c2_i32 : i32
      %113 = arith.select %111, %112, %110 : i32
      memref.store %113, %_anonymous11[%c0] : memref<4xi32>
      %114 = arith.addi %7, %c1 : index
      cf.br ^bb3(%114 : index)
    ^bb53:  // pred: ^bb3
      %115 = arith.addi %5, %c1 : index
      cf.br ^bb1(%115 : index)
    ^bb54:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_4_2 = aie.lock(%tile_4_2, 0)
    %_anonymous12 = aie.buffer(%tile_4_2) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous12"} : memref<3xi32> 
    %core_4_2 = aie.core(%tile_4_2) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c4_i32 = arith.constant 4 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous12[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous12[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous12[%c2] : memref<3xi32>
      aie.use_lock(%lock_4_2, Acquire, 1)
      %0 = memref.load %mha_rtpss_4_stage0[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_4_stage0[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%4: index):  // 2 preds: ^bb0, ^bb20
      %5 = arith.cmpi slt, %4, %c9223372036854775807 : index
      cf.cond_br %5, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_qk_4[%c0] : memref<2xi32>
      memref.store %c4_i32, %idx_buffer_qk_4[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%6: index):  // 2 preds: ^bb2, ^bb19
      %7 = arith.cmpi slt, %6, %2 : index
      cf.cond_br %7, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memQ20_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous12[%c0] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%memQ20_cons_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%memQ20_cons_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%memQ20_cons_buff_0 : memref<64x64xbf16>)
    ^bb8(%11: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      cf.br ^bb9(%c0 : index)
    ^bb9(%12: index):  // 2 preds: ^bb8, ^bb18
      %13 = arith.cmpi slt, %12, %3 : index
      cf.cond_br %13, ^bb10, ^bb19
    ^bb10:  // pred: ^bb9
      aie.use_lock(%memK_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %14 = memref.load %_anonymous12[%c1] : memref<3xi32>
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.index_cast %15 : index to i32
      cf.switch %16 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%memK_4_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%memK_4_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%memK_4_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%17: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%memA4_prod_lock_0, AcquireGreaterEqual, 1)
      %18 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %19 = arith.index_cast %18 : i32 to index
      %20 = arith.index_cast %19 : index to i32
      cf.switch %20 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%memA4_buff_0 : memref<64x64xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%memA4_buff_1 : memref<64x64xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%memA4_buff_0 : memref<64x64xbf16>)
    ^bb18(%21: memref<64x64xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @zero_bf16(%21) : (memref<64x64xbf16>) -> ()
      func.call @matmul_bf16_bf16_wrapper(%11, %17, %21, %idx_buffer_qk_4) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
      aie.use_lock(%memK_4_cons_prod_lock_0, Release, 1)
      %22 = memref.load %_anonymous12[%c1] : memref<3xi32>
      %23 = arith.addi %22, %c1_i32 : i32
      %24 = arith.cmpi sge, %23, %c2_i32 : i32
      %25 = arith.subi %23, %c2_i32 : i32
      %26 = arith.select %24, %25, %23 : i32
      memref.store %26, %_anonymous12[%c1] : memref<3xi32>
      aie.use_lock(%memA4_cons_lock_0, Release, 1)
      %27 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %28 = arith.addi %27, %c1_i32 : i32
      %29 = arith.cmpi sge, %28, %c2_i32 : i32
      %30 = arith.subi %28, %c2_i32 : i32
      %31 = arith.select %29, %30, %28 : i32
      memref.store %31, %_anonymous12[%c2] : memref<3xi32>
      %32 = memref.load %idx_buffer_qk_4[%c0] : memref<2xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      memref.store %33, %idx_buffer_qk_4[%c0] : memref<2xi32>
      %34 = arith.addi %12, %c1 : index
      cf.br ^bb9(%34 : index)
    ^bb19:  // pred: ^bb9
      memref.store %c0_i32, %idx_buffer_qk_4[%c0] : memref<2xi32>
      %35 = memref.load %idx_buffer_qk_4[%c1] : memref<2xi32>
      %36 = arith.addi %35, %c8_i32 : i32
      memref.store %36, %idx_buffer_qk_4[%c1] : memref<2xi32>
      aie.use_lock(%memQ20_cons_prod_lock_0, Release, 1)
      %37 = memref.load %_anonymous12[%c0] : memref<3xi32>
      %38 = arith.addi %37, %c1_i32 : i32
      %39 = arith.cmpi sge, %38, %c2_i32 : i32
      %40 = arith.subi %38, %c2_i32 : i32
      %41 = arith.select %39, %40, %38 : i32
      memref.store %41, %_anonymous12[%c0] : memref<3xi32>
      %42 = arith.addi %6, %c1 : index
      cf.br ^bb3(%42 : index)
    ^bb20:  // pred: ^bb3
      %43 = arith.addi %4, %c1 : index
      cf.br ^bb1(%43 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_4_3 = aie.lock(%tile_4_3, 0)
    %_anonymous13 = aie.buffer(%tile_4_3) {address = 12032 : i32, mem_bank = 0 : i32, sym_name = "_anonymous13"} : memref<3xi32> 
    %core_4_3 = aie.core(%tile_4_3) {
      %c3 = arith.constant 3 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c4_i32 = arith.constant 4 : i32
      %c64_i32 = arith.constant 64 : i32
      %cst = arith.constant 1.806640e-01 : bf16
      %c256_i32 = arith.constant 256 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous13[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous13[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous13[%c2] : memref<3xi32>
      aie.use_lock(%lock_4_3, Acquire, 1)
      %0 = memref.load %mha_rtpss_4_stage1[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_4_stage1[%c1] : memref<4xi32>
      %2 = memref.load %mha_rtpss_4_stage1[%c2] : memref<4xi32>
      %3 = memref.load %mha_rtpss_4_stage1[%c3] : memref<4xi32>
      %4 = arith.index_cast %0 : i32 to index
      %5 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%6: index):  // 2 preds: ^bb0, ^bb20
      %7 = arith.cmpi slt, %6, %c9223372036854775807 : index
      cf.cond_br %7, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_softmax_4[%c0] : memref<2xi32>
      memref.store %c4_i32, %idx_buffer_softmax_4[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%8: index):  // 2 preds: ^bb2, ^bb19
      %9 = arith.cmpi slt, %8, %4 : index
      cf.cond_br %9, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      func.call @init_scale_buffer(%scale_buffer_softmax_4, %c64_i32) : (memref<256xbf16>, i32) -> ()
      cf.br ^bb5(%c0 : index)
    ^bb5(%10: index):  // 2 preds: ^bb4, ^bb18
      %11 = arith.cmpi slt, %10, %5 : index
      cf.cond_br %11, ^bb6, ^bb19
    ^bb6:  // pred: ^bb5
      aie.use_lock(%memP4_prod_lock_0, AcquireGreaterEqual, 1)
      %12 = memref.load %_anonymous13[%c0] : memref<3xi32>
      %13 = arith.index_cast %12 : i32 to index
      %14 = arith.index_cast %13 : index to i32
      cf.switch %14 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%memP4_buff_0 : memref<64x64xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%memP4_buff_1 : memref<64x64xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%memP4_buff_0 : memref<64x64xbf16>)
    ^bb10(%15: memref<64x64xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      aie.use_lock(%outA4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %16 = memref.load %_anonymous13[%c1] : memref<3xi32>
      %17 = arith.index_cast %16 : i32 to index
      %18 = arith.index_cast %17 : index to i32
      cf.switch %18 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%outA4_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%outA4_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%outA4_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%19: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%scaleOF4_prod_lock_0, AcquireGreaterEqual, 1)
      %20 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %21 = arith.index_cast %20 : i32 to index
      %22 = arith.index_cast %21 : index to i32
      cf.switch %22 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%scaleOF4_buff_0 : memref<256xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%scaleOF4_buff_1 : memref<256xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%scaleOF4_buff_0 : memref<256xbf16>)
    ^bb18(%23: memref<256xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @partial_softmax(%19, %15, %scale_buffer_softmax_4, %idx_buffer_softmax_4, %cst, %c64_i32, %c64_i32, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
      func.call @passThroughLine(%scale_buffer_softmax_4, %23, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%outA4_cons_prod_lock_0, Release, 1)
      %24 = memref.load %_anonymous13[%c1] : memref<3xi32>
      %25 = arith.addi %24, %c1_i32 : i32
      %26 = arith.cmpi sge, %25, %c2_i32 : i32
      %27 = arith.subi %25, %c2_i32 : i32
      %28 = arith.select %26, %27, %25 : i32
      memref.store %28, %_anonymous13[%c1] : memref<3xi32>
      aie.use_lock(%memP4_cons_lock_0, Release, 1)
      %29 = memref.load %_anonymous13[%c0] : memref<3xi32>
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = arith.cmpi sge, %30, %c2_i32 : i32
      %32 = arith.subi %30, %c2_i32 : i32
      %33 = arith.select %31, %32, %30 : i32
      memref.store %33, %_anonymous13[%c0] : memref<3xi32>
      aie.use_lock(%scaleOF4_cons_lock_0, Release, 1)
      %34 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %35 = arith.addi %34, %c1_i32 : i32
      %36 = arith.cmpi sge, %35, %c2_i32 : i32
      %37 = arith.subi %35, %c2_i32 : i32
      %38 = arith.select %36, %37, %35 : i32
      memref.store %38, %_anonymous13[%c2] : memref<3xi32>
      %39 = memref.load %idx_buffer_softmax_4[%c0] : memref<2xi32>
      %40 = arith.addi %39, %c1_i32 : i32
      memref.store %40, %idx_buffer_softmax_4[%c0] : memref<2xi32>
      %41 = arith.addi %10, %c1 : index
      cf.br ^bb5(%41 : index)
    ^bb19:  // pred: ^bb5
      memref.store %c0_i32, %idx_buffer_softmax_4[%c0] : memref<2xi32>
      %42 = memref.load %idx_buffer_softmax_4[%c1] : memref<2xi32>
      %43 = arith.addi %42, %c8_i32 : i32
      memref.store %43, %idx_buffer_softmax_4[%c1] : memref<2xi32>
      %44 = arith.addi %8, %c1 : index
      cf.br ^bb3(%44 : index)
    ^bb20:  // pred: ^bb3
      %45 = arith.addi %6, %c1 : index
      cf.br ^bb1(%45 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_4_4 = aie.lock(%tile_4_4, 0)
    %_anonymous14 = aie.buffer(%tile_4_4) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous14"} : memref<4xi32> 
    %core_4_4 = aie.core(%tile_4_4) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c4_i32 = arith.constant 4 : i32
      %c64_i32 = arith.constant 64 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c3 = arith.constant 3 : index
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous14[%c0] : memref<4xi32>
      memref.store %c0_i32, %_anonymous14[%c1] : memref<4xi32>
      memref.store %c0_i32, %_anonymous14[%c2] : memref<4xi32>
      memref.store %c0_i32, %_anonymous14[%c3] : memref<4xi32>
      aie.use_lock(%lock_4_4, Acquire, 1)
      %0 = memref.load %mha_rtpss_4_stage2[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_4_stage2[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.cmpi sgt, %1, %c2_i32 : i32
      %4 = arith.cmpi sgt, %1, %c1_i32 : i32
      cf.br ^bb1(%c0 : index)
    ^bb1(%5: index):  // 2 preds: ^bb0, ^bb53
      %6 = arith.cmpi slt, %5, %c9223372036854775807 : index
      cf.cond_br %6, ^bb2, ^bb54
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_pv_4[%c0] : memref<2xi32>
      memref.store %c4_i32, %idx_buffer_pv_4[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%7: index):  // 2 preds: ^bb2, ^bb52
      %8 = arith.cmpi slt, %7, %2 : index
      cf.cond_br %8, ^bb4, ^bb53
    ^bb4:  // pred: ^bb3
      aie.use_lock(%outO20_prod_lock_0, AcquireGreaterEqual, 1)
      %9 = memref.load %_anonymous14[%c0] : memref<4xi32>
      %10 = arith.index_cast %9 : i32 to index
      %11 = arith.index_cast %10 : index to i32
      cf.switch %11 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%outO20_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%outO20_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%outO20_buff_0 : memref<64x64xbf16>)
    ^bb8(%12: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      func.call @zero_bf16(%12) : (memref<64x64xbf16>) -> ()
      aie.use_lock(%outP4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %13 = memref.load %_anonymous14[%c1] : memref<4xi32>
      %14 = arith.index_cast %13 : i32 to index
      %15 = arith.index_cast %14 : index to i32
      cf.switch %15 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%outP4_cons_buff_0 : memref<64x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%outP4_cons_buff_1 : memref<64x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%outP4_cons_buff_0 : memref<64x64xbf16>)
    ^bb12(%16: memref<64x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      aie.use_lock(%memV_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous14[%c2] : memref<4xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%memV_4_cons_buff_0 : memref<64x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%memV_4_cons_buff_1 : memref<64x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%memV_4_cons_buff_0 : memref<64x64xbf16>)
    ^bb16(%20: memref<64x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      aie.use_lock(%scaleOF4_cons_lock_0, AcquireGreaterEqual, 1)
      %21 = memref.load %_anonymous14[%c3] : memref<4xi32>
      %22 = arith.index_cast %21 : i32 to index
      %23 = arith.index_cast %22 : index to i32
      cf.switch %23 : i32, [
        default: ^bb19,
        0: ^bb17,
        1: ^bb18
      ]
    ^bb17:  // pred: ^bb16
      cf.br ^bb20(%scaleOF4_buff_0 : memref<256xbf16>)
    ^bb18:  // pred: ^bb16
      cf.br ^bb20(%scaleOF4_buff_1 : memref<256xbf16>)
    ^bb19:  // pred: ^bb16
      cf.br ^bb20(%scaleOF4_buff_0 : memref<256xbf16>)
    ^bb20(%24: memref<256xbf16>):  // 3 preds: ^bb17, ^bb18, ^bb19
      func.call @matmul_PV(%16, %20, %12, %24, %c64_i32, %c0_i32, %idx_buffer_pv_4) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP4_cons_prod_lock_0, Release, 1)
      %25 = memref.load %_anonymous14[%c1] : memref<4xi32>
      %26 = arith.addi %25, %c1_i32 : i32
      %27 = arith.cmpi sge, %26, %c2_i32 : i32
      %28 = arith.subi %26, %c2_i32 : i32
      %29 = arith.select %27, %28, %26 : i32
      memref.store %29, %_anonymous14[%c1] : memref<4xi32>
      aie.use_lock(%memV_4_cons_prod_lock_0, Release, 1)
      %30 = memref.load %_anonymous14[%c2] : memref<4xi32>
      %31 = arith.addi %30, %c1_i32 : i32
      %32 = arith.cmpi sge, %31, %c2_i32 : i32
      %33 = arith.subi %31, %c2_i32 : i32
      %34 = arith.select %32, %33, %31 : i32
      memref.store %34, %_anonymous14[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF4_prod_lock_0, Release, 1)
      %35 = memref.load %_anonymous14[%c3] : memref<4xi32>
      %36 = arith.addi %35, %c1_i32 : i32
      %37 = arith.cmpi sge, %36, %c2_i32 : i32
      %38 = arith.subi %36, %c2_i32 : i32
      %39 = arith.select %37, %38, %36 : i32
      memref.store %39, %_anonymous14[%c3] : memref<4xi32>
      %40 = memref.load %idx_buffer_pv_4[%c0] : memref<2xi32>
      %41 = arith.addi %40, %c1_i32 : i32
      memref.store %41, %idx_buffer_pv_4[%c0] : memref<2xi32>
      cf.cond_br %3, ^bb21, ^bb37
    ^bb21:  // pred: ^bb20
      %42 = arith.subi %1, %c2_i32 : i32
      %43 = arith.index_cast %42 : i32 to index
      cf.br ^bb22(%c0 : index)
    ^bb22(%44: index):  // 2 preds: ^bb21, ^bb35
      %45 = arith.cmpi slt, %44, %43 : index
      cf.cond_br %45, ^bb23, ^bb36
    ^bb23:  // pred: ^bb22
      aie.use_lock(%outP4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %46 = memref.load %_anonymous14[%c1] : memref<4xi32>
      %47 = arith.index_cast %46 : i32 to index
      %48 = arith.index_cast %47 : index to i32
      cf.switch %48 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%outP4_cons_buff_0 : memref<64x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%outP4_cons_buff_1 : memref<64x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%outP4_cons_buff_0 : memref<64x64xbf16>)
    ^bb27(%49: memref<64x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      aie.use_lock(%memV_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %50 = memref.load %_anonymous14[%c2] : memref<4xi32>
      %51 = arith.index_cast %50 : i32 to index
      %52 = arith.index_cast %51 : index to i32
      cf.switch %52 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%memV_4_cons_buff_0 : memref<64x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%memV_4_cons_buff_1 : memref<64x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%memV_4_cons_buff_0 : memref<64x64xbf16>)
    ^bb31(%53: memref<64x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      aie.use_lock(%scaleOF4_cons_lock_0, AcquireGreaterEqual, 1)
      %54 = memref.load %_anonymous14[%c3] : memref<4xi32>
      %55 = arith.index_cast %54 : i32 to index
      %56 = arith.index_cast %55 : index to i32
      cf.switch %56 : i32, [
        default: ^bb34,
        0: ^bb32,
        1: ^bb33
      ]
    ^bb32:  // pred: ^bb31
      cf.br ^bb35(%scaleOF4_buff_0 : memref<256xbf16>)
    ^bb33:  // pred: ^bb31
      cf.br ^bb35(%scaleOF4_buff_1 : memref<256xbf16>)
    ^bb34:  // pred: ^bb31
      cf.br ^bb35(%scaleOF4_buff_0 : memref<256xbf16>)
    ^bb35(%57: memref<256xbf16>):  // 3 preds: ^bb32, ^bb33, ^bb34
      func.call @matmul_PV(%49, %53, %12, %57, %c64_i32, %c1_i32, %idx_buffer_pv_4) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP4_cons_prod_lock_0, Release, 1)
      %58 = memref.load %_anonymous14[%c1] : memref<4xi32>
      %59 = arith.addi %58, %c1_i32 : i32
      %60 = arith.cmpi sge, %59, %c2_i32 : i32
      %61 = arith.subi %59, %c2_i32 : i32
      %62 = arith.select %60, %61, %59 : i32
      memref.store %62, %_anonymous14[%c1] : memref<4xi32>
      aie.use_lock(%memV_4_cons_prod_lock_0, Release, 1)
      %63 = memref.load %_anonymous14[%c2] : memref<4xi32>
      %64 = arith.addi %63, %c1_i32 : i32
      %65 = arith.cmpi sge, %64, %c2_i32 : i32
      %66 = arith.subi %64, %c2_i32 : i32
      %67 = arith.select %65, %66, %64 : i32
      memref.store %67, %_anonymous14[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF4_prod_lock_0, Release, 1)
      %68 = memref.load %_anonymous14[%c3] : memref<4xi32>
      %69 = arith.addi %68, %c1_i32 : i32
      %70 = arith.cmpi sge, %69, %c2_i32 : i32
      %71 = arith.subi %69, %c2_i32 : i32
      %72 = arith.select %70, %71, %69 : i32
      memref.store %72, %_anonymous14[%c3] : memref<4xi32>
      %73 = memref.load %idx_buffer_pv_4[%c0] : memref<2xi32>
      %74 = arith.addi %73, %c1_i32 : i32
      memref.store %74, %idx_buffer_pv_4[%c0] : memref<2xi32>
      %75 = arith.addi %44, %c1 : index
      cf.br ^bb22(%75 : index)
    ^bb36:  // pred: ^bb22
      cf.br ^bb37
    ^bb37:  // 2 preds: ^bb20, ^bb36
      cf.cond_br %4, ^bb38, ^bb51
    ^bb38:  // pred: ^bb37
      aie.use_lock(%outP4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous14[%c1] : memref<4xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%outP4_cons_buff_0 : memref<64x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%outP4_cons_buff_1 : memref<64x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%outP4_cons_buff_0 : memref<64x64xbf16>)
    ^bb42(%79: memref<64x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      aie.use_lock(%memV_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %80 = memref.load %_anonymous14[%c2] : memref<4xi32>
      %81 = arith.index_cast %80 : i32 to index
      %82 = arith.index_cast %81 : index to i32
      cf.switch %82 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%memV_4_cons_buff_0 : memref<64x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%memV_4_cons_buff_1 : memref<64x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%memV_4_cons_buff_0 : memref<64x64xbf16>)
    ^bb46(%83: memref<64x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      aie.use_lock(%scaleOF4_cons_lock_0, AcquireGreaterEqual, 1)
      %84 = memref.load %_anonymous14[%c3] : memref<4xi32>
      %85 = arith.index_cast %84 : i32 to index
      %86 = arith.index_cast %85 : index to i32
      cf.switch %86 : i32, [
        default: ^bb49,
        0: ^bb47,
        1: ^bb48
      ]
    ^bb47:  // pred: ^bb46
      cf.br ^bb50(%scaleOF4_buff_0 : memref<256xbf16>)
    ^bb48:  // pred: ^bb46
      cf.br ^bb50(%scaleOF4_buff_1 : memref<256xbf16>)
    ^bb49:  // pred: ^bb46
      cf.br ^bb50(%scaleOF4_buff_0 : memref<256xbf16>)
    ^bb50(%87: memref<256xbf16>):  // 3 preds: ^bb47, ^bb48, ^bb49
      func.call @matmul_PV(%79, %83, %12, %87, %c64_i32, %c1_i32, %idx_buffer_pv_4) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      func.call @rescale_O(%12, %87, %c64_i32, %idx_buffer_pv_4) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP4_cons_prod_lock_0, Release, 1)
      %88 = memref.load %_anonymous14[%c1] : memref<4xi32>
      %89 = arith.addi %88, %c1_i32 : i32
      %90 = arith.cmpi sge, %89, %c2_i32 : i32
      %91 = arith.subi %89, %c2_i32 : i32
      %92 = arith.select %90, %91, %89 : i32
      memref.store %92, %_anonymous14[%c1] : memref<4xi32>
      aie.use_lock(%memV_4_cons_prod_lock_0, Release, 1)
      %93 = memref.load %_anonymous14[%c2] : memref<4xi32>
      %94 = arith.addi %93, %c1_i32 : i32
      %95 = arith.cmpi sge, %94, %c2_i32 : i32
      %96 = arith.subi %94, %c2_i32 : i32
      %97 = arith.select %95, %96, %94 : i32
      memref.store %97, %_anonymous14[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF4_prod_lock_0, Release, 1)
      %98 = memref.load %_anonymous14[%c3] : memref<4xi32>
      %99 = arith.addi %98, %c1_i32 : i32
      %100 = arith.cmpi sge, %99, %c2_i32 : i32
      %101 = arith.subi %99, %c2_i32 : i32
      %102 = arith.select %100, %101, %99 : i32
      memref.store %102, %_anonymous14[%c3] : memref<4xi32>
      %103 = memref.load %idx_buffer_pv_4[%c0] : memref<2xi32>
      %104 = arith.addi %103, %c1_i32 : i32
      memref.store %104, %idx_buffer_pv_4[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb51:  // pred: ^bb37
      func.call @rescale_O(%12, %24, %c64_i32, %idx_buffer_pv_4) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      %105 = memref.load %idx_buffer_pv_4[%c0] : memref<2xi32>
      %106 = arith.addi %105, %c1_i32 : i32
      memref.store %106, %idx_buffer_pv_4[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb52:  // 2 preds: ^bb50, ^bb51
      memref.store %c0_i32, %idx_buffer_pv_4[%c0] : memref<2xi32>
      %107 = memref.load %idx_buffer_pv_4[%c1] : memref<2xi32>
      %108 = arith.addi %107, %c8_i32 : i32
      memref.store %108, %idx_buffer_pv_4[%c1] : memref<2xi32>
      aie.use_lock(%outO20_cons_lock_0, Release, 1)
      %109 = memref.load %_anonymous14[%c0] : memref<4xi32>
      %110 = arith.addi %109, %c1_i32 : i32
      %111 = arith.cmpi sge, %110, %c2_i32 : i32
      %112 = arith.subi %110, %c2_i32 : i32
      %113 = arith.select %111, %112, %110 : i32
      memref.store %113, %_anonymous14[%c0] : memref<4xi32>
      %114 = arith.addi %7, %c1 : index
      cf.br ^bb3(%114 : index)
    ^bb53:  // pred: ^bb3
      %115 = arith.addi %5, %c1 : index
      cf.br ^bb1(%115 : index)
    ^bb54:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_5_2 = aie.lock(%tile_5_2, 0)
    %_anonymous15 = aie.buffer(%tile_5_2) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous15"} : memref<3xi32> 
    %core_5_2 = aie.core(%tile_5_2) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c5_i32 = arith.constant 5 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous15[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous15[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous15[%c2] : memref<3xi32>
      aie.use_lock(%lock_5_2, Acquire, 1)
      %0 = memref.load %mha_rtpss_5_stage0[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_5_stage0[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%4: index):  // 2 preds: ^bb0, ^bb20
      %5 = arith.cmpi slt, %4, %c9223372036854775807 : index
      cf.cond_br %5, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_qk_5[%c0] : memref<2xi32>
      memref.store %c5_i32, %idx_buffer_qk_5[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%6: index):  // 2 preds: ^bb2, ^bb19
      %7 = arith.cmpi slt, %6, %2 : index
      cf.cond_br %7, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memQ21_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous15[%c0] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%memQ21_cons_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%memQ21_cons_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%memQ21_cons_buff_0 : memref<64x64xbf16>)
    ^bb8(%11: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      cf.br ^bb9(%c0 : index)
    ^bb9(%12: index):  // 2 preds: ^bb8, ^bb18
      %13 = arith.cmpi slt, %12, %3 : index
      cf.cond_br %13, ^bb10, ^bb19
    ^bb10:  // pred: ^bb9
      aie.use_lock(%memK_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %14 = memref.load %_anonymous15[%c1] : memref<3xi32>
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.index_cast %15 : index to i32
      cf.switch %16 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%memK_5_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%memK_5_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%memK_5_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%17: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%memA5_prod_lock_0, AcquireGreaterEqual, 1)
      %18 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %19 = arith.index_cast %18 : i32 to index
      %20 = arith.index_cast %19 : index to i32
      cf.switch %20 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%memA5_buff_0 : memref<64x64xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%memA5_buff_1 : memref<64x64xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%memA5_buff_0 : memref<64x64xbf16>)
    ^bb18(%21: memref<64x64xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @zero_bf16(%21) : (memref<64x64xbf16>) -> ()
      func.call @matmul_bf16_bf16_wrapper(%11, %17, %21, %idx_buffer_qk_5) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
      aie.use_lock(%memK_5_cons_prod_lock_0, Release, 1)
      %22 = memref.load %_anonymous15[%c1] : memref<3xi32>
      %23 = arith.addi %22, %c1_i32 : i32
      %24 = arith.cmpi sge, %23, %c2_i32 : i32
      %25 = arith.subi %23, %c2_i32 : i32
      %26 = arith.select %24, %25, %23 : i32
      memref.store %26, %_anonymous15[%c1] : memref<3xi32>
      aie.use_lock(%memA5_cons_lock_0, Release, 1)
      %27 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %28 = arith.addi %27, %c1_i32 : i32
      %29 = arith.cmpi sge, %28, %c2_i32 : i32
      %30 = arith.subi %28, %c2_i32 : i32
      %31 = arith.select %29, %30, %28 : i32
      memref.store %31, %_anonymous15[%c2] : memref<3xi32>
      %32 = memref.load %idx_buffer_qk_5[%c0] : memref<2xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      memref.store %33, %idx_buffer_qk_5[%c0] : memref<2xi32>
      %34 = arith.addi %12, %c1 : index
      cf.br ^bb9(%34 : index)
    ^bb19:  // pred: ^bb9
      memref.store %c0_i32, %idx_buffer_qk_5[%c0] : memref<2xi32>
      %35 = memref.load %idx_buffer_qk_5[%c1] : memref<2xi32>
      %36 = arith.addi %35, %c8_i32 : i32
      memref.store %36, %idx_buffer_qk_5[%c1] : memref<2xi32>
      aie.use_lock(%memQ21_cons_prod_lock_0, Release, 1)
      %37 = memref.load %_anonymous15[%c0] : memref<3xi32>
      %38 = arith.addi %37, %c1_i32 : i32
      %39 = arith.cmpi sge, %38, %c2_i32 : i32
      %40 = arith.subi %38, %c2_i32 : i32
      %41 = arith.select %39, %40, %38 : i32
      memref.store %41, %_anonymous15[%c0] : memref<3xi32>
      %42 = arith.addi %6, %c1 : index
      cf.br ^bb3(%42 : index)
    ^bb20:  // pred: ^bb3
      %43 = arith.addi %4, %c1 : index
      cf.br ^bb1(%43 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_5_3 = aie.lock(%tile_5_3, 0)
    %_anonymous16 = aie.buffer(%tile_5_3) {address = 12032 : i32, mem_bank = 0 : i32, sym_name = "_anonymous16"} : memref<3xi32> 
    %core_5_3 = aie.core(%tile_5_3) {
      %c3 = arith.constant 3 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c5_i32 = arith.constant 5 : i32
      %c64_i32 = arith.constant 64 : i32
      %cst = arith.constant 1.806640e-01 : bf16
      %c256_i32 = arith.constant 256 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous16[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous16[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous16[%c2] : memref<3xi32>
      aie.use_lock(%lock_5_3, Acquire, 1)
      %0 = memref.load %mha_rtpss_5_stage1[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_5_stage1[%c1] : memref<4xi32>
      %2 = memref.load %mha_rtpss_5_stage1[%c2] : memref<4xi32>
      %3 = memref.load %mha_rtpss_5_stage1[%c3] : memref<4xi32>
      %4 = arith.index_cast %0 : i32 to index
      %5 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%6: index):  // 2 preds: ^bb0, ^bb20
      %7 = arith.cmpi slt, %6, %c9223372036854775807 : index
      cf.cond_br %7, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_softmax_5[%c0] : memref<2xi32>
      memref.store %c5_i32, %idx_buffer_softmax_5[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%8: index):  // 2 preds: ^bb2, ^bb19
      %9 = arith.cmpi slt, %8, %4 : index
      cf.cond_br %9, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      func.call @init_scale_buffer(%scale_buffer_softmax_5, %c64_i32) : (memref<256xbf16>, i32) -> ()
      cf.br ^bb5(%c0 : index)
    ^bb5(%10: index):  // 2 preds: ^bb4, ^bb18
      %11 = arith.cmpi slt, %10, %5 : index
      cf.cond_br %11, ^bb6, ^bb19
    ^bb6:  // pred: ^bb5
      aie.use_lock(%memP5_prod_lock_0, AcquireGreaterEqual, 1)
      %12 = memref.load %_anonymous16[%c0] : memref<3xi32>
      %13 = arith.index_cast %12 : i32 to index
      %14 = arith.index_cast %13 : index to i32
      cf.switch %14 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%memP5_buff_0 : memref<64x64xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%memP5_buff_1 : memref<64x64xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%memP5_buff_0 : memref<64x64xbf16>)
    ^bb10(%15: memref<64x64xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      aie.use_lock(%outA5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %16 = memref.load %_anonymous16[%c1] : memref<3xi32>
      %17 = arith.index_cast %16 : i32 to index
      %18 = arith.index_cast %17 : index to i32
      cf.switch %18 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%outA5_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%outA5_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%outA5_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%19: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%scaleOF5_prod_lock_0, AcquireGreaterEqual, 1)
      %20 = memref.load %_anonymous16[%c2] : memref<3xi32>
      %21 = arith.index_cast %20 : i32 to index
      %22 = arith.index_cast %21 : index to i32
      cf.switch %22 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%scaleOF5_buff_0 : memref<256xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%scaleOF5_buff_1 : memref<256xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%scaleOF5_buff_0 : memref<256xbf16>)
    ^bb18(%23: memref<256xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @partial_softmax(%19, %15, %scale_buffer_softmax_5, %idx_buffer_softmax_5, %cst, %c64_i32, %c64_i32, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
      func.call @passThroughLine(%scale_buffer_softmax_5, %23, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%outA5_cons_prod_lock_0, Release, 1)
      %24 = memref.load %_anonymous16[%c1] : memref<3xi32>
      %25 = arith.addi %24, %c1_i32 : i32
      %26 = arith.cmpi sge, %25, %c2_i32 : i32
      %27 = arith.subi %25, %c2_i32 : i32
      %28 = arith.select %26, %27, %25 : i32
      memref.store %28, %_anonymous16[%c1] : memref<3xi32>
      aie.use_lock(%memP5_cons_lock_0, Release, 1)
      %29 = memref.load %_anonymous16[%c0] : memref<3xi32>
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = arith.cmpi sge, %30, %c2_i32 : i32
      %32 = arith.subi %30, %c2_i32 : i32
      %33 = arith.select %31, %32, %30 : i32
      memref.store %33, %_anonymous16[%c0] : memref<3xi32>
      aie.use_lock(%scaleOF5_cons_lock_0, Release, 1)
      %34 = memref.load %_anonymous16[%c2] : memref<3xi32>
      %35 = arith.addi %34, %c1_i32 : i32
      %36 = arith.cmpi sge, %35, %c2_i32 : i32
      %37 = arith.subi %35, %c2_i32 : i32
      %38 = arith.select %36, %37, %35 : i32
      memref.store %38, %_anonymous16[%c2] : memref<3xi32>
      %39 = memref.load %idx_buffer_softmax_5[%c0] : memref<2xi32>
      %40 = arith.addi %39, %c1_i32 : i32
      memref.store %40, %idx_buffer_softmax_5[%c0] : memref<2xi32>
      %41 = arith.addi %10, %c1 : index
      cf.br ^bb5(%41 : index)
    ^bb19:  // pred: ^bb5
      memref.store %c0_i32, %idx_buffer_softmax_5[%c0] : memref<2xi32>
      %42 = memref.load %idx_buffer_softmax_5[%c1] : memref<2xi32>
      %43 = arith.addi %42, %c8_i32 : i32
      memref.store %43, %idx_buffer_softmax_5[%c1] : memref<2xi32>
      %44 = arith.addi %8, %c1 : index
      cf.br ^bb3(%44 : index)
    ^bb20:  // pred: ^bb3
      %45 = arith.addi %6, %c1 : index
      cf.br ^bb1(%45 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_5_4 = aie.lock(%tile_5_4, 0)
    %_anonymous17 = aie.buffer(%tile_5_4) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous17"} : memref<4xi32> 
    %core_5_4 = aie.core(%tile_5_4) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c5_i32 = arith.constant 5 : i32
      %c64_i32 = arith.constant 64 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c3 = arith.constant 3 : index
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous17[%c0] : memref<4xi32>
      memref.store %c0_i32, %_anonymous17[%c1] : memref<4xi32>
      memref.store %c0_i32, %_anonymous17[%c2] : memref<4xi32>
      memref.store %c0_i32, %_anonymous17[%c3] : memref<4xi32>
      aie.use_lock(%lock_5_4, Acquire, 1)
      %0 = memref.load %mha_rtpss_5_stage2[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_5_stage2[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.cmpi sgt, %1, %c2_i32 : i32
      %4 = arith.cmpi sgt, %1, %c1_i32 : i32
      cf.br ^bb1(%c0 : index)
    ^bb1(%5: index):  // 2 preds: ^bb0, ^bb53
      %6 = arith.cmpi slt, %5, %c9223372036854775807 : index
      cf.cond_br %6, ^bb2, ^bb54
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_pv_5[%c0] : memref<2xi32>
      memref.store %c5_i32, %idx_buffer_pv_5[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%7: index):  // 2 preds: ^bb2, ^bb52
      %8 = arith.cmpi slt, %7, %2 : index
      cf.cond_br %8, ^bb4, ^bb53
    ^bb4:  // pred: ^bb3
      aie.use_lock(%outO21_prod_lock_0, AcquireGreaterEqual, 1)
      %9 = memref.load %_anonymous17[%c0] : memref<4xi32>
      %10 = arith.index_cast %9 : i32 to index
      %11 = arith.index_cast %10 : index to i32
      cf.switch %11 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%outO21_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%outO21_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%outO21_buff_0 : memref<64x64xbf16>)
    ^bb8(%12: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      func.call @zero_bf16(%12) : (memref<64x64xbf16>) -> ()
      aie.use_lock(%outP5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %13 = memref.load %_anonymous17[%c1] : memref<4xi32>
      %14 = arith.index_cast %13 : i32 to index
      %15 = arith.index_cast %14 : index to i32
      cf.switch %15 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%outP5_cons_buff_0 : memref<64x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%outP5_cons_buff_1 : memref<64x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%outP5_cons_buff_0 : memref<64x64xbf16>)
    ^bb12(%16: memref<64x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      aie.use_lock(%memV_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous17[%c2] : memref<4xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%memV_5_cons_buff_0 : memref<64x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%memV_5_cons_buff_1 : memref<64x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%memV_5_cons_buff_0 : memref<64x64xbf16>)
    ^bb16(%20: memref<64x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      aie.use_lock(%scaleOF5_cons_lock_0, AcquireGreaterEqual, 1)
      %21 = memref.load %_anonymous17[%c3] : memref<4xi32>
      %22 = arith.index_cast %21 : i32 to index
      %23 = arith.index_cast %22 : index to i32
      cf.switch %23 : i32, [
        default: ^bb19,
        0: ^bb17,
        1: ^bb18
      ]
    ^bb17:  // pred: ^bb16
      cf.br ^bb20(%scaleOF5_buff_0 : memref<256xbf16>)
    ^bb18:  // pred: ^bb16
      cf.br ^bb20(%scaleOF5_buff_1 : memref<256xbf16>)
    ^bb19:  // pred: ^bb16
      cf.br ^bb20(%scaleOF5_buff_0 : memref<256xbf16>)
    ^bb20(%24: memref<256xbf16>):  // 3 preds: ^bb17, ^bb18, ^bb19
      func.call @matmul_PV(%16, %20, %12, %24, %c64_i32, %c0_i32, %idx_buffer_pv_5) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP5_cons_prod_lock_0, Release, 1)
      %25 = memref.load %_anonymous17[%c1] : memref<4xi32>
      %26 = arith.addi %25, %c1_i32 : i32
      %27 = arith.cmpi sge, %26, %c2_i32 : i32
      %28 = arith.subi %26, %c2_i32 : i32
      %29 = arith.select %27, %28, %26 : i32
      memref.store %29, %_anonymous17[%c1] : memref<4xi32>
      aie.use_lock(%memV_5_cons_prod_lock_0, Release, 1)
      %30 = memref.load %_anonymous17[%c2] : memref<4xi32>
      %31 = arith.addi %30, %c1_i32 : i32
      %32 = arith.cmpi sge, %31, %c2_i32 : i32
      %33 = arith.subi %31, %c2_i32 : i32
      %34 = arith.select %32, %33, %31 : i32
      memref.store %34, %_anonymous17[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF5_prod_lock_0, Release, 1)
      %35 = memref.load %_anonymous17[%c3] : memref<4xi32>
      %36 = arith.addi %35, %c1_i32 : i32
      %37 = arith.cmpi sge, %36, %c2_i32 : i32
      %38 = arith.subi %36, %c2_i32 : i32
      %39 = arith.select %37, %38, %36 : i32
      memref.store %39, %_anonymous17[%c3] : memref<4xi32>
      %40 = memref.load %idx_buffer_pv_5[%c0] : memref<2xi32>
      %41 = arith.addi %40, %c1_i32 : i32
      memref.store %41, %idx_buffer_pv_5[%c0] : memref<2xi32>
      cf.cond_br %3, ^bb21, ^bb37
    ^bb21:  // pred: ^bb20
      %42 = arith.subi %1, %c2_i32 : i32
      %43 = arith.index_cast %42 : i32 to index
      cf.br ^bb22(%c0 : index)
    ^bb22(%44: index):  // 2 preds: ^bb21, ^bb35
      %45 = arith.cmpi slt, %44, %43 : index
      cf.cond_br %45, ^bb23, ^bb36
    ^bb23:  // pred: ^bb22
      aie.use_lock(%outP5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %46 = memref.load %_anonymous17[%c1] : memref<4xi32>
      %47 = arith.index_cast %46 : i32 to index
      %48 = arith.index_cast %47 : index to i32
      cf.switch %48 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%outP5_cons_buff_0 : memref<64x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%outP5_cons_buff_1 : memref<64x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%outP5_cons_buff_0 : memref<64x64xbf16>)
    ^bb27(%49: memref<64x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      aie.use_lock(%memV_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %50 = memref.load %_anonymous17[%c2] : memref<4xi32>
      %51 = arith.index_cast %50 : i32 to index
      %52 = arith.index_cast %51 : index to i32
      cf.switch %52 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%memV_5_cons_buff_0 : memref<64x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%memV_5_cons_buff_1 : memref<64x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%memV_5_cons_buff_0 : memref<64x64xbf16>)
    ^bb31(%53: memref<64x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      aie.use_lock(%scaleOF5_cons_lock_0, AcquireGreaterEqual, 1)
      %54 = memref.load %_anonymous17[%c3] : memref<4xi32>
      %55 = arith.index_cast %54 : i32 to index
      %56 = arith.index_cast %55 : index to i32
      cf.switch %56 : i32, [
        default: ^bb34,
        0: ^bb32,
        1: ^bb33
      ]
    ^bb32:  // pred: ^bb31
      cf.br ^bb35(%scaleOF5_buff_0 : memref<256xbf16>)
    ^bb33:  // pred: ^bb31
      cf.br ^bb35(%scaleOF5_buff_1 : memref<256xbf16>)
    ^bb34:  // pred: ^bb31
      cf.br ^bb35(%scaleOF5_buff_0 : memref<256xbf16>)
    ^bb35(%57: memref<256xbf16>):  // 3 preds: ^bb32, ^bb33, ^bb34
      func.call @matmul_PV(%49, %53, %12, %57, %c64_i32, %c1_i32, %idx_buffer_pv_5) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP5_cons_prod_lock_0, Release, 1)
      %58 = memref.load %_anonymous17[%c1] : memref<4xi32>
      %59 = arith.addi %58, %c1_i32 : i32
      %60 = arith.cmpi sge, %59, %c2_i32 : i32
      %61 = arith.subi %59, %c2_i32 : i32
      %62 = arith.select %60, %61, %59 : i32
      memref.store %62, %_anonymous17[%c1] : memref<4xi32>
      aie.use_lock(%memV_5_cons_prod_lock_0, Release, 1)
      %63 = memref.load %_anonymous17[%c2] : memref<4xi32>
      %64 = arith.addi %63, %c1_i32 : i32
      %65 = arith.cmpi sge, %64, %c2_i32 : i32
      %66 = arith.subi %64, %c2_i32 : i32
      %67 = arith.select %65, %66, %64 : i32
      memref.store %67, %_anonymous17[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF5_prod_lock_0, Release, 1)
      %68 = memref.load %_anonymous17[%c3] : memref<4xi32>
      %69 = arith.addi %68, %c1_i32 : i32
      %70 = arith.cmpi sge, %69, %c2_i32 : i32
      %71 = arith.subi %69, %c2_i32 : i32
      %72 = arith.select %70, %71, %69 : i32
      memref.store %72, %_anonymous17[%c3] : memref<4xi32>
      %73 = memref.load %idx_buffer_pv_5[%c0] : memref<2xi32>
      %74 = arith.addi %73, %c1_i32 : i32
      memref.store %74, %idx_buffer_pv_5[%c0] : memref<2xi32>
      %75 = arith.addi %44, %c1 : index
      cf.br ^bb22(%75 : index)
    ^bb36:  // pred: ^bb22
      cf.br ^bb37
    ^bb37:  // 2 preds: ^bb20, ^bb36
      cf.cond_br %4, ^bb38, ^bb51
    ^bb38:  // pred: ^bb37
      aie.use_lock(%outP5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous17[%c1] : memref<4xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%outP5_cons_buff_0 : memref<64x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%outP5_cons_buff_1 : memref<64x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%outP5_cons_buff_0 : memref<64x64xbf16>)
    ^bb42(%79: memref<64x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      aie.use_lock(%memV_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %80 = memref.load %_anonymous17[%c2] : memref<4xi32>
      %81 = arith.index_cast %80 : i32 to index
      %82 = arith.index_cast %81 : index to i32
      cf.switch %82 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%memV_5_cons_buff_0 : memref<64x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%memV_5_cons_buff_1 : memref<64x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%memV_5_cons_buff_0 : memref<64x64xbf16>)
    ^bb46(%83: memref<64x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      aie.use_lock(%scaleOF5_cons_lock_0, AcquireGreaterEqual, 1)
      %84 = memref.load %_anonymous17[%c3] : memref<4xi32>
      %85 = arith.index_cast %84 : i32 to index
      %86 = arith.index_cast %85 : index to i32
      cf.switch %86 : i32, [
        default: ^bb49,
        0: ^bb47,
        1: ^bb48
      ]
    ^bb47:  // pred: ^bb46
      cf.br ^bb50(%scaleOF5_buff_0 : memref<256xbf16>)
    ^bb48:  // pred: ^bb46
      cf.br ^bb50(%scaleOF5_buff_1 : memref<256xbf16>)
    ^bb49:  // pred: ^bb46
      cf.br ^bb50(%scaleOF5_buff_0 : memref<256xbf16>)
    ^bb50(%87: memref<256xbf16>):  // 3 preds: ^bb47, ^bb48, ^bb49
      func.call @matmul_PV(%79, %83, %12, %87, %c64_i32, %c1_i32, %idx_buffer_pv_5) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      func.call @rescale_O(%12, %87, %c64_i32, %idx_buffer_pv_5) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP5_cons_prod_lock_0, Release, 1)
      %88 = memref.load %_anonymous17[%c1] : memref<4xi32>
      %89 = arith.addi %88, %c1_i32 : i32
      %90 = arith.cmpi sge, %89, %c2_i32 : i32
      %91 = arith.subi %89, %c2_i32 : i32
      %92 = arith.select %90, %91, %89 : i32
      memref.store %92, %_anonymous17[%c1] : memref<4xi32>
      aie.use_lock(%memV_5_cons_prod_lock_0, Release, 1)
      %93 = memref.load %_anonymous17[%c2] : memref<4xi32>
      %94 = arith.addi %93, %c1_i32 : i32
      %95 = arith.cmpi sge, %94, %c2_i32 : i32
      %96 = arith.subi %94, %c2_i32 : i32
      %97 = arith.select %95, %96, %94 : i32
      memref.store %97, %_anonymous17[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF5_prod_lock_0, Release, 1)
      %98 = memref.load %_anonymous17[%c3] : memref<4xi32>
      %99 = arith.addi %98, %c1_i32 : i32
      %100 = arith.cmpi sge, %99, %c2_i32 : i32
      %101 = arith.subi %99, %c2_i32 : i32
      %102 = arith.select %100, %101, %99 : i32
      memref.store %102, %_anonymous17[%c3] : memref<4xi32>
      %103 = memref.load %idx_buffer_pv_5[%c0] : memref<2xi32>
      %104 = arith.addi %103, %c1_i32 : i32
      memref.store %104, %idx_buffer_pv_5[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb51:  // pred: ^bb37
      func.call @rescale_O(%12, %24, %c64_i32, %idx_buffer_pv_5) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      %105 = memref.load %idx_buffer_pv_5[%c0] : memref<2xi32>
      %106 = arith.addi %105, %c1_i32 : i32
      memref.store %106, %idx_buffer_pv_5[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb52:  // 2 preds: ^bb50, ^bb51
      memref.store %c0_i32, %idx_buffer_pv_5[%c0] : memref<2xi32>
      %107 = memref.load %idx_buffer_pv_5[%c1] : memref<2xi32>
      %108 = arith.addi %107, %c8_i32 : i32
      memref.store %108, %idx_buffer_pv_5[%c1] : memref<2xi32>
      aie.use_lock(%outO21_cons_lock_0, Release, 1)
      %109 = memref.load %_anonymous17[%c0] : memref<4xi32>
      %110 = arith.addi %109, %c1_i32 : i32
      %111 = arith.cmpi sge, %110, %c2_i32 : i32
      %112 = arith.subi %110, %c2_i32 : i32
      %113 = arith.select %111, %112, %110 : i32
      memref.store %113, %_anonymous17[%c0] : memref<4xi32>
      %114 = arith.addi %7, %c1 : index
      cf.br ^bb3(%114 : index)
    ^bb53:  // pred: ^bb3
      %115 = arith.addi %5, %c1 : index
      cf.br ^bb1(%115 : index)
    ^bb54:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_6_2 = aie.lock(%tile_6_2, 0)
    %_anonymous18 = aie.buffer(%tile_6_2) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous18"} : memref<3xi32> 
    %core_6_2 = aie.core(%tile_6_2) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c6_i32 = arith.constant 6 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous18[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous18[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous18[%c2] : memref<3xi32>
      aie.use_lock(%lock_6_2, Acquire, 1)
      %0 = memref.load %mha_rtpss_6_stage0[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_6_stage0[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%4: index):  // 2 preds: ^bb0, ^bb20
      %5 = arith.cmpi slt, %4, %c9223372036854775807 : index
      cf.cond_br %5, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_qk_6[%c0] : memref<2xi32>
      memref.store %c6_i32, %idx_buffer_qk_6[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%6: index):  // 2 preds: ^bb2, ^bb19
      %7 = arith.cmpi slt, %6, %2 : index
      cf.cond_br %7, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memQ22_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous18[%c0] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%memQ22_cons_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%memQ22_cons_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%memQ22_cons_buff_0 : memref<64x64xbf16>)
    ^bb8(%11: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      cf.br ^bb9(%c0 : index)
    ^bb9(%12: index):  // 2 preds: ^bb8, ^bb18
      %13 = arith.cmpi slt, %12, %3 : index
      cf.cond_br %13, ^bb10, ^bb19
    ^bb10:  // pred: ^bb9
      aie.use_lock(%memK_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %14 = memref.load %_anonymous18[%c1] : memref<3xi32>
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.index_cast %15 : index to i32
      cf.switch %16 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%memK_6_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%memK_6_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%memK_6_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%17: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%memA6_prod_lock_0, AcquireGreaterEqual, 1)
      %18 = memref.load %_anonymous18[%c2] : memref<3xi32>
      %19 = arith.index_cast %18 : i32 to index
      %20 = arith.index_cast %19 : index to i32
      cf.switch %20 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%memA6_buff_0 : memref<64x64xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%memA6_buff_1 : memref<64x64xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%memA6_buff_0 : memref<64x64xbf16>)
    ^bb18(%21: memref<64x64xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @zero_bf16(%21) : (memref<64x64xbf16>) -> ()
      func.call @matmul_bf16_bf16_wrapper(%11, %17, %21, %idx_buffer_qk_6) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
      aie.use_lock(%memK_6_cons_prod_lock_0, Release, 1)
      %22 = memref.load %_anonymous18[%c1] : memref<3xi32>
      %23 = arith.addi %22, %c1_i32 : i32
      %24 = arith.cmpi sge, %23, %c2_i32 : i32
      %25 = arith.subi %23, %c2_i32 : i32
      %26 = arith.select %24, %25, %23 : i32
      memref.store %26, %_anonymous18[%c1] : memref<3xi32>
      aie.use_lock(%memA6_cons_lock_0, Release, 1)
      %27 = memref.load %_anonymous18[%c2] : memref<3xi32>
      %28 = arith.addi %27, %c1_i32 : i32
      %29 = arith.cmpi sge, %28, %c2_i32 : i32
      %30 = arith.subi %28, %c2_i32 : i32
      %31 = arith.select %29, %30, %28 : i32
      memref.store %31, %_anonymous18[%c2] : memref<3xi32>
      %32 = memref.load %idx_buffer_qk_6[%c0] : memref<2xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      memref.store %33, %idx_buffer_qk_6[%c0] : memref<2xi32>
      %34 = arith.addi %12, %c1 : index
      cf.br ^bb9(%34 : index)
    ^bb19:  // pred: ^bb9
      memref.store %c0_i32, %idx_buffer_qk_6[%c0] : memref<2xi32>
      %35 = memref.load %idx_buffer_qk_6[%c1] : memref<2xi32>
      %36 = arith.addi %35, %c8_i32 : i32
      memref.store %36, %idx_buffer_qk_6[%c1] : memref<2xi32>
      aie.use_lock(%memQ22_cons_prod_lock_0, Release, 1)
      %37 = memref.load %_anonymous18[%c0] : memref<3xi32>
      %38 = arith.addi %37, %c1_i32 : i32
      %39 = arith.cmpi sge, %38, %c2_i32 : i32
      %40 = arith.subi %38, %c2_i32 : i32
      %41 = arith.select %39, %40, %38 : i32
      memref.store %41, %_anonymous18[%c0] : memref<3xi32>
      %42 = arith.addi %6, %c1 : index
      cf.br ^bb3(%42 : index)
    ^bb20:  // pred: ^bb3
      %43 = arith.addi %4, %c1 : index
      cf.br ^bb1(%43 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_6_3 = aie.lock(%tile_6_3, 0)
    %_anonymous19 = aie.buffer(%tile_6_3) {address = 12032 : i32, mem_bank = 0 : i32, sym_name = "_anonymous19"} : memref<3xi32> 
    %core_6_3 = aie.core(%tile_6_3) {
      %c3 = arith.constant 3 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c6_i32 = arith.constant 6 : i32
      %c64_i32 = arith.constant 64 : i32
      %cst = arith.constant 1.806640e-01 : bf16
      %c256_i32 = arith.constant 256 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous19[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous19[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous19[%c2] : memref<3xi32>
      aie.use_lock(%lock_6_3, Acquire, 1)
      %0 = memref.load %mha_rtpss_6_stage1[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_6_stage1[%c1] : memref<4xi32>
      %2 = memref.load %mha_rtpss_6_stage1[%c2] : memref<4xi32>
      %3 = memref.load %mha_rtpss_6_stage1[%c3] : memref<4xi32>
      %4 = arith.index_cast %0 : i32 to index
      %5 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%6: index):  // 2 preds: ^bb0, ^bb20
      %7 = arith.cmpi slt, %6, %c9223372036854775807 : index
      cf.cond_br %7, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_softmax_6[%c0] : memref<2xi32>
      memref.store %c6_i32, %idx_buffer_softmax_6[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%8: index):  // 2 preds: ^bb2, ^bb19
      %9 = arith.cmpi slt, %8, %4 : index
      cf.cond_br %9, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      func.call @init_scale_buffer(%scale_buffer_softmax_6, %c64_i32) : (memref<256xbf16>, i32) -> ()
      cf.br ^bb5(%c0 : index)
    ^bb5(%10: index):  // 2 preds: ^bb4, ^bb18
      %11 = arith.cmpi slt, %10, %5 : index
      cf.cond_br %11, ^bb6, ^bb19
    ^bb6:  // pred: ^bb5
      aie.use_lock(%memP6_prod_lock_0, AcquireGreaterEqual, 1)
      %12 = memref.load %_anonymous19[%c0] : memref<3xi32>
      %13 = arith.index_cast %12 : i32 to index
      %14 = arith.index_cast %13 : index to i32
      cf.switch %14 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%memP6_buff_0 : memref<64x64xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%memP6_buff_1 : memref<64x64xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%memP6_buff_0 : memref<64x64xbf16>)
    ^bb10(%15: memref<64x64xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      aie.use_lock(%outA6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %16 = memref.load %_anonymous19[%c1] : memref<3xi32>
      %17 = arith.index_cast %16 : i32 to index
      %18 = arith.index_cast %17 : index to i32
      cf.switch %18 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%outA6_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%outA6_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%outA6_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%19: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%scaleOF6_prod_lock_0, AcquireGreaterEqual, 1)
      %20 = memref.load %_anonymous19[%c2] : memref<3xi32>
      %21 = arith.index_cast %20 : i32 to index
      %22 = arith.index_cast %21 : index to i32
      cf.switch %22 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%scaleOF6_buff_0 : memref<256xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%scaleOF6_buff_1 : memref<256xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%scaleOF6_buff_0 : memref<256xbf16>)
    ^bb18(%23: memref<256xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @partial_softmax(%19, %15, %scale_buffer_softmax_6, %idx_buffer_softmax_6, %cst, %c64_i32, %c64_i32, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
      func.call @passThroughLine(%scale_buffer_softmax_6, %23, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%outA6_cons_prod_lock_0, Release, 1)
      %24 = memref.load %_anonymous19[%c1] : memref<3xi32>
      %25 = arith.addi %24, %c1_i32 : i32
      %26 = arith.cmpi sge, %25, %c2_i32 : i32
      %27 = arith.subi %25, %c2_i32 : i32
      %28 = arith.select %26, %27, %25 : i32
      memref.store %28, %_anonymous19[%c1] : memref<3xi32>
      aie.use_lock(%memP6_cons_lock_0, Release, 1)
      %29 = memref.load %_anonymous19[%c0] : memref<3xi32>
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = arith.cmpi sge, %30, %c2_i32 : i32
      %32 = arith.subi %30, %c2_i32 : i32
      %33 = arith.select %31, %32, %30 : i32
      memref.store %33, %_anonymous19[%c0] : memref<3xi32>
      aie.use_lock(%scaleOF6_cons_lock_0, Release, 1)
      %34 = memref.load %_anonymous19[%c2] : memref<3xi32>
      %35 = arith.addi %34, %c1_i32 : i32
      %36 = arith.cmpi sge, %35, %c2_i32 : i32
      %37 = arith.subi %35, %c2_i32 : i32
      %38 = arith.select %36, %37, %35 : i32
      memref.store %38, %_anonymous19[%c2] : memref<3xi32>
      %39 = memref.load %idx_buffer_softmax_6[%c0] : memref<2xi32>
      %40 = arith.addi %39, %c1_i32 : i32
      memref.store %40, %idx_buffer_softmax_6[%c0] : memref<2xi32>
      %41 = arith.addi %10, %c1 : index
      cf.br ^bb5(%41 : index)
    ^bb19:  // pred: ^bb5
      memref.store %c0_i32, %idx_buffer_softmax_6[%c0] : memref<2xi32>
      %42 = memref.load %idx_buffer_softmax_6[%c1] : memref<2xi32>
      %43 = arith.addi %42, %c8_i32 : i32
      memref.store %43, %idx_buffer_softmax_6[%c1] : memref<2xi32>
      %44 = arith.addi %8, %c1 : index
      cf.br ^bb3(%44 : index)
    ^bb20:  // pred: ^bb3
      %45 = arith.addi %6, %c1 : index
      cf.br ^bb1(%45 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_6_4 = aie.lock(%tile_6_4, 0)
    %_anonymous20 = aie.buffer(%tile_6_4) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous20"} : memref<4xi32> 
    %core_6_4 = aie.core(%tile_6_4) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c6_i32 = arith.constant 6 : i32
      %c64_i32 = arith.constant 64 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c3 = arith.constant 3 : index
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous20[%c0] : memref<4xi32>
      memref.store %c0_i32, %_anonymous20[%c1] : memref<4xi32>
      memref.store %c0_i32, %_anonymous20[%c2] : memref<4xi32>
      memref.store %c0_i32, %_anonymous20[%c3] : memref<4xi32>
      aie.use_lock(%lock_6_4, Acquire, 1)
      %0 = memref.load %mha_rtpss_6_stage2[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_6_stage2[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.cmpi sgt, %1, %c2_i32 : i32
      %4 = arith.cmpi sgt, %1, %c1_i32 : i32
      cf.br ^bb1(%c0 : index)
    ^bb1(%5: index):  // 2 preds: ^bb0, ^bb53
      %6 = arith.cmpi slt, %5, %c9223372036854775807 : index
      cf.cond_br %6, ^bb2, ^bb54
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_pv_6[%c0] : memref<2xi32>
      memref.store %c6_i32, %idx_buffer_pv_6[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%7: index):  // 2 preds: ^bb2, ^bb52
      %8 = arith.cmpi slt, %7, %2 : index
      cf.cond_br %8, ^bb4, ^bb53
    ^bb4:  // pred: ^bb3
      aie.use_lock(%outO22_prod_lock_0, AcquireGreaterEqual, 1)
      %9 = memref.load %_anonymous20[%c0] : memref<4xi32>
      %10 = arith.index_cast %9 : i32 to index
      %11 = arith.index_cast %10 : index to i32
      cf.switch %11 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%outO22_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%outO22_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%outO22_buff_0 : memref<64x64xbf16>)
    ^bb8(%12: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      func.call @zero_bf16(%12) : (memref<64x64xbf16>) -> ()
      aie.use_lock(%outP6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %13 = memref.load %_anonymous20[%c1] : memref<4xi32>
      %14 = arith.index_cast %13 : i32 to index
      %15 = arith.index_cast %14 : index to i32
      cf.switch %15 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%outP6_cons_buff_0 : memref<64x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%outP6_cons_buff_1 : memref<64x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%outP6_cons_buff_0 : memref<64x64xbf16>)
    ^bb12(%16: memref<64x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      aie.use_lock(%memV_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous20[%c2] : memref<4xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%memV_6_cons_buff_0 : memref<64x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%memV_6_cons_buff_1 : memref<64x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%memV_6_cons_buff_0 : memref<64x64xbf16>)
    ^bb16(%20: memref<64x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      aie.use_lock(%scaleOF6_cons_lock_0, AcquireGreaterEqual, 1)
      %21 = memref.load %_anonymous20[%c3] : memref<4xi32>
      %22 = arith.index_cast %21 : i32 to index
      %23 = arith.index_cast %22 : index to i32
      cf.switch %23 : i32, [
        default: ^bb19,
        0: ^bb17,
        1: ^bb18
      ]
    ^bb17:  // pred: ^bb16
      cf.br ^bb20(%scaleOF6_buff_0 : memref<256xbf16>)
    ^bb18:  // pred: ^bb16
      cf.br ^bb20(%scaleOF6_buff_1 : memref<256xbf16>)
    ^bb19:  // pred: ^bb16
      cf.br ^bb20(%scaleOF6_buff_0 : memref<256xbf16>)
    ^bb20(%24: memref<256xbf16>):  // 3 preds: ^bb17, ^bb18, ^bb19
      func.call @matmul_PV(%16, %20, %12, %24, %c64_i32, %c0_i32, %idx_buffer_pv_6) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP6_cons_prod_lock_0, Release, 1)
      %25 = memref.load %_anonymous20[%c1] : memref<4xi32>
      %26 = arith.addi %25, %c1_i32 : i32
      %27 = arith.cmpi sge, %26, %c2_i32 : i32
      %28 = arith.subi %26, %c2_i32 : i32
      %29 = arith.select %27, %28, %26 : i32
      memref.store %29, %_anonymous20[%c1] : memref<4xi32>
      aie.use_lock(%memV_6_cons_prod_lock_0, Release, 1)
      %30 = memref.load %_anonymous20[%c2] : memref<4xi32>
      %31 = arith.addi %30, %c1_i32 : i32
      %32 = arith.cmpi sge, %31, %c2_i32 : i32
      %33 = arith.subi %31, %c2_i32 : i32
      %34 = arith.select %32, %33, %31 : i32
      memref.store %34, %_anonymous20[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF6_prod_lock_0, Release, 1)
      %35 = memref.load %_anonymous20[%c3] : memref<4xi32>
      %36 = arith.addi %35, %c1_i32 : i32
      %37 = arith.cmpi sge, %36, %c2_i32 : i32
      %38 = arith.subi %36, %c2_i32 : i32
      %39 = arith.select %37, %38, %36 : i32
      memref.store %39, %_anonymous20[%c3] : memref<4xi32>
      %40 = memref.load %idx_buffer_pv_6[%c0] : memref<2xi32>
      %41 = arith.addi %40, %c1_i32 : i32
      memref.store %41, %idx_buffer_pv_6[%c0] : memref<2xi32>
      cf.cond_br %3, ^bb21, ^bb37
    ^bb21:  // pred: ^bb20
      %42 = arith.subi %1, %c2_i32 : i32
      %43 = arith.index_cast %42 : i32 to index
      cf.br ^bb22(%c0 : index)
    ^bb22(%44: index):  // 2 preds: ^bb21, ^bb35
      %45 = arith.cmpi slt, %44, %43 : index
      cf.cond_br %45, ^bb23, ^bb36
    ^bb23:  // pred: ^bb22
      aie.use_lock(%outP6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %46 = memref.load %_anonymous20[%c1] : memref<4xi32>
      %47 = arith.index_cast %46 : i32 to index
      %48 = arith.index_cast %47 : index to i32
      cf.switch %48 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%outP6_cons_buff_0 : memref<64x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%outP6_cons_buff_1 : memref<64x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%outP6_cons_buff_0 : memref<64x64xbf16>)
    ^bb27(%49: memref<64x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      aie.use_lock(%memV_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %50 = memref.load %_anonymous20[%c2] : memref<4xi32>
      %51 = arith.index_cast %50 : i32 to index
      %52 = arith.index_cast %51 : index to i32
      cf.switch %52 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%memV_6_cons_buff_0 : memref<64x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%memV_6_cons_buff_1 : memref<64x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%memV_6_cons_buff_0 : memref<64x64xbf16>)
    ^bb31(%53: memref<64x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      aie.use_lock(%scaleOF6_cons_lock_0, AcquireGreaterEqual, 1)
      %54 = memref.load %_anonymous20[%c3] : memref<4xi32>
      %55 = arith.index_cast %54 : i32 to index
      %56 = arith.index_cast %55 : index to i32
      cf.switch %56 : i32, [
        default: ^bb34,
        0: ^bb32,
        1: ^bb33
      ]
    ^bb32:  // pred: ^bb31
      cf.br ^bb35(%scaleOF6_buff_0 : memref<256xbf16>)
    ^bb33:  // pred: ^bb31
      cf.br ^bb35(%scaleOF6_buff_1 : memref<256xbf16>)
    ^bb34:  // pred: ^bb31
      cf.br ^bb35(%scaleOF6_buff_0 : memref<256xbf16>)
    ^bb35(%57: memref<256xbf16>):  // 3 preds: ^bb32, ^bb33, ^bb34
      func.call @matmul_PV(%49, %53, %12, %57, %c64_i32, %c1_i32, %idx_buffer_pv_6) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP6_cons_prod_lock_0, Release, 1)
      %58 = memref.load %_anonymous20[%c1] : memref<4xi32>
      %59 = arith.addi %58, %c1_i32 : i32
      %60 = arith.cmpi sge, %59, %c2_i32 : i32
      %61 = arith.subi %59, %c2_i32 : i32
      %62 = arith.select %60, %61, %59 : i32
      memref.store %62, %_anonymous20[%c1] : memref<4xi32>
      aie.use_lock(%memV_6_cons_prod_lock_0, Release, 1)
      %63 = memref.load %_anonymous20[%c2] : memref<4xi32>
      %64 = arith.addi %63, %c1_i32 : i32
      %65 = arith.cmpi sge, %64, %c2_i32 : i32
      %66 = arith.subi %64, %c2_i32 : i32
      %67 = arith.select %65, %66, %64 : i32
      memref.store %67, %_anonymous20[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF6_prod_lock_0, Release, 1)
      %68 = memref.load %_anonymous20[%c3] : memref<4xi32>
      %69 = arith.addi %68, %c1_i32 : i32
      %70 = arith.cmpi sge, %69, %c2_i32 : i32
      %71 = arith.subi %69, %c2_i32 : i32
      %72 = arith.select %70, %71, %69 : i32
      memref.store %72, %_anonymous20[%c3] : memref<4xi32>
      %73 = memref.load %idx_buffer_pv_6[%c0] : memref<2xi32>
      %74 = arith.addi %73, %c1_i32 : i32
      memref.store %74, %idx_buffer_pv_6[%c0] : memref<2xi32>
      %75 = arith.addi %44, %c1 : index
      cf.br ^bb22(%75 : index)
    ^bb36:  // pred: ^bb22
      cf.br ^bb37
    ^bb37:  // 2 preds: ^bb20, ^bb36
      cf.cond_br %4, ^bb38, ^bb51
    ^bb38:  // pred: ^bb37
      aie.use_lock(%outP6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous20[%c1] : memref<4xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%outP6_cons_buff_0 : memref<64x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%outP6_cons_buff_1 : memref<64x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%outP6_cons_buff_0 : memref<64x64xbf16>)
    ^bb42(%79: memref<64x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      aie.use_lock(%memV_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %80 = memref.load %_anonymous20[%c2] : memref<4xi32>
      %81 = arith.index_cast %80 : i32 to index
      %82 = arith.index_cast %81 : index to i32
      cf.switch %82 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%memV_6_cons_buff_0 : memref<64x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%memV_6_cons_buff_1 : memref<64x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%memV_6_cons_buff_0 : memref<64x64xbf16>)
    ^bb46(%83: memref<64x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      aie.use_lock(%scaleOF6_cons_lock_0, AcquireGreaterEqual, 1)
      %84 = memref.load %_anonymous20[%c3] : memref<4xi32>
      %85 = arith.index_cast %84 : i32 to index
      %86 = arith.index_cast %85 : index to i32
      cf.switch %86 : i32, [
        default: ^bb49,
        0: ^bb47,
        1: ^bb48
      ]
    ^bb47:  // pred: ^bb46
      cf.br ^bb50(%scaleOF6_buff_0 : memref<256xbf16>)
    ^bb48:  // pred: ^bb46
      cf.br ^bb50(%scaleOF6_buff_1 : memref<256xbf16>)
    ^bb49:  // pred: ^bb46
      cf.br ^bb50(%scaleOF6_buff_0 : memref<256xbf16>)
    ^bb50(%87: memref<256xbf16>):  // 3 preds: ^bb47, ^bb48, ^bb49
      func.call @matmul_PV(%79, %83, %12, %87, %c64_i32, %c1_i32, %idx_buffer_pv_6) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      func.call @rescale_O(%12, %87, %c64_i32, %idx_buffer_pv_6) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP6_cons_prod_lock_0, Release, 1)
      %88 = memref.load %_anonymous20[%c1] : memref<4xi32>
      %89 = arith.addi %88, %c1_i32 : i32
      %90 = arith.cmpi sge, %89, %c2_i32 : i32
      %91 = arith.subi %89, %c2_i32 : i32
      %92 = arith.select %90, %91, %89 : i32
      memref.store %92, %_anonymous20[%c1] : memref<4xi32>
      aie.use_lock(%memV_6_cons_prod_lock_0, Release, 1)
      %93 = memref.load %_anonymous20[%c2] : memref<4xi32>
      %94 = arith.addi %93, %c1_i32 : i32
      %95 = arith.cmpi sge, %94, %c2_i32 : i32
      %96 = arith.subi %94, %c2_i32 : i32
      %97 = arith.select %95, %96, %94 : i32
      memref.store %97, %_anonymous20[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF6_prod_lock_0, Release, 1)
      %98 = memref.load %_anonymous20[%c3] : memref<4xi32>
      %99 = arith.addi %98, %c1_i32 : i32
      %100 = arith.cmpi sge, %99, %c2_i32 : i32
      %101 = arith.subi %99, %c2_i32 : i32
      %102 = arith.select %100, %101, %99 : i32
      memref.store %102, %_anonymous20[%c3] : memref<4xi32>
      %103 = memref.load %idx_buffer_pv_6[%c0] : memref<2xi32>
      %104 = arith.addi %103, %c1_i32 : i32
      memref.store %104, %idx_buffer_pv_6[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb51:  // pred: ^bb37
      func.call @rescale_O(%12, %24, %c64_i32, %idx_buffer_pv_6) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      %105 = memref.load %idx_buffer_pv_6[%c0] : memref<2xi32>
      %106 = arith.addi %105, %c1_i32 : i32
      memref.store %106, %idx_buffer_pv_6[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb52:  // 2 preds: ^bb50, ^bb51
      memref.store %c0_i32, %idx_buffer_pv_6[%c0] : memref<2xi32>
      %107 = memref.load %idx_buffer_pv_6[%c1] : memref<2xi32>
      %108 = arith.addi %107, %c8_i32 : i32
      memref.store %108, %idx_buffer_pv_6[%c1] : memref<2xi32>
      aie.use_lock(%outO22_cons_lock_0, Release, 1)
      %109 = memref.load %_anonymous20[%c0] : memref<4xi32>
      %110 = arith.addi %109, %c1_i32 : i32
      %111 = arith.cmpi sge, %110, %c2_i32 : i32
      %112 = arith.subi %110, %c2_i32 : i32
      %113 = arith.select %111, %112, %110 : i32
      memref.store %113, %_anonymous20[%c0] : memref<4xi32>
      %114 = arith.addi %7, %c1 : index
      cf.br ^bb3(%114 : index)
    ^bb53:  // pred: ^bb3
      %115 = arith.addi %5, %c1 : index
      cf.br ^bb1(%115 : index)
    ^bb54:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_7_2 = aie.lock(%tile_7_2, 0)
    %_anonymous21 = aie.buffer(%tile_7_2) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous21"} : memref<3xi32> 
    %core_7_2 = aie.core(%tile_7_2) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c7_i32 = arith.constant 7 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous21[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous21[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous21[%c2] : memref<3xi32>
      aie.use_lock(%lock_7_2, Acquire, 1)
      %0 = memref.load %mha_rtpss_7_stage0[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_7_stage0[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%4: index):  // 2 preds: ^bb0, ^bb20
      %5 = arith.cmpi slt, %4, %c9223372036854775807 : index
      cf.cond_br %5, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_qk_7[%c0] : memref<2xi32>
      memref.store %c7_i32, %idx_buffer_qk_7[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%6: index):  // 2 preds: ^bb2, ^bb19
      %7 = arith.cmpi slt, %6, %2 : index
      cf.cond_br %7, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memQ23_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous21[%c0] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%memQ23_cons_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%memQ23_cons_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%memQ23_cons_buff_0 : memref<64x64xbf16>)
    ^bb8(%11: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      cf.br ^bb9(%c0 : index)
    ^bb9(%12: index):  // 2 preds: ^bb8, ^bb18
      %13 = arith.cmpi slt, %12, %3 : index
      cf.cond_br %13, ^bb10, ^bb19
    ^bb10:  // pred: ^bb9
      aie.use_lock(%memK_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %14 = memref.load %_anonymous21[%c1] : memref<3xi32>
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.index_cast %15 : index to i32
      cf.switch %16 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%memK_7_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%memK_7_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%memK_7_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%17: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%memA7_prod_lock_0, AcquireGreaterEqual, 1)
      %18 = memref.load %_anonymous21[%c2] : memref<3xi32>
      %19 = arith.index_cast %18 : i32 to index
      %20 = arith.index_cast %19 : index to i32
      cf.switch %20 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%memA7_buff_0 : memref<64x64xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%memA7_buff_1 : memref<64x64xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%memA7_buff_0 : memref<64x64xbf16>)
    ^bb18(%21: memref<64x64xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @zero_bf16(%21) : (memref<64x64xbf16>) -> ()
      func.call @matmul_bf16_bf16_wrapper(%11, %17, %21, %idx_buffer_qk_7) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
      aie.use_lock(%memK_7_cons_prod_lock_0, Release, 1)
      %22 = memref.load %_anonymous21[%c1] : memref<3xi32>
      %23 = arith.addi %22, %c1_i32 : i32
      %24 = arith.cmpi sge, %23, %c2_i32 : i32
      %25 = arith.subi %23, %c2_i32 : i32
      %26 = arith.select %24, %25, %23 : i32
      memref.store %26, %_anonymous21[%c1] : memref<3xi32>
      aie.use_lock(%memA7_cons_lock_0, Release, 1)
      %27 = memref.load %_anonymous21[%c2] : memref<3xi32>
      %28 = arith.addi %27, %c1_i32 : i32
      %29 = arith.cmpi sge, %28, %c2_i32 : i32
      %30 = arith.subi %28, %c2_i32 : i32
      %31 = arith.select %29, %30, %28 : i32
      memref.store %31, %_anonymous21[%c2] : memref<3xi32>
      %32 = memref.load %idx_buffer_qk_7[%c0] : memref<2xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      memref.store %33, %idx_buffer_qk_7[%c0] : memref<2xi32>
      %34 = arith.addi %12, %c1 : index
      cf.br ^bb9(%34 : index)
    ^bb19:  // pred: ^bb9
      memref.store %c0_i32, %idx_buffer_qk_7[%c0] : memref<2xi32>
      %35 = memref.load %idx_buffer_qk_7[%c1] : memref<2xi32>
      %36 = arith.addi %35, %c8_i32 : i32
      memref.store %36, %idx_buffer_qk_7[%c1] : memref<2xi32>
      aie.use_lock(%memQ23_cons_prod_lock_0, Release, 1)
      %37 = memref.load %_anonymous21[%c0] : memref<3xi32>
      %38 = arith.addi %37, %c1_i32 : i32
      %39 = arith.cmpi sge, %38, %c2_i32 : i32
      %40 = arith.subi %38, %c2_i32 : i32
      %41 = arith.select %39, %40, %38 : i32
      memref.store %41, %_anonymous21[%c0] : memref<3xi32>
      %42 = arith.addi %6, %c1 : index
      cf.br ^bb3(%42 : index)
    ^bb20:  // pred: ^bb3
      %43 = arith.addi %4, %c1 : index
      cf.br ^bb1(%43 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_7_3 = aie.lock(%tile_7_3, 0)
    %_anonymous22 = aie.buffer(%tile_7_3) {address = 12032 : i32, mem_bank = 0 : i32, sym_name = "_anonymous22"} : memref<3xi32> 
    %core_7_3 = aie.core(%tile_7_3) {
      %c3 = arith.constant 3 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c7_i32 = arith.constant 7 : i32
      %c64_i32 = arith.constant 64 : i32
      %cst = arith.constant 1.806640e-01 : bf16
      %c256_i32 = arith.constant 256 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous22[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous22[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous22[%c2] : memref<3xi32>
      aie.use_lock(%lock_7_3, Acquire, 1)
      %0 = memref.load %mha_rtpss_7_stage1[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_7_stage1[%c1] : memref<4xi32>
      %2 = memref.load %mha_rtpss_7_stage1[%c2] : memref<4xi32>
      %3 = memref.load %mha_rtpss_7_stage1[%c3] : memref<4xi32>
      %4 = arith.index_cast %0 : i32 to index
      %5 = arith.index_cast %1 : i32 to index
      cf.br ^bb1(%c0 : index)
    ^bb1(%6: index):  // 2 preds: ^bb0, ^bb20
      %7 = arith.cmpi slt, %6, %c9223372036854775807 : index
      cf.cond_br %7, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_softmax_7[%c0] : memref<2xi32>
      memref.store %c7_i32, %idx_buffer_softmax_7[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%8: index):  // 2 preds: ^bb2, ^bb19
      %9 = arith.cmpi slt, %8, %4 : index
      cf.cond_br %9, ^bb4, ^bb20
    ^bb4:  // pred: ^bb3
      func.call @init_scale_buffer(%scale_buffer_softmax_7, %c64_i32) : (memref<256xbf16>, i32) -> ()
      cf.br ^bb5(%c0 : index)
    ^bb5(%10: index):  // 2 preds: ^bb4, ^bb18
      %11 = arith.cmpi slt, %10, %5 : index
      cf.cond_br %11, ^bb6, ^bb19
    ^bb6:  // pred: ^bb5
      aie.use_lock(%memP7_prod_lock_0, AcquireGreaterEqual, 1)
      %12 = memref.load %_anonymous22[%c0] : memref<3xi32>
      %13 = arith.index_cast %12 : i32 to index
      %14 = arith.index_cast %13 : index to i32
      cf.switch %14 : i32, [
        default: ^bb9,
        0: ^bb7,
        1: ^bb8
      ]
    ^bb7:  // pred: ^bb6
      cf.br ^bb10(%memP7_buff_0 : memref<64x64xbf16>)
    ^bb8:  // pred: ^bb6
      cf.br ^bb10(%memP7_buff_1 : memref<64x64xbf16>)
    ^bb9:  // pred: ^bb6
      cf.br ^bb10(%memP7_buff_0 : memref<64x64xbf16>)
    ^bb10(%15: memref<64x64xbf16>):  // 3 preds: ^bb7, ^bb8, ^bb9
      aie.use_lock(%outA7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %16 = memref.load %_anonymous22[%c1] : memref<3xi32>
      %17 = arith.index_cast %16 : i32 to index
      %18 = arith.index_cast %17 : index to i32
      cf.switch %18 : i32, [
        default: ^bb13,
        0: ^bb11,
        1: ^bb12
      ]
    ^bb11:  // pred: ^bb10
      cf.br ^bb14(%outA7_cons_buff_0 : memref<64x64xbf16>)
    ^bb12:  // pred: ^bb10
      cf.br ^bb14(%outA7_cons_buff_1 : memref<64x64xbf16>)
    ^bb13:  // pred: ^bb10
      cf.br ^bb14(%outA7_cons_buff_0 : memref<64x64xbf16>)
    ^bb14(%19: memref<64x64xbf16>):  // 3 preds: ^bb11, ^bb12, ^bb13
      aie.use_lock(%scaleOF7_prod_lock_0, AcquireGreaterEqual, 1)
      %20 = memref.load %_anonymous22[%c2] : memref<3xi32>
      %21 = arith.index_cast %20 : i32 to index
      %22 = arith.index_cast %21 : index to i32
      cf.switch %22 : i32, [
        default: ^bb17,
        0: ^bb15,
        1: ^bb16
      ]
    ^bb15:  // pred: ^bb14
      cf.br ^bb18(%scaleOF7_buff_0 : memref<256xbf16>)
    ^bb16:  // pred: ^bb14
      cf.br ^bb18(%scaleOF7_buff_1 : memref<256xbf16>)
    ^bb17:  // pred: ^bb14
      cf.br ^bb18(%scaleOF7_buff_0 : memref<256xbf16>)
    ^bb18(%23: memref<256xbf16>):  // 3 preds: ^bb15, ^bb16, ^bb17
      func.call @partial_softmax(%19, %15, %scale_buffer_softmax_7, %idx_buffer_softmax_7, %cst, %c64_i32, %c64_i32, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
      func.call @passThroughLine(%scale_buffer_softmax_7, %23, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
      aie.use_lock(%outA7_cons_prod_lock_0, Release, 1)
      %24 = memref.load %_anonymous22[%c1] : memref<3xi32>
      %25 = arith.addi %24, %c1_i32 : i32
      %26 = arith.cmpi sge, %25, %c2_i32 : i32
      %27 = arith.subi %25, %c2_i32 : i32
      %28 = arith.select %26, %27, %25 : i32
      memref.store %28, %_anonymous22[%c1] : memref<3xi32>
      aie.use_lock(%memP7_cons_lock_0, Release, 1)
      %29 = memref.load %_anonymous22[%c0] : memref<3xi32>
      %30 = arith.addi %29, %c1_i32 : i32
      %31 = arith.cmpi sge, %30, %c2_i32 : i32
      %32 = arith.subi %30, %c2_i32 : i32
      %33 = arith.select %31, %32, %30 : i32
      memref.store %33, %_anonymous22[%c0] : memref<3xi32>
      aie.use_lock(%scaleOF7_cons_lock_0, Release, 1)
      %34 = memref.load %_anonymous22[%c2] : memref<3xi32>
      %35 = arith.addi %34, %c1_i32 : i32
      %36 = arith.cmpi sge, %35, %c2_i32 : i32
      %37 = arith.subi %35, %c2_i32 : i32
      %38 = arith.select %36, %37, %35 : i32
      memref.store %38, %_anonymous22[%c2] : memref<3xi32>
      %39 = memref.load %idx_buffer_softmax_7[%c0] : memref<2xi32>
      %40 = arith.addi %39, %c1_i32 : i32
      memref.store %40, %idx_buffer_softmax_7[%c0] : memref<2xi32>
      %41 = arith.addi %10, %c1 : index
      cf.br ^bb5(%41 : index)
    ^bb19:  // pred: ^bb5
      memref.store %c0_i32, %idx_buffer_softmax_7[%c0] : memref<2xi32>
      %42 = memref.load %idx_buffer_softmax_7[%c1] : memref<2xi32>
      %43 = arith.addi %42, %c8_i32 : i32
      memref.store %43, %idx_buffer_softmax_7[%c1] : memref<2xi32>
      %44 = arith.addi %8, %c1 : index
      cf.br ^bb3(%44 : index)
    ^bb20:  // pred: ^bb3
      %45 = arith.addi %6, %c1 : index
      cf.br ^bb1(%45 : index)
    ^bb21:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_7_4 = aie.lock(%tile_7_4, 0)
    %_anonymous23 = aie.buffer(%tile_7_4) {address = 11520 : i32, mem_bank = 0 : i32, sym_name = "_anonymous23"} : memref<4xi32> 
    %core_7_4 = aie.core(%tile_7_4) {
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c7_i32 = arith.constant 7 : i32
      %c64_i32 = arith.constant 64 : i32
      %c1_i32 = arith.constant 1 : i32
      %c8_i32 = arith.constant 8 : i32
      %c3 = arith.constant 3 : index
      %c2 = arith.constant 2 : index
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c2_i32 = arith.constant 2 : i32
      memref.store %c0_i32, %_anonymous23[%c0] : memref<4xi32>
      memref.store %c0_i32, %_anonymous23[%c1] : memref<4xi32>
      memref.store %c0_i32, %_anonymous23[%c2] : memref<4xi32>
      memref.store %c0_i32, %_anonymous23[%c3] : memref<4xi32>
      aie.use_lock(%lock_7_4, Acquire, 1)
      %0 = memref.load %mha_rtpss_7_stage2[%c0] : memref<4xi32>
      %1 = memref.load %mha_rtpss_7_stage2[%c1] : memref<4xi32>
      %2 = arith.index_cast %0 : i32 to index
      %3 = arith.cmpi sgt, %1, %c2_i32 : i32
      %4 = arith.cmpi sgt, %1, %c1_i32 : i32
      cf.br ^bb1(%c0 : index)
    ^bb1(%5: index):  // 2 preds: ^bb0, ^bb53
      %6 = arith.cmpi slt, %5, %c9223372036854775807 : index
      cf.cond_br %6, ^bb2, ^bb54
    ^bb2:  // pred: ^bb1
      memref.store %c0_i32, %idx_buffer_pv_7[%c0] : memref<2xi32>
      memref.store %c7_i32, %idx_buffer_pv_7[%c1] : memref<2xi32>
      cf.br ^bb3(%c0 : index)
    ^bb3(%7: index):  // 2 preds: ^bb2, ^bb52
      %8 = arith.cmpi slt, %7, %2 : index
      cf.cond_br %8, ^bb4, ^bb53
    ^bb4:  // pred: ^bb3
      aie.use_lock(%outO23_prod_lock_0, AcquireGreaterEqual, 1)
      %9 = memref.load %_anonymous23[%c0] : memref<4xi32>
      %10 = arith.index_cast %9 : i32 to index
      %11 = arith.index_cast %10 : index to i32
      cf.switch %11 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%outO23_buff_0 : memref<64x64xbf16>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%outO23_buff_1 : memref<64x64xbf16>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%outO23_buff_0 : memref<64x64xbf16>)
    ^bb8(%12: memref<64x64xbf16>):  // 3 preds: ^bb5, ^bb6, ^bb7
      func.call @zero_bf16(%12) : (memref<64x64xbf16>) -> ()
      aie.use_lock(%outP7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %13 = memref.load %_anonymous23[%c1] : memref<4xi32>
      %14 = arith.index_cast %13 : i32 to index
      %15 = arith.index_cast %14 : index to i32
      cf.switch %15 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%outP7_cons_buff_0 : memref<64x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%outP7_cons_buff_1 : memref<64x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%outP7_cons_buff_0 : memref<64x64xbf16>)
    ^bb12(%16: memref<64x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      aie.use_lock(%memV_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous23[%c2] : memref<4xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%memV_7_cons_buff_0 : memref<64x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%memV_7_cons_buff_1 : memref<64x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%memV_7_cons_buff_0 : memref<64x64xbf16>)
    ^bb16(%20: memref<64x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      aie.use_lock(%scaleOF7_cons_lock_0, AcquireGreaterEqual, 1)
      %21 = memref.load %_anonymous23[%c3] : memref<4xi32>
      %22 = arith.index_cast %21 : i32 to index
      %23 = arith.index_cast %22 : index to i32
      cf.switch %23 : i32, [
        default: ^bb19,
        0: ^bb17,
        1: ^bb18
      ]
    ^bb17:  // pred: ^bb16
      cf.br ^bb20(%scaleOF7_buff_0 : memref<256xbf16>)
    ^bb18:  // pred: ^bb16
      cf.br ^bb20(%scaleOF7_buff_1 : memref<256xbf16>)
    ^bb19:  // pred: ^bb16
      cf.br ^bb20(%scaleOF7_buff_0 : memref<256xbf16>)
    ^bb20(%24: memref<256xbf16>):  // 3 preds: ^bb17, ^bb18, ^bb19
      func.call @matmul_PV(%16, %20, %12, %24, %c64_i32, %c0_i32, %idx_buffer_pv_7) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP7_cons_prod_lock_0, Release, 1)
      %25 = memref.load %_anonymous23[%c1] : memref<4xi32>
      %26 = arith.addi %25, %c1_i32 : i32
      %27 = arith.cmpi sge, %26, %c2_i32 : i32
      %28 = arith.subi %26, %c2_i32 : i32
      %29 = arith.select %27, %28, %26 : i32
      memref.store %29, %_anonymous23[%c1] : memref<4xi32>
      aie.use_lock(%memV_7_cons_prod_lock_0, Release, 1)
      %30 = memref.load %_anonymous23[%c2] : memref<4xi32>
      %31 = arith.addi %30, %c1_i32 : i32
      %32 = arith.cmpi sge, %31, %c2_i32 : i32
      %33 = arith.subi %31, %c2_i32 : i32
      %34 = arith.select %32, %33, %31 : i32
      memref.store %34, %_anonymous23[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF7_prod_lock_0, Release, 1)
      %35 = memref.load %_anonymous23[%c3] : memref<4xi32>
      %36 = arith.addi %35, %c1_i32 : i32
      %37 = arith.cmpi sge, %36, %c2_i32 : i32
      %38 = arith.subi %36, %c2_i32 : i32
      %39 = arith.select %37, %38, %36 : i32
      memref.store %39, %_anonymous23[%c3] : memref<4xi32>
      %40 = memref.load %idx_buffer_pv_7[%c0] : memref<2xi32>
      %41 = arith.addi %40, %c1_i32 : i32
      memref.store %41, %idx_buffer_pv_7[%c0] : memref<2xi32>
      cf.cond_br %3, ^bb21, ^bb37
    ^bb21:  // pred: ^bb20
      %42 = arith.subi %1, %c2_i32 : i32
      %43 = arith.index_cast %42 : i32 to index
      cf.br ^bb22(%c0 : index)
    ^bb22(%44: index):  // 2 preds: ^bb21, ^bb35
      %45 = arith.cmpi slt, %44, %43 : index
      cf.cond_br %45, ^bb23, ^bb36
    ^bb23:  // pred: ^bb22
      aie.use_lock(%outP7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %46 = memref.load %_anonymous23[%c1] : memref<4xi32>
      %47 = arith.index_cast %46 : i32 to index
      %48 = arith.index_cast %47 : index to i32
      cf.switch %48 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%outP7_cons_buff_0 : memref<64x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%outP7_cons_buff_1 : memref<64x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%outP7_cons_buff_0 : memref<64x64xbf16>)
    ^bb27(%49: memref<64x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      aie.use_lock(%memV_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %50 = memref.load %_anonymous23[%c2] : memref<4xi32>
      %51 = arith.index_cast %50 : i32 to index
      %52 = arith.index_cast %51 : index to i32
      cf.switch %52 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%memV_7_cons_buff_0 : memref<64x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%memV_7_cons_buff_1 : memref<64x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%memV_7_cons_buff_0 : memref<64x64xbf16>)
    ^bb31(%53: memref<64x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      aie.use_lock(%scaleOF7_cons_lock_0, AcquireGreaterEqual, 1)
      %54 = memref.load %_anonymous23[%c3] : memref<4xi32>
      %55 = arith.index_cast %54 : i32 to index
      %56 = arith.index_cast %55 : index to i32
      cf.switch %56 : i32, [
        default: ^bb34,
        0: ^bb32,
        1: ^bb33
      ]
    ^bb32:  // pred: ^bb31
      cf.br ^bb35(%scaleOF7_buff_0 : memref<256xbf16>)
    ^bb33:  // pred: ^bb31
      cf.br ^bb35(%scaleOF7_buff_1 : memref<256xbf16>)
    ^bb34:  // pred: ^bb31
      cf.br ^bb35(%scaleOF7_buff_0 : memref<256xbf16>)
    ^bb35(%57: memref<256xbf16>):  // 3 preds: ^bb32, ^bb33, ^bb34
      func.call @matmul_PV(%49, %53, %12, %57, %c64_i32, %c1_i32, %idx_buffer_pv_7) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP7_cons_prod_lock_0, Release, 1)
      %58 = memref.load %_anonymous23[%c1] : memref<4xi32>
      %59 = arith.addi %58, %c1_i32 : i32
      %60 = arith.cmpi sge, %59, %c2_i32 : i32
      %61 = arith.subi %59, %c2_i32 : i32
      %62 = arith.select %60, %61, %59 : i32
      memref.store %62, %_anonymous23[%c1] : memref<4xi32>
      aie.use_lock(%memV_7_cons_prod_lock_0, Release, 1)
      %63 = memref.load %_anonymous23[%c2] : memref<4xi32>
      %64 = arith.addi %63, %c1_i32 : i32
      %65 = arith.cmpi sge, %64, %c2_i32 : i32
      %66 = arith.subi %64, %c2_i32 : i32
      %67 = arith.select %65, %66, %64 : i32
      memref.store %67, %_anonymous23[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF7_prod_lock_0, Release, 1)
      %68 = memref.load %_anonymous23[%c3] : memref<4xi32>
      %69 = arith.addi %68, %c1_i32 : i32
      %70 = arith.cmpi sge, %69, %c2_i32 : i32
      %71 = arith.subi %69, %c2_i32 : i32
      %72 = arith.select %70, %71, %69 : i32
      memref.store %72, %_anonymous23[%c3] : memref<4xi32>
      %73 = memref.load %idx_buffer_pv_7[%c0] : memref<2xi32>
      %74 = arith.addi %73, %c1_i32 : i32
      memref.store %74, %idx_buffer_pv_7[%c0] : memref<2xi32>
      %75 = arith.addi %44, %c1 : index
      cf.br ^bb22(%75 : index)
    ^bb36:  // pred: ^bb22
      cf.br ^bb37
    ^bb37:  // 2 preds: ^bb20, ^bb36
      cf.cond_br %4, ^bb38, ^bb51
    ^bb38:  // pred: ^bb37
      aie.use_lock(%outP7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous23[%c1] : memref<4xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%outP7_cons_buff_0 : memref<64x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%outP7_cons_buff_1 : memref<64x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%outP7_cons_buff_0 : memref<64x64xbf16>)
    ^bb42(%79: memref<64x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      aie.use_lock(%memV_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %80 = memref.load %_anonymous23[%c2] : memref<4xi32>
      %81 = arith.index_cast %80 : i32 to index
      %82 = arith.index_cast %81 : index to i32
      cf.switch %82 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%memV_7_cons_buff_0 : memref<64x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%memV_7_cons_buff_1 : memref<64x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%memV_7_cons_buff_0 : memref<64x64xbf16>)
    ^bb46(%83: memref<64x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      aie.use_lock(%scaleOF7_cons_lock_0, AcquireGreaterEqual, 1)
      %84 = memref.load %_anonymous23[%c3] : memref<4xi32>
      %85 = arith.index_cast %84 : i32 to index
      %86 = arith.index_cast %85 : index to i32
      cf.switch %86 : i32, [
        default: ^bb49,
        0: ^bb47,
        1: ^bb48
      ]
    ^bb47:  // pred: ^bb46
      cf.br ^bb50(%scaleOF7_buff_0 : memref<256xbf16>)
    ^bb48:  // pred: ^bb46
      cf.br ^bb50(%scaleOF7_buff_1 : memref<256xbf16>)
    ^bb49:  // pred: ^bb46
      cf.br ^bb50(%scaleOF7_buff_0 : memref<256xbf16>)
    ^bb50(%87: memref<256xbf16>):  // 3 preds: ^bb47, ^bb48, ^bb49
      func.call @matmul_PV(%79, %83, %12, %87, %c64_i32, %c1_i32, %idx_buffer_pv_7) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
      func.call @rescale_O(%12, %87, %c64_i32, %idx_buffer_pv_7) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      aie.use_lock(%outP7_cons_prod_lock_0, Release, 1)
      %88 = memref.load %_anonymous23[%c1] : memref<4xi32>
      %89 = arith.addi %88, %c1_i32 : i32
      %90 = arith.cmpi sge, %89, %c2_i32 : i32
      %91 = arith.subi %89, %c2_i32 : i32
      %92 = arith.select %90, %91, %89 : i32
      memref.store %92, %_anonymous23[%c1] : memref<4xi32>
      aie.use_lock(%memV_7_cons_prod_lock_0, Release, 1)
      %93 = memref.load %_anonymous23[%c2] : memref<4xi32>
      %94 = arith.addi %93, %c1_i32 : i32
      %95 = arith.cmpi sge, %94, %c2_i32 : i32
      %96 = arith.subi %94, %c2_i32 : i32
      %97 = arith.select %95, %96, %94 : i32
      memref.store %97, %_anonymous23[%c2] : memref<4xi32>
      aie.use_lock(%scaleOF7_prod_lock_0, Release, 1)
      %98 = memref.load %_anonymous23[%c3] : memref<4xi32>
      %99 = arith.addi %98, %c1_i32 : i32
      %100 = arith.cmpi sge, %99, %c2_i32 : i32
      %101 = arith.subi %99, %c2_i32 : i32
      %102 = arith.select %100, %101, %99 : i32
      memref.store %102, %_anonymous23[%c3] : memref<4xi32>
      %103 = memref.load %idx_buffer_pv_7[%c0] : memref<2xi32>
      %104 = arith.addi %103, %c1_i32 : i32
      memref.store %104, %idx_buffer_pv_7[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb51:  // pred: ^bb37
      func.call @rescale_O(%12, %24, %c64_i32, %idx_buffer_pv_7) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
      %105 = memref.load %idx_buffer_pv_7[%c0] : memref<2xi32>
      %106 = arith.addi %105, %c1_i32 : i32
      memref.store %106, %idx_buffer_pv_7[%c0] : memref<2xi32>
      cf.br ^bb52
    ^bb52:  // 2 preds: ^bb50, ^bb51
      memref.store %c0_i32, %idx_buffer_pv_7[%c0] : memref<2xi32>
      %107 = memref.load %idx_buffer_pv_7[%c1] : memref<2xi32>
      %108 = arith.addi %107, %c8_i32 : i32
      memref.store %108, %idx_buffer_pv_7[%c1] : memref<2xi32>
      aie.use_lock(%outO23_cons_lock_0, Release, 1)
      %109 = memref.load %_anonymous23[%c0] : memref<4xi32>
      %110 = arith.addi %109, %c1_i32 : i32
      %111 = arith.cmpi sge, %110, %c2_i32 : i32
      %112 = arith.subi %110, %c2_i32 : i32
      %113 = arith.select %111, %112, %110 : i32
      memref.store %113, %_anonymous23[%c0] : memref<4xi32>
      %114 = arith.addi %7, %c1 : index
      cf.br ^bb3(%114 : index)
    ^bb53:  // pred: ^bb3
      %115 = arith.addi %5, %c1 : index
      cf.br ^bb1(%115 : index)
    ^bb54:  // pred: ^bb1
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    aie.runtime_sequence(%arg0: memref<1x16384x64xbf16>, %arg1: memref<1x1048576xbf16>, %arg2: memref<1x1048576xbf16>, %arg3: memref<1x16384x64xbf16>) {
      aiex.npu.rtp_write(@mha_rtpss_0_stage0, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_0_stage0, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_0_stage0, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_0_stage0, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_1_stage0, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_1_stage0, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_1_stage0, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_1_stage0, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_2_stage0, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_2_stage0, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_2_stage0, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_2_stage0, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_3_stage0, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_3_stage0, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_3_stage0, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_3_stage0, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_4_stage0, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_4_stage0, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_4_stage0, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_4_stage0, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_5_stage0, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_5_stage0, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_5_stage0, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_5_stage0, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_6_stage0, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_6_stage0, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_6_stage0, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_6_stage0, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_7_stage0, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_7_stage0, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_7_stage0, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_7_stage0, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_0_stage1, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_0_stage1, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_0_stage1, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_0_stage1, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_1_stage1, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_1_stage1, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_1_stage1, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_1_stage1, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_2_stage1, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_2_stage1, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_2_stage1, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_2_stage1, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_3_stage1, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_3_stage1, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_3_stage1, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_3_stage1, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_4_stage1, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_4_stage1, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_4_stage1, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_4_stage1, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_5_stage1, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_5_stage1, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_5_stage1, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_5_stage1, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_6_stage1, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_6_stage1, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_6_stage1, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_6_stage1, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_7_stage1, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_7_stage1, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_7_stage1, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_7_stage1, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_0_stage2, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_0_stage2, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_0_stage2, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_0_stage2, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_1_stage2, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_1_stage2, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_1_stage2, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_1_stage2, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_2_stage2, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_2_stage2, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_2_stage2, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_2_stage2, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_3_stage2, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_3_stage2, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_3_stage2, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_3_stage2, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_4_stage2, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_4_stage2, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_4_stage2, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_4_stage2, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_5_stage2, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_5_stage2, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_5_stage2, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_5_stage2, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_6_stage2, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_6_stage2, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_6_stage2, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_6_stage2, 3, 16384)
      aiex.npu.rtp_write(@mha_rtpss_7_stage2, 0, 32)
      aiex.npu.rtp_write(@mha_rtpss_7_stage2, 1, 256)
      aiex.npu.rtp_write(@mha_rtpss_7_stage2, 2, 16384)
      aiex.npu.rtp_write(@mha_rtpss_7_stage2, 3, 16384)
      aiex.set_lock(%lock_0_2, 1)
      aiex.set_lock(%lock_1_2, 1)
      aiex.set_lock(%lock_2_2, 1)
      aiex.set_lock(%lock_3_2, 1)
      aiex.set_lock(%lock_4_2, 1)
      aiex.set_lock(%lock_5_2, 1)
      aiex.set_lock(%lock_6_2, 1)
      aiex.set_lock(%lock_7_2, 1)
      aiex.set_lock(%lock_0_3, 1)
      aiex.set_lock(%lock_1_3, 1)
      aiex.set_lock(%lock_2_3, 1)
      aiex.set_lock(%lock_3_3, 1)
      aiex.set_lock(%lock_4_3, 1)
      aiex.set_lock(%lock_5_3, 1)
      aiex.set_lock(%lock_6_3, 1)
      aiex.set_lock(%lock_7_3, 1)
      aiex.set_lock(%lock_0_4, 1)
      aiex.set_lock(%lock_1_4, 1)
      aiex.set_lock(%lock_2_4, 1)
      aiex.set_lock(%lock_3_4, 1)
      aiex.set_lock(%lock_4_4, 1)
      aiex.set_lock(%lock_5_4, 1)
      aiex.set_lock(%lock_6_4, 1)
      aiex.set_lock(%lock_7_4, 1)
      %0 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 0, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 16384, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%1)
      %2 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%2)
      %3 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%3)
      %4 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 0, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%4)
      %5 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 16384, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%5)
      aiex.dma_await_task(%4)
      aiex.dma_await_task(%5)
      aiex.dma_free_task(%0)
      aiex.dma_free_task(%1)
      aiex.dma_free_task(%2)
      aiex.dma_free_task(%3)
      %6 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 32768, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%6)
      %7 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 49152, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%7)
      %8 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%8)
      %9 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%9)
      %10 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 32768, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%10)
      %11 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 49152, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%11)
      aiex.dma_await_task(%10)
      aiex.dma_await_task(%11)
      aiex.dma_free_task(%6)
      aiex.dma_free_task(%7)
      aiex.dma_free_task(%8)
      aiex.dma_free_task(%9)
      %12 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 65536, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%12)
      %13 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 81920, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%13)
      %14 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%14)
      %15 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%15)
      %16 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 65536, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%16)
      %17 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 81920, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%17)
      aiex.dma_await_task(%16)
      aiex.dma_await_task(%17)
      aiex.dma_free_task(%12)
      aiex.dma_free_task(%13)
      aiex.dma_free_task(%14)
      aiex.dma_free_task(%15)
      %18 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 98304, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%18)
      %19 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 114688, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%19)
      %20 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%20)
      %21 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%21)
      %22 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 98304, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%22)
      %23 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 114688, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%23)
      aiex.dma_await_task(%22)
      aiex.dma_await_task(%23)
      aiex.dma_free_task(%18)
      aiex.dma_free_task(%19)
      aiex.dma_free_task(%20)
      aiex.dma_free_task(%21)
      %24 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 131072, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%24)
      %25 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 147456, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%25)
      %26 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%26)
      %27 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%27)
      %28 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 131072, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%28)
      %29 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 147456, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%29)
      aiex.dma_await_task(%28)
      aiex.dma_await_task(%29)
      aiex.dma_free_task(%24)
      aiex.dma_free_task(%25)
      aiex.dma_free_task(%26)
      aiex.dma_free_task(%27)
      %30 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 163840, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%30)
      %31 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 180224, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%31)
      %32 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%32)
      %33 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%33)
      %34 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 163840, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%34)
      %35 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 180224, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%35)
      aiex.dma_await_task(%34)
      aiex.dma_await_task(%35)
      aiex.dma_free_task(%30)
      aiex.dma_free_task(%31)
      aiex.dma_free_task(%32)
      aiex.dma_free_task(%33)
      %36 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 196608, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%36)
      %37 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 212992, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%37)
      %38 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%38)
      %39 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%39)
      %40 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 196608, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%40)
      %41 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 212992, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%41)
      aiex.dma_await_task(%40)
      aiex.dma_await_task(%41)
      aiex.dma_free_task(%36)
      aiex.dma_free_task(%37)
      aiex.dma_free_task(%38)
      aiex.dma_free_task(%39)
      %42 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 229376, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%42)
      %43 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 245760, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%43)
      %44 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%44)
      %45 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%45)
      %46 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 229376, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%46)
      %47 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 245760, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%47)
      aiex.dma_await_task(%46)
      aiex.dma_await_task(%47)
      aiex.dma_free_task(%42)
      aiex.dma_free_task(%43)
      aiex.dma_free_task(%44)
      aiex.dma_free_task(%45)
      %48 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 262144, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%48)
      %49 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 278528, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%49)
      %50 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%50)
      %51 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%51)
      %52 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 262144, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%52)
      %53 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 278528, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%53)
      aiex.dma_await_task(%52)
      aiex.dma_await_task(%53)
      aiex.dma_free_task(%48)
      aiex.dma_free_task(%49)
      aiex.dma_free_task(%50)
      aiex.dma_free_task(%51)
      %54 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 294912, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%54)
      %55 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 311296, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%55)
      %56 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%56)
      %57 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%57)
      %58 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 294912, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%58)
      %59 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 311296, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%59)
      aiex.dma_await_task(%58)
      aiex.dma_await_task(%59)
      aiex.dma_free_task(%54)
      aiex.dma_free_task(%55)
      aiex.dma_free_task(%56)
      aiex.dma_free_task(%57)
      %60 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 327680, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%60)
      %61 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 344064, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%61)
      %62 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%62)
      %63 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%63)
      %64 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 327680, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%64)
      %65 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 344064, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%65)
      aiex.dma_await_task(%64)
      aiex.dma_await_task(%65)
      aiex.dma_free_task(%60)
      aiex.dma_free_task(%61)
      aiex.dma_free_task(%62)
      aiex.dma_free_task(%63)
      %66 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 360448, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%66)
      %67 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 376832, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%67)
      %68 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%68)
      %69 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%69)
      %70 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 360448, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%70)
      %71 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 376832, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%71)
      aiex.dma_await_task(%70)
      aiex.dma_await_task(%71)
      aiex.dma_free_task(%66)
      aiex.dma_free_task(%67)
      aiex.dma_free_task(%68)
      aiex.dma_free_task(%69)
      %72 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 393216, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%72)
      %73 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 409600, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%73)
      %74 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%74)
      %75 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%75)
      %76 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 393216, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%76)
      %77 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 409600, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%77)
      aiex.dma_await_task(%76)
      aiex.dma_await_task(%77)
      aiex.dma_free_task(%72)
      aiex.dma_free_task(%73)
      aiex.dma_free_task(%74)
      aiex.dma_free_task(%75)
      %78 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 425984, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%78)
      %79 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 442368, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%79)
      %80 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%80)
      %81 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%81)
      %82 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 425984, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%82)
      %83 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 442368, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%83)
      aiex.dma_await_task(%82)
      aiex.dma_await_task(%83)
      aiex.dma_free_task(%78)
      aiex.dma_free_task(%79)
      aiex.dma_free_task(%80)
      aiex.dma_free_task(%81)
      %84 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 458752, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%84)
      %85 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 475136, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%85)
      %86 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%86)
      %87 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%87)
      %88 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 458752, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%88)
      %89 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 475136, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%89)
      aiex.dma_await_task(%88)
      aiex.dma_await_task(%89)
      aiex.dma_free_task(%84)
      aiex.dma_free_task(%85)
      aiex.dma_free_task(%86)
      aiex.dma_free_task(%87)
      %90 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 491520, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%90)
      %91 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 507904, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%91)
      %92 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%92)
      %93 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%93)
      %94 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 491520, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%94)
      %95 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 507904, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%95)
      aiex.dma_await_task(%94)
      aiex.dma_await_task(%95)
      aiex.dma_free_task(%90)
      aiex.dma_free_task(%91)
      aiex.dma_free_task(%92)
      aiex.dma_free_task(%93)
      %96 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 524288, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%96)
      %97 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 540672, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%97)
      %98 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%98)
      %99 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%99)
      %100 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 524288, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%100)
      %101 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 540672, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%101)
      aiex.dma_await_task(%100)
      aiex.dma_await_task(%101)
      aiex.dma_free_task(%96)
      aiex.dma_free_task(%97)
      aiex.dma_free_task(%98)
      aiex.dma_free_task(%99)
      %102 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 557056, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%102)
      %103 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 573440, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%103)
      %104 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%104)
      %105 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%105)
      %106 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 557056, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%106)
      %107 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 573440, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%107)
      aiex.dma_await_task(%106)
      aiex.dma_await_task(%107)
      aiex.dma_free_task(%102)
      aiex.dma_free_task(%103)
      aiex.dma_free_task(%104)
      aiex.dma_free_task(%105)
      %108 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 589824, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%108)
      %109 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 606208, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%109)
      %110 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%110)
      %111 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%111)
      %112 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 589824, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%112)
      %113 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 606208, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%113)
      aiex.dma_await_task(%112)
      aiex.dma_await_task(%113)
      aiex.dma_free_task(%108)
      aiex.dma_free_task(%109)
      aiex.dma_free_task(%110)
      aiex.dma_free_task(%111)
      %114 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 622592, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%114)
      %115 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 638976, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%115)
      %116 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%116)
      %117 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%117)
      %118 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 622592, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%118)
      %119 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 638976, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%119)
      aiex.dma_await_task(%118)
      aiex.dma_await_task(%119)
      aiex.dma_free_task(%114)
      aiex.dma_free_task(%115)
      aiex.dma_free_task(%116)
      aiex.dma_free_task(%117)
      %120 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 655360, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%120)
      %121 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 671744, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%121)
      %122 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%122)
      %123 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%123)
      %124 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 655360, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%124)
      %125 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 671744, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%125)
      aiex.dma_await_task(%124)
      aiex.dma_await_task(%125)
      aiex.dma_free_task(%120)
      aiex.dma_free_task(%121)
      aiex.dma_free_task(%122)
      aiex.dma_free_task(%123)
      %126 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 688128, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%126)
      %127 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 704512, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%127)
      %128 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%128)
      %129 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%129)
      %130 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 688128, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%130)
      %131 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 704512, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%131)
      aiex.dma_await_task(%130)
      aiex.dma_await_task(%131)
      aiex.dma_free_task(%126)
      aiex.dma_free_task(%127)
      aiex.dma_free_task(%128)
      aiex.dma_free_task(%129)
      %132 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 720896, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%132)
      %133 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 737280, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%133)
      %134 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%134)
      %135 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%135)
      %136 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 720896, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%136)
      %137 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 737280, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%137)
      aiex.dma_await_task(%136)
      aiex.dma_await_task(%137)
      aiex.dma_free_task(%132)
      aiex.dma_free_task(%133)
      aiex.dma_free_task(%134)
      aiex.dma_free_task(%135)
      %138 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 753664, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%138)
      %139 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 770048, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%139)
      %140 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%140)
      %141 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%141)
      %142 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 753664, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%142)
      %143 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 770048, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%143)
      aiex.dma_await_task(%142)
      aiex.dma_await_task(%143)
      aiex.dma_free_task(%138)
      aiex.dma_free_task(%139)
      aiex.dma_free_task(%140)
      aiex.dma_free_task(%141)
      %144 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 786432, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%144)
      %145 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 802816, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%145)
      %146 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%146)
      %147 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%147)
      %148 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 786432, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%148)
      %149 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 802816, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%149)
      aiex.dma_await_task(%148)
      aiex.dma_await_task(%149)
      aiex.dma_free_task(%144)
      aiex.dma_free_task(%145)
      aiex.dma_free_task(%146)
      aiex.dma_free_task(%147)
      %150 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 819200, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%150)
      %151 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 835584, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%151)
      %152 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%152)
      %153 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%153)
      %154 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 819200, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%154)
      %155 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 835584, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%155)
      aiex.dma_await_task(%154)
      aiex.dma_await_task(%155)
      aiex.dma_free_task(%150)
      aiex.dma_free_task(%151)
      aiex.dma_free_task(%152)
      aiex.dma_free_task(%153)
      %156 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 851968, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%156)
      %157 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 868352, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%157)
      %158 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%158)
      %159 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%159)
      %160 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 851968, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%160)
      %161 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 868352, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%161)
      aiex.dma_await_task(%160)
      aiex.dma_await_task(%161)
      aiex.dma_free_task(%156)
      aiex.dma_free_task(%157)
      aiex.dma_free_task(%158)
      aiex.dma_free_task(%159)
      %162 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 884736, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%162)
      %163 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 901120, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%163)
      %164 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%164)
      %165 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%165)
      %166 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 884736, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%166)
      %167 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 901120, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%167)
      aiex.dma_await_task(%166)
      aiex.dma_await_task(%167)
      aiex.dma_free_task(%162)
      aiex.dma_free_task(%163)
      aiex.dma_free_task(%164)
      aiex.dma_free_task(%165)
      %168 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 917504, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%168)
      %169 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 933888, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%169)
      %170 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%170)
      %171 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%171)
      %172 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 917504, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%172)
      %173 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 933888, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%173)
      aiex.dma_await_task(%172)
      aiex.dma_await_task(%173)
      aiex.dma_free_task(%168)
      aiex.dma_free_task(%169)
      aiex.dma_free_task(%170)
      aiex.dma_free_task(%171)
      %174 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 950272, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%174)
      %175 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 966656, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%175)
      %176 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%176)
      %177 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%177)
      %178 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 950272, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%178)
      %179 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 966656, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%179)
      aiex.dma_await_task(%178)
      aiex.dma_await_task(%179)
      aiex.dma_free_task(%174)
      aiex.dma_free_task(%175)
      aiex.dma_free_task(%176)
      aiex.dma_free_task(%177)
      %180 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 983040, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%180)
      %181 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 999424, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%181)
      %182 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%182)
      %183 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%183)
      %184 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 983040, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%184)
      %185 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 999424, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%185)
      aiex.dma_await_task(%184)
      aiex.dma_await_task(%185)
      aiex.dma_free_task(%180)
      aiex.dma_free_task(%181)
      aiex.dma_free_task(%182)
      aiex.dma_free_task(%183)
      %186 = aiex.dma_configure_task_for @inQ_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 1015808, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%186)
      %187 = aiex.dma_configure_task_for @inQ2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 1032192, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%187)
      %188 = aiex.dma_configure_task_for @inK_shim_alloc {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%188)
      %189 = aiex.dma_configure_task_for @inV_shim_alloc {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%189)
      %190 = aiex.dma_configure_task_for @memO_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 1015808, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%190)
      %191 = aiex.dma_configure_task_for @memO2_shim_alloc {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 1032192, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%191)
      aiex.dma_await_task(%190)
      aiex.dma_await_task(%191)
      aiex.dma_free_task(%186)
      aiex.dma_free_task(%187)
      aiex.dma_free_task(%188)
      aiex.dma_free_task(%189)
    }
    aie.shim_dma_allocation @inK_shim_alloc(%shim_noc_tile_5_0, MM2S, 0)
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%inK_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inK_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inK_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inK_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inK_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inK_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%inK_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inK_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%inK_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%inK_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inK_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%inK_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memK_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memK_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memK_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memK_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memQ0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memQ0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memQ0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memQ0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memA0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memA0_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memA0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memA0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memK_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memK_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memK_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memK_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memQ1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memQ1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memQ1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memQ1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memA1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memA1_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memA1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memA1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memK_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memK_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memK_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memK_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memQ2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memQ2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memQ2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memQ2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memA2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memA2_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memA2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memA2_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memK_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memK_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memK_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memK_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memQ3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memQ3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memQ3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memQ3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memA3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memA3_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memA3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memA3_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_4_2 = aie.mem(%tile_4_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memK_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_4_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memK_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memK_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_4_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memK_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memQ20_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ20_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memQ20_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memQ20_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ20_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memQ20_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memA4_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA4_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memA4_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memA4_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA4_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memA4_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_5_2 = aie.mem(%tile_5_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memK_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_5_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memK_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memK_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_5_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memK_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memQ21_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ21_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memQ21_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memQ21_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ21_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memQ21_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memA5_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA5_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memA5_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memA5_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA5_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memA5_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_6_2 = aie.mem(%tile_6_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memK_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_6_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memK_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memK_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_6_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memK_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memQ22_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ22_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memQ22_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memQ22_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ22_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memQ22_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memA6_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA6_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memA6_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memA6_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA6_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memA6_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_7_2 = aie.mem(%tile_7_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memK_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_7_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memK_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memK_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memK_7_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memK_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memQ23_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ23_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memQ23_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memQ23_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memQ23_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memQ23_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memA7_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA7_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memA7_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memA7_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA7_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memA7_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @inQ_shim_alloc(%shim_noc_tile_4_0, MM2S, 0)
    %memtile_dma_6_1 = aie.memtile_dma(%mem_tile_6_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb9)
    ^bb1:  // 2 preds: ^bb0, ^bb8
      aie.use_lock(%inQ_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_0 : memref<256x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inQ_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inQ_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_0 : memref<256x64xbf16>, 4096, 4096) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%inQ_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%inQ_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_0 : memref<256x64xbf16>, 8192, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%inQ_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%inQ_cons_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_0 : memref<256x64xbf16>, 12288, 4096) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%inQ_cons_cons_lock_3, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%inQ_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_1 : memref<256x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%inQ_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%inQ_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_1 : memref<256x64xbf16>, 4096, 4096) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%inQ_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%inQ_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_1 : memref<256x64xbf16>, 8192, 4096) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%inQ_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%inQ_cons_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_1 : memref<256x64xbf16>, 12288, 4096) {bd_id = 7 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inQ_cons_cons_lock_3, Release, 1)
      aie.next_bd ^bb1
    ^bb9:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%inQ_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_0 : memref<256x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%inQ_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%inQ_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_1 : memref<256x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%inQ_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %2 = aie.dma_start(MM2S, 1, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%inQ_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_0 : memref<256x64xbf16>, 4096, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%inQ_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%inQ_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_1 : memref<256x64xbf16>, 4096, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%inQ_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %3 = aie.dma_start(MM2S, 2, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%inQ_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_0 : memref<256x64xbf16>, 8192, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%inQ_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%inQ_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_1 : memref<256x64xbf16>, 8192, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 11 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%inQ_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %4 = aie.dma_start(MM2S, 3, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%inQ_cons_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_0 : memref<256x64xbf16>, 12288, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%inQ_cons_prod_lock_3, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%inQ_cons_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ_cons_buff_1 : memref<256x64xbf16>, 12288, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%inQ_cons_prod_lock_3, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %5 = aie.dma_start(MM2S, 4, ^bb22, ^bb30)
    ^bb22:  // 2 preds: ^bb21, ^bb29
      aie.use_lock(%memO_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_0 : memref<256x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 12 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%memO_prod_lock_0, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%memO_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_0 : memref<256x64xbf16>, 4096, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%memO_prod_lock_1, Release, 1)
      aie.next_bd ^bb24
    ^bb24:  // pred: ^bb23
      aie.use_lock(%memO_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_0 : memref<256x64xbf16>, 8192, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 14 : i32, next_bd_id = 15 : i32}
      aie.use_lock(%memO_prod_lock_2, Release, 1)
      aie.next_bd ^bb25
    ^bb25:  // pred: ^bb24
      aie.use_lock(%memO_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_0 : memref<256x64xbf16>, 12288, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 15 : i32, next_bd_id = 16 : i32}
      aie.use_lock(%memO_prod_lock_3, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%memO_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_1 : memref<256x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 16 : i32, next_bd_id = 17 : i32}
      aie.use_lock(%memO_prod_lock_0, Release, 1)
      aie.next_bd ^bb27
    ^bb27:  // pred: ^bb26
      aie.use_lock(%memO_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_1 : memref<256x64xbf16>, 4096, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 17 : i32, next_bd_id = 18 : i32}
      aie.use_lock(%memO_prod_lock_1, Release, 1)
      aie.next_bd ^bb28
    ^bb28:  // pred: ^bb27
      aie.use_lock(%memO_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_1 : memref<256x64xbf16>, 8192, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 18 : i32, next_bd_id = 19 : i32}
      aie.use_lock(%memO_prod_lock_2, Release, 1)
      aie.next_bd ^bb29
    ^bb29:  // pred: ^bb28
      aie.use_lock(%memO_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_1 : memref<256x64xbf16>, 12288, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 19 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%memO_prod_lock_3, Release, 1)
      aie.next_bd ^bb22
    ^bb30:  // pred: ^bb21
      %6 = aie.dma_start(S2MM, 1, ^bb31, ^bb33)
    ^bb31:  // 2 preds: ^bb30, ^bb32
      aie.use_lock(%memO_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_0 : memref<256x64xbf16>, 0, 4096) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%memO_cons_lock_0, Release, 1)
      aie.next_bd ^bb32
    ^bb32:  // pred: ^bb31
      aie.use_lock(%memO_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_1 : memref<256x64xbf16>, 0, 4096) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%memO_cons_lock_0, Release, 1)
      aie.next_bd ^bb31
    ^bb33:  // pred: ^bb30
      %7 = aie.dma_start(S2MM, 2, ^bb34, ^bb36)
    ^bb34:  // 2 preds: ^bb33, ^bb35
      aie.use_lock(%memO_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_0 : memref<256x64xbf16>, 4096, 4096) {bd_id = 20 : i32, next_bd_id = 21 : i32}
      aie.use_lock(%memO_cons_lock_1, Release, 1)
      aie.next_bd ^bb35
    ^bb35:  // pred: ^bb34
      aie.use_lock(%memO_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_1 : memref<256x64xbf16>, 4096, 4096) {bd_id = 21 : i32, next_bd_id = 20 : i32}
      aie.use_lock(%memO_cons_lock_1, Release, 1)
      aie.next_bd ^bb34
    ^bb36:  // pred: ^bb33
      %8 = aie.dma_start(S2MM, 3, ^bb37, ^bb39)
    ^bb37:  // 2 preds: ^bb36, ^bb38
      aie.use_lock(%memO_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_0 : memref<256x64xbf16>, 8192, 4096) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%memO_cons_lock_2, Release, 1)
      aie.next_bd ^bb38
    ^bb38:  // pred: ^bb37
      aie.use_lock(%memO_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_1 : memref<256x64xbf16>, 8192, 4096) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%memO_cons_lock_2, Release, 1)
      aie.next_bd ^bb37
    ^bb39:  // pred: ^bb36
      %9 = aie.dma_start(S2MM, 4, ^bb40, ^bb42)
    ^bb40:  // 2 preds: ^bb39, ^bb41
      aie.use_lock(%memO_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_0 : memref<256x64xbf16>, 12288, 4096) {bd_id = 22 : i32, next_bd_id = 23 : i32}
      aie.use_lock(%memO_cons_lock_3, Release, 1)
      aie.next_bd ^bb41
    ^bb41:  // pred: ^bb40
      aie.use_lock(%memO_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO_buff_1 : memref<256x64xbf16>, 12288, 4096) {bd_id = 23 : i32, next_bd_id = 22 : i32}
      aie.use_lock(%memO_cons_lock_3, Release, 1)
      aie.next_bd ^bb40
    ^bb42:  // pred: ^bb39
      aie.end
    }
    aie.shim_dma_allocation @inQ2_shim_alloc(%shim_noc_tile_4_0, MM2S, 1)
    %memtile_dma_7_1 = aie.memtile_dma(%mem_tile_7_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb9)
    ^bb1:  // 2 preds: ^bb0, ^bb8
      aie.use_lock(%inQ2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_0 : memref<256x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inQ2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inQ2_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_0 : memref<256x64xbf16>, 4096, 4096) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%inQ2_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%inQ2_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_0 : memref<256x64xbf16>, 8192, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%inQ2_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%inQ2_cons_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_0 : memref<256x64xbf16>, 12288, 4096) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%inQ2_cons_cons_lock_3, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%inQ2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_1 : memref<256x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%inQ2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%inQ2_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_1 : memref<256x64xbf16>, 4096, 4096) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%inQ2_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%inQ2_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_1 : memref<256x64xbf16>, 8192, 4096) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%inQ2_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%inQ2_cons_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_1 : memref<256x64xbf16>, 12288, 4096) {bd_id = 7 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inQ2_cons_cons_lock_3, Release, 1)
      aie.next_bd ^bb1
    ^bb9:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%inQ2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_0 : memref<256x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%inQ2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%inQ2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_1 : memref<256x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%inQ2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %2 = aie.dma_start(MM2S, 1, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%inQ2_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_0 : memref<256x64xbf16>, 4096, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%inQ2_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%inQ2_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_1 : memref<256x64xbf16>, 4096, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%inQ2_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %3 = aie.dma_start(MM2S, 2, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%inQ2_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_0 : memref<256x64xbf16>, 8192, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%inQ2_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%inQ2_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_1 : memref<256x64xbf16>, 8192, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 11 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%inQ2_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %4 = aie.dma_start(MM2S, 3, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%inQ2_cons_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_0 : memref<256x64xbf16>, 12288, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%inQ2_cons_prod_lock_3, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%inQ2_cons_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%inQ2_cons_buff_1 : memref<256x64xbf16>, 12288, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%inQ2_cons_prod_lock_3, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %5 = aie.dma_start(MM2S, 4, ^bb22, ^bb30)
    ^bb22:  // 2 preds: ^bb21, ^bb29
      aie.use_lock(%memO2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_0 : memref<256x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 12 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%memO2_prod_lock_0, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%memO2_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_0 : memref<256x64xbf16>, 4096, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%memO2_prod_lock_1, Release, 1)
      aie.next_bd ^bb24
    ^bb24:  // pred: ^bb23
      aie.use_lock(%memO2_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_0 : memref<256x64xbf16>, 8192, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 14 : i32, next_bd_id = 15 : i32}
      aie.use_lock(%memO2_prod_lock_2, Release, 1)
      aie.next_bd ^bb25
    ^bb25:  // pred: ^bb24
      aie.use_lock(%memO2_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_0 : memref<256x64xbf16>, 12288, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 15 : i32, next_bd_id = 16 : i32}
      aie.use_lock(%memO2_prod_lock_3, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%memO2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_1 : memref<256x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 16 : i32, next_bd_id = 17 : i32}
      aie.use_lock(%memO2_prod_lock_0, Release, 1)
      aie.next_bd ^bb27
    ^bb27:  // pred: ^bb26
      aie.use_lock(%memO2_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_1 : memref<256x64xbf16>, 4096, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 17 : i32, next_bd_id = 18 : i32}
      aie.use_lock(%memO2_prod_lock_1, Release, 1)
      aie.next_bd ^bb28
    ^bb28:  // pred: ^bb27
      aie.use_lock(%memO2_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_1 : memref<256x64xbf16>, 8192, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 18 : i32, next_bd_id = 19 : i32}
      aie.use_lock(%memO2_prod_lock_2, Release, 1)
      aie.next_bd ^bb29
    ^bb29:  // pred: ^bb28
      aie.use_lock(%memO2_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_1 : memref<256x64xbf16>, 12288, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 19 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%memO2_prod_lock_3, Release, 1)
      aie.next_bd ^bb22
    ^bb30:  // pred: ^bb21
      %6 = aie.dma_start(S2MM, 1, ^bb31, ^bb33)
    ^bb31:  // 2 preds: ^bb30, ^bb32
      aie.use_lock(%memO2_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_0 : memref<256x64xbf16>, 0, 4096) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%memO2_cons_lock_0, Release, 1)
      aie.next_bd ^bb32
    ^bb32:  // pred: ^bb31
      aie.use_lock(%memO2_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_1 : memref<256x64xbf16>, 0, 4096) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%memO2_cons_lock_0, Release, 1)
      aie.next_bd ^bb31
    ^bb33:  // pred: ^bb30
      %7 = aie.dma_start(S2MM, 2, ^bb34, ^bb36)
    ^bb34:  // 2 preds: ^bb33, ^bb35
      aie.use_lock(%memO2_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_0 : memref<256x64xbf16>, 4096, 4096) {bd_id = 20 : i32, next_bd_id = 21 : i32}
      aie.use_lock(%memO2_cons_lock_1, Release, 1)
      aie.next_bd ^bb35
    ^bb35:  // pred: ^bb34
      aie.use_lock(%memO2_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_1 : memref<256x64xbf16>, 4096, 4096) {bd_id = 21 : i32, next_bd_id = 20 : i32}
      aie.use_lock(%memO2_cons_lock_1, Release, 1)
      aie.next_bd ^bb34
    ^bb36:  // pred: ^bb33
      %8 = aie.dma_start(S2MM, 3, ^bb37, ^bb39)
    ^bb37:  // 2 preds: ^bb36, ^bb38
      aie.use_lock(%memO2_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_0 : memref<256x64xbf16>, 8192, 4096) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%memO2_cons_lock_2, Release, 1)
      aie.next_bd ^bb38
    ^bb38:  // pred: ^bb37
      aie.use_lock(%memO2_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_1 : memref<256x64xbf16>, 8192, 4096) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%memO2_cons_lock_2, Release, 1)
      aie.next_bd ^bb37
    ^bb39:  // pred: ^bb36
      %9 = aie.dma_start(S2MM, 4, ^bb40, ^bb42)
    ^bb40:  // 2 preds: ^bb39, ^bb41
      aie.use_lock(%memO2_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_0 : memref<256x64xbf16>, 12288, 4096) {bd_id = 22 : i32, next_bd_id = 23 : i32}
      aie.use_lock(%memO2_cons_lock_3, Release, 1)
      aie.next_bd ^bb41
    ^bb41:  // pred: ^bb40
      aie.use_lock(%memO2_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%memO2_buff_1 : memref<256x64xbf16>, 12288, 4096) {bd_id = 23 : i32, next_bd_id = 22 : i32}
      aie.use_lock(%memO2_cons_lock_3, Release, 1)
      aie.next_bd ^bb40
    ^bb42:  // pred: ^bb39
      aie.end
    }
    aie.shim_dma_allocation @inV_shim_alloc(%shim_noc_tile_6_0, MM2S, 0)
    %memtile_dma_4_1 = aie.memtile_dma(%mem_tile_4_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%inV_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inV_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inV_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inV_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inV_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inV_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%inV_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inV_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%inV_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%inV_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inV_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%inV_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memV_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memV_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memV_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memV_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outO0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO0_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outO0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outO0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO0_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outO0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%outP0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%outP0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%outP0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%outP0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memV_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memV_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memV_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memV_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outO1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO1_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outO1_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outO1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO1_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outO1_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%outP1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%outP1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%outP1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%outP1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memV_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memV_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memV_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memV_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outO2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO2_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outO2_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outO2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO2_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outO2_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%outP2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%outP2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%outP2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%outP2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memV_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memV_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memV_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memV_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outO3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO3_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outO3_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outO3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO3_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outO3_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%outP3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%outP3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%outP3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%outP3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_4_4 = aie.mem(%tile_4_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memV_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_4_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memV_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memV_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_4_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memV_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outO20_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO20_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outO20_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outO20_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO20_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outO20_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%outP4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP4_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%outP4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%outP4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP4_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%outP4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_5_4 = aie.mem(%tile_5_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memV_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_5_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memV_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memV_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_5_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memV_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outO21_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO21_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outO21_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outO21_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO21_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outO21_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%outP5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP5_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%outP5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%outP5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP5_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%outP5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_6_4 = aie.mem(%tile_6_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memV_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_6_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memV_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memV_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_6_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memV_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outO22_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO22_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outO22_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outO22_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO22_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outO22_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%outP6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP6_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%outP6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%outP6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP6_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%outP6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_7_4 = aie.mem(%tile_7_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memV_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_7_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memV_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memV_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memV_7_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memV_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outO23_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO23_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outO23_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outO23_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outO23_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outO23_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%outP7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP7_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%outP7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%outP7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outP7_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%outP7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memA0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memA0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memA0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memA0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memA1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%memA1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memA1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%memA1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%memA1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%memA1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%memA1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%memA1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%memA2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memA2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%memA2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memA2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(MM2S, 2, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%memA2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%memA2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%memA2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%memA2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 3, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%memA3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%memA3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%memA3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%memA3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(MM2S, 3, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%memA3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%memA3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%memA3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%memA3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(S2MM, 4, ^bb25, ^bb27)
    ^bb25:  // 2 preds: ^bb24, ^bb26
      aie.use_lock(%memA4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA4_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%memA4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%memA4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA4_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%memA4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb25
    ^bb27:  // pred: ^bb24
      %9 = aie.dma_start(MM2S, 4, ^bb28, ^bb30)
    ^bb28:  // 2 preds: ^bb27, ^bb29
      aie.use_lock(%memA4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA4_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%memA4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb29
    ^bb29:  // pred: ^bb28
      aie.use_lock(%memA4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA4_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 11 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%memA4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb28
    ^bb30:  // pred: ^bb27
      %10 = aie.dma_start(S2MM, 5, ^bb31, ^bb33)
    ^bb31:  // 2 preds: ^bb30, ^bb32
      aie.use_lock(%memA5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA5_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 32 : i32, next_bd_id = 33 : i32}
      aie.use_lock(%memA5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb32
    ^bb32:  // pred: ^bb31
      aie.use_lock(%memA5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA5_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 33 : i32, next_bd_id = 32 : i32}
      aie.use_lock(%memA5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb31
    ^bb33:  // pred: ^bb30
      %11 = aie.dma_start(MM2S, 5, ^bb34, ^bb36)
    ^bb34:  // 2 preds: ^bb33, ^bb35
      aie.use_lock(%memA5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA5_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 34 : i32, next_bd_id = 35 : i32}
      aie.use_lock(%memA5_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb35
    ^bb35:  // pred: ^bb34
      aie.use_lock(%memA5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA5_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 35 : i32, next_bd_id = 34 : i32}
      aie.use_lock(%memA5_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb34
    ^bb36:  // pred: ^bb33
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%outA0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%outA0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%outA0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%outA0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memP0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP0_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memP0_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memP0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP0_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memP0_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%outA1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%outA1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%outA1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%outA1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memP1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP1_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memP1_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memP1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP1_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memP1_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%outA2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%outA2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%outA2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%outA2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memP2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP2_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memP2_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memP2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP2_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memP2_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%outA3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%outA3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%outA3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%outA3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memP3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP3_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memP3_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memP3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP3_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memP3_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_4_3 = aie.mem(%tile_4_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%outA4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA4_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%outA4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%outA4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA4_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%outA4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memP4_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP4_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memP4_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memP4_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP4_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memP4_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_5_3 = aie.mem(%tile_5_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%outA5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA5_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%outA5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%outA5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA5_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%outA5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memP5_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP5_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memP5_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memP5_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP5_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memP5_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA6_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA6_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memA6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA6_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memA6_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memA6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA6_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memA6_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memA7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA7_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%memA7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memA7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA7_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%memA7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%memA7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA7_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%memA7_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%memA7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA7_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%memA7_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%memP0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP0_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memP0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%memP0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP0_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memP0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(MM2S, 2, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%memP0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP0_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%memP0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%memP0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP0_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%memP0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 3, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%memP1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP1_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%memP1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%memP1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP1_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%memP1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(MM2S, 3, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%memP1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP1_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%memP1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%memP1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP1_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%memP1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(S2MM, 4, ^bb25, ^bb27)
    ^bb25:  // 2 preds: ^bb24, ^bb26
      aie.use_lock(%memP2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP2_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%memP2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%memP2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP2_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%memP2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb25
    ^bb27:  // pred: ^bb24
      %9 = aie.dma_start(MM2S, 4, ^bb28, ^bb30)
    ^bb28:  // 2 preds: ^bb27, ^bb29
      aie.use_lock(%memP2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP2_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%memP2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb29
    ^bb29:  // pred: ^bb28
      aie.use_lock(%memP2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP2_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 11 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%memP2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb28
    ^bb30:  // pred: ^bb27
      %10 = aie.dma_start(S2MM, 5, ^bb31, ^bb33)
    ^bb31:  // 2 preds: ^bb30, ^bb32
      aie.use_lock(%memP3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP3_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 32 : i32, next_bd_id = 33 : i32}
      aie.use_lock(%memP3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb32
    ^bb32:  // pred: ^bb31
      aie.use_lock(%memP3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP3_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 33 : i32, next_bd_id = 32 : i32}
      aie.use_lock(%memP3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb31
    ^bb33:  // pred: ^bb30
      %11 = aie.dma_start(MM2S, 5, ^bb34, ^bb36)
    ^bb34:  // 2 preds: ^bb33, ^bb35
      aie.use_lock(%memP3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP3_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 34 : i32, next_bd_id = 35 : i32}
      aie.use_lock(%memP3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb35
    ^bb35:  // pred: ^bb34
      aie.use_lock(%memP3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP3_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 35 : i32, next_bd_id = 34 : i32}
      aie.use_lock(%memP3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb34
    ^bb36:  // pred: ^bb33
      aie.end
    }
    %mem_6_3 = aie.mem(%tile_6_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%outA6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA6_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%outA6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%outA6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA6_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%outA6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memP6_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP6_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memP6_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memP6_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP6_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memP6_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_7_3 = aie.mem(%tile_7_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%outA7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA7_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%outA7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%outA7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%outA7_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%outA7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memP7_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP7_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memP7_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memP7_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP7_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memP7_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @memO_shim_alloc(%shim_noc_tile_7_0, S2MM, 0)
    aie.shim_dma_allocation @memO2_shim_alloc(%shim_noc_tile_7_0, S2MM, 1)
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memP4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP4_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memP4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memP4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP4_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memP4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memP4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP4_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memP4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memP4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP4_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memP4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memP5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP5_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%memP5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memP5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP5_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%memP5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%memP5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP5_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%memP5_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%memP5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP5_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%memP5_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%memP6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP6_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%memP6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%memP6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP6_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%memP6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(MM2S, 2, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%memP6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP6_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%memP6_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%memP6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP6_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%memP6_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 3, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%memP7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP7_cons_buff_0 : memref<64x64xbf16>, 0, 4096) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%memP7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%memP7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP7_cons_buff_1 : memref<64x64xbf16>, 0, 4096) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%memP7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(MM2S, 3, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%memP7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP7_cons_buff_0 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%memP7_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%memP7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memP7_cons_buff_1 : memref<64x64xbf16>, 0, 4096, [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>]) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%memP7_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      aie.end
    }
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_4_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_4_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_5_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_5_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_6_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_6_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_7_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_7_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}
