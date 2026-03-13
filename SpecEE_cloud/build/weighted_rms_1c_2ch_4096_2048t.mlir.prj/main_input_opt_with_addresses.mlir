module attributes {llvm.target_triple = "aie2p"} {
  llvm.mlir.global external @_anonymous1() {addr_space = 0 : i32} : !llvm.array<3 x i32>
  llvm.mlir.global external @_anonymous0() {addr_space = 0 : i32} : !llvm.array<2 x i32>
  llvm.mlir.global external @in1_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2048 x bf16>
  llvm.mlir.global external @in1_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2048 x bf16>
  llvm.mlir.global external @in2_weights_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2048 x bf16>
  llvm.mlir.global external @in2_weights_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2048 x bf16>
  llvm.mlir.global external @out1_0_buff_1() {addr_space = 0 : i32} : !llvm.array<2048 x bf16>
  llvm.mlir.global external @out1_0_buff_0() {addr_space = 0 : i32} : !llvm.array<2048 x bf16>
  llvm.mlir.global external @out2_0_buff_1() {addr_space = 0 : i32} : !llvm.array<2048 x bf16>
  llvm.mlir.global external @out2_0_buff_0() {addr_space = 0 : i32} : !llvm.array<2048 x bf16>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.event(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @rms_norm_bf16_vector(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @eltwise_mul_bf16_vector(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @out2_0_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @out2_0_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @out1_0_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @out1_0_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @in2_weights_cons_buff_1 : !llvm.ptr
    %5 = llvm.mlir.addressof @in2_weights_cons_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(2048 : index) : i64
    %7 = llvm.mlir.poison : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.mlir.constant(3735928559 : index) : i64
    %9 = llvm.mlir.addressof @_anonymous1 : !llvm.ptr
    %10 = llvm.mlir.constant(2 : i32) : i32
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(2048 : i32) : i32
    %15 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %16 = llvm.mlir.constant(1 : i32) : i32
    %17 = llvm.mlir.constant(48 : i32) : i32
    %18 = llvm.mlir.constant(51 : i32) : i32
    %19 = llvm.mlir.constant(50 : i32) : i32
    %20 = llvm.mlir.constant(3 : i32) : i32
    %21 = llvm.mlir.constant(49 : i32) : i32
    %22 = llvm.mlir.constant(-1 : i32) : i32
    %23 = llvm.mlir.constant(2 : index) : i64
    %24 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i32>
    llvm.store %12, %24 : i32, !llvm.ptr
    %25 = llvm.getelementptr inbounds|nuw %24[1] : (!llvm.ptr) -> !llvm.ptr, i32
    llvm.store %12, %25 : i32, !llvm.ptr
    %26 = llvm.getelementptr inbounds|nuw %24[2] : (!llvm.ptr) -> !llvm.ptr, i32
    llvm.store %12, %26 : i32, !llvm.ptr
    llvm.br ^bb1(%11 : i64)
  ^bb1(%27: i64):  // 2 preds: ^bb0, ^bb14
    %28 = llvm.icmp "slt" %27, %15 : i64
    llvm.cond_br %28, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2p.acquire(%21, %22) : (i32, i32) -> ()
    %29 = llvm.load %24 : !llvm.ptr -> i32
    llvm.switch %29 : i32, ^bb3 [
      0: ^bb3,
      1: ^bb4
    ]
  ^bb3:  // 2 preds: ^bb2, ^bb2
    %30 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2048 x bf16>
    %31 = llvm.inttoptr %8 : i64 to !llvm.ptr
    %32 = llvm.insertvalue %31, %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %11, %33[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %6, %34[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %13, %35[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb5(%36 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb4:  // pred: ^bb2
    %37 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2048 x bf16>
    %38 = llvm.inttoptr %8 : i64 to !llvm.ptr
    %39 = llvm.insertvalue %38, %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %11, %40[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.insertvalue %6, %41[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %13, %42[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb5(%43 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb5(%44: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb3, ^bb4
    llvm.br ^bb6(%11 : i64)
  ^bb6(%45: i64):  // 2 preds: ^bb5, ^bb13
    %46 = llvm.icmp "slt" %45, %23 : i64
    llvm.cond_br %46, ^bb7, ^bb14
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2p.acquire(%20, %22) : (i32, i32) -> ()
    %47 = llvm.load %25 : !llvm.ptr -> i32
    llvm.switch %47 : i32, ^bb8 [
      0: ^bb8,
      1: ^bb9
    ]
  ^bb8:  // 2 preds: ^bb7, ^bb7
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2048 x bf16>
    %49 = llvm.inttoptr %8 : i64 to !llvm.ptr
    %50 = llvm.insertvalue %49, %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %11, %51[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %6, %52[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %13, %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%54 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb9:  // pred: ^bb7
    %55 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2048 x bf16>
    %56 = llvm.inttoptr %8 : i64 to !llvm.ptr
    %57 = llvm.insertvalue %56, %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.insertvalue %11, %58[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.insertvalue %6, %59[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %13, %60[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb10(%61 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb10(%62: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb8, ^bb9
    llvm.call @llvm.aie2p.acquire(%19, %22) : (i32, i32) -> ()
    %63 = llvm.load %26 : !llvm.ptr -> i32
    llvm.switch %63 : i32, ^bb11 [
      0: ^bb11,
      1: ^bb12
    ]
  ^bb11:  // 2 preds: ^bb10, ^bb10
    %64 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2048 x bf16>
    %65 = llvm.inttoptr %8 : i64 to !llvm.ptr
    %66 = llvm.insertvalue %65, %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.insertvalue %11, %67[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %6, %68[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.insertvalue %13, %69[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%70 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb12:  // pred: ^bb10
    %71 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2048 x bf16>
    %72 = llvm.inttoptr %8 : i64 to !llvm.ptr
    %73 = llvm.insertvalue %72, %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.insertvalue %71, %73[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.insertvalue %11, %74[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.insertvalue %6, %75[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.insertvalue %13, %76[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb13(%77 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb13(%78: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb11, ^bb12
    %79 = llvm.extractvalue %62[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.extractvalue %78[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @eltwise_mul_bf16_vector(%79, %80, %81, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2p.release(%10, %16) : (i32, i32) -> ()
    %82 = llvm.load %25 : !llvm.ptr -> i32
    %83 = llvm.add %82, %16 : i32
    %84 = llvm.icmp "sge" %83, %10 : i32
    %85 = llvm.add %82, %22 : i32
    %86 = llvm.select %84, %85, %83 : i1, i32
    llvm.store %86, %25 : i32, !llvm.ptr
    llvm.call @llvm.aie2p.release(%18, %16) : (i32, i32) -> ()
    %87 = llvm.load %26 : !llvm.ptr -> i32
    %88 = llvm.add %87, %16 : i32
    %89 = llvm.icmp "sge" %88, %10 : i32
    %90 = llvm.add %87, %22 : i32
    %91 = llvm.select %89, %90, %88 : i1, i32
    llvm.store %91, %26 : i32, !llvm.ptr
    %92 = llvm.add %45, %13 : i64
    llvm.br ^bb6(%92 : i64)
  ^bb14:  // pred: ^bb6
    llvm.call @llvm.aie2p.release(%17, %16) : (i32, i32) -> ()
    %93 = llvm.load %24 : !llvm.ptr -> i32
    %94 = llvm.add %93, %16 : i32
    %95 = llvm.icmp "sge" %94, %10 : i32
    %96 = llvm.add %93, %22 : i32
    %97 = llvm.select %95, %96, %94 : i1, i32
    llvm.store %97, %24 : i32, !llvm.ptr
    %98 = llvm.add %27, %13 : i64
    llvm.br ^bb1(%98 : i64)
  ^bb15:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.addressof @out1_0_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @out1_0_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @in1_0_cons_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in1_0_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(2048 : index) : i64
    %5 = llvm.mlir.poison : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.mlir.constant(3735928559 : index) : i64
    %7 = llvm.mlir.addressof @_anonymous0 : !llvm.ptr
    %8 = llvm.mlir.constant(2 : i32) : i32
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
    %12 = llvm.mlir.constant(48 : i32) : i32
    %13 = llvm.mlir.constant(50 : i32) : i32
    %14 = llvm.mlir.constant(49 : i32) : i32
    %15 = llvm.mlir.constant(-1 : i32) : i32
    %16 = llvm.mlir.constant(1 : i32) : i32
    %17 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.mlir.constant(2048 : i32) : i32
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i32>
    llvm.store %10, %21 : i32, !llvm.ptr
    %22 = llvm.getelementptr inbounds|nuw %21[1] : (!llvm.ptr) -> !llvm.ptr, i32
    llvm.store %10, %22 : i32, !llvm.ptr
    llvm.br ^bb1(%9 : i64)
  ^bb1(%23: i64):  // 2 preds: ^bb0, ^bb10
    %24 = llvm.icmp "slt" %23, %17 : i64
    llvm.cond_br %24, ^bb2(%9 : i64), ^bb11
  ^bb2(%25: i64):  // 2 preds: ^bb1, ^bb9
    %26 = llvm.icmp "slt" %25, %18 : i64
    llvm.cond_br %26, ^bb3, ^bb10
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2p.acquire(%14, %15) : (i32, i32) -> ()
    %27 = llvm.load %21 : !llvm.ptr -> i32
    llvm.switch %27 : i32, ^bb4 [
      0: ^bb4,
      1: ^bb5
    ]
  ^bb4:  // 2 preds: ^bb3, ^bb3
    %28 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2048 x bf16>
    %29 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %30 = llvm.insertvalue %29, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %9, %31[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %4, %32[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %20, %33[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb6(%34 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb5:  // pred: ^bb3
    %35 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2048 x bf16>
    %36 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %37 = llvm.insertvalue %36, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %9, %38[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %4, %39[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %20, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb6(%41 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb6(%42: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb4, ^bb5
    llvm.call @llvm.aie2p.acquire(%13, %15) : (i32, i32) -> ()
    %43 = llvm.load %22 : !llvm.ptr -> i32
    llvm.switch %43 : i32, ^bb7 [
      0: ^bb7,
      1: ^bb8
    ]
  ^bb7:  // 2 preds: ^bb6, ^bb6
    %44 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2048 x bf16>
    %45 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %46 = llvm.insertvalue %45, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %9, %47[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.insertvalue %4, %48[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %20, %49[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb9(%50 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb8:  // pred: ^bb6
    %51 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2048 x bf16>
    %52 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %53 = llvm.insertvalue %52, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.insertvalue %9, %54[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.insertvalue %4, %55[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.insertvalue %20, %56[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb9(%57 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb9(%58: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb7, ^bb8
    %59 = llvm.extractvalue %42[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %58[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @rms_norm_bf16_vector(%59, %60, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2p.release(%12, %16) : (i32, i32) -> ()
    %61 = llvm.load %21 : !llvm.ptr -> i32
    %62 = llvm.add %61, %16 : i32
    %63 = llvm.icmp "sge" %62, %8 : i32
    %64 = llvm.add %61, %15 : i32
    %65 = llvm.select %63, %64, %62 : i1, i32
    llvm.store %65, %21 : i32, !llvm.ptr
    llvm.call @llvm.aie2p.release(%11, %16) : (i32, i32) -> ()
    %66 = llvm.load %22 : !llvm.ptr -> i32
    %67 = llvm.add %66, %16 : i32
    %68 = llvm.icmp "sge" %67, %8 : i32
    %69 = llvm.add %66, %15 : i32
    %70 = llvm.select %68, %69, %67 : i1, i32
    llvm.store %70, %22 : i32, !llvm.ptr
    %71 = llvm.add %25, %20 : i64
    llvm.br ^bb2(%71 : i64)
  ^bb10:  // pred: ^bb2
    %72 = llvm.add %23, %20 : i64
    llvm.br ^bb1(%72 : i64)
  ^bb11:  // pred: ^bb1
    llvm.return
  }
}
