; ModuleID = '/home/steven/thesis/parrallel/SpecEE/SpecEE_cloud/build/weighted_rms_1c_2ch_4096_2048t.mlir.prj/main_input.llpeanohack.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2p"

@_anonymous1 = external local_unnamed_addr global [3 x i32]
@_anonymous0 = external local_unnamed_addr global [2 x i32]
@in1_0_cons_buff_1 = external global [2048 x bfloat]
@in1_0_cons_buff_0 = external global [2048 x bfloat]
@in2_weights_cons_buff_1 = external global [2048 x bfloat]
@in2_weights_cons_buff_0 = external global [2048 x bfloat]
@out1_0_buff_1 = external global [2048 x bfloat]
@out1_0_buff_0 = external global [2048 x bfloat]
@out2_0_buff_1 = external global [2048 x bfloat]
@out2_0_buff_0 = external global [2048 x bfloat]

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.aie2p.acquire(i32, i32) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.aie2p.release(i32, i32) #0

declare void @rms_norm_bf16_vector(ptr, ptr, i32) local_unnamed_addr

declare void @eltwise_mul_bf16_vector(ptr, ptr, ptr, i32) local_unnamed_addr

define void @core_0_3() local_unnamed_addr {
  store i32 0, ptr @_anonymous1, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 8), align 4
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %38, %1 ]
  tail call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %3 = load i32, ptr @_anonymous1, align 4
  %cond = icmp eq i32 %3, 1
  %4 = select i1 %cond, ptr @in2_weights_cons_buff_1, ptr @in2_weights_cons_buff_0
  tail call void @llvm.aie2p.acquire(i32 3, i32 -1)
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  %cond1 = icmp eq i32 %5, 1
  tail call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 8), align 4
  %cond2 = icmp eq i32 %6, 1
  %7 = select i1 %cond1, ptr @out1_0_buff_1, ptr @out1_0_buff_0
  %8 = select i1 %cond2, ptr @out2_0_buff_1, ptr @out2_0_buff_0
  tail call void @eltwise_mul_bf16_vector(ptr nonnull %7, ptr nonnull %4, ptr nonnull %8, i32 2048)
  tail call void @llvm.aie2p.release(i32 2, i32 1)
  %9 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  %10 = add i32 %9, 1
  %11 = icmp sgt i32 %10, 1
  %12 = add i32 %9, -1
  %13 = select i1 %11, i32 %12, i32 %10
  store i32 %13, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  tail call void @llvm.aie2p.release(i32 51, i32 1)
  %14 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 8), align 4
  %15 = add i32 %14, 1
  %16 = icmp sgt i32 %15, 1
  %17 = add i32 %14, -1
  %18 = select i1 %16, i32 %17, i32 %15
  store i32 %18, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 8), align 4
  tail call void @llvm.aie2p.acquire(i32 3, i32 -1)
  %19 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  %cond1.1 = icmp eq i32 %19, 1
  tail call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %20 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 8), align 4
  %cond2.1 = icmp eq i32 %20, 1
  %21 = select i1 %cond1.1, ptr @out1_0_buff_1, ptr @out1_0_buff_0
  %22 = select i1 %cond2.1, ptr @out2_0_buff_1, ptr @out2_0_buff_0
  tail call void @eltwise_mul_bf16_vector(ptr nonnull %21, ptr nonnull %4, ptr nonnull %22, i32 2048)
  tail call void @llvm.aie2p.release(i32 2, i32 1)
  %23 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  %24 = add i32 %23, 1
  %25 = icmp sgt i32 %24, 1
  %26 = add i32 %23, -1
  %27 = select i1 %25, i32 %26, i32 %24
  store i32 %27, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  tail call void @llvm.aie2p.release(i32 51, i32 1)
  %28 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 8), align 4
  %29 = add i32 %28, 1
  %30 = icmp sgt i32 %29, 1
  %31 = add i32 %28, -1
  %32 = select i1 %30, i32 %31, i32 %29
  store i32 %32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 8), align 4
  tail call void @llvm.aie2p.release(i32 48, i32 1)
  %33 = load i32, ptr @_anonymous1, align 4
  %34 = add i32 %33, 1
  %35 = icmp sgt i32 %34, 1
  %36 = add i32 %33, -1
  %37 = select i1 %35, i32 %36, i32 %34
  store i32 %37, ptr @_anonymous1, align 4
  %38 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %38, 9223372036854775807
  br i1 %.not, label %39, label %1

39:                                               ; preds = %1
  ret void
}

define void @core_0_2() local_unnamed_addr {
  store i32 0, ptr @_anonymous0, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  br label %.preheader

.preheader:                                       ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %0 ], [ %30, %.preheader ]
  tail call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %2 = load i32, ptr @_anonymous0, align 4
  %cond = icmp eq i32 %2, 1
  tail call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  %cond1 = icmp eq i32 %3, 1
  %4 = select i1 %cond, ptr @in1_0_cons_buff_1, ptr @in1_0_cons_buff_0
  %5 = select i1 %cond1, ptr @out1_0_buff_1, ptr @out1_0_buff_0
  tail call void @rms_norm_bf16_vector(ptr nonnull %4, ptr nonnull %5, i32 2048)
  tail call void @llvm.aie2p.release(i32 48, i32 1)
  %6 = load i32, ptr @_anonymous0, align 4
  %7 = add i32 %6, 1
  %8 = icmp sgt i32 %7, 1
  %9 = add i32 %6, -1
  %10 = select i1 %8, i32 %9, i32 %7
  store i32 %10, ptr @_anonymous0, align 4
  tail call void @llvm.aie2p.release(i32 51, i32 1)
  %11 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  %12 = add i32 %11, 1
  %13 = icmp sgt i32 %12, 1
  %14 = add i32 %11, -1
  %15 = select i1 %13, i32 %14, i32 %12
  store i32 %15, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  tail call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %16 = load i32, ptr @_anonymous0, align 4
  %cond.1 = icmp eq i32 %16, 1
  tail call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  %cond1.1 = icmp eq i32 %17, 1
  %18 = select i1 %cond.1, ptr @in1_0_cons_buff_1, ptr @in1_0_cons_buff_0
  %19 = select i1 %cond1.1, ptr @out1_0_buff_1, ptr @out1_0_buff_0
  tail call void @rms_norm_bf16_vector(ptr nonnull %18, ptr nonnull %19, i32 2048)
  tail call void @llvm.aie2p.release(i32 48, i32 1)
  %20 = load i32, ptr @_anonymous0, align 4
  %21 = add i32 %20, 1
  %22 = icmp sgt i32 %21, 1
  %23 = add i32 %20, -1
  %24 = select i1 %22, i32 %23, i32 %21
  store i32 %24, ptr @_anonymous0, align 4
  tail call void @llvm.aie2p.release(i32 51, i32 1)
  %25 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  %26 = add i32 %25, 1
  %27 = icmp sgt i32 %26, 1
  %28 = add i32 %25, -1
  %29 = select i1 %27, i32 %28, i32 %26
  store i32 %29, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  %30 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %30, 9223372036854775807
  br i1 %.not, label %31, label %.preheader

31:                                               ; preds = %.preheader
  ret void
}

attributes #0 = { mustprogress nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
