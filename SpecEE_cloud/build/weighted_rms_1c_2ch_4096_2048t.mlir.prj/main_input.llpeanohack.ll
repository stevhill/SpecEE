; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2p"

@_anonymous1 = external global [3 x i32]
@_anonymous0 = external global [2 x i32]
@in1_0_cons_buff_1 = external global [2048 x bfloat]
@in1_0_cons_buff_0 = external global [2048 x bfloat]
@in2_weights_cons_buff_1 = external global [2048 x bfloat]
@in2_weights_cons_buff_0 = external global [2048 x bfloat]
@out1_0_buff_1 = external global [2048 x bfloat]
@out1_0_buff_0 = external global [2048 x bfloat]
@out2_0_buff_1 = external global [2048 x bfloat]
@out2_0_buff_0 = external global [2048 x bfloat]

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

declare void @rms_norm_bf16_vector(ptr, ptr, i32)

declare void @eltwise_mul_bf16_vector(ptr, ptr, ptr, i32)

define void @core_0_3() {
  store i32 0, ptr @_anonymous1
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 4)
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8)
  br label %1

1:                                                ; preds = %38, %0
  %2 = phi i64 [ %44, %38 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %45

4:                                                ; preds = %1
  call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %5 = load i32, ptr @_anonymous1
  switch i32 %5, label %6 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %4, %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %6, %7
  %9 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in2_weights_cons_buff_1, i64 0, [1 x i64] [i64 2048], [1 x i64] [i64 1] }, %7 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in2_weights_cons_buff_0, i64 0, [1 x i64] [i64 2048], [1 x i64] [i64 1] }, %6 ]
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi i64 [ %37, %22 ], [ 0, %8 ]
  %12 = icmp slt i64 %11, 2
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  call void @llvm.aie2p.acquire(i32 3, i32 -1)
  %14 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 4)
  switch i32 %14, label %15 [
    i32 0, label %15
    i32 1, label %16
  ]

15:                                               ; preds = %13, %13
  br label %17

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %15, %16
  %18 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out1_0_buff_1, i64 0, [1 x i64] [i64 2048], [1 x i64] [i64 1] }, %16 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out1_0_buff_0, i64 0, [1 x i64] [i64 2048], [1 x i64] [i64 1] }, %15 ]
  call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %19 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8)
  switch i32 %19, label %20 [
    i32 0, label %20
    i32 1, label %21
  ]

20:                                               ; preds = %17, %17
  br label %22

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %20, %21
  %23 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out2_0_buff_1, i64 0, [1 x i64] [i64 2048], [1 x i64] [i64 1] }, %21 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out2_0_buff_0, i64 0, [1 x i64] [i64 2048], [1 x i64] [i64 1] }, %20 ]
  %24 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %18, 1
  %25 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, 1
  %26 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, 1
  call void @eltwise_mul_bf16_vector(ptr %24, ptr %25, ptr %26, i32 2048)
  call void @llvm.aie2p.release(i32 2, i32 1)
  %27 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 4)
  %28 = add i32 %27, 1
  %29 = icmp sge i32 %28, 2
  %30 = add i32 %27, -1
  %31 = select i1 %29, i32 %30, i32 %28
  store i32 %31, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 4)
  call void @llvm.aie2p.release(i32 51, i32 1)
  %32 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8)
  %33 = add i32 %32, 1
  %34 = icmp sge i32 %33, 2
  %35 = add i32 %32, -1
  %36 = select i1 %34, i32 %35, i32 %33
  store i32 %36, ptr getelementptr inbounds (i8, ptr @_anonymous1, i64 8)
  %37 = add i64 %11, 1
  br label %10

38:                                               ; preds = %10
  call void @llvm.aie2p.release(i32 48, i32 1)
  %39 = load i32, ptr @_anonymous1
  %40 = add i32 %39, 1
  %41 = icmp sge i32 %40, 2
  %42 = add i32 %39, -1
  %43 = select i1 %41, i32 %42, i32 %40
  store i32 %43, ptr @_anonymous1
  %44 = add i64 %2, 1
  br label %1

45:                                               ; preds = %1
  ret void
}

define void @core_0_2() {
  store i32 0, ptr @_anonymous0
  store i32 0, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4)
  br label %1

1:                                                ; preds = %31, %0
  %2 = phi i64 [ %32, %31 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %33

4:                                                ; preds = %16, %1
  %5 = phi i64 [ %30, %16 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 2
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %8 = load i32, ptr @_anonymous0
  switch i32 %8, label %9 [
    i32 0, label %9
    i32 1, label %10
  ]

9:                                                ; preds = %7, %7
  br label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %9, %10
  %12 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in1_0_cons_buff_1, i64 0, [1 x i64] [i64 2048], [1 x i64] [i64 1] }, %10 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @in1_0_cons_buff_0, i64 0, [1 x i64] [i64 2048], [1 x i64] [i64 1] }, %9 ]
  call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %13 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4)
  switch i32 %13, label %14 [
    i32 0, label %14
    i32 1, label %15
  ]

14:                                               ; preds = %11, %11
  br label %16

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %14, %15
  %17 = phi { ptr, ptr, i64, [1 x i64], [1 x i64] } [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out1_0_buff_1, i64 0, [1 x i64] [i64 2048], [1 x i64] [i64 1] }, %15 ], [ { ptr inttoptr (i64 3735928559 to ptr), ptr @out1_0_buff_0, i64 0, [1 x i64] [i64 2048], [1 x i64] [i64 1] }, %14 ]
  %18 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, 1
  %19 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, 1
  call void @rms_norm_bf16_vector(ptr %18, ptr %19, i32 2048)
  call void @llvm.aie2p.release(i32 48, i32 1)
  %20 = load i32, ptr @_anonymous0
  %21 = add i32 %20, 1
  %22 = icmp sge i32 %21, 2
  %23 = add i32 %20, -1
  %24 = select i1 %22, i32 %23, i32 %21
  store i32 %24, ptr @_anonymous0
  call void @llvm.aie2p.release(i32 51, i32 1)
  %25 = load i32, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4)
  %26 = add i32 %25, 1
  %27 = icmp sge i32 %26, 2
  %28 = add i32 %25, -1
  %29 = select i1 %27, i32 %28, i32 %26
  store i32 %29, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4)
  %30 = add i64 %5, 1
  br label %4

31:                                               ; preds = %4
  %32 = add i64 %2, 1
  br label %1

33:                                               ; preds = %1
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
