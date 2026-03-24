module attributes {llvm.target_triple = "aie2p"} {
  llvm.mlir.global external @_anonymous3() {addr_space = 0 : i32} : !llvm.array<2 x i32>
  llvm.mlir.global external @_anonymous2() {addr_space = 0 : i32} : !llvm.array<2 x i32>
  llvm.mlir.global external @_anonymous1() {addr_space = 0 : i32} : !llvm.array<2 x i32>
  llvm.mlir.global external @_anonymous0() {addr_space = 0 : i32} : !llvm.array<2 x i32>
  llvm.mlir.global external @in0_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @in1_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @in1_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @in2_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @in2_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @in3_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @in3_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @out0_0_buff_1() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @out0_0_buff_0() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @out1_0_buff_1() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @out1_0_buff_0() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @out2_0_buff_1() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @out2_0_buff_0() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @out3_0_buff_1() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.mlir.global external @out3_0_buff_0() {addr_space = 0 : i32} : !llvm.array<256 x bf16>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.event(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2p.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @relu_bf16(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_0_5() {
    %0 = llvm.mlir.addressof @in3_0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in3_0_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @out3_0_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @out3_0_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(256 : index) : i64
    %5 = llvm.mlir.poison : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.mlir.constant(3735928559 : index) : i64
    %7 = llvm.mlir.addressof @_anonymous3 : !llvm.ptr
    %8 = llvm.mlir.constant(2 : i32) : i32
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
    %12 = llvm.mlir.constant(48 : i32) : i32
    %13 = llvm.mlir.constant(49 : i32) : i32
    %14 = llvm.mlir.constant(50 : i32) : i32
    %15 = llvm.mlir.constant(-1 : i32) : i32
    %16 = llvm.mlir.constant(1 : i32) : i32
    %17 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %18 = llvm.mlir.constant(256 : i32) : i32
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i32>
    llvm.store %10, %20 : i32, !llvm.ptr
    %21 = llvm.getelementptr inbounds|nuw %20[1] : (!llvm.ptr) -> !llvm.ptr, i32
    llvm.store %10, %21 : i32, !llvm.ptr
    llvm.br ^bb1(%9 : i64)
  ^bb1(%22: i64):  // 2 preds: ^bb0, ^bb8
    %23 = llvm.icmp "slt" %22, %17 : i64
    llvm.cond_br %23, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2p.acquire(%14, %15) : (i32, i32) -> ()
    %24 = llvm.load %20 : !llvm.ptr -> i32
    llvm.switch %24 : i32, ^bb3 [
      0: ^bb3,
      1: ^bb4
    ]
  ^bb3:  // 2 preds: ^bb2, ^bb2
    %25 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %26 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %27 = llvm.insertvalue %26, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %9, %28[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %4, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %19, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb5(%31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb4:  // pred: ^bb2
    %32 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %33 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %34 = llvm.insertvalue %33, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %9, %35[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %4, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %19, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb5(%38 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb5(%39: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb3, ^bb4
    llvm.call @llvm.aie2p.acquire(%13, %15) : (i32, i32) -> ()
    %40 = llvm.load %21 : !llvm.ptr -> i32
    llvm.switch %40 : i32, ^bb6 [
      0: ^bb6,
      1: ^bb7
    ]
  ^bb6:  // 2 preds: ^bb5, ^bb5
    %41 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %42 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %43 = llvm.insertvalue %42, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %9, %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %4, %45[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %19, %46[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb8(%47 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb7:  // pred: ^bb5
    %48 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %49 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %50 = llvm.insertvalue %49, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %9, %51[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %4, %52[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %19, %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb8(%54 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb8(%55: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb6, ^bb7
    %56 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @relu_bf16(%56, %57, %18) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2p.release(%12, %16) : (i32, i32) -> ()
    %58 = llvm.load %21 : !llvm.ptr -> i32
    %59 = llvm.add %58, %16 : i32
    %60 = llvm.icmp "sge" %59, %8 : i32
    %61 = llvm.add %58, %15 : i32
    %62 = llvm.select %60, %61, %59 : i1, i32
    llvm.store %62, %21 : i32, !llvm.ptr
    llvm.call @llvm.aie2p.release(%11, %16) : (i32, i32) -> ()
    %63 = llvm.load %20 : !llvm.ptr -> i32
    %64 = llvm.add %63, %16 : i32
    %65 = llvm.icmp "sge" %64, %8 : i32
    %66 = llvm.add %63, %15 : i32
    %67 = llvm.select %65, %66, %64 : i1, i32
    llvm.store %67, %20 : i32, !llvm.ptr
    %68 = llvm.add %22, %19 : i64
    llvm.br ^bb1(%68 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @in2_0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in2_0_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @out2_0_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @out2_0_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(256 : index) : i64
    %5 = llvm.mlir.poison : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.mlir.constant(3735928559 : index) : i64
    %7 = llvm.mlir.addressof @_anonymous2 : !llvm.ptr
    %8 = llvm.mlir.constant(2 : i32) : i32
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
    %12 = llvm.mlir.constant(48 : i32) : i32
    %13 = llvm.mlir.constant(49 : i32) : i32
    %14 = llvm.mlir.constant(50 : i32) : i32
    %15 = llvm.mlir.constant(-1 : i32) : i32
    %16 = llvm.mlir.constant(1 : i32) : i32
    %17 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %18 = llvm.mlir.constant(256 : i32) : i32
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i32>
    llvm.store %10, %20 : i32, !llvm.ptr
    %21 = llvm.getelementptr inbounds|nuw %20[1] : (!llvm.ptr) -> !llvm.ptr, i32
    llvm.store %10, %21 : i32, !llvm.ptr
    llvm.br ^bb1(%9 : i64)
  ^bb1(%22: i64):  // 2 preds: ^bb0, ^bb8
    %23 = llvm.icmp "slt" %22, %17 : i64
    llvm.cond_br %23, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2p.acquire(%14, %15) : (i32, i32) -> ()
    %24 = llvm.load %20 : !llvm.ptr -> i32
    llvm.switch %24 : i32, ^bb3 [
      0: ^bb3,
      1: ^bb4
    ]
  ^bb3:  // 2 preds: ^bb2, ^bb2
    %25 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %26 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %27 = llvm.insertvalue %26, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %9, %28[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %4, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %19, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb5(%31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb4:  // pred: ^bb2
    %32 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %33 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %34 = llvm.insertvalue %33, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %9, %35[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %4, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %19, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb5(%38 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb5(%39: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb3, ^bb4
    llvm.call @llvm.aie2p.acquire(%13, %15) : (i32, i32) -> ()
    %40 = llvm.load %21 : !llvm.ptr -> i32
    llvm.switch %40 : i32, ^bb6 [
      0: ^bb6,
      1: ^bb7
    ]
  ^bb6:  // 2 preds: ^bb5, ^bb5
    %41 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %42 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %43 = llvm.insertvalue %42, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %9, %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %4, %45[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %19, %46[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb8(%47 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb7:  // pred: ^bb5
    %48 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %49 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %50 = llvm.insertvalue %49, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %9, %51[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %4, %52[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %19, %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb8(%54 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb8(%55: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb6, ^bb7
    %56 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @relu_bf16(%56, %57, %18) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2p.release(%12, %16) : (i32, i32) -> ()
    %58 = llvm.load %21 : !llvm.ptr -> i32
    %59 = llvm.add %58, %16 : i32
    %60 = llvm.icmp "sge" %59, %8 : i32
    %61 = llvm.add %58, %15 : i32
    %62 = llvm.select %60, %61, %59 : i1, i32
    llvm.store %62, %21 : i32, !llvm.ptr
    llvm.call @llvm.aie2p.release(%11, %16) : (i32, i32) -> ()
    %63 = llvm.load %20 : !llvm.ptr -> i32
    %64 = llvm.add %63, %16 : i32
    %65 = llvm.icmp "sge" %64, %8 : i32
    %66 = llvm.add %63, %15 : i32
    %67 = llvm.select %65, %66, %64 : i1, i32
    llvm.store %67, %20 : i32, !llvm.ptr
    %68 = llvm.add %22, %19 : i64
    llvm.br ^bb1(%68 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @in1_0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in1_0_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @out1_0_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @out1_0_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(256 : index) : i64
    %5 = llvm.mlir.poison : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.mlir.constant(3735928559 : index) : i64
    %7 = llvm.mlir.addressof @_anonymous1 : !llvm.ptr
    %8 = llvm.mlir.constant(2 : i32) : i32
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
    %12 = llvm.mlir.constant(48 : i32) : i32
    %13 = llvm.mlir.constant(49 : i32) : i32
    %14 = llvm.mlir.constant(50 : i32) : i32
    %15 = llvm.mlir.constant(-1 : i32) : i32
    %16 = llvm.mlir.constant(1 : i32) : i32
    %17 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %18 = llvm.mlir.constant(256 : i32) : i32
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i32>
    llvm.store %10, %20 : i32, !llvm.ptr
    %21 = llvm.getelementptr inbounds|nuw %20[1] : (!llvm.ptr) -> !llvm.ptr, i32
    llvm.store %10, %21 : i32, !llvm.ptr
    llvm.br ^bb1(%9 : i64)
  ^bb1(%22: i64):  // 2 preds: ^bb0, ^bb8
    %23 = llvm.icmp "slt" %22, %17 : i64
    llvm.cond_br %23, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2p.acquire(%14, %15) : (i32, i32) -> ()
    %24 = llvm.load %20 : !llvm.ptr -> i32
    llvm.switch %24 : i32, ^bb3 [
      0: ^bb3,
      1: ^bb4
    ]
  ^bb3:  // 2 preds: ^bb2, ^bb2
    %25 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %26 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %27 = llvm.insertvalue %26, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %9, %28[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %4, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %19, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb5(%31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb4:  // pred: ^bb2
    %32 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %33 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %34 = llvm.insertvalue %33, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %9, %35[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %4, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %19, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb5(%38 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb5(%39: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb3, ^bb4
    llvm.call @llvm.aie2p.acquire(%13, %15) : (i32, i32) -> ()
    %40 = llvm.load %21 : !llvm.ptr -> i32
    llvm.switch %40 : i32, ^bb6 [
      0: ^bb6,
      1: ^bb7
    ]
  ^bb6:  // 2 preds: ^bb5, ^bb5
    %41 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %42 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %43 = llvm.insertvalue %42, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %9, %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %4, %45[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %19, %46[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb8(%47 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb7:  // pred: ^bb5
    %48 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %49 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %50 = llvm.insertvalue %49, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %9, %51[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %4, %52[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %19, %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb8(%54 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb8(%55: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb6, ^bb7
    %56 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @relu_bf16(%56, %57, %18) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2p.release(%12, %16) : (i32, i32) -> ()
    %58 = llvm.load %21 : !llvm.ptr -> i32
    %59 = llvm.add %58, %16 : i32
    %60 = llvm.icmp "sge" %59, %8 : i32
    %61 = llvm.add %58, %15 : i32
    %62 = llvm.select %60, %61, %59 : i1, i32
    llvm.store %62, %21 : i32, !llvm.ptr
    llvm.call @llvm.aie2p.release(%11, %16) : (i32, i32) -> ()
    %63 = llvm.load %20 : !llvm.ptr -> i32
    %64 = llvm.add %63, %16 : i32
    %65 = llvm.icmp "sge" %64, %8 : i32
    %66 = llvm.add %63, %15 : i32
    %67 = llvm.select %65, %66, %64 : i1, i32
    llvm.store %67, %20 : i32, !llvm.ptr
    %68 = llvm.add %22, %19 : i64
    llvm.br ^bb1(%68 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.addressof @in0_0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in0_0_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @out0_0_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @out0_0_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(256 : index) : i64
    %5 = llvm.mlir.poison : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.mlir.constant(3735928559 : index) : i64
    %7 = llvm.mlir.addressof @_anonymous0 : !llvm.ptr
    %8 = llvm.mlir.constant(2 : i32) : i32
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
    %12 = llvm.mlir.constant(48 : i32) : i32
    %13 = llvm.mlir.constant(49 : i32) : i32
    %14 = llvm.mlir.constant(50 : i32) : i32
    %15 = llvm.mlir.constant(-1 : i32) : i32
    %16 = llvm.mlir.constant(1 : i32) : i32
    %17 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %18 = llvm.mlir.constant(256 : i32) : i32
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i32>
    llvm.store %10, %20 : i32, !llvm.ptr
    %21 = llvm.getelementptr inbounds|nuw %20[1] : (!llvm.ptr) -> !llvm.ptr, i32
    llvm.store %10, %21 : i32, !llvm.ptr
    llvm.br ^bb1(%9 : i64)
  ^bb1(%22: i64):  // 2 preds: ^bb0, ^bb8
    %23 = llvm.icmp "slt" %22, %17 : i64
    llvm.cond_br %23, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2p.acquire(%14, %15) : (i32, i32) -> ()
    %24 = llvm.load %20 : !llvm.ptr -> i32
    llvm.switch %24 : i32, ^bb3 [
      0: ^bb3,
      1: ^bb4
    ]
  ^bb3:  // 2 preds: ^bb2, ^bb2
    %25 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %26 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %27 = llvm.insertvalue %26, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %9, %28[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %4, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %19, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb5(%31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb4:  // pred: ^bb2
    %32 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %33 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %34 = llvm.insertvalue %33, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %9, %35[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %4, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %19, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb5(%38 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb5(%39: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb3, ^bb4
    llvm.call @llvm.aie2p.acquire(%13, %15) : (i32, i32) -> ()
    %40 = llvm.load %21 : !llvm.ptr -> i32
    llvm.switch %40 : i32, ^bb6 [
      0: ^bb6,
      1: ^bb7
    ]
  ^bb6:  // 2 preds: ^bb5, ^bb5
    %41 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %42 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %43 = llvm.insertvalue %42, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %9, %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %4, %45[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %19, %46[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb8(%47 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb7:  // pred: ^bb5
    %48 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<256 x bf16>
    %49 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %50 = llvm.insertvalue %49, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %9, %51[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %4, %52[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %19, %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.br ^bb8(%54 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb8(%55: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb6, ^bb7
    %56 = llvm.extractvalue %55[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @relu_bf16(%56, %57, %18) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2p.release(%12, %16) : (i32, i32) -> ()
    %58 = llvm.load %21 : !llvm.ptr -> i32
    %59 = llvm.add %58, %16 : i32
    %60 = llvm.icmp "sge" %59, %8 : i32
    %61 = llvm.add %58, %15 : i32
    %62 = llvm.select %60, %61, %59 : i1, i32
    llvm.store %62, %21 : i32, !llvm.ptr
    llvm.call @llvm.aie2p.release(%11, %16) : (i32, i32) -> ()
    %63 = llvm.load %20 : !llvm.ptr -> i32
    %64 = llvm.add %63, %16 : i32
    %65 = llvm.icmp "sge" %64, %8 : i32
    %66 = llvm.add %63, %15 : i32
    %67 = llvm.select %65, %66, %64 : i1, i32
    llvm.store %67, %20 : i32, !llvm.ptr
    %68 = llvm.add %22, %19 : i64
    llvm.br ^bb1(%68 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
}
