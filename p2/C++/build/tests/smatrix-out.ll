; ModuleID = 'smatrix-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@size = dso_local global i32 64, align 4
@total = dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [30 x i8] c"Native Matrix Multiplication\0A\00", align 1
@RC = dso_local global [1048576 x float] zeroinitializer, align 16
@C = dso_local global [1024 x [1024 x i32]] zeroinitializer, align 16
@RA = dso_local global [1048576 x float] zeroinitializer, align 16
@A = dso_local global [1024 x [1024 x i32]] zeroinitializer, align 16
@RB = dso_local global [1048576 x float] zeroinitializer, align 16
@B = dso_local global [1024 x [1024 x i32]] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"usage:\0A\09smatrix [size]\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Matrix Multiplication Kernel (%dx%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Phase 2\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Phase 3\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Verification total=%g should be 31599.2\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Verification total=%g\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @matmult() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %1, align 4
  br label %5

5:                                                ; preds = %59, %0
  %6 = load i32, ptr %1, align 4
  %7 = load i32, ptr @size, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %62

9:                                                ; preds = %5
  store i32 0, ptr %2, align 4
  br label %10

10:                                               ; preds = %55, %9
  %11 = load i32, ptr %2, align 4
  %12 = load i32, ptr @size, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %16
  %18 = load i32, ptr %17, align 16
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %19
  store float 0.000000e+00, ptr %20, align 4
  store i32 0, ptr %3, align 4
  br label %21

21:                                               ; preds = %51, %14
  %22 = load i32, ptr %3, align 4
  %23 = load i32, ptr @size, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load i32, ptr %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %27
  %29 = load i32, ptr %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1024 x i32], ptr %28, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %27
  %37 = getelementptr inbounds [1024 x i32], ptr %36, i64 0, i64 %30
  %38 = load i32, ptr %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1048576 x float], ptr @RA, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %30
  %43 = load i32, ptr %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1024 x i32], ptr %42, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [1048576 x float], ptr @RB, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = call float @llvm.fmuladd.f32(float %41, float %49, float %35)
  store float %50, ptr %34, align 4
  br label %51

51:                                               ; preds = %25
  %52 = load i32, ptr %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %3, align 4
  br label %21

54:                                               ; preds = %21
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %2, align 4
  br label %10

58:                                               ; preds = %10
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %1, align 4
  br label %5

62:                                               ; preds = %5
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %10 = load i32, ptr %4, align 4
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @exit(i32 noundef 0) #5
  unreachable

14:                                               ; preds = %2
  %15 = load i32, ptr %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @atoi(ptr noundef %20) #6
  store i32 %21, ptr @size, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr @size, align 4
  %25 = icmp sgt i32 %24, 1024
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %17
  store i32 1024, ptr @size, align 4
  br label %27

27:                                               ; preds = %26, %23
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, ptr @size, align 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %29, i32 noundef %29)
  store i32 0, ptr %6, align 4
  br label %31

31:                                               ; preds = %78, %28
  %32 = load i32, ptr %6, align 4
  %33 = load i32, ptr @size, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  store i32 0, ptr %7, align 4
  br label %36

36:                                               ; preds = %74, %35
  %37 = load i32, ptr %7, align 4
  %38 = load i32, ptr @size, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = load i32, ptr %6, align 4
  %42 = load i32, ptr @size, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, ptr %7, align 4
  %45 = mul nsw i32 %44, %42
  %46 = add nsw i32 %43, %45
  %47 = srem i32 %46, %42
  %48 = sext i32 %41 to i64
  %49 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %48
  %50 = sext i32 %44 to i64
  %51 = getelementptr inbounds [1024 x i32], ptr %49, i64 0, i64 %50
  store i32 %47, ptr %51, align 4
  %52 = load i32, ptr %6, align 4
  %53 = load i32, ptr @size, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, ptr %7, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %52 to i64
  %58 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %57
  %59 = sext i32 %55 to i64
  %60 = getelementptr inbounds [1024 x i32], ptr %58, i64 0, i64 %59
  store i32 %56, ptr %60, align 4
  %61 = load i32, ptr %6, align 4
  %62 = load i32, ptr @size, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sdiv i32 %63, 2
  %65 = load i32, ptr %7, align 4
  %66 = mul nsw i32 %65, %62
  %67 = sdiv i32 %66, 2
  %68 = add nsw i32 %64, %67
  %69 = srem i32 %68, %62
  %70 = sext i32 %61 to i64
  %71 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %70
  %72 = sext i32 %65 to i64
  %73 = getelementptr inbounds [1024 x i32], ptr %71, i64 0, i64 %72
  store i32 %69, ptr %73, align 4
  br label %74

