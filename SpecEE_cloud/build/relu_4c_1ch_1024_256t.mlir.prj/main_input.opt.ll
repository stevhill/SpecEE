; ModuleID = '/home/steven/thesis/parrallel/SpecEE/SpecEE_cloud/build/relu_4c_1ch_1024_256t.mlir.prj/main_input.llpeanohack.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2p"

@_anonymous3 = external local_unnamed_addr global [2 x i32]
@_anonymous2 = external local_unnamed_addr global [2 x i32]
@_anonymous1 = external local_unnamed_addr global [2 x i32]
@_anonymous0 = external local_unnamed_addr global [2 x i32]
@in0_0_cons_buff_1 = external global [256 x bfloat]
@in0_0_cons_buff_0 = external global [256 x bfloat]
@in1_0_cons_buff_1 = external global [256 x bfloat]
@in1_0_cons_buff_0 = external global [256 x bfloat]
@in2_0_cons_buff_1 = external global [256 x bfloat]
@in2_0_cons_buff_0 = external global [256 x bfloat]
@in3_0_cons_buff_1 = external global [256 x bfloat]
@in3_0_cons_buff_0 = external global [256 x bfloat]
@out0_0_buff_1 = external global [256 x bfloat]
@out0_0_buff_0 = external global [256 x bfloat]
@out1_0_buff_1 = external global [256 x bfloat]
@out1_0_buff_0 = external global [256 x bfloat]
@out2_0_buff_1 = external global [256 x bfloat]
@out2_0_buff_0 = external global [256 x bfloat]
@out3_0_buff_1 = external global [256 x bfloat]
@out3_0_buff_0 = external global [256 x bfloat]

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.aie2p.acquire(i32, i32) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.aie2p.release(i32, i32) #0

declare void @relu_bf16(ptr, ptr, i32) local_unnamed_addr

define void @core_0_5() local_unnamed_addr {
  store i32 0, ptr @_anonymous3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous3, i20 4), align 4
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %17, %1 ]
  tail call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %3 = load i32, ptr @_anonymous3, align 4
  %cond = icmp eq i32 %3, 1
  tail call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous3, i20 4), align 4
  %cond1 = icmp eq i32 %4, 1
  %5 = select i1 %cond1, ptr @in3_0_cons_buff_1, ptr @in3_0_cons_buff_0
  %6 = select i1 %cond, ptr @out3_0_buff_1, ptr @out3_0_buff_0
  tail call void @relu_bf16(ptr nonnull %5, ptr nonnull %6, i32 256)
  tail call void @llvm.aie2p.release(i32 48, i32 1)
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous3, i20 4), align 4
  %8 = add i32 %7, 1
  %9 = icmp sgt i32 %8, 1
  %10 = add i32 %7, -1
  %11 = select i1 %9, i32 %10, i32 %8
  store i32 %11, ptr getelementptr inbounds nuw (i8, ptr @_anonymous3, i20 4), align 4
  tail call void @llvm.aie2p.release(i32 51, i32 1)
  %12 = load i32, ptr @_anonymous3, align 4
  %13 = add i32 %12, 1
  %14 = icmp sgt i32 %13, 1
  %15 = add i32 %12, -1
  %16 = select i1 %14, i32 %15, i32 %13
  store i32 %16, ptr @_anonymous3, align 4
  %17 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %17, 9223372036854775807
  br i1 %.not, label %18, label %1

18:                                               ; preds = %1
  ret void
}

