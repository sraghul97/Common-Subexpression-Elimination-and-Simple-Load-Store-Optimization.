; ModuleID = 'l2lat-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@a = dso_local global [160000 x ptr] zeroinitializer, align 16
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"Time is %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"L2 Latency (ns) is %g\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"L2 BW is %f MB/sec\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"b is %ld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, ptr %1, align 4
  store i64 0, ptr %5, align 8
  br label %10

10:                                               ; preds = %18, %0
  %11 = load i64, ptr %5, align 8
  %12 = icmp slt i64 %11, 160000
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i64, ptr %5, align 8
  %15 = add nsw i64 %14, 1
  %16 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %15
  %17 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %14
  store ptr %16, ptr %17, align 8
  br label %18

18:                                               ; preds = %13
  %19 = load i64, ptr %5, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, ptr %5, align 8
  br label %10

21:                                               ; preds = %10
  %22 = call double (...) @second()
  store double %22, ptr %2, align 8
  store i64 0, ptr %5, align 8
  br label %23

23:                                               ; preds = %39, %21
  %24 = load i64, ptr %5, align 8
  %25 = icmp slt i64 %24, 1500
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds ([160000 x ptr], ptr @a, i64 0, i64 7), align 8
  store ptr %27, ptr %3, align 8
  store i64 0, ptr %7, align 8
  br label %28

28:                                               ; preds = %35, %26
  %29 = load i64, ptr %7, align 8
  %30 = icmp slt i64 %29, 5000
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds ptr, ptr %32, i64 8
  %34 = load ptr, ptr %33, align 8
  store ptr %34, ptr %3, align 8
  br label %35

35:                                               ; preds = %31
  %36 = load i64, ptr %7, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, ptr %7, align 8
  br label %28

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i64, ptr %5, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, ptr %5, align 8
  br label %23

42:                                               ; preds = %23
  %43 = call double (...) @second()
  %44 = load double, ptr %2, align 8
  %45 = fsub double %43, %44
  store double %45, ptr %2, align 8
  %46 = load ptr, ptr @stderr, align 8
  %47 = load double, ptr %2, align 8
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str, double noundef %47)
  %49 = fdiv double %47, 7.500000e+06
  %50 = fmul double %49, 1.000000e+09
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.1, double noundef %50)
  %52 = fmul double %47, 1.000000e+06
  %53 = fdiv double 4.800000e+08, %52
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.2, double noundef %53)
  %55 = load ptr, ptr %3, align 8
  %56 = ptrtoint ptr %55 to i64
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.3, i64 noundef %56)
  ret i32 0
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @second() #0 {
  %1 = alloca double, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = call i32 @gettimeofday(ptr noundef %2, ptr noundef null) #3
  %4 = getelementptr inbounds %struct.timeval, ptr %2, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = sitofp i64 %5 to double
  %7 = fdiv double %6, 1.000000e+06
  store double %7, ptr %1, align 8
  %8 = load i64, ptr %2, align 8
  %9 = sitofp i64 %8 to double
  %10 = load double, ptr %1, align 8
  %11 = fadd double %10, %9
  store double %11, ptr %1, align 8
  ret double %11
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