74:                                               ; preds = %40
  %75 = load i32, ptr %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %7, align 4
  br label %36

77:                                               ; preds = %36
  br label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %6, align 4
  br label %31

81:                                               ; preds = %31
  store i32 0, ptr %6, align 4
  br label %82

82:                                               ; preds = %125, %81
  %83 = load i32, ptr %6, align 4
  %84 = load i32, ptr @size, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %128

86:                                               ; preds = %82
  store i32 0, ptr %7, align 4
  br label %87

87:                                               ; preds = %121, %86
  %88 = load i32, ptr %7, align 4
  %89 = load i32, ptr @size, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %124

91:                                               ; preds = %87
  %92 = load i32, ptr %6, align 4
  %93 = load i32, ptr %7, align 4
  %94 = mul nsw i32 %92, %93
  %95 = mul nsw i32 %94, %92
  %96 = add nsw i32 %95, 10
  %97 = sitofp i32 %96 to float
  %98 = sext i32 %92 to i64
  %99 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %98
  %100 = sext i32 %93 to i64
  %101 = getelementptr inbounds [1024 x i32], ptr %99, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1048576 x float], ptr @RA, i64 0, i64 %103
  store float %97, ptr %104, align 4
  %105 = load i32, ptr %6, align 4
  %106 = load i32, ptr %7, align 4
  %107 = mul nsw i32 %106, %105
  %108 = mul nsw i32 %105, %106
  %109 = sdiv i32 %108, 3
  %110 = sub nsw i32 %107, %109
  %111 = add nsw i32 %110, 3
  %112 = sdiv i32 %105, %111
  %113 = sitofp i32 %112 to float
  %114 = sext i32 %105 to i64
  %115 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %114
  %116 = sext i32 %106 to i64
  %117 = getelementptr inbounds [1024 x i32], ptr %115, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [1048576 x float], ptr @RB, i64 0, i64 %119
  store float %113, ptr %120, align 4
  br label %121

121:                                              ; preds = %91
  %122 = load i32, ptr %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %7, align 4
  br label %87

124:                                              ; preds = %87
  br label %125

125:                                              ; preds = %124
  %126 = load i32, ptr %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %6, align 4
  br label %82

128:                                              ; preds = %82
  %129 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @matmult()
  %130 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %6, align 4
  br label %131

131:                                              ; preds = %172, %128
  %132 = load i32, ptr %6, align 4
  %133 = load i32, ptr @size, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %175

135:                                              ; preds = %131
  store i32 0, ptr %7, align 4
  br label %136

136:                                              ; preds = %168, %135
  %137 = load i32, ptr %7, align 4
  %138 = load i32, ptr @size, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %171

140:                                              ; preds = %136
  %141 = load i32, ptr %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %142
  %144 = load i32, ptr %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [1024 x i32], ptr %143, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %148
  %150 = load float, ptr %149, align 4
  %151 = fcmp ogt float %150, 3.000000e+06
  br i1 %151, label %152, label %167

152:                                              ; preds = %140
  %153 = load i32, ptr %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %154
  %156 = load i32, ptr %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [1024 x i32], ptr %155, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %160
  %162 = load float, ptr %161, align 4
  %163 = fdiv float %162, 1.000000e+06
  %164 = fpext float %163 to double
  %165 = load double, ptr @total, align 8
  %166 = fadd double %165, %164
  store double %166, ptr @total, align 8
  br label %167

167:                                              ; preds = %152, %140
  br label %168

168:                                              ; preds = %167
  %169 = load i32, ptr %7, align 4
  %170 = add nsw i32 %169, 3
  store i32 %170, ptr %7, align 4
  br label %136

171:                                              ; preds = %136
  br label %172

172:                                              ; preds = %171
  %173 = load i32, ptr %6, align 4
  %174 = add nsw i32 %173, 2
  store i32 %174, ptr %6, align 4
  br label %131

175:                                              ; preds = %131
  %176 = load i32, ptr @size, align 4
  %177 = icmp eq i32 %176, 64
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load double, ptr @total, align 8
  %180 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %179)
  br label %184

181:                                              ; preds = %175
  %182 = load double, ptr @total, align 8
  %183 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %182)
  br label %184

184:                                              ; preds = %181, %178
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