define void @core_0_4() local_unnamed_addr {
  store i32 0, ptr @_anonymous2, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous2, i20 4), align 4
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %17, %1 ]
  tail call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %3 = load i32, ptr @_anonymous2, align 4
  %cond = icmp eq i32 %3, 1
  tail call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous2, i20 4), align 4
  %cond1 = icmp eq i32 %4, 1
  %5 = select i1 %cond1, ptr @in2_0_cons_buff_1, ptr @in2_0_cons_buff_0
  %6 = select i1 %cond, ptr @out2_0_buff_1, ptr @out2_0_buff_0
  tail call void @relu_bf16(ptr nonnull %5, ptr nonnull %6, i32 256)
  tail call void @llvm.aie2p.release(i32 48, i32 1)
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous2, i20 4), align 4
  %8 = add i32 %7, 1
  %9 = icmp sgt i32 %8, 1
  %10 = add i32 %7, -1
  %11 = select i1 %9, i32 %10, i32 %8
  store i32 %11, ptr getelementptr inbounds nuw (i8, ptr @_anonymous2, i20 4), align 4
  tail call void @llvm.aie2p.release(i32 51, i32 1)
  %12 = load i32, ptr @_anonymous2, align 4
  %13 = add i32 %12, 1
  %14 = icmp sgt i32 %13, 1
  %15 = add i32 %12, -1
  %16 = select i1 %14, i32 %15, i32 %13
  store i32 %16, ptr @_anonymous2, align 4
  %17 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %17, 9223372036854775807
  br i1 %.not, label %18, label %1

18:                                               ; preds = %1
  ret void
}

define void @core_0_3() local_unnamed_addr {
  store i32 0, ptr @_anonymous1, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %17, %1 ]
  tail call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %3 = load i32, ptr @_anonymous1, align 4
  %cond = icmp eq i32 %3, 1
  tail call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  %cond1 = icmp eq i32 %4, 1
  %5 = select i1 %cond1, ptr @in1_0_cons_buff_1, ptr @in1_0_cons_buff_0
  %6 = select i1 %cond, ptr @out1_0_buff_1, ptr @out1_0_buff_0
  tail call void @relu_bf16(ptr nonnull %5, ptr nonnull %6, i32 256)
  tail call void @llvm.aie2p.release(i32 48, i32 1)
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  %8 = add i32 %7, 1
  %9 = icmp sgt i32 %8, 1
  %10 = add i32 %7, -1
  %11 = select i1 %9, i32 %10, i32 %8
  store i32 %11, ptr getelementptr inbounds nuw (i8, ptr @_anonymous1, i20 4), align 4
  tail call void @llvm.aie2p.release(i32 51, i32 1)
  %12 = load i32, ptr @_anonymous1, align 4
  %13 = add i32 %12, 1
  %14 = icmp sgt i32 %13, 1
  %15 = add i32 %12, -1
  %16 = select i1 %14, i32 %15, i32 %13
  store i32 %16, ptr @_anonymous1, align 4
  %17 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %17, 9223372036854775807
  br i1 %.not, label %18, label %1

18:                                               ; preds = %1
  ret void
}

define void @core_0_2() local_unnamed_addr {
  store i32 0, ptr @_anonymous0, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %17, %1 ]
  tail call void @llvm.aie2p.acquire(i32 50, i32 -1)
  %3 = load i32, ptr @_anonymous0, align 4
  %cond = icmp eq i32 %3, 1
  tail call void @llvm.aie2p.acquire(i32 49, i32 -1)
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  %cond1 = icmp eq i32 %4, 1
  %5 = select i1 %cond1, ptr @in0_0_cons_buff_1, ptr @in0_0_cons_buff_0
  %6 = select i1 %cond, ptr @out0_0_buff_1, ptr @out0_0_buff_0
  tail call void @relu_bf16(ptr nonnull %5, ptr nonnull %6, i32 256)
  tail call void @llvm.aie2p.release(i32 48, i32 1)
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  %8 = add i32 %7, 1
  %9 = icmp sgt i32 %8, 1
  %10 = add i32 %7, -1
  %11 = select i1 %9, i32 %10, i32 %8
  store i32 %11, ptr getelementptr inbounds nuw (i8, ptr @_anonymous0, i20 4), align 4
  tail call void @llvm.aie2p.release(i32 51, i32 1)
  %12 = load i32, ptr @_anonymous0, align 4
  %13 = add i32 %12, 1
  %14 = icmp sgt i32 %13, 1
  %15 = add i32 %12, -1
  %16 = select i1 %14, i32 %15, i32 %13
  store i32 %16, ptr @_anonymous0, align 4
  %17 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %17, 9223372036854775807
  br i1 %.not, label %18, label %1

18:                                               ; preds = %1
  ret void
}

attributes #0 = { mustprogress nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
