module {
  aie.device(npu2) {
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_1_2 = aie.tile(1, 2)
    %tile_1_3 = aie.tile(1, 3)
    %tile_1_4 = aie.tile(1, 4)
    %tile_2_2 = aie.tile(2, 2)
    %tile_2_3 = aie.tile(2, 3)
    %tile_2_4 = aie.tile(2, 4)
    %tile_3_2 = aie.tile(3, 2)
    %tile_3_3 = aie.tile(3, 3)
    %tile_3_4 = aie.tile(3, 4)
    %tile_4_2 = aie.tile(4, 2)
    %tile_4_3 = aie.tile(4, 3)
    %tile_4_4 = aie.tile(4, 4)
    %tile_5_2 = aie.tile(5, 2)
    %tile_5_3 = aie.tile(5, 3)
    %tile_5_4 = aie.tile(5, 4)
    %tile_6_2 = aie.tile(6, 2)
    %tile_6_3 = aie.tile(6, 3)
    %tile_6_4 = aie.tile(6, 4)
    %tile_7_2 = aie.tile(7, 2)
    %tile_7_3 = aie.tile(7, 3)
    %tile_7_4 = aie.tile(7, 4)
    %shim_noc_tile_5_0 = aie.tile(5, 0)
    %mem_tile_3_1 = aie.tile(3, 1)
    %shim_noc_tile_4_0 = aie.tile(4, 0)
    %mem_tile_6_1 = aie.tile(6, 1)
    %mem_tile_7_1 = aie.tile(7, 1)
    %shim_noc_tile_6_0 = aie.tile(6, 0)
    %mem_tile_4_1 = aie.tile(4, 1)
    %mem_tile_0_1 = aie.tile(0, 1)
    %mem_tile_1_1 = aie.tile(1, 1)
    %shim_noc_tile_7_0 = aie.tile(7, 0)
    %mem_tile_2_1 = aie.tile(2, 1)
    aie.objectfifo @inK(%shim_noc_tile_5_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @memK(%mem_tile_3_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_0_2, %tile_1_2, %tile_2_2, %tile_3_2, %tile_4_2, %tile_5_2, %tile_6_2, %tile_7_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@inK] -> [@memK]([] [0])
    aie.objectfifo @inQ(%shim_noc_tile_4_0, {%mem_tile_6_1}, 2 : i32) : !aie.objectfifo<memref<256x64xbf16>> 
    aie.objectfifo @memQ0(%mem_tile_6_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @memQ1(%mem_tile_6_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @memQ2(%mem_tile_6_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @memQ3(%mem_tile_6_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_3_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@inQ] -> [@memQ0, @memQ1, @memQ2, @memQ3]([] [0, 4096, 8192, 12288])
    aie.objectfifo @inQ2(%shim_noc_tile_4_0, {%mem_tile_7_1}, 2 : i32) : !aie.objectfifo<memref<256x64xbf16>> 
    aie.objectfifo @memQ20(%mem_tile_7_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_4_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @memQ21(%mem_tile_7_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_5_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @memQ22(%mem_tile_7_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_6_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @memQ23(%mem_tile_7_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_7_2}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@inQ2] -> [@memQ20, @memQ21, @memQ22, @memQ23]([] [0, 4096, 8192, 12288])
    aie.objectfifo @inV(%shim_noc_tile_6_0, {%mem_tile_4_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @memV(%mem_tile_4_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_0_4, %tile_1_4, %tile_2_4, %tile_3_4, %tile_4_4, %tile_5_4, %tile_6_4, %tile_7_4}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@inV] -> [@memV]([] [0])
    aie.objectfifo @memA0(%tile_0_2, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outA0(%mem_tile_0_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memA0] -> [@outA0]([] [0])
    aie.objectfifo @memA1(%tile_1_2, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outA1(%mem_tile_0_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_1_3}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memA1] -> [@outA1]([] [0])
    aie.objectfifo @memA2(%tile_2_2, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outA2(%mem_tile_0_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_2_3}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memA2] -> [@outA2]([] [0])
    aie.objectfifo @memA3(%tile_3_2, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outA3(%mem_tile_0_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_3_3}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memA3] -> [@outA3]([] [0])
    aie.objectfifo @memA4(%tile_4_2, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outA4(%mem_tile_0_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_4_3}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memA4] -> [@outA4]([] [0])
    aie.objectfifo @memA5(%tile_5_2, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outA5(%mem_tile_0_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_5_3}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memA5] -> [@outA5]([] [0])
    aie.objectfifo @memA6(%tile_6_2, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outA6(%mem_tile_1_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_6_3}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memA6] -> [@outA6]([] [0])
    aie.objectfifo @memA7(%tile_7_2, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outA7(%mem_tile_1_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_7_3}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memA7] -> [@outA7]([] [0])
    aie.objectfifo @memO(%mem_tile_6_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%shim_noc_tile_7_0}, 2 : i32) : !aie.objectfifo<memref<256x64xbf16>> 
    aie.objectfifo @outO0(%tile_0_4, {%mem_tile_6_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outO1(%tile_1_4, {%mem_tile_6_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outO2(%tile_2_4, {%mem_tile_6_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outO3(%tile_3_4, {%mem_tile_6_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@outO0, @outO1, @outO2, @outO3] -> [@memO]([0, 4096, 8192, 12288] [])
    aie.objectfifo @memO2(%mem_tile_7_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%shim_noc_tile_7_0}, 2 : i32) : !aie.objectfifo<memref<256x64xbf16>> 
    aie.objectfifo @outO20(%tile_4_4, {%mem_tile_7_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outO21(%tile_5_4, {%mem_tile_7_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outO22(%tile_6_4, {%mem_tile_7_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outO23(%tile_7_4, {%mem_tile_7_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@outO20, @outO21, @outO22, @outO23] -> [@memO2]([0, 4096, 8192, 12288] [])
    aie.objectfifo @memP0(%tile_0_3, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outP0(%mem_tile_1_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_0_4}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memP0] -> [@outP0]([] [0])
    aie.objectfifo @memP1(%tile_1_3, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outP1(%mem_tile_1_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_1_4}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memP1] -> [@outP1]([] [0])
    aie.objectfifo @memP2(%tile_2_3, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outP2(%mem_tile_1_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_2_4}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memP2] -> [@outP2]([] [0])
    aie.objectfifo @memP3(%tile_3_3, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outP3(%mem_tile_1_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_3_4}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memP3] -> [@outP3]([] [0])
    aie.objectfifo @memP4(%tile_4_3, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outP4(%mem_tile_2_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_4_4}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memP4] -> [@outP4]([] [0])
    aie.objectfifo @memP5(%tile_5_3, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outP5(%mem_tile_2_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_5_4}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memP5] -> [@outP5]([] [0])
    aie.objectfifo @memP6(%tile_6_3, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outP6(%mem_tile_2_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_6_4}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memP6] -> [@outP6]([] [0])
    aie.objectfifo @memP7(%tile_7_3, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo @outP7(%mem_tile_2_1 dimensionsToStream [<size = 8, stride = 512>, <size = 8, stride = 8>, <size = 8, stride = 64>, <size = 8, stride = 1>], {%tile_7_4}, 2 : i32) : !aie.objectfifo<memref<64x64xbf16>> 
    aie.objectfifo.link [@memP7] -> [@outP7]([] [0])
    aie.objectfifo @scaleOF0(%tile_0_3, {%tile_0_4}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @scaleOF1(%tile_1_3, {%tile_1_4}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @scaleOF2(%tile_2_3, {%tile_2_4}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @scaleOF3(%tile_3_3, {%tile_3_4}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @scaleOF4(%tile_4_3, {%tile_4_4}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @scaleOF5(%tile_5_3, {%tile_5_4}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @scaleOF6(%tile_6_3, {%tile_6_4}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    aie.objectfifo @scaleOF7(%tile_7_3, {%tile_7_4}, 2 : i32) : !aie.objectfifo<memref<256xbf16>> 
    func.func private @zero_bf16(memref<64x64xbf16>)
    func.func private @matmul_bf16_bf16_wrapper(memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>)
    %mha_rtpss_0_stage0 = aie.buffer(%tile_0_2) {sym_name = "mha_rtpss_0_stage0"} : memref<4xi32> 
    %idx_buffer_qk_0 = aie.buffer(%tile_0_2) {sym_name = "idx_buffer_qk_0"} : memref<2xi32> = dense<0>
    func.func private @partial_softmax(memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32)
    func.func private @init_scale_buffer(memref<256xbf16>, i32)
    func.func private @passThroughLine(memref<256xbf16>, memref<256xbf16>, i32)
    %mha_rtpss_0_stage1 = aie.buffer(%tile_0_3) {sym_name = "mha_rtpss_0_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_0 = aie.buffer(%tile_0_3) {sym_name = "idx_buffer_softmax_0"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_0 = aie.buffer(%tile_0_3) {sym_name = "scale_buffer_softmax_0"} : memref<256xbf16> = dense<0.000000e+00>
    func.func private @matmul_PV(memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>)
    func.func private @rescale_O(memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>)
    %mha_rtpss_0_stage2 = aie.buffer(%tile_0_4) {sym_name = "mha_rtpss_0_stage2"} : memref<4xi32> 
    %idx_buffer_pv_0 = aie.buffer(%tile_0_4) {sym_name = "idx_buffer_pv_0"} : memref<2xi32> = dense<0>
    %mha_rtpss_1_stage0 = aie.buffer(%tile_1_2) {sym_name = "mha_rtpss_1_stage0"} : memref<4xi32> 
    %idx_buffer_qk_1 = aie.buffer(%tile_1_2) {sym_name = "idx_buffer_qk_1"} : memref<2xi32> = dense<0>
    %mha_rtpss_1_stage1 = aie.buffer(%tile_1_3) {sym_name = "mha_rtpss_1_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_1 = aie.buffer(%tile_1_3) {sym_name = "idx_buffer_softmax_1"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_1 = aie.buffer(%tile_1_3) {sym_name = "scale_buffer_softmax_1"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_1_stage2 = aie.buffer(%tile_1_4) {sym_name = "mha_rtpss_1_stage2"} : memref<4xi32> 
    %idx_buffer_pv_1 = aie.buffer(%tile_1_4) {sym_name = "idx_buffer_pv_1"} : memref<2xi32> = dense<0>
    %mha_rtpss_2_stage0 = aie.buffer(%tile_2_2) {sym_name = "mha_rtpss_2_stage0"} : memref<4xi32> 
    %idx_buffer_qk_2 = aie.buffer(%tile_2_2) {sym_name = "idx_buffer_qk_2"} : memref<2xi32> = dense<0>
    %mha_rtpss_2_stage1 = aie.buffer(%tile_2_3) {sym_name = "mha_rtpss_2_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_2 = aie.buffer(%tile_2_3) {sym_name = "idx_buffer_softmax_2"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_2 = aie.buffer(%tile_2_3) {sym_name = "scale_buffer_softmax_2"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_2_stage2 = aie.buffer(%tile_2_4) {sym_name = "mha_rtpss_2_stage2"} : memref<4xi32> 
    %idx_buffer_pv_2 = aie.buffer(%tile_2_4) {sym_name = "idx_buffer_pv_2"} : memref<2xi32> = dense<0>
    %mha_rtpss_3_stage0 = aie.buffer(%tile_3_2) {sym_name = "mha_rtpss_3_stage0"} : memref<4xi32> 
    %idx_buffer_qk_3 = aie.buffer(%tile_3_2) {sym_name = "idx_buffer_qk_3"} : memref<2xi32> = dense<0>
    %mha_rtpss_3_stage1 = aie.buffer(%tile_3_3) {sym_name = "mha_rtpss_3_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_3 = aie.buffer(%tile_3_3) {sym_name = "idx_buffer_softmax_3"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_3 = aie.buffer(%tile_3_3) {sym_name = "scale_buffer_softmax_3"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_3_stage2 = aie.buffer(%tile_3_4) {sym_name = "mha_rtpss_3_stage2"} : memref<4xi32> 
    %idx_buffer_pv_3 = aie.buffer(%tile_3_4) {sym_name = "idx_buffer_pv_3"} : memref<2xi32> = dense<0>
    %mha_rtpss_4_stage0 = aie.buffer(%tile_4_2) {sym_name = "mha_rtpss_4_stage0"} : memref<4xi32> 
    %idx_buffer_qk_4 = aie.buffer(%tile_4_2) {sym_name = "idx_buffer_qk_4"} : memref<2xi32> = dense<0>
    %mha_rtpss_4_stage1 = aie.buffer(%tile_4_3) {sym_name = "mha_rtpss_4_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_4 = aie.buffer(%tile_4_3) {sym_name = "idx_buffer_softmax_4"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_4 = aie.buffer(%tile_4_3) {sym_name = "scale_buffer_softmax_4"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_4_stage2 = aie.buffer(%tile_4_4) {sym_name = "mha_rtpss_4_stage2"} : memref<4xi32> 
    %idx_buffer_pv_4 = aie.buffer(%tile_4_4) {sym_name = "idx_buffer_pv_4"} : memref<2xi32> = dense<0>
    %mha_rtpss_5_stage0 = aie.buffer(%tile_5_2) {sym_name = "mha_rtpss_5_stage0"} : memref<4xi32> 
    %idx_buffer_qk_5 = aie.buffer(%tile_5_2) {sym_name = "idx_buffer_qk_5"} : memref<2xi32> = dense<0>
    %mha_rtpss_5_stage1 = aie.buffer(%tile_5_3) {sym_name = "mha_rtpss_5_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_5 = aie.buffer(%tile_5_3) {sym_name = "idx_buffer_softmax_5"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_5 = aie.buffer(%tile_5_3) {sym_name = "scale_buffer_softmax_5"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_5_stage2 = aie.buffer(%tile_5_4) {sym_name = "mha_rtpss_5_stage2"} : memref<4xi32> 
    %idx_buffer_pv_5 = aie.buffer(%tile_5_4) {sym_name = "idx_buffer_pv_5"} : memref<2xi32> = dense<0>
    %mha_rtpss_6_stage0 = aie.buffer(%tile_6_2) {sym_name = "mha_rtpss_6_stage0"} : memref<4xi32> 
    %idx_buffer_qk_6 = aie.buffer(%tile_6_2) {sym_name = "idx_buffer_qk_6"} : memref<2xi32> = dense<0>
    %mha_rtpss_6_stage1 = aie.buffer(%tile_6_3) {sym_name = "mha_rtpss_6_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_6 = aie.buffer(%tile_6_3) {sym_name = "idx_buffer_softmax_6"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_6 = aie.buffer(%tile_6_3) {sym_name = "scale_buffer_softmax_6"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_6_stage2 = aie.buffer(%tile_6_4) {sym_name = "mha_rtpss_6_stage2"} : memref<4xi32> 
    %idx_buffer_pv_6 = aie.buffer(%tile_6_4) {sym_name = "idx_buffer_pv_6"} : memref<2xi32> = dense<0>
    %mha_rtpss_7_stage0 = aie.buffer(%tile_7_2) {sym_name = "mha_rtpss_7_stage0"} : memref<4xi32> 
    %idx_buffer_qk_7 = aie.buffer(%tile_7_2) {sym_name = "idx_buffer_qk_7"} : memref<2xi32> = dense<0>
    %mha_rtpss_7_stage1 = aie.buffer(%tile_7_3) {sym_name = "mha_rtpss_7_stage1"} : memref<4xi32> 
    %idx_buffer_softmax_7 = aie.buffer(%tile_7_3) {sym_name = "idx_buffer_softmax_7"} : memref<2xi32> = dense<0>
    %scale_buffer_softmax_7 = aie.buffer(%tile_7_3) {sym_name = "scale_buffer_softmax_7"} : memref<256xbf16> = dense<0.000000e+00>
    %mha_rtpss_7_stage2 = aie.buffer(%tile_7_4) {sym_name = "mha_rtpss_7_stage2"} : memref<4xi32> 
    %idx_buffer_pv_7 = aie.buffer(%tile_7_4) {sym_name = "idx_buffer_pv_7"} : memref<2xi32> = dense<0>
    %lock_0_2 = aie.lock(%tile_0_2)
    %core_0_2 = aie.core(%tile_0_2) {
      aie.use_lock(%lock_0_2, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_0_stage0[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_0_stage0[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_qk_0[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c0_i32_4 = arith.constant 0 : i32
        memref.store %c0_i32_4, %idx_buffer_qk_0[%c1_3] : memref<2xi32>
        %c0_5 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_6 = arith.constant 1 : index
        scf.for %arg1 = %c0_5 to %2 step %c1_6 {
          %3 = aie.objectfifo.acquire @memQ0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %c0_7 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_8 = arith.constant 1 : index
          scf.for %arg2 = %c0_7 to %5 step %c1_8 {
            %8 = aie.objectfifo.acquire @memK(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @memA0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @zero_bf16(%11) : (memref<64x64xbf16>) -> ()
            func.call @matmul_bf16_bf16_wrapper(%4, %9, %11, %idx_buffer_qk_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
            aie.objectfifo.release @memK(Consume, 1)
            aie.objectfifo.release @memA0(Produce, 1)
            %c0_13 = arith.constant 0 : index
            %12 = memref.load %idx_buffer_qk_0[%c0_13] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %13 = arith.addi %12, %c1_i32 : i32
            %c0_14 = arith.constant 0 : index
            memref.store %13, %idx_buffer_qk_0[%c0_14] : memref<2xi32>
          }
          %c0_9 = arith.constant 0 : index
          %c0_i32_10 = arith.constant 0 : i32
          memref.store %c0_i32_10, %idx_buffer_qk_0[%c0_9] : memref<2xi32>
          %c1_11 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_qk_0[%c1_11] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_12 = arith.constant 1 : index
          memref.store %7, %idx_buffer_qk_0[%c1_12] : memref<2xi32>
          aie.objectfifo.release @memQ0(Consume, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_0_3 = aie.lock(%tile_0_3)
    %core_0_3 = aie.core(%tile_0_3) {
      aie.use_lock(%lock_0_3, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_0_stage1[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_0_stage1[%c1] : memref<4xi32>
      %c2 = arith.constant 2 : index
      %2 = memref.load %mha_rtpss_0_stage1[%c2] : memref<4xi32>
      %c3 = arith.constant 3 : index
      %3 = memref.load %mha_rtpss_0_stage1[%c3] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_softmax_0[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c0_i32_4 = arith.constant 0 : i32
        memref.store %c0_i32_4, %idx_buffer_softmax_0[%c1_3] : memref<2xi32>
        %c0_5 = arith.constant 0 : index
        %4 = arith.index_cast %0 : i32 to index
        %c1_6 = arith.constant 1 : index
        scf.for %arg1 = %c0_5 to %4 step %c1_6 {
          %c64_i32 = arith.constant 64 : i32
          func.call @init_scale_buffer(%scale_buffer_softmax_0, %c64_i32) : (memref<256xbf16>, i32) -> ()
          %c0_7 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_8 = arith.constant 1 : index
          scf.for %arg2 = %c0_7 to %5 step %c1_8 {
            %8 = aie.objectfifo.acquire @memP0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @outA0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %12 = aie.objectfifo.acquire @scaleOF0(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %cst = arith.constant 1.806640e-01 : bf16
            %c64_i32_13 = arith.constant 64 : i32
            %c64_i32_14 = arith.constant 64 : i32
            func.call @partial_softmax(%11, %9, %scale_buffer_softmax_0, %idx_buffer_softmax_0, %cst, %c64_i32_13, %c64_i32_14, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
            %c256_i32 = arith.constant 256 : i32
            func.call @passThroughLine(%scale_buffer_softmax_0, %13, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
            aie.objectfifo.release @outA0(Consume, 1)
            aie.objectfifo.release @memP0(Produce, 1)
            aie.objectfifo.release @scaleOF0(Produce, 1)
            %c0_15 = arith.constant 0 : index
            %14 = memref.load %idx_buffer_softmax_0[%c0_15] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32 : i32
            %c0_16 = arith.constant 0 : index
            memref.store %15, %idx_buffer_softmax_0[%c0_16] : memref<2xi32>
          }
          %c0_9 = arith.constant 0 : index
          %c0_i32_10 = arith.constant 0 : i32
          memref.store %c0_i32_10, %idx_buffer_softmax_0[%c0_9] : memref<2xi32>
          %c1_11 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_softmax_0[%c1_11] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_12 = arith.constant 1 : index
          memref.store %7, %idx_buffer_softmax_0[%c1_12] : memref<2xi32>
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_0_4 = aie.lock(%tile_0_4)
    %core_0_4 = aie.core(%tile_0_4) {
      aie.use_lock(%lock_0_4, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_0_stage2[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_0_stage2[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_pv_0[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c0_i32_4 = arith.constant 0 : i32
        memref.store %c0_i32_4, %idx_buffer_pv_0[%c1_3] : memref<2xi32>
        %c0_5 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_6 = arith.constant 1 : index
        scf.for %arg1 = %c0_5 to %2 step %c1_6 {
          %3 = aie.objectfifo.acquire @outO0(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%4) : (memref<64x64xbf16>) -> ()
          %5 = aie.objectfifo.acquire @outP0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %7 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %9 = aie.objectfifo.acquire @scaleOF0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c64_i32 = arith.constant 64 : i32
          %c0_i32_7 = arith.constant 0 : i32
          func.call @matmul_PV(%6, %8, %4, %10, %c64_i32, %c0_i32_7, %idx_buffer_pv_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
          aie.objectfifo.release @outP0(Consume, 1)
          aie.objectfifo.release @memV(Consume, 1)
          aie.objectfifo.release @scaleOF0(Consume, 1)
          %c0_8 = arith.constant 0 : index
          %11 = memref.load %idx_buffer_pv_0[%c0_8] : memref<2xi32>
          %c1_i32 = arith.constant 1 : i32
          %12 = arith.addi %11, %c1_i32 : i32
          %c0_9 = arith.constant 0 : index
          memref.store %12, %idx_buffer_pv_0[%c0_9] : memref<2xi32>
          %c2_i32 = arith.constant 2 : i32
          %13 = arith.cmpi sgt, %1, %c2_i32 : i32
          scf.if %13 {
            %c2_i32_15 = arith.constant 2 : i32
            %17 = arith.subi %1, %c2_i32_15 : i32
            %c0_16 = arith.constant 0 : index
            %18 = arith.index_cast %17 : i32 to index
            %c1_17 = arith.constant 1 : index
            scf.for %arg2 = %c0_16 to %18 step %c1_17 {
              %19 = aie.objectfifo.acquire @outP0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %21 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %23 = aie.objectfifo.acquire @scaleOF0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
              %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
              %c64_i32_18 = arith.constant 64 : i32
              %c1_i32_19 = arith.constant 1 : i32
              func.call @matmul_PV(%20, %22, %4, %24, %c64_i32_18, %c1_i32_19, %idx_buffer_pv_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
              aie.objectfifo.release @outP0(Consume, 1)
              aie.objectfifo.release @memV(Consume, 1)
              aie.objectfifo.release @scaleOF0(Consume, 1)
              %c0_20 = arith.constant 0 : index
              %25 = memref.load %idx_buffer_pv_0[%c0_20] : memref<2xi32>
              %c1_i32_21 = arith.constant 1 : i32
              %26 = arith.addi %25, %c1_i32_21 : i32
              %c0_22 = arith.constant 0 : index
              memref.store %26, %idx_buffer_pv_0[%c0_22] : memref<2xi32>
            }
          } else {
          }
          %c1_i32_10 = arith.constant 1 : i32
          %14 = arith.cmpi sgt, %1, %c1_i32_10 : i32
          scf.if %14 {
            %17 = aie.objectfifo.acquire @outP0(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %19 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %21 = aie.objectfifo.acquire @scaleOF0(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %c64_i32_15 = arith.constant 64 : i32
            %c1_i32_16 = arith.constant 1 : i32
            func.call @matmul_PV(%18, %20, %4, %22, %c64_i32_15, %c1_i32_16, %idx_buffer_pv_0) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
            %c64_i32_17 = arith.constant 64 : i32
            func.call @rescale_O(%4, %22, %c64_i32_17, %idx_buffer_pv_0) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            aie.objectfifo.release @outP0(Consume, 1)
            aie.objectfifo.release @memV(Consume, 1)
            aie.objectfifo.release @scaleOF0(Consume, 1)
            %c0_18 = arith.constant 0 : index
            %23 = memref.load %idx_buffer_pv_0[%c0_18] : memref<2xi32>
            %c1_i32_19 = arith.constant 1 : i32
            %24 = arith.addi %23, %c1_i32_19 : i32
            %c0_20 = arith.constant 0 : index
            memref.store %24, %idx_buffer_pv_0[%c0_20] : memref<2xi32>
          } else {
            %c64_i32_15 = arith.constant 64 : i32
            func.call @rescale_O(%4, %10, %c64_i32_15, %idx_buffer_pv_0) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            %c0_16 = arith.constant 0 : index
            %17 = memref.load %idx_buffer_pv_0[%c0_16] : memref<2xi32>
            %c1_i32_17 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_17 : i32
            %c0_18 = arith.constant 0 : index
            memref.store %18, %idx_buffer_pv_0[%c0_18] : memref<2xi32>
          }
          %c0_11 = arith.constant 0 : index
          %c0_i32_12 = arith.constant 0 : i32
          memref.store %c0_i32_12, %idx_buffer_pv_0[%c0_11] : memref<2xi32>
          %c1_13 = arith.constant 1 : index
          %15 = memref.load %idx_buffer_pv_0[%c1_13] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %16 = arith.addi %15, %c8_i32 : i32
          %c1_14 = arith.constant 1 : index
          memref.store %16, %idx_buffer_pv_0[%c1_14] : memref<2xi32>
          aie.objectfifo.release @outO0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_1_2 = aie.lock(%tile_1_2)
    %core_1_2 = aie.core(%tile_1_2) {
      aie.use_lock(%lock_1_2, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_1_stage0[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_1_stage0[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_qk_1[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c1_i32 = arith.constant 1 : i32
        memref.store %c1_i32, %idx_buffer_qk_1[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @memQ1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memK(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @memA1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @zero_bf16(%11) : (memref<64x64xbf16>) -> ()
            func.call @matmul_bf16_bf16_wrapper(%4, %9, %11, %idx_buffer_qk_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
            aie.objectfifo.release @memK(Consume, 1)
            aie.objectfifo.release @memA1(Produce, 1)
            %c0_12 = arith.constant 0 : index
            %12 = memref.load %idx_buffer_qk_1[%c0_12] : memref<2xi32>
            %c1_i32_13 = arith.constant 1 : i32
            %13 = arith.addi %12, %c1_i32_13 : i32
            %c0_14 = arith.constant 0 : index
            memref.store %13, %idx_buffer_qk_1[%c0_14] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_qk_1[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_qk_1[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_qk_1[%c1_11] : memref<2xi32>
          aie.objectfifo.release @memQ1(Consume, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_1_3 = aie.lock(%tile_1_3)
    %core_1_3 = aie.core(%tile_1_3) {
      aie.use_lock(%lock_1_3, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_1_stage1[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_1_stage1[%c1] : memref<4xi32>
      %c2 = arith.constant 2 : index
      %2 = memref.load %mha_rtpss_1_stage1[%c2] : memref<4xi32>
      %c3 = arith.constant 3 : index
      %3 = memref.load %mha_rtpss_1_stage1[%c3] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_softmax_1[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c1_i32 = arith.constant 1 : i32
        memref.store %c1_i32, %idx_buffer_softmax_1[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %4 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %4 step %c1_5 {
          %c64_i32 = arith.constant 64 : i32
          func.call @init_scale_buffer(%scale_buffer_softmax_1, %c64_i32) : (memref<256xbf16>, i32) -> ()
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memP1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @outA1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %12 = aie.objectfifo.acquire @scaleOF1(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %cst = arith.constant 1.806640e-01 : bf16
            %c64_i32_12 = arith.constant 64 : i32
            %c64_i32_13 = arith.constant 64 : i32
            func.call @partial_softmax(%11, %9, %scale_buffer_softmax_1, %idx_buffer_softmax_1, %cst, %c64_i32_12, %c64_i32_13, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
            %c256_i32 = arith.constant 256 : i32
            func.call @passThroughLine(%scale_buffer_softmax_1, %13, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
            aie.objectfifo.release @outA1(Consume, 1)
            aie.objectfifo.release @memP1(Produce, 1)
            aie.objectfifo.release @scaleOF1(Produce, 1)
            %c0_14 = arith.constant 0 : index
            %14 = memref.load %idx_buffer_softmax_1[%c0_14] : memref<2xi32>
            %c1_i32_15 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32_15 : i32
            %c0_16 = arith.constant 0 : index
            memref.store %15, %idx_buffer_softmax_1[%c0_16] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_softmax_1[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_softmax_1[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_softmax_1[%c1_11] : memref<2xi32>
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_1_4 = aie.lock(%tile_1_4)
    %core_1_4 = aie.core(%tile_1_4) {
      aie.use_lock(%lock_1_4, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_1_stage2[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_1_stage2[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_pv_1[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c1_i32 = arith.constant 1 : i32
        memref.store %c1_i32, %idx_buffer_pv_1[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @outO1(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%4) : (memref<64x64xbf16>) -> ()
          %5 = aie.objectfifo.acquire @outP1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %7 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %9 = aie.objectfifo.acquire @scaleOF1(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c64_i32 = arith.constant 64 : i32
          %c0_i32_6 = arith.constant 0 : i32
          func.call @matmul_PV(%6, %8, %4, %10, %c64_i32, %c0_i32_6, %idx_buffer_pv_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
          aie.objectfifo.release @outP1(Consume, 1)
          aie.objectfifo.release @memV(Consume, 1)
          aie.objectfifo.release @scaleOF1(Consume, 1)
          %c0_7 = arith.constant 0 : index
          %11 = memref.load %idx_buffer_pv_1[%c0_7] : memref<2xi32>
          %c1_i32_8 = arith.constant 1 : i32
          %12 = arith.addi %11, %c1_i32_8 : i32
          %c0_9 = arith.constant 0 : index
          memref.store %12, %idx_buffer_pv_1[%c0_9] : memref<2xi32>
          %c2_i32 = arith.constant 2 : i32
          %13 = arith.cmpi sgt, %1, %c2_i32 : i32
          scf.if %13 {
            %c2_i32_15 = arith.constant 2 : i32
            %17 = arith.subi %1, %c2_i32_15 : i32
            %c0_16 = arith.constant 0 : index
            %18 = arith.index_cast %17 : i32 to index
            %c1_17 = arith.constant 1 : index
            scf.for %arg2 = %c0_16 to %18 step %c1_17 {
              %19 = aie.objectfifo.acquire @outP1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %21 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %23 = aie.objectfifo.acquire @scaleOF1(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
              %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
              %c64_i32_18 = arith.constant 64 : i32
              %c1_i32_19 = arith.constant 1 : i32
              func.call @matmul_PV(%20, %22, %4, %24, %c64_i32_18, %c1_i32_19, %idx_buffer_pv_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
              aie.objectfifo.release @outP1(Consume, 1)
              aie.objectfifo.release @memV(Consume, 1)
              aie.objectfifo.release @scaleOF1(Consume, 1)
              %c0_20 = arith.constant 0 : index
              %25 = memref.load %idx_buffer_pv_1[%c0_20] : memref<2xi32>
              %c1_i32_21 = arith.constant 1 : i32
              %26 = arith.addi %25, %c1_i32_21 : i32
              %c0_22 = arith.constant 0 : index
              memref.store %26, %idx_buffer_pv_1[%c0_22] : memref<2xi32>
            }
          } else {
          }
          %c1_i32_10 = arith.constant 1 : i32
          %14 = arith.cmpi sgt, %1, %c1_i32_10 : i32
          scf.if %14 {
            %17 = aie.objectfifo.acquire @outP1(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %19 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %21 = aie.objectfifo.acquire @scaleOF1(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %c64_i32_15 = arith.constant 64 : i32
            %c1_i32_16 = arith.constant 1 : i32
            func.call @matmul_PV(%18, %20, %4, %22, %c64_i32_15, %c1_i32_16, %idx_buffer_pv_1) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
            %c64_i32_17 = arith.constant 64 : i32
            func.call @rescale_O(%4, %22, %c64_i32_17, %idx_buffer_pv_1) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            aie.objectfifo.release @outP1(Consume, 1)
            aie.objectfifo.release @memV(Consume, 1)
            aie.objectfifo.release @scaleOF1(Consume, 1)
            %c0_18 = arith.constant 0 : index
            %23 = memref.load %idx_buffer_pv_1[%c0_18] : memref<2xi32>
            %c1_i32_19 = arith.constant 1 : i32
            %24 = arith.addi %23, %c1_i32_19 : i32
            %c0_20 = arith.constant 0 : index
            memref.store %24, %idx_buffer_pv_1[%c0_20] : memref<2xi32>
          } else {
            %c64_i32_15 = arith.constant 64 : i32
            func.call @rescale_O(%4, %10, %c64_i32_15, %idx_buffer_pv_1) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            %c0_16 = arith.constant 0 : index
            %17 = memref.load %idx_buffer_pv_1[%c0_16] : memref<2xi32>
            %c1_i32_17 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_17 : i32
            %c0_18 = arith.constant 0 : index
            memref.store %18, %idx_buffer_pv_1[%c0_18] : memref<2xi32>
          }
          %c0_11 = arith.constant 0 : index
          %c0_i32_12 = arith.constant 0 : i32
          memref.store %c0_i32_12, %idx_buffer_pv_1[%c0_11] : memref<2xi32>
          %c1_13 = arith.constant 1 : index
          %15 = memref.load %idx_buffer_pv_1[%c1_13] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %16 = arith.addi %15, %c8_i32 : i32
          %c1_14 = arith.constant 1 : index
          memref.store %16, %idx_buffer_pv_1[%c1_14] : memref<2xi32>
          aie.objectfifo.release @outO1(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_2_2 = aie.lock(%tile_2_2)
    %core_2_2 = aie.core(%tile_2_2) {
      aie.use_lock(%lock_2_2, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_2_stage0[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_2_stage0[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_qk_2[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c2_i32 = arith.constant 2 : i32
        memref.store %c2_i32, %idx_buffer_qk_2[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @memQ2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memK(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @memA2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @zero_bf16(%11) : (memref<64x64xbf16>) -> ()
            func.call @matmul_bf16_bf16_wrapper(%4, %9, %11, %idx_buffer_qk_2) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
            aie.objectfifo.release @memK(Consume, 1)
            aie.objectfifo.release @memA2(Produce, 1)
            %c0_12 = arith.constant 0 : index
            %12 = memref.load %idx_buffer_qk_2[%c0_12] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %13 = arith.addi %12, %c1_i32 : i32
            %c0_13 = arith.constant 0 : index
            memref.store %13, %idx_buffer_qk_2[%c0_13] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_qk_2[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_qk_2[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_qk_2[%c1_11] : memref<2xi32>
          aie.objectfifo.release @memQ2(Consume, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_2_3 = aie.lock(%tile_2_3)
    %core_2_3 = aie.core(%tile_2_3) {
      aie.use_lock(%lock_2_3, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_2_stage1[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_2_stage1[%c1] : memref<4xi32>
      %c2 = arith.constant 2 : index
      %2 = memref.load %mha_rtpss_2_stage1[%c2] : memref<4xi32>
      %c3 = arith.constant 3 : index
      %3 = memref.load %mha_rtpss_2_stage1[%c3] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_softmax_2[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c2_i32 = arith.constant 2 : i32
        memref.store %c2_i32, %idx_buffer_softmax_2[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %4 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %4 step %c1_5 {
          %c64_i32 = arith.constant 64 : i32
          func.call @init_scale_buffer(%scale_buffer_softmax_2, %c64_i32) : (memref<256xbf16>, i32) -> ()
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memP2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @outA2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %12 = aie.objectfifo.acquire @scaleOF2(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %cst = arith.constant 1.806640e-01 : bf16
            %c64_i32_12 = arith.constant 64 : i32
            %c64_i32_13 = arith.constant 64 : i32
            func.call @partial_softmax(%11, %9, %scale_buffer_softmax_2, %idx_buffer_softmax_2, %cst, %c64_i32_12, %c64_i32_13, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
            %c256_i32 = arith.constant 256 : i32
            func.call @passThroughLine(%scale_buffer_softmax_2, %13, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
            aie.objectfifo.release @outA2(Consume, 1)
            aie.objectfifo.release @memP2(Produce, 1)
            aie.objectfifo.release @scaleOF2(Produce, 1)
            %c0_14 = arith.constant 0 : index
            %14 = memref.load %idx_buffer_softmax_2[%c0_14] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32 : i32
            %c0_15 = arith.constant 0 : index
            memref.store %15, %idx_buffer_softmax_2[%c0_15] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_softmax_2[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_softmax_2[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_softmax_2[%c1_11] : memref<2xi32>
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_2_4 = aie.lock(%tile_2_4)
    %core_2_4 = aie.core(%tile_2_4) {
      aie.use_lock(%lock_2_4, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_2_stage2[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_2_stage2[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_pv_2[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c2_i32 = arith.constant 2 : i32
        memref.store %c2_i32, %idx_buffer_pv_2[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @outO2(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%4) : (memref<64x64xbf16>) -> ()
          %5 = aie.objectfifo.acquire @outP2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %7 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %9 = aie.objectfifo.acquire @scaleOF2(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c64_i32 = arith.constant 64 : i32
          %c0_i32_6 = arith.constant 0 : i32
          func.call @matmul_PV(%6, %8, %4, %10, %c64_i32, %c0_i32_6, %idx_buffer_pv_2) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
          aie.objectfifo.release @outP2(Consume, 1)
          aie.objectfifo.release @memV(Consume, 1)
          aie.objectfifo.release @scaleOF2(Consume, 1)
          %c0_7 = arith.constant 0 : index
          %11 = memref.load %idx_buffer_pv_2[%c0_7] : memref<2xi32>
          %c1_i32 = arith.constant 1 : i32
          %12 = arith.addi %11, %c1_i32 : i32
          %c0_8 = arith.constant 0 : index
          memref.store %12, %idx_buffer_pv_2[%c0_8] : memref<2xi32>
          %c2_i32_9 = arith.constant 2 : i32
          %13 = arith.cmpi sgt, %1, %c2_i32_9 : i32
          scf.if %13 {
            %c2_i32_15 = arith.constant 2 : i32
            %17 = arith.subi %1, %c2_i32_15 : i32
            %c0_16 = arith.constant 0 : index
            %18 = arith.index_cast %17 : i32 to index
            %c1_17 = arith.constant 1 : index
            scf.for %arg2 = %c0_16 to %18 step %c1_17 {
              %19 = aie.objectfifo.acquire @outP2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %21 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %23 = aie.objectfifo.acquire @scaleOF2(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
              %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
              %c64_i32_18 = arith.constant 64 : i32
              %c1_i32_19 = arith.constant 1 : i32
              func.call @matmul_PV(%20, %22, %4, %24, %c64_i32_18, %c1_i32_19, %idx_buffer_pv_2) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
              aie.objectfifo.release @outP2(Consume, 1)
              aie.objectfifo.release @memV(Consume, 1)
              aie.objectfifo.release @scaleOF2(Consume, 1)
              %c0_20 = arith.constant 0 : index
              %25 = memref.load %idx_buffer_pv_2[%c0_20] : memref<2xi32>
              %c1_i32_21 = arith.constant 1 : i32
              %26 = arith.addi %25, %c1_i32_21 : i32
              %c0_22 = arith.constant 0 : index
              memref.store %26, %idx_buffer_pv_2[%c0_22] : memref<2xi32>
            }
          } else {
          }
          %c1_i32_10 = arith.constant 1 : i32
          %14 = arith.cmpi sgt, %1, %c1_i32_10 : i32
          scf.if %14 {
            %17 = aie.objectfifo.acquire @outP2(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %19 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %21 = aie.objectfifo.acquire @scaleOF2(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %c64_i32_15 = arith.constant 64 : i32
            %c1_i32_16 = arith.constant 1 : i32
            func.call @matmul_PV(%18, %20, %4, %22, %c64_i32_15, %c1_i32_16, %idx_buffer_pv_2) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
            %c64_i32_17 = arith.constant 64 : i32
            func.call @rescale_O(%4, %22, %c64_i32_17, %idx_buffer_pv_2) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            aie.objectfifo.release @outP2(Consume, 1)
            aie.objectfifo.release @memV(Consume, 1)
            aie.objectfifo.release @scaleOF2(Consume, 1)
            %c0_18 = arith.constant 0 : index
            %23 = memref.load %idx_buffer_pv_2[%c0_18] : memref<2xi32>
            %c1_i32_19 = arith.constant 1 : i32
            %24 = arith.addi %23, %c1_i32_19 : i32
            %c0_20 = arith.constant 0 : index
            memref.store %24, %idx_buffer_pv_2[%c0_20] : memref<2xi32>
          } else {
            %c64_i32_15 = arith.constant 64 : i32
            func.call @rescale_O(%4, %10, %c64_i32_15, %idx_buffer_pv_2) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            %c0_16 = arith.constant 0 : index
            %17 = memref.load %idx_buffer_pv_2[%c0_16] : memref<2xi32>
            %c1_i32_17 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_17 : i32
            %c0_18 = arith.constant 0 : index
            memref.store %18, %idx_buffer_pv_2[%c0_18] : memref<2xi32>
          }
          %c0_11 = arith.constant 0 : index
          %c0_i32_12 = arith.constant 0 : i32
          memref.store %c0_i32_12, %idx_buffer_pv_2[%c0_11] : memref<2xi32>
          %c1_13 = arith.constant 1 : index
          %15 = memref.load %idx_buffer_pv_2[%c1_13] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %16 = arith.addi %15, %c8_i32 : i32
          %c1_14 = arith.constant 1 : index
          memref.store %16, %idx_buffer_pv_2[%c1_14] : memref<2xi32>
          aie.objectfifo.release @outO2(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_3_2 = aie.lock(%tile_3_2)
    %core_3_2 = aie.core(%tile_3_2) {
      aie.use_lock(%lock_3_2, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_3_stage0[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_3_stage0[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_qk_3[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c3_i32 = arith.constant 3 : i32
        memref.store %c3_i32, %idx_buffer_qk_3[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @memQ3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memK(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @memA3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @zero_bf16(%11) : (memref<64x64xbf16>) -> ()
            func.call @matmul_bf16_bf16_wrapper(%4, %9, %11, %idx_buffer_qk_3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
            aie.objectfifo.release @memK(Consume, 1)
            aie.objectfifo.release @memA3(Produce, 1)
            %c0_12 = arith.constant 0 : index
            %12 = memref.load %idx_buffer_qk_3[%c0_12] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %13 = arith.addi %12, %c1_i32 : i32
            %c0_13 = arith.constant 0 : index
            memref.store %13, %idx_buffer_qk_3[%c0_13] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_qk_3[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_qk_3[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_qk_3[%c1_11] : memref<2xi32>
          aie.objectfifo.release @memQ3(Consume, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_3_3 = aie.lock(%tile_3_3)
    %core_3_3 = aie.core(%tile_3_3) {
      aie.use_lock(%lock_3_3, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_3_stage1[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_3_stage1[%c1] : memref<4xi32>
      %c2 = arith.constant 2 : index
      %2 = memref.load %mha_rtpss_3_stage1[%c2] : memref<4xi32>
      %c3 = arith.constant 3 : index
      %3 = memref.load %mha_rtpss_3_stage1[%c3] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_softmax_3[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c3_i32 = arith.constant 3 : i32
        memref.store %c3_i32, %idx_buffer_softmax_3[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %4 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %4 step %c1_5 {
          %c64_i32 = arith.constant 64 : i32
          func.call @init_scale_buffer(%scale_buffer_softmax_3, %c64_i32) : (memref<256xbf16>, i32) -> ()
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memP3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @outA3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %12 = aie.objectfifo.acquire @scaleOF3(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %cst = arith.constant 1.806640e-01 : bf16
            %c64_i32_12 = arith.constant 64 : i32
            %c64_i32_13 = arith.constant 64 : i32
            func.call @partial_softmax(%11, %9, %scale_buffer_softmax_3, %idx_buffer_softmax_3, %cst, %c64_i32_12, %c64_i32_13, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
            %c256_i32 = arith.constant 256 : i32
            func.call @passThroughLine(%scale_buffer_softmax_3, %13, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
            aie.objectfifo.release @outA3(Consume, 1)
            aie.objectfifo.release @memP3(Produce, 1)
            aie.objectfifo.release @scaleOF3(Produce, 1)
            %c0_14 = arith.constant 0 : index
            %14 = memref.load %idx_buffer_softmax_3[%c0_14] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32 : i32
            %c0_15 = arith.constant 0 : index
            memref.store %15, %idx_buffer_softmax_3[%c0_15] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_softmax_3[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_softmax_3[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_softmax_3[%c1_11] : memref<2xi32>
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_3_4 = aie.lock(%tile_3_4)
    %core_3_4 = aie.core(%tile_3_4) {
      aie.use_lock(%lock_3_4, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_3_stage2[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_3_stage2[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_pv_3[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c3_i32 = arith.constant 3 : i32
        memref.store %c3_i32, %idx_buffer_pv_3[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @outO3(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%4) : (memref<64x64xbf16>) -> ()
          %5 = aie.objectfifo.acquire @outP3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %7 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %9 = aie.objectfifo.acquire @scaleOF3(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c64_i32 = arith.constant 64 : i32
          %c0_i32_6 = arith.constant 0 : i32
          func.call @matmul_PV(%6, %8, %4, %10, %c64_i32, %c0_i32_6, %idx_buffer_pv_3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
          aie.objectfifo.release @outP3(Consume, 1)
          aie.objectfifo.release @memV(Consume, 1)
          aie.objectfifo.release @scaleOF3(Consume, 1)
          %c0_7 = arith.constant 0 : index
          %11 = memref.load %idx_buffer_pv_3[%c0_7] : memref<2xi32>
          %c1_i32 = arith.constant 1 : i32
          %12 = arith.addi %11, %c1_i32 : i32
          %c0_8 = arith.constant 0 : index
          memref.store %12, %idx_buffer_pv_3[%c0_8] : memref<2xi32>
          %c2_i32 = arith.constant 2 : i32
          %13 = arith.cmpi sgt, %1, %c2_i32 : i32
          scf.if %13 {
            %c2_i32_14 = arith.constant 2 : i32
            %17 = arith.subi %1, %c2_i32_14 : i32
            %c0_15 = arith.constant 0 : index
            %18 = arith.index_cast %17 : i32 to index
            %c1_16 = arith.constant 1 : index
            scf.for %arg2 = %c0_15 to %18 step %c1_16 {
              %19 = aie.objectfifo.acquire @outP3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %21 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %23 = aie.objectfifo.acquire @scaleOF3(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
              %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
              %c64_i32_17 = arith.constant 64 : i32
              %c1_i32_18 = arith.constant 1 : i32
              func.call @matmul_PV(%20, %22, %4, %24, %c64_i32_17, %c1_i32_18, %idx_buffer_pv_3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
              aie.objectfifo.release @outP3(Consume, 1)
              aie.objectfifo.release @memV(Consume, 1)
              aie.objectfifo.release @scaleOF3(Consume, 1)
              %c0_19 = arith.constant 0 : index
              %25 = memref.load %idx_buffer_pv_3[%c0_19] : memref<2xi32>
              %c1_i32_20 = arith.constant 1 : i32
              %26 = arith.addi %25, %c1_i32_20 : i32
              %c0_21 = arith.constant 0 : index
              memref.store %26, %idx_buffer_pv_3[%c0_21] : memref<2xi32>
            }
          } else {
          }
          %c1_i32_9 = arith.constant 1 : i32
          %14 = arith.cmpi sgt, %1, %c1_i32_9 : i32
          scf.if %14 {
            %17 = aie.objectfifo.acquire @outP3(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %19 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %21 = aie.objectfifo.acquire @scaleOF3(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %c64_i32_14 = arith.constant 64 : i32
            %c1_i32_15 = arith.constant 1 : i32
            func.call @matmul_PV(%18, %20, %4, %22, %c64_i32_14, %c1_i32_15, %idx_buffer_pv_3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
            %c64_i32_16 = arith.constant 64 : i32
            func.call @rescale_O(%4, %22, %c64_i32_16, %idx_buffer_pv_3) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            aie.objectfifo.release @outP3(Consume, 1)
            aie.objectfifo.release @memV(Consume, 1)
            aie.objectfifo.release @scaleOF3(Consume, 1)
            %c0_17 = arith.constant 0 : index
            %23 = memref.load %idx_buffer_pv_3[%c0_17] : memref<2xi32>
            %c1_i32_18 = arith.constant 1 : i32
            %24 = arith.addi %23, %c1_i32_18 : i32
            %c0_19 = arith.constant 0 : index
            memref.store %24, %idx_buffer_pv_3[%c0_19] : memref<2xi32>
          } else {
            %c64_i32_14 = arith.constant 64 : i32
            func.call @rescale_O(%4, %10, %c64_i32_14, %idx_buffer_pv_3) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            %c0_15 = arith.constant 0 : index
            %17 = memref.load %idx_buffer_pv_3[%c0_15] : memref<2xi32>
            %c1_i32_16 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_16 : i32
            %c0_17 = arith.constant 0 : index
            memref.store %18, %idx_buffer_pv_3[%c0_17] : memref<2xi32>
          }
          %c0_10 = arith.constant 0 : index
          %c0_i32_11 = arith.constant 0 : i32
          memref.store %c0_i32_11, %idx_buffer_pv_3[%c0_10] : memref<2xi32>
          %c1_12 = arith.constant 1 : index
          %15 = memref.load %idx_buffer_pv_3[%c1_12] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %16 = arith.addi %15, %c8_i32 : i32
          %c1_13 = arith.constant 1 : index
          memref.store %16, %idx_buffer_pv_3[%c1_13] : memref<2xi32>
          aie.objectfifo.release @outO3(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_4_2 = aie.lock(%tile_4_2)
    %core_4_2 = aie.core(%tile_4_2) {
      aie.use_lock(%lock_4_2, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_4_stage0[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_4_stage0[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_qk_4[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c4_i32 = arith.constant 4 : i32
        memref.store %c4_i32, %idx_buffer_qk_4[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @memQ20(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memK(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @memA4(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @zero_bf16(%11) : (memref<64x64xbf16>) -> ()
            func.call @matmul_bf16_bf16_wrapper(%4, %9, %11, %idx_buffer_qk_4) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
            aie.objectfifo.release @memK(Consume, 1)
            aie.objectfifo.release @memA4(Produce, 1)
            %c0_12 = arith.constant 0 : index
            %12 = memref.load %idx_buffer_qk_4[%c0_12] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %13 = arith.addi %12, %c1_i32 : i32
            %c0_13 = arith.constant 0 : index
            memref.store %13, %idx_buffer_qk_4[%c0_13] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_qk_4[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_qk_4[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_qk_4[%c1_11] : memref<2xi32>
          aie.objectfifo.release @memQ20(Consume, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_4_3 = aie.lock(%tile_4_3)
    %core_4_3 = aie.core(%tile_4_3) {
      aie.use_lock(%lock_4_3, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_4_stage1[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_4_stage1[%c1] : memref<4xi32>
      %c2 = arith.constant 2 : index
      %2 = memref.load %mha_rtpss_4_stage1[%c2] : memref<4xi32>
      %c3 = arith.constant 3 : index
      %3 = memref.load %mha_rtpss_4_stage1[%c3] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_softmax_4[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c4_i32 = arith.constant 4 : i32
        memref.store %c4_i32, %idx_buffer_softmax_4[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %4 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %4 step %c1_5 {
          %c64_i32 = arith.constant 64 : i32
          func.call @init_scale_buffer(%scale_buffer_softmax_4, %c64_i32) : (memref<256xbf16>, i32) -> ()
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memP4(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @outA4(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %12 = aie.objectfifo.acquire @scaleOF4(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %cst = arith.constant 1.806640e-01 : bf16
            %c64_i32_12 = arith.constant 64 : i32
            %c64_i32_13 = arith.constant 64 : i32
            func.call @partial_softmax(%11, %9, %scale_buffer_softmax_4, %idx_buffer_softmax_4, %cst, %c64_i32_12, %c64_i32_13, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
            %c256_i32 = arith.constant 256 : i32
            func.call @passThroughLine(%scale_buffer_softmax_4, %13, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
            aie.objectfifo.release @outA4(Consume, 1)
            aie.objectfifo.release @memP4(Produce, 1)
            aie.objectfifo.release @scaleOF4(Produce, 1)
            %c0_14 = arith.constant 0 : index
            %14 = memref.load %idx_buffer_softmax_4[%c0_14] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32 : i32
            %c0_15 = arith.constant 0 : index
            memref.store %15, %idx_buffer_softmax_4[%c0_15] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_softmax_4[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_softmax_4[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_softmax_4[%c1_11] : memref<2xi32>
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_4_4 = aie.lock(%tile_4_4)
    %core_4_4 = aie.core(%tile_4_4) {
      aie.use_lock(%lock_4_4, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_4_stage2[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_4_stage2[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_pv_4[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c4_i32 = arith.constant 4 : i32
        memref.store %c4_i32, %idx_buffer_pv_4[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @outO20(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%4) : (memref<64x64xbf16>) -> ()
          %5 = aie.objectfifo.acquire @outP4(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %7 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %9 = aie.objectfifo.acquire @scaleOF4(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c64_i32 = arith.constant 64 : i32
          %c0_i32_6 = arith.constant 0 : i32
          func.call @matmul_PV(%6, %8, %4, %10, %c64_i32, %c0_i32_6, %idx_buffer_pv_4) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
          aie.objectfifo.release @outP4(Consume, 1)
          aie.objectfifo.release @memV(Consume, 1)
          aie.objectfifo.release @scaleOF4(Consume, 1)
          %c0_7 = arith.constant 0 : index
          %11 = memref.load %idx_buffer_pv_4[%c0_7] : memref<2xi32>
          %c1_i32 = arith.constant 1 : i32
          %12 = arith.addi %11, %c1_i32 : i32
          %c0_8 = arith.constant 0 : index
          memref.store %12, %idx_buffer_pv_4[%c0_8] : memref<2xi32>
          %c2_i32 = arith.constant 2 : i32
          %13 = arith.cmpi sgt, %1, %c2_i32 : i32
          scf.if %13 {
            %c2_i32_14 = arith.constant 2 : i32
            %17 = arith.subi %1, %c2_i32_14 : i32
            %c0_15 = arith.constant 0 : index
            %18 = arith.index_cast %17 : i32 to index
            %c1_16 = arith.constant 1 : index
            scf.for %arg2 = %c0_15 to %18 step %c1_16 {
              %19 = aie.objectfifo.acquire @outP4(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %21 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %23 = aie.objectfifo.acquire @scaleOF4(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
              %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
              %c64_i32_17 = arith.constant 64 : i32
              %c1_i32_18 = arith.constant 1 : i32
              func.call @matmul_PV(%20, %22, %4, %24, %c64_i32_17, %c1_i32_18, %idx_buffer_pv_4) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
              aie.objectfifo.release @outP4(Consume, 1)
              aie.objectfifo.release @memV(Consume, 1)
              aie.objectfifo.release @scaleOF4(Consume, 1)
              %c0_19 = arith.constant 0 : index
              %25 = memref.load %idx_buffer_pv_4[%c0_19] : memref<2xi32>
              %c1_i32_20 = arith.constant 1 : i32
              %26 = arith.addi %25, %c1_i32_20 : i32
              %c0_21 = arith.constant 0 : index
              memref.store %26, %idx_buffer_pv_4[%c0_21] : memref<2xi32>
            }
          } else {
          }
          %c1_i32_9 = arith.constant 1 : i32
          %14 = arith.cmpi sgt, %1, %c1_i32_9 : i32
          scf.if %14 {
            %17 = aie.objectfifo.acquire @outP4(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %19 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %21 = aie.objectfifo.acquire @scaleOF4(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %c64_i32_14 = arith.constant 64 : i32
            %c1_i32_15 = arith.constant 1 : i32
            func.call @matmul_PV(%18, %20, %4, %22, %c64_i32_14, %c1_i32_15, %idx_buffer_pv_4) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
            %c64_i32_16 = arith.constant 64 : i32
            func.call @rescale_O(%4, %22, %c64_i32_16, %idx_buffer_pv_4) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            aie.objectfifo.release @outP4(Consume, 1)
            aie.objectfifo.release @memV(Consume, 1)
            aie.objectfifo.release @scaleOF4(Consume, 1)
            %c0_17 = arith.constant 0 : index
            %23 = memref.load %idx_buffer_pv_4[%c0_17] : memref<2xi32>
            %c1_i32_18 = arith.constant 1 : i32
            %24 = arith.addi %23, %c1_i32_18 : i32
            %c0_19 = arith.constant 0 : index
            memref.store %24, %idx_buffer_pv_4[%c0_19] : memref<2xi32>
          } else {
            %c64_i32_14 = arith.constant 64 : i32
            func.call @rescale_O(%4, %10, %c64_i32_14, %idx_buffer_pv_4) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            %c0_15 = arith.constant 0 : index
            %17 = memref.load %idx_buffer_pv_4[%c0_15] : memref<2xi32>
            %c1_i32_16 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_16 : i32
            %c0_17 = arith.constant 0 : index
            memref.store %18, %idx_buffer_pv_4[%c0_17] : memref<2xi32>
          }
          %c0_10 = arith.constant 0 : index
          %c0_i32_11 = arith.constant 0 : i32
          memref.store %c0_i32_11, %idx_buffer_pv_4[%c0_10] : memref<2xi32>
          %c1_12 = arith.constant 1 : index
          %15 = memref.load %idx_buffer_pv_4[%c1_12] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %16 = arith.addi %15, %c8_i32 : i32
          %c1_13 = arith.constant 1 : index
          memref.store %16, %idx_buffer_pv_4[%c1_13] : memref<2xi32>
          aie.objectfifo.release @outO20(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_5_2 = aie.lock(%tile_5_2)
    %core_5_2 = aie.core(%tile_5_2) {
      aie.use_lock(%lock_5_2, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_5_stage0[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_5_stage0[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_qk_5[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c5_i32 = arith.constant 5 : i32
        memref.store %c5_i32, %idx_buffer_qk_5[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @memQ21(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memK(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @memA5(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @zero_bf16(%11) : (memref<64x64xbf16>) -> ()
            func.call @matmul_bf16_bf16_wrapper(%4, %9, %11, %idx_buffer_qk_5) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
            aie.objectfifo.release @memK(Consume, 1)
            aie.objectfifo.release @memA5(Produce, 1)
            %c0_12 = arith.constant 0 : index
            %12 = memref.load %idx_buffer_qk_5[%c0_12] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %13 = arith.addi %12, %c1_i32 : i32
            %c0_13 = arith.constant 0 : index
            memref.store %13, %idx_buffer_qk_5[%c0_13] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_qk_5[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_qk_5[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_qk_5[%c1_11] : memref<2xi32>
          aie.objectfifo.release @memQ21(Consume, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_5_3 = aie.lock(%tile_5_3)
    %core_5_3 = aie.core(%tile_5_3) {
      aie.use_lock(%lock_5_3, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_5_stage1[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_5_stage1[%c1] : memref<4xi32>
      %c2 = arith.constant 2 : index
      %2 = memref.load %mha_rtpss_5_stage1[%c2] : memref<4xi32>
      %c3 = arith.constant 3 : index
      %3 = memref.load %mha_rtpss_5_stage1[%c3] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_softmax_5[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c5_i32 = arith.constant 5 : i32
        memref.store %c5_i32, %idx_buffer_softmax_5[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %4 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %4 step %c1_5 {
          %c64_i32 = arith.constant 64 : i32
          func.call @init_scale_buffer(%scale_buffer_softmax_5, %c64_i32) : (memref<256xbf16>, i32) -> ()
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memP5(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @outA5(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %12 = aie.objectfifo.acquire @scaleOF5(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %cst = arith.constant 1.806640e-01 : bf16
            %c64_i32_12 = arith.constant 64 : i32
            %c64_i32_13 = arith.constant 64 : i32
            func.call @partial_softmax(%11, %9, %scale_buffer_softmax_5, %idx_buffer_softmax_5, %cst, %c64_i32_12, %c64_i32_13, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
            %c256_i32 = arith.constant 256 : i32
            func.call @passThroughLine(%scale_buffer_softmax_5, %13, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
            aie.objectfifo.release @outA5(Consume, 1)
            aie.objectfifo.release @memP5(Produce, 1)
            aie.objectfifo.release @scaleOF5(Produce, 1)
            %c0_14 = arith.constant 0 : index
            %14 = memref.load %idx_buffer_softmax_5[%c0_14] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32 : i32
            %c0_15 = arith.constant 0 : index
            memref.store %15, %idx_buffer_softmax_5[%c0_15] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_softmax_5[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_softmax_5[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_softmax_5[%c1_11] : memref<2xi32>
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_5_4 = aie.lock(%tile_5_4)
    %core_5_4 = aie.core(%tile_5_4) {
      aie.use_lock(%lock_5_4, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_5_stage2[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_5_stage2[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_pv_5[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c5_i32 = arith.constant 5 : i32
        memref.store %c5_i32, %idx_buffer_pv_5[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @outO21(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%4) : (memref<64x64xbf16>) -> ()
          %5 = aie.objectfifo.acquire @outP5(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %7 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %9 = aie.objectfifo.acquire @scaleOF5(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c64_i32 = arith.constant 64 : i32
          %c0_i32_6 = arith.constant 0 : i32
          func.call @matmul_PV(%6, %8, %4, %10, %c64_i32, %c0_i32_6, %idx_buffer_pv_5) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
          aie.objectfifo.release @outP5(Consume, 1)
          aie.objectfifo.release @memV(Consume, 1)
          aie.objectfifo.release @scaleOF5(Consume, 1)
          %c0_7 = arith.constant 0 : index
          %11 = memref.load %idx_buffer_pv_5[%c0_7] : memref<2xi32>
          %c1_i32 = arith.constant 1 : i32
          %12 = arith.addi %11, %c1_i32 : i32
          %c0_8 = arith.constant 0 : index
          memref.store %12, %idx_buffer_pv_5[%c0_8] : memref<2xi32>
          %c2_i32 = arith.constant 2 : i32
          %13 = arith.cmpi sgt, %1, %c2_i32 : i32
          scf.if %13 {
            %c2_i32_14 = arith.constant 2 : i32
            %17 = arith.subi %1, %c2_i32_14 : i32
            %c0_15 = arith.constant 0 : index
            %18 = arith.index_cast %17 : i32 to index
            %c1_16 = arith.constant 1 : index
            scf.for %arg2 = %c0_15 to %18 step %c1_16 {
              %19 = aie.objectfifo.acquire @outP5(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %21 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %23 = aie.objectfifo.acquire @scaleOF5(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
              %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
              %c64_i32_17 = arith.constant 64 : i32
              %c1_i32_18 = arith.constant 1 : i32
              func.call @matmul_PV(%20, %22, %4, %24, %c64_i32_17, %c1_i32_18, %idx_buffer_pv_5) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
              aie.objectfifo.release @outP5(Consume, 1)
              aie.objectfifo.release @memV(Consume, 1)
              aie.objectfifo.release @scaleOF5(Consume, 1)
              %c0_19 = arith.constant 0 : index
              %25 = memref.load %idx_buffer_pv_5[%c0_19] : memref<2xi32>
              %c1_i32_20 = arith.constant 1 : i32
              %26 = arith.addi %25, %c1_i32_20 : i32
              %c0_21 = arith.constant 0 : index
              memref.store %26, %idx_buffer_pv_5[%c0_21] : memref<2xi32>
            }
          } else {
          }
          %c1_i32_9 = arith.constant 1 : i32
          %14 = arith.cmpi sgt, %1, %c1_i32_9 : i32
          scf.if %14 {
            %17 = aie.objectfifo.acquire @outP5(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %19 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %21 = aie.objectfifo.acquire @scaleOF5(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %c64_i32_14 = arith.constant 64 : i32
            %c1_i32_15 = arith.constant 1 : i32
            func.call @matmul_PV(%18, %20, %4, %22, %c64_i32_14, %c1_i32_15, %idx_buffer_pv_5) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
            %c64_i32_16 = arith.constant 64 : i32
            func.call @rescale_O(%4, %22, %c64_i32_16, %idx_buffer_pv_5) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            aie.objectfifo.release @outP5(Consume, 1)
            aie.objectfifo.release @memV(Consume, 1)
            aie.objectfifo.release @scaleOF5(Consume, 1)
            %c0_17 = arith.constant 0 : index
            %23 = memref.load %idx_buffer_pv_5[%c0_17] : memref<2xi32>
            %c1_i32_18 = arith.constant 1 : i32
            %24 = arith.addi %23, %c1_i32_18 : i32
            %c0_19 = arith.constant 0 : index
            memref.store %24, %idx_buffer_pv_5[%c0_19] : memref<2xi32>
          } else {
            %c64_i32_14 = arith.constant 64 : i32
            func.call @rescale_O(%4, %10, %c64_i32_14, %idx_buffer_pv_5) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            %c0_15 = arith.constant 0 : index
            %17 = memref.load %idx_buffer_pv_5[%c0_15] : memref<2xi32>
            %c1_i32_16 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_16 : i32
            %c0_17 = arith.constant 0 : index
            memref.store %18, %idx_buffer_pv_5[%c0_17] : memref<2xi32>
          }
          %c0_10 = arith.constant 0 : index
          %c0_i32_11 = arith.constant 0 : i32
          memref.store %c0_i32_11, %idx_buffer_pv_5[%c0_10] : memref<2xi32>
          %c1_12 = arith.constant 1 : index
          %15 = memref.load %idx_buffer_pv_5[%c1_12] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %16 = arith.addi %15, %c8_i32 : i32
          %c1_13 = arith.constant 1 : index
          memref.store %16, %idx_buffer_pv_5[%c1_13] : memref<2xi32>
          aie.objectfifo.release @outO21(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_6_2 = aie.lock(%tile_6_2)
    %core_6_2 = aie.core(%tile_6_2) {
      aie.use_lock(%lock_6_2, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_6_stage0[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_6_stage0[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_qk_6[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c6_i32 = arith.constant 6 : i32
        memref.store %c6_i32, %idx_buffer_qk_6[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @memQ22(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memK(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @memA6(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @zero_bf16(%11) : (memref<64x64xbf16>) -> ()
            func.call @matmul_bf16_bf16_wrapper(%4, %9, %11, %idx_buffer_qk_6) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
            aie.objectfifo.release @memK(Consume, 1)
            aie.objectfifo.release @memA6(Produce, 1)
            %c0_12 = arith.constant 0 : index
            %12 = memref.load %idx_buffer_qk_6[%c0_12] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %13 = arith.addi %12, %c1_i32 : i32
            %c0_13 = arith.constant 0 : index
            memref.store %13, %idx_buffer_qk_6[%c0_13] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_qk_6[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_qk_6[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_qk_6[%c1_11] : memref<2xi32>
          aie.objectfifo.release @memQ22(Consume, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_6_3 = aie.lock(%tile_6_3)
    %core_6_3 = aie.core(%tile_6_3) {
      aie.use_lock(%lock_6_3, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_6_stage1[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_6_stage1[%c1] : memref<4xi32>
      %c2 = arith.constant 2 : index
      %2 = memref.load %mha_rtpss_6_stage1[%c2] : memref<4xi32>
      %c3 = arith.constant 3 : index
      %3 = memref.load %mha_rtpss_6_stage1[%c3] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_softmax_6[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c6_i32 = arith.constant 6 : i32
        memref.store %c6_i32, %idx_buffer_softmax_6[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %4 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %4 step %c1_5 {
          %c64_i32 = arith.constant 64 : i32
          func.call @init_scale_buffer(%scale_buffer_softmax_6, %c64_i32) : (memref<256xbf16>, i32) -> ()
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memP6(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @outA6(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %12 = aie.objectfifo.acquire @scaleOF6(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %cst = arith.constant 1.806640e-01 : bf16
            %c64_i32_12 = arith.constant 64 : i32
            %c64_i32_13 = arith.constant 64 : i32
            func.call @partial_softmax(%11, %9, %scale_buffer_softmax_6, %idx_buffer_softmax_6, %cst, %c64_i32_12, %c64_i32_13, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
            %c256_i32 = arith.constant 256 : i32
            func.call @passThroughLine(%scale_buffer_softmax_6, %13, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
            aie.objectfifo.release @outA6(Consume, 1)
            aie.objectfifo.release @memP6(Produce, 1)
            aie.objectfifo.release @scaleOF6(Produce, 1)
            %c0_14 = arith.constant 0 : index
            %14 = memref.load %idx_buffer_softmax_6[%c0_14] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32 : i32
            %c0_15 = arith.constant 0 : index
            memref.store %15, %idx_buffer_softmax_6[%c0_15] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_softmax_6[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_softmax_6[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_softmax_6[%c1_11] : memref<2xi32>
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_6_4 = aie.lock(%tile_6_4)
    %core_6_4 = aie.core(%tile_6_4) {
      aie.use_lock(%lock_6_4, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_6_stage2[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_6_stage2[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_pv_6[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c6_i32 = arith.constant 6 : i32
        memref.store %c6_i32, %idx_buffer_pv_6[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @outO22(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%4) : (memref<64x64xbf16>) -> ()
          %5 = aie.objectfifo.acquire @outP6(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %7 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %9 = aie.objectfifo.acquire @scaleOF6(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c64_i32 = arith.constant 64 : i32
          %c0_i32_6 = arith.constant 0 : i32
          func.call @matmul_PV(%6, %8, %4, %10, %c64_i32, %c0_i32_6, %idx_buffer_pv_6) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
          aie.objectfifo.release @outP6(Consume, 1)
          aie.objectfifo.release @memV(Consume, 1)
          aie.objectfifo.release @scaleOF6(Consume, 1)
          %c0_7 = arith.constant 0 : index
          %11 = memref.load %idx_buffer_pv_6[%c0_7] : memref<2xi32>
          %c1_i32 = arith.constant 1 : i32
          %12 = arith.addi %11, %c1_i32 : i32
          %c0_8 = arith.constant 0 : index
          memref.store %12, %idx_buffer_pv_6[%c0_8] : memref<2xi32>
          %c2_i32 = arith.constant 2 : i32
          %13 = arith.cmpi sgt, %1, %c2_i32 : i32
          scf.if %13 {
            %c2_i32_14 = arith.constant 2 : i32
            %17 = arith.subi %1, %c2_i32_14 : i32
            %c0_15 = arith.constant 0 : index
            %18 = arith.index_cast %17 : i32 to index
            %c1_16 = arith.constant 1 : index
            scf.for %arg2 = %c0_15 to %18 step %c1_16 {
              %19 = aie.objectfifo.acquire @outP6(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %21 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %23 = aie.objectfifo.acquire @scaleOF6(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
              %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
              %c64_i32_17 = arith.constant 64 : i32
              %c1_i32_18 = arith.constant 1 : i32
              func.call @matmul_PV(%20, %22, %4, %24, %c64_i32_17, %c1_i32_18, %idx_buffer_pv_6) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
              aie.objectfifo.release @outP6(Consume, 1)
              aie.objectfifo.release @memV(Consume, 1)
              aie.objectfifo.release @scaleOF6(Consume, 1)
              %c0_19 = arith.constant 0 : index
              %25 = memref.load %idx_buffer_pv_6[%c0_19] : memref<2xi32>
              %c1_i32_20 = arith.constant 1 : i32
              %26 = arith.addi %25, %c1_i32_20 : i32
              %c0_21 = arith.constant 0 : index
              memref.store %26, %idx_buffer_pv_6[%c0_21] : memref<2xi32>
            }
          } else {
          }
          %c1_i32_9 = arith.constant 1 : i32
          %14 = arith.cmpi sgt, %1, %c1_i32_9 : i32
          scf.if %14 {
            %17 = aie.objectfifo.acquire @outP6(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %19 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %21 = aie.objectfifo.acquire @scaleOF6(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %c64_i32_14 = arith.constant 64 : i32
            %c1_i32_15 = arith.constant 1 : i32
            func.call @matmul_PV(%18, %20, %4, %22, %c64_i32_14, %c1_i32_15, %idx_buffer_pv_6) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
            %c64_i32_16 = arith.constant 64 : i32
            func.call @rescale_O(%4, %22, %c64_i32_16, %idx_buffer_pv_6) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            aie.objectfifo.release @outP6(Consume, 1)
            aie.objectfifo.release @memV(Consume, 1)
            aie.objectfifo.release @scaleOF6(Consume, 1)
            %c0_17 = arith.constant 0 : index
            %23 = memref.load %idx_buffer_pv_6[%c0_17] : memref<2xi32>
            %c1_i32_18 = arith.constant 1 : i32
            %24 = arith.addi %23, %c1_i32_18 : i32
            %c0_19 = arith.constant 0 : index
            memref.store %24, %idx_buffer_pv_6[%c0_19] : memref<2xi32>
          } else {
            %c64_i32_14 = arith.constant 64 : i32
            func.call @rescale_O(%4, %10, %c64_i32_14, %idx_buffer_pv_6) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            %c0_15 = arith.constant 0 : index
            %17 = memref.load %idx_buffer_pv_6[%c0_15] : memref<2xi32>
            %c1_i32_16 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_16 : i32
            %c0_17 = arith.constant 0 : index
            memref.store %18, %idx_buffer_pv_6[%c0_17] : memref<2xi32>
          }
          %c0_10 = arith.constant 0 : index
          %c0_i32_11 = arith.constant 0 : i32
          memref.store %c0_i32_11, %idx_buffer_pv_6[%c0_10] : memref<2xi32>
          %c1_12 = arith.constant 1 : index
          %15 = memref.load %idx_buffer_pv_6[%c1_12] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %16 = arith.addi %15, %c8_i32 : i32
          %c1_13 = arith.constant 1 : index
          memref.store %16, %idx_buffer_pv_6[%c1_13] : memref<2xi32>
          aie.objectfifo.release @outO22(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_7_2 = aie.lock(%tile_7_2)
    %core_7_2 = aie.core(%tile_7_2) {
      aie.use_lock(%lock_7_2, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_7_stage0[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_7_stage0[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_qk_7[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c7_i32 = arith.constant 7 : i32
        memref.store %c7_i32, %idx_buffer_qk_7[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @memQ23(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memK(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @memA7(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            func.call @zero_bf16(%11) : (memref<64x64xbf16>) -> ()
            func.call @matmul_bf16_bf16_wrapper(%4, %9, %11, %idx_buffer_qk_7) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<2xi32>) -> ()
            aie.objectfifo.release @memK(Consume, 1)
            aie.objectfifo.release @memA7(Produce, 1)
            %c0_12 = arith.constant 0 : index
            %12 = memref.load %idx_buffer_qk_7[%c0_12] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %13 = arith.addi %12, %c1_i32 : i32
            %c0_13 = arith.constant 0 : index
            memref.store %13, %idx_buffer_qk_7[%c0_13] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_qk_7[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_qk_7[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_qk_7[%c1_11] : memref<2xi32>
          aie.objectfifo.release @memQ23(Consume, 1)
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_7_3 = aie.lock(%tile_7_3)
    %core_7_3 = aie.core(%tile_7_3) {
      aie.use_lock(%lock_7_3, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_7_stage1[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_7_stage1[%c1] : memref<4xi32>
      %c2 = arith.constant 2 : index
      %2 = memref.load %mha_rtpss_7_stage1[%c2] : memref<4xi32>
      %c3 = arith.constant 3 : index
      %3 = memref.load %mha_rtpss_7_stage1[%c3] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_softmax_7[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c7_i32 = arith.constant 7 : i32
        memref.store %c7_i32, %idx_buffer_softmax_7[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %4 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %4 step %c1_5 {
          %c64_i32 = arith.constant 64 : i32
          func.call @init_scale_buffer(%scale_buffer_softmax_7, %c64_i32) : (memref<256xbf16>, i32) -> ()
          %c0_6 = arith.constant 0 : index
          %5 = arith.index_cast %1 : i32 to index
          %c1_7 = arith.constant 1 : index
          scf.for %arg2 = %c0_6 to %5 step %c1_7 {
            %8 = aie.objectfifo.acquire @memP7(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %10 = aie.objectfifo.acquire @outA7(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %12 = aie.objectfifo.acquire @scaleOF7(Produce, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %cst = arith.constant 1.806640e-01 : bf16
            %c64_i32_12 = arith.constant 64 : i32
            %c64_i32_13 = arith.constant 64 : i32
            func.call @partial_softmax(%11, %9, %scale_buffer_softmax_7, %idx_buffer_softmax_7, %cst, %c64_i32_12, %c64_i32_13, %2, %3) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, memref<2xi32>, bf16, i32, i32, i32, i32) -> ()
            %c256_i32 = arith.constant 256 : i32
            func.call @passThroughLine(%scale_buffer_softmax_7, %13, %c256_i32) : (memref<256xbf16>, memref<256xbf16>, i32) -> ()
            aie.objectfifo.release @outA7(Consume, 1)
            aie.objectfifo.release @memP7(Produce, 1)
            aie.objectfifo.release @scaleOF7(Produce, 1)
            %c0_14 = arith.constant 0 : index
            %14 = memref.load %idx_buffer_softmax_7[%c0_14] : memref<2xi32>
            %c1_i32 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32 : i32
            %c0_15 = arith.constant 0 : index
            memref.store %15, %idx_buffer_softmax_7[%c0_15] : memref<2xi32>
          }
          %c0_8 = arith.constant 0 : index
          %c0_i32_9 = arith.constant 0 : i32
          memref.store %c0_i32_9, %idx_buffer_softmax_7[%c0_8] : memref<2xi32>
          %c1_10 = arith.constant 1 : index
          %6 = memref.load %idx_buffer_softmax_7[%c1_10] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %7 = arith.addi %6, %c8_i32 : i32
          %c1_11 = arith.constant 1 : index
          memref.store %7, %idx_buffer_softmax_7[%c1_11] : memref<2xi32>
        }
      }
      aie.end
    } {link_with = "mha_kernels.a", stack_size = 3328 : i32}
    %lock_7_4 = aie.lock(%tile_7_4)
    %core_7_4 = aie.core(%tile_7_4) {
      aie.use_lock(%lock_7_4, Acquire, 1)
      %c0 = arith.constant 0 : index
      %0 = memref.load %mha_rtpss_7_stage2[%c0] : memref<4xi32>
      %c1 = arith.constant 1 : index
      %1 = memref.load %mha_rtpss_7_stage2[%c1] : memref<4xi32>
      %c0_0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg0 = %c0_0 to %c9223372036854775807 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c0_i32 = arith.constant 0 : i32
        memref.store %c0_i32, %idx_buffer_pv_7[%c0_2] : memref<2xi32>
        %c1_3 = arith.constant 1 : index
        %c7_i32 = arith.constant 7 : i32
        memref.store %c7_i32, %idx_buffer_pv_7[%c1_3] : memref<2xi32>
        %c0_4 = arith.constant 0 : index
        %2 = arith.index_cast %0 : i32 to index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %2 step %c1_5 {
          %3 = aie.objectfifo.acquire @outO23(Produce, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          func.call @zero_bf16(%4) : (memref<64x64xbf16>) -> ()
          %5 = aie.objectfifo.acquire @outP7(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %7 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
          %9 = aie.objectfifo.acquire @scaleOF7(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
          %c64_i32 = arith.constant 64 : i32
          %c0_i32_6 = arith.constant 0 : i32
          func.call @matmul_PV(%6, %8, %4, %10, %c64_i32, %c0_i32_6, %idx_buffer_pv_7) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
          aie.objectfifo.release @outP7(Consume, 1)
          aie.objectfifo.release @memV(Consume, 1)
          aie.objectfifo.release @scaleOF7(Consume, 1)
          %c0_7 = arith.constant 0 : index
          %11 = memref.load %idx_buffer_pv_7[%c0_7] : memref<2xi32>
          %c1_i32 = arith.constant 1 : i32
          %12 = arith.addi %11, %c1_i32 : i32
          %c0_8 = arith.constant 0 : index
          memref.store %12, %idx_buffer_pv_7[%c0_8] : memref<2xi32>
          %c2_i32 = arith.constant 2 : i32
          %13 = arith.cmpi sgt, %1, %c2_i32 : i32
          scf.if %13 {
            %c2_i32_14 = arith.constant 2 : i32
            %17 = arith.subi %1, %c2_i32_14 : i32
            %c0_15 = arith.constant 0 : index
            %18 = arith.index_cast %17 : i32 to index
            %c1_16 = arith.constant 1 : index
            scf.for %arg2 = %c0_15 to %18 step %c1_16 {
              %19 = aie.objectfifo.acquire @outP7(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %21 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
              %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
              %23 = aie.objectfifo.acquire @scaleOF7(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
              %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
              %c64_i32_17 = arith.constant 64 : i32
              %c1_i32_18 = arith.constant 1 : i32
              func.call @matmul_PV(%20, %22, %4, %24, %c64_i32_17, %c1_i32_18, %idx_buffer_pv_7) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
              aie.objectfifo.release @outP7(Consume, 1)
              aie.objectfifo.release @memV(Consume, 1)
              aie.objectfifo.release @scaleOF7(Consume, 1)
              %c0_19 = arith.constant 0 : index
              %25 = memref.load %idx_buffer_pv_7[%c0_19] : memref<2xi32>
              %c1_i32_20 = arith.constant 1 : i32
              %26 = arith.addi %25, %c1_i32_20 : i32
              %c0_21 = arith.constant 0 : index
              memref.store %26, %idx_buffer_pv_7[%c0_21] : memref<2xi32>
            }
          } else {
          }
          %c1_i32_9 = arith.constant 1 : i32
          %14 = arith.cmpi sgt, %1, %c1_i32_9 : i32
          scf.if %14 {
            %17 = aie.objectfifo.acquire @outP7(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %19 = aie.objectfifo.acquire @memV(Consume, 1) : !aie.objectfifosubview<memref<64x64xbf16>>
            %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<64x64xbf16>> -> memref<64x64xbf16>
            %21 = aie.objectfifo.acquire @scaleOF7(Consume, 1) : !aie.objectfifosubview<memref<256xbf16>>
            %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<256xbf16>> -> memref<256xbf16>
            %c64_i32_14 = arith.constant 64 : i32
            %c1_i32_15 = arith.constant 1 : i32
            func.call @matmul_PV(%18, %20, %4, %22, %c64_i32_14, %c1_i32_15, %idx_buffer_pv_7) : (memref<64x64xbf16>, memref<64x64xbf16>, memref<64x64xbf16>, memref<256xbf16>, i32, i32, memref<2xi32>) -> ()
            %c64_i32_16 = arith.constant 64 : i32
            func.call @rescale_O(%4, %22, %c64_i32_16, %idx_buffer_pv_7) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            aie.objectfifo.release @outP7(Consume, 1)
            aie.objectfifo.release @memV(Consume, 1)
            aie.objectfifo.release @scaleOF7(Consume, 1)
            %c0_17 = arith.constant 0 : index
            %23 = memref.load %idx_buffer_pv_7[%c0_17] : memref<2xi32>
            %c1_i32_18 = arith.constant 1 : i32
            %24 = arith.addi %23, %c1_i32_18 : i32
            %c0_19 = arith.constant 0 : index
            memref.store %24, %idx_buffer_pv_7[%c0_19] : memref<2xi32>
          } else {
            %c64_i32_14 = arith.constant 64 : i32
            func.call @rescale_O(%4, %10, %c64_i32_14, %idx_buffer_pv_7) : (memref<64x64xbf16>, memref<256xbf16>, i32, memref<2xi32>) -> ()
            %c0_15 = arith.constant 0 : index
            %17 = memref.load %idx_buffer_pv_7[%c0_15] : memref<2xi32>
            %c1_i32_16 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_16 : i32
            %c0_17 = arith.constant 0 : index
            memref.store %18, %idx_buffer_pv_7[%c0_17] : memref<2xi32>
          }
          %c0_10 = arith.constant 0 : index
          %c0_i32_11 = arith.constant 0 : i32
          memref.store %c0_i32_11, %idx_buffer_pv_7[%c0_10] : memref<2xi32>
          %c1_12 = arith.constant 1 : index
          %15 = memref.load %idx_buffer_pv_7[%c1_12] : memref<2xi32>
          %c8_i32 = arith.constant 8 : i32
          %16 = arith.addi %15, %c8_i32 : i32
          %c1_13 = arith.constant 1 : index
          memref.store %16, %idx_buffer_pv_7[%c1_13] : memref<2xi32>
          aie.objectfifo.release @outO23(Produce, 1)
        }
      }
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
      %0 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 0, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 16384, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%1)
      %2 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%2)
      %3 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%3)
      %4 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 0, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%4)
      %5 = aiex.dma_configure_task_for @memO2 {
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
      %6 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 32768, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%6)
      %7 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 49152, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%7)
      %8 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%8)
      %9 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%9)
      %10 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 32768, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%10)
      %11 = aiex.dma_configure_task_for @memO2 {
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
      %12 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 65536, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%12)
      %13 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 81920, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%13)
      %14 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%14)
      %15 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%15)
      %16 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 65536, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%16)
      %17 = aiex.dma_configure_task_for @memO2 {
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
      %18 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 98304, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%18)
      %19 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 114688, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%19)
      %20 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%20)
      %21 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%21)
      %22 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 98304, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%22)
      %23 = aiex.dma_configure_task_for @memO2 {
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
      %24 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 131072, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%24)
      %25 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 147456, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%25)
      %26 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%26)
      %27 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%27)
      %28 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 131072, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%28)
      %29 = aiex.dma_configure_task_for @memO2 {
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
      %30 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 163840, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%30)
      %31 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 180224, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%31)
      %32 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%32)
      %33 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%33)
      %34 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 163840, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%34)
      %35 = aiex.dma_configure_task_for @memO2 {
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
      %36 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 196608, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%36)
      %37 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 212992, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%37)
      %38 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%38)
      %39 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%39)
      %40 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 196608, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%40)
      %41 = aiex.dma_configure_task_for @memO2 {
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
      %42 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 229376, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%42)
      %43 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 245760, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%43)
      %44 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%44)
      %45 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%45)
      %46 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 229376, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%46)
      %47 = aiex.dma_configure_task_for @memO2 {
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
      %48 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 262144, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%48)
      %49 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 278528, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%49)
      %50 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%50)
      %51 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%51)
      %52 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 262144, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%52)
      %53 = aiex.dma_configure_task_for @memO2 {
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
      %54 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 294912, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%54)
      %55 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 311296, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%55)
      %56 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%56)
      %57 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%57)
      %58 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 294912, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%58)
      %59 = aiex.dma_configure_task_for @memO2 {
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
      %60 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 327680, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%60)
      %61 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 344064, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%61)
      %62 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%62)
      %63 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%63)
      %64 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 327680, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%64)
      %65 = aiex.dma_configure_task_for @memO2 {
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
      %66 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 360448, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%66)
      %67 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 376832, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%67)
      %68 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%68)
      %69 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%69)
      %70 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 360448, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%70)
      %71 = aiex.dma_configure_task_for @memO2 {
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
      %72 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 393216, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%72)
      %73 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 409600, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%73)
      %74 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%74)
      %75 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%75)
      %76 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 393216, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%76)
      %77 = aiex.dma_configure_task_for @memO2 {
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
      %78 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 425984, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%78)
      %79 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 442368, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%79)
      %80 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%80)
      %81 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%81)
      %82 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 425984, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%82)
      %83 = aiex.dma_configure_task_for @memO2 {
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
      %84 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 458752, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%84)
      %85 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 475136, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%85)
      %86 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%86)
      %87 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%87)
      %88 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 458752, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%88)
      %89 = aiex.dma_configure_task_for @memO2 {
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
      %90 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 491520, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%90)
      %91 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 507904, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%91)
      %92 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%92)
      %93 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%93)
      %94 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 491520, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%94)
      %95 = aiex.dma_configure_task_for @memO2 {
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
      %96 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 524288, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%96)
      %97 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 540672, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%97)
      %98 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%98)
      %99 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%99)
      %100 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 524288, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%100)
      %101 = aiex.dma_configure_task_for @memO2 {
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
      %102 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 557056, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%102)
      %103 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 573440, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%103)
      %104 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%104)
      %105 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%105)
      %106 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 557056, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%106)
      %107 = aiex.dma_configure_task_for @memO2 {
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
      %108 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 589824, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%108)
      %109 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 606208, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%109)
      %110 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%110)
      %111 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%111)
      %112 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 589824, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%112)
      %113 = aiex.dma_configure_task_for @memO2 {
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
      %114 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 622592, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%114)
      %115 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 638976, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%115)
      %116 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%116)
      %117 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%117)
      %118 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 622592, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%118)
      %119 = aiex.dma_configure_task_for @memO2 {
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
      %120 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 655360, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%120)
      %121 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 671744, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%121)
      %122 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%122)
      %123 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%123)
      %124 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 655360, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%124)
      %125 = aiex.dma_configure_task_for @memO2 {
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
      %126 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 688128, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%126)
      %127 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 704512, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%127)
      %128 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%128)
      %129 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%129)
      %130 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 688128, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%130)
      %131 = aiex.dma_configure_task_for @memO2 {
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
      %132 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 720896, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%132)
      %133 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 737280, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%133)
      %134 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%134)
      %135 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%135)
      %136 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 720896, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%136)
      %137 = aiex.dma_configure_task_for @memO2 {
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
      %138 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 753664, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%138)
      %139 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 770048, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%139)
      %140 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%140)
      %141 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%141)
      %142 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 753664, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%142)
      %143 = aiex.dma_configure_task_for @memO2 {
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
      %144 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 786432, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%144)
      %145 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 802816, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%145)
      %146 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%146)
      %147 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%147)
      %148 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 786432, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%148)
      %149 = aiex.dma_configure_task_for @memO2 {
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
      %150 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 819200, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%150)
      %151 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 835584, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%151)
      %152 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%152)
      %153 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%153)
      %154 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 819200, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%154)
      %155 = aiex.dma_configure_task_for @memO2 {
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
      %156 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 851968, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%156)
      %157 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 868352, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%157)
      %158 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%158)
      %159 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%159)
      %160 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 851968, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%160)
      %161 = aiex.dma_configure_task_for @memO2 {
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
      %162 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 884736, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%162)
      %163 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 901120, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%163)
      %164 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%164)
      %165 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%165)
      %166 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 884736, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%166)
      %167 = aiex.dma_configure_task_for @memO2 {
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
      %168 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 917504, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%168)
      %169 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 933888, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%169)
      %170 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%170)
      %171 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%171)
      %172 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 917504, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%172)
      %173 = aiex.dma_configure_task_for @memO2 {
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
      %174 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 950272, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%174)
      %175 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 966656, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%175)
      %176 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%176)
      %177 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%177)
      %178 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 950272, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%178)
      %179 = aiex.dma_configure_task_for @memO2 {
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
      %180 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 983040, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%180)
      %181 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 999424, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%181)
      %182 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%182)
      %183 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%183)
      %184 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 983040, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%184)
      %185 = aiex.dma_configure_task_for @memO2 {
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
      %186 = aiex.dma_configure_task_for @inQ {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 1015808, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%186)
      %187 = aiex.dma_configure_task_for @inQ2 {
        aie.dma_bd(%arg0 : memref<1x16384x64xbf16>, 1032192, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%187)
      %188 = aiex.dma_configure_task_for @inK {
        aie.dma_bd(%arg1 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%188)
      %189 = aiex.dma_configure_task_for @inV {
        aie.dma_bd(%arg2 : memref<1x1048576xbf16>, 0, 1048576, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1048576, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%189)
      %190 = aiex.dma_configure_task_for @memO {
        aie.dma_bd(%arg3 : memref<1x16384x64xbf16>, 1015808, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 64>, <size = 64, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%190)
      %191 = aiex.dma_configure_task_for @memO2 {
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
  }
}
