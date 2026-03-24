; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2p"

@_anonymous7 = external global [2 x i32]
@_anonymous6 = external global [2 x i32]
@_anonymous5 = external global [2 x i32]
@_anonymous4 = external global [2 x i32]
@_anonymous3 = external global [2 x i32]
@_anonymous2 = external global [2 x i32]
@_anonymous1 = external global [2 x i32]
@_anonymous0 = external global [2 x i32]
@in0_0_cons_buff_1 = external global [128 x bfloat]
@in0_0_cons_buff_0 = external global [128 x bfloat]
@in1_0_cons_buff_1 = external global [128 x bfloat]
@in1_0_cons_buff_0 = external global [128 x bfloat]
@in2_0_cons_buff_1 = external global [128 x bfloat]
@in2_0_cons_buff_0 = external global [128 x bfloat]
@in3_0_cons_buff_1 = external global [128 x bfloat]
@in3_0_cons_buff_0 = external global [128 x bfloat]
@in4_0_cons_buff_1 = external global [128 x bfloat]
@in4_0_cons_buff_0 = external global [128 x bfloat]
@in5_0_cons_buff_1 = external global [128 x bfloat]
@in5_0_cons_buff_0 = external global [128 x bfloat]
@in6_0_cons_buff_1 = external global [128 x bfloat]
@in6_0_cons_buff_0 = external global [128 x bfloat]
@in7_0_cons_buff_1 = external global [128 x bfloat]
@in7_0_cons_buff_0 = external global [128 x bfloat]
@out0_0_buff_1 = external global [128 x bfloat]
@out0_0_buff_0 = external global [128 x bfloat]
@out1_0_buff_1 = external global [128 x bfloat]
@out1_0_buff_0 = external global [128 x bfloat]
@out2_0_buff_1 = external global [128 x bfloat]
@out2_0_buff_0 = external global [128 x bfloat]
@out3_0_buff_1 = external global [128 x bfloat]
@out3_0_buff_0 = external global [128 x bfloat]
@out4_0_buff_1 = external global [128 x bfloat]
@out4_0_buff_0 = external global [128 x bfloat]
@out5_0_buff_1 = external global [128 x bfloat]
@out5_0_buff_0 = external global [128 x bfloat]
@out6_0_buff_1 = external global [128 x bfloat]
@out6_0_buff_0 = external global [128 x bfloat]
@out7_0_buff_1 = external global [128 x bfloat]
@out7_0_buff_0 = external global [128 x bfloat]

declare void @debug_i32(i32)

; Unknown intrinsic
declare void @llvm.aie2p.event(i32)

; Unknown intrinsic
declare void @llvm.aie2p.put.ms(i32, i32)

; Unknown intrinsic
declare { i32, i32 } @llvm.aie2p.get.ss()

; Unknown intrinsic
declare void @llvm.aie2p.mcd.write.vec(<16 x i32>, i32)

; Unknown intrinsic
declare <16 x i32> @llvm.aie2p.scd.read.vec(i32)

; Unknown intrinsic
declare void @llvm.aie2p.acquire(i32, i32)

; Unknown intrinsic
declare void @llvm.aie2p.release(i32, i32)

declare void @relu_bf16(ptr, ptr, i32)

define void @core_1_5() {
  store i32 0, ptr @_anonymous7, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous7, i64 4), align 4
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i64 [ %27, %13 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %5 = load i32, ptr @_anonymous7, align 4
  switch i32 %5, label %6 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %4, %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %6, %7
  %9 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out7_0_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %7 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out7_0_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %6 ]
  call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous7, i64 4), align 4
  switch i32 %10, label %11 [
    i32 0, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in7_0_cons_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in7_0_cons_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %11 ]
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, 1
  call void @relu_bf16(ptr %15, ptr %16, i32 128)
  call void @llvm.aie2p.release(i32 48, i32 1)
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous7, i64 4), align 4
  %18 = add i32 %17, 1
  %19 = icmp sge i32 %18, 2
  %20 = add i32 %17, -1
  %21 = select i1 %19, i32 %20, i32 %18
  store i32 %21, ptr getelementptr inbounds nuw (i8, ptr @_anonymous7, i64 4), align 4
  call void @llvm.aie2p.release(i32 51, i32 1)
  %22 = load i32, ptr @_anonymous7, align 4
  %23 = add i32 %22, 1
  %24 = icmp sge i32 %23, 2
  %25 = add i32 %22, -1
  %26 = select i1 %24, i32 %25, i32 %23
  store i32 %26, ptr @_anonymous7, align 4
  %27 = add i64 %2, 1
  br label %1

28:                                               ; preds = %1
  ret void
}

define void @core_1_4() {
  store i32 0, ptr @_anonymous6, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous6, i64 4), align 4
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i64 [ %27, %13 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %5 = load i32, ptr @_anonymous6, align 4
  switch i32 %5, label %6 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %4, %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %6, %7
  %9 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out6_0_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %7 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out6_0_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %6 ]
  call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous6, i64 4), align 4
  switch i32 %10, label %11 [
    i32 0, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in6_0_cons_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in6_0_cons_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %11 ]
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, 1
  call void @relu_bf16(ptr %15, ptr %16, i32 128)
  call void @llvm.aie2p.release(i32 48, i32 1)
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous6, i64 4), align 4
  %18 = add i32 %17, 1
  %19 = icmp sge i32 %18, 2
  %20 = add i32 %17, -1
  %21 = select i1 %19, i32 %20, i32 %18
  store i32 %21, ptr getelementptr inbounds nuw (i8, ptr @_anonymous6, i64 4), align 4
  call void @llvm.aie2p.release(i32 51, i32 1)
  %22 = load i32, ptr @_anonymous6, align 4
  %23 = add i32 %22, 1
  %24 = icmp sge i32 %23, 2
  %25 = add i32 %22, -1
  %26 = select i1 %24, i32 %25, i32 %23
  store i32 %26, ptr @_anonymous6, align 4
  %27 = add i64 %2, 1
  br label %1

28:                                               ; preds = %1
  ret void
}

define void @core_1_3() {
  store i32 0, ptr @_anonymous5, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous5, i64 4), align 4
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i64 [ %27, %13 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %5 = load i32, ptr @_anonymous5, align 4
  switch i32 %5, label %6 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %4, %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %6, %7
  %9 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out5_0_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %7 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out5_0_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %6 ]
  call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous5, i64 4), align 4
  switch i32 %10, label %11 [
    i32 0, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in5_0_cons_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in5_0_cons_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %11 ]
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, 1
  call void @relu_bf16(ptr %15, ptr %16, i32 128)
  call void @llvm.aie2p.release(i32 48, i32 1)
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous5, i64 4), align 4
  %18 = add i32 %17, 1
  %19 = icmp sge i32 %18, 2
  %20 = add i32 %17, -1
  %21 = select i1 %19, i32 %20, i32 %18
  store i32 %21, ptr getelementptr inbounds nuw (i8, ptr @_anonymous5, i64 4), align 4
  call void @llvm.aie2p.release(i32 51, i32 1)
  %22 = load i32, ptr @_anonymous5, align 4
  %23 = add i32 %22, 1
  %24 = icmp sge i32 %23, 2
  %25 = add i32 %22, -1
  %26 = select i1 %24, i32 %25, i32 %23
  store i32 %26, ptr @_anonymous5, align 4
  %27 = add i64 %2, 1
  br label %1

28:                                               ; preds = %1
  ret void
}

define void @core_1_2() {
  store i32 0, ptr @_anonymous4, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous4, i64 4), align 4
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i64 [ %27, %13 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %5 = load i32, ptr @_anonymous4, align 4
  switch i32 %5, label %6 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %4, %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %6, %7
  %9 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out4_0_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %7 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out4_0_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %6 ]
  call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous4, i64 4), align 4
  switch i32 %10, label %11 [
    i32 0, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in4_0_cons_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in4_0_cons_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %11 ]
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, 1
  call void @relu_bf16(ptr %15, ptr %16, i32 128)
  call void @llvm.aie2p.release(i32 48, i32 1)
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous4, i64 4), align 4
  %18 = add i32 %17, 1
  %19 = icmp sge i32 %18, 2
  %20 = add i32 %17, -1
  %21 = select i1 %19, i32 %20, i32 %18
  store i32 %21, ptr getelementptr inbounds nuw (i8, ptr @_anonymous4, i64 4), align 4
  call void @llvm.aie2p.release(i32 51, i32 1)
  %22 = load i32, ptr @_anonymous4, align 4
  %23 = add i32 %22, 1
  %24 = icmp sge i32 %23, 2
  %25 = add i32 %22, -1
  %26 = select i1 %24, i32 %25, i32 %23
  store i32 %26, ptr @_anonymous4, align 4
  %27 = add i64 %2, 1
  br label %1

28:                                               ; preds = %1
  ret void
}

define void @core_0_5() {
  store i32 0, ptr @_anonymous3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous3, i64 4), align 4
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i64 [ %27, %13 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %5 = load i32, ptr @_anonymous3, align 4
  switch i32 %5, label %6 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %4, %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %6, %7
  %9 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out3_0_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %7 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out3_0_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %6 ]
  call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous3, i64 4), align 4
  switch i32 %10, label %11 [
    i32 0, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in3_0_cons_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in3_0_cons_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %11 ]
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, 1
  call void @relu_bf16(ptr %15, ptr %16, i32 128)
  call void @llvm.aie2p.release(i32 48, i32 1)
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous3, i64 4), align 4
  %18 = add i32 %17, 1
  %19 = icmp sge i32 %18, 2
  %20 = add i32 %17, -1
  %21 = select i1 %19, i32 %20, i32 %18
  store i32 %21, ptr getelementptr inbounds nuw (i8, ptr @_anonymous3, i64 4), align 4
  call void @llvm.aie2p.release(i32 51, i32 1)
  %22 = load i32, ptr @_anonymous3, align 4
  %23 = add i32 %22, 1
  %24 = icmp sge i32 %23, 2
  %25 = add i32 %22, -1
  %26 = select i1 %24, i32 %25, i32 %23
  store i32 %26, ptr @_anonymous3, align 4
  %27 = add i64 %2, 1
  br label %1

28:                                               ; preds = %1
  ret void
}

define void @core_0_4() {
  store i32 0, ptr @_anonymous2, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous2, i64 4), align 4
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i64 [ %27, %13 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %5 = load i32, ptr @_anonymous2, align 4
  switch i32 %5, label %6 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %4, %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %6, %7
  %9 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out2_0_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %7 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out2_0_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %6 ]
  call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous2, i64 4), align 4
  switch i32 %10, label %11 [
    i32 0, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in2_0_cons_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in2_0_cons_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %11 ]
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, 1
  call void @relu_bf16(ptr %15, ptr %16, i32 128)
  call void @llvm.aie2p.release(i32 48, i32 1)
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous2, i64 4), align 4
  %18 = add i32 %17, 1
  %19 = icmp sge i32 %18, 2
  %20 = add i32 %17, -1
  %21 = select i1 %19, i32 %20, i32 %18
  store i32 %21, ptr getelementptr inbounds nuw (i8, ptr @_anonymous2, i64 4), align 4
  call void @llvm.aie2p.release(i32 51, i32 1)
  %22 = load i32, ptr @_anonymous2, align 4
  %23 = add i32 %22, 1
  %24 = icmp sge i32 %23, 2
  %25 = add i32 %22, -1
  %26 = select i1 %24, i32 %25, i32 %23
  store i32 %26, ptr @_anonymous2, align 4
  %27 = add i64 %2, 1
  br label %1

28:                                               ; preds = %1
  ret void
}

define void @core_0_3() {
  store i32 0, ptr @_anonymous1, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i64 4), align 4
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i64 [ %27, %13 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %5 = load i32, ptr @_anonymous1, align 4
  switch i32 %5, label %6 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %4, %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %6, %7
  %9 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out1_0_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %7 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out1_0_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %6 ]
  call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i64 4), align 4
  switch i32 %10, label %11 [
    i32 0, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in1_0_cons_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in1_0_cons_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %11 ]
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, 1
  call void @relu_bf16(ptr %15, ptr %16, i32 128)
  call void @llvm.aie2p.release(i32 48, i32 1)
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i64 4), align 4
  %18 = add i32 %17, 1
  %19 = icmp sge i32 %18, 2
  %20 = add i32 %17, -1
  %21 = select i1 %19, i32 %20, i32 %18
  store i32 %21, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i64 4), align 4
  call void @llvm.aie2p.release(i32 51, i32 1)
  %22 = load i32, ptr @_anonymous1, align 4
  %23 = add i32 %22, 1
  %24 = icmp sge i32 %23, 2
  %25 = add i32 %22, -1
  %26 = select i1 %24, i32 %25, i32 %23
  store i32 %26, ptr @_anonymous1, align 4
  %27 = add i64 %2, 1
  br label %1

28:                                               ; preds = %1
  ret void
}

define void @core_0_2() {
  store i32 0, ptr @_anonymous0, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i64 4), align 4
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i64 [ %27, %13 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %5 = load i32, ptr @_anonymous0, align 4
  switch i32 %5, label %6 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %4, %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %6, %7
  %9 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out0_0_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %7 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out0_0_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %6 ]
  call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i64 4), align 4
  switch i32 %10, label %11 [
    i32 0, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %8, %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in0_0_cons_buff_1, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %12 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in0_0_cons_buff_0, i64 0, [1 x i64] [i64 128], [1 x i64] [i64 1] }, %11 ]
  %15 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, 1
  %16 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, 1
  call void @relu_bf16(ptr %15, ptr %16, i32 128)
  call void @llvm.aie2p.release(i32 48, i32 1)
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i64 4), align 4
  %18 = add i32 %17, 1
  %19 = icmp sge i32 %18, 2
  %20 = add i32 %17, -1
  %21 = select i1 %19, i32 %20, i32 %18
  store i32 %21, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i64 4), align 4
  call void @llvm.aie2p.release(i32 51, i32 1)
  %22 = load i32, ptr @_anonymous0, align 4
  %23 = add i32 %22, 1
  %24 = icmp sge i32 %23, 2
  %25 = add i32 %22, -1
  %26 = select i1 %24, i32 %25, i32 %23
  store i32 %26, ptr @_anonymous0, align 4
  %27 = add i64 %2, 1
  br label %1

28:                                               ; preds = %1
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
