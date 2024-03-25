; ModuleID = 'fft-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Usage: fft <waves> <length> -i\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"-i performs an inverse fft\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"<length> is the number of samples\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"RealOut:\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ImagOut:\0A\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@stderr = external global ptr, align 8
@.str.12 = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1.13 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2.14 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3.15 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4.16 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 0, ptr %16, align 4
  %17 = load i32, ptr %4, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @exit(i32 noundef -1) #7
  unreachable

24:                                               ; preds = %2
  %25 = load i32, ptr %4, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = call i32 @strncmp(ptr noundef %30, ptr noundef @.str.4, i64 noundef 2) #8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, ptr %16, align 4
  br label %35

35:                                               ; preds = %27, %24
  br label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @atoi(ptr noundef %39) #8
  store i32 %40, ptr %6, align 4
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8
  %44 = call i32 @atoi(ptr noundef %43) #8
  store i32 %44, ptr %7, align 4
  call void @srand(i32 noundef 1) #9
  %45 = load i32, ptr %6, align 4
  %46 = zext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = call noalias ptr @malloc(i64 noundef %47) #10
  store ptr %48, ptr %10, align 8
  %49 = load i32, ptr %6, align 4
  %50 = zext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = call noalias ptr @malloc(i64 noundef %51) #10
  store ptr %52, ptr %11, align 8
  %53 = load i32, ptr %6, align 4
  %54 = zext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = call noalias ptr @malloc(i64 noundef %55) #10
  store ptr %56, ptr %12, align 8
  %57 = load i32, ptr %6, align 4
  %58 = zext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = call noalias ptr @malloc(i64 noundef %59) #10
  store ptr %60, ptr %13, align 8
  %61 = load i32, ptr %7, align 4
  %62 = zext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = call noalias ptr @malloc(i64 noundef %63) #10
  store ptr %64, ptr %14, align 8
  %65 = load i32, ptr %7, align 4
  %66 = zext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = call noalias ptr @malloc(i64 noundef %67) #10
  store ptr %68, ptr %15, align 8
  store i32 0, ptr %8, align 4
  br label %69

69:                                               ; preds = %88, %36
  %70 = load i32, ptr %8, align 4
  %71 = load i32, ptr %7, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = call i32 @rand() #9
  %75 = srem i32 %74, 1000
  %76 = sitofp i32 %75 to float
  %77 = load ptr, ptr %14, align 8
  %78 = load i32, ptr %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %77, i64 %79
  store float %76, ptr %80, align 4
  %81 = call i32 @rand() #9
  %82 = srem i32 %81, 1000
  %83 = sitofp i32 %82 to float
  %84 = load ptr, ptr %15, align 8
  %85 = load i32, ptr %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds float, ptr %84, i64 %86
  store float %83, ptr %87, align 4
  br label %88

88:                                               ; preds = %73
  %89 = load i32, ptr %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %8, align 4
  br label %69

91:                                               ; preds = %69
  store i32 0, ptr %8, align 4
  br label %92

92:                                               ; preds = %162, %91
  %93 = load i32, ptr %8, align 4
  %94 = load i32, ptr %6, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %165

96:                                               ; preds = %92
  %97 = load ptr, ptr %10, align 8
  %98 = load i32, ptr %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds float, ptr %97, i64 %99
  store float 0.000000e+00, ptr %100, align 4
  store i32 0, ptr %9, align 4
  br label %101

101:                                              ; preds = %158, %96
  %102 = load i32, ptr %9, align 4
  %103 = load i32, ptr %7, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %161

105:                                              ; preds = %101
  %106 = call i32 @rand() #9
  %107 = srem i32 %106, 2
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = load ptr, ptr %14, align 8
  %111 = load i32, ptr %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds float, ptr %110, i64 %112
  %114 = load float, ptr %113, align 4
  %115 = fpext float %114 to double
  %116 = load ptr, ptr %15, align 8
  %117 = getelementptr inbounds float, ptr %116, i64 %112
  %118 = load float, ptr %117, align 4
  %119 = load i32, ptr %8, align 4
  %120 = uitofp i32 %119 to float
  %121 = fmul float %118, %120
  %122 = fpext float %121 to double
  %123 = call double @cos(double noundef %122) #9
  %124 = load ptr, ptr %10, align 8
  %125 = zext i32 %119 to i64
  %126 = getelementptr inbounds float, ptr %124, i64 %125
  %127 = load float, ptr %126, align 4
  %128 = fpext float %127 to double
  %129 = call double @llvm.fmuladd.f64(double %115, double %123, double %128)
  %130 = fptrunc double %129 to float
  store float %130, ptr %126, align 4
  br label %153

131:                                              ; preds = %105
  %132 = load ptr, ptr %14, align 8
  %133 = load i32, ptr %9, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds float, ptr %132, i64 %134
  %136 = load float, ptr %135, align 4
  %137 = fpext float %136 to double
  %138 = load ptr, ptr %15, align 8
  %139 = getelementptr inbounds float, ptr %138, i64 %134
  %140 = load float, ptr %139, align 4
  %141 = load i32, ptr %8, align 4
  %142 = uitofp i32 %141 to float
  %143 = fmul float %140, %142
  %144 = fpext float %143 to double
  %145 = call double @sin(double noundef %144) #9
  %146 = load ptr, ptr %10, align 8
  %147 = zext i32 %141 to i64
  %148 = getelementptr inbounds float, ptr %146, i64 %147
  %149 = load float, ptr %148, align 4
  %150 = fpext float %149 to double
  %151 = call double @llvm.fmuladd.f64(double %137, double %145, double %150)
  %152 = fptrunc double %151 to float
  store float %152, ptr %148, align 4
  br label %153

153:                                              ; preds = %131, %109
  %154 = load ptr, ptr %11, align 8
  %155 = load i32, ptr %8, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds float, ptr %154, i64 %156
  store float 0.000000e+00, ptr %157, align 4
  br label %158

158:                                              ; preds = %153
  %159 = load i32, ptr %9, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %9, align 4
  br label %101

161:                                              ; preds = %101
  br label %162

162:                                              ; preds = %161
  %163 = load i32, ptr %8, align 4
  %164 = add i32 %163, 1
  store i32 %164, ptr %8, align 4
  br label %92

165:                                              ; preds = %92
  %166 = load i32, ptr %6, align 4
  %167 = load i32, ptr %16, align 4
  %168 = load ptr, ptr %10, align 8
  %169 = load ptr, ptr %11, align 8
  %170 = load ptr, ptr %12, align 8
  %171 = load ptr, ptr %13, align 8
  %172 = call i32 (i32, i32, ptr, ptr, ptr, ptr, ...) @fft_float(i32 noundef %166, i32 noundef %167, ptr noundef %168, ptr noundef %169, ptr noundef %170, ptr noundef %171)
  %173 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i32 0, ptr %8, align 4
  br label %174

174:                                              ; preds = %186, %165
  %175 = load i32, ptr %8, align 4
  %176 = load i32, ptr %6, align 4
  %177 = icmp ult i32 %175, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load ptr, ptr %12, align 8
  %180 = load i32, ptr %8, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds float, ptr %179, i64 %181
  %183 = load float, ptr %182, align 4
  %184 = fpext float %183 to double
  %185 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i32, ptr %8, align 4
  %188 = add i32 %187, 1
  store i32 %188, ptr %8, align 4
  br label %174

189:                                              ; preds = %174
  %190 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %191 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %8, align 4
  br label %192

192:                                              ; preds = %204, %189
  %193 = load i32, ptr %8, align 4
  %194 = load i32, ptr %6, align 4
  %195 = icmp ult i32 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = load ptr, ptr %13, align 8
  %198 = load i32, ptr %8, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds float, ptr %197, i64 %199
  %201 = load float, ptr %200, align 4
  %202 = fpext float %201 to double
  %203 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %202)
  br label %204

204:                                              ; preds = %196
  %205 = load i32, ptr %8, align 4
  %206 = add i32 %205, 1
  store i32 %206, ptr %8, align 4
  br label %192

207:                                              ; preds = %192
  %208 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %209 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %209) #9
  %210 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %210) #9
  %211 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %211) #9
  %212 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %212) #9
  %213 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %213) #9
  %214 = load ptr, ptr %15, align 8
  call void @free(ptr noundef %214) #9
  call void @exit(i32 noundef 0) #7
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #3

; Function Attrs: nounwind
declare void @srand(i32 noundef) #4

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: nounwind
declare double @cos(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind
declare double @sin(double noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @IsPowerOfTwo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = icmp ult i32 %0, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %13

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4
  %8 = sub i32 %7, 1
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 0, ptr %2, align 4
  br label %13

12:                                               ; preds = %6
  store i32 1, ptr %2, align 4
  br label %13

13:                                               ; preds = %12, %11, %5
  %14 = load i32, ptr %2, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NumberOfBitsNeeded(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = icmp ult i32 %0, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8
  %7 = load i32, ptr %2, align 4
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.9, i32 noundef %7)
  call void @exit(i32 noundef 1) #7
  unreachable

9:                                                ; preds = %1
  store i32 0, ptr %3, align 4
  br label %10

10:                                               ; preds = %19, %9
  %11 = load i32, ptr %2, align 4
  %12 = load i32, ptr %3, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, ptr %3, align 4
  ret i32 %17

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %3, align 4
  br label %10
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ReverseBits(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i32, ptr %6, align 4
  %13 = shl i32 %12, 1
  %14 = load i32, ptr %3, align 4
  %15 = and i32 %14, 1
  %16 = or i32 %13, %15
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %3, align 4
  %18 = lshr i32 %17, 1
  store i32 %18, ptr %3, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %5, align 4
  br label %7

22:                                               ; preds = %7
  %23 = load i32, ptr %6, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @Index_to_frequency(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp uge i32 %1, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store double 0.000000e+00, ptr %3, align 8
  br label %29

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 4
  %11 = load i32, ptr %4, align 4
  %12 = udiv i32 %11, 2
  %13 = icmp ule i32 %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, ptr %5, align 4
  %16 = uitofp i32 %15 to double
  %17 = load i32, ptr %4, align 4
  %18 = uitofp i32 %17 to double
  %19 = fdiv double %16, %18
  store double %19, ptr %3, align 8
  br label %29

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, ptr %4, align 4
  %23 = load i32, ptr %5, align 4
  %24 = sub i32 %22, %23
  %25 = uitofp i32 %24 to double
  %26 = fneg double %25
  %27 = uitofp i32 %22 to double
  %28 = fdiv double %26, %27
  store double %28, ptr %3, align 8
  br label %29

29:                                               ; preds = %21, %14, %8
  %30 = load double, ptr %3, align 8
  ret double %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fft_float(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca [3 x double], align 16
  %30 = alloca [3 x double], align 16
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  store i32 %0, ptr %7, align 4
  store i32 %1, ptr %8, align 4
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  store double 0x401921FB54442D18, ptr %20, align 8
  %33 = load i32, ptr %7, align 4
  %34 = call i32 @IsPowerOfTwo(i32 noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %6
  %37 = load ptr, ptr @stderr, align 8
  %38 = load i32, ptr %7, align 4
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.12, i32 noundef %38)
  call void @exit(i32 noundef 1) #7
  unreachable

40:                                               ; preds = %6
  %41 = load i32, ptr %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load double, ptr %20, align 8
  %45 = fneg double %44
  store double %45, ptr %20, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr %9, align 8
  call void @CheckPointer(ptr noundef %47, ptr noundef @.str.1.13)
  %48 = load ptr, ptr %11, align 8
  call void @CheckPointer(ptr noundef %48, ptr noundef @.str.2.14)
  %49 = load ptr, ptr %12, align 8
  call void @CheckPointer(ptr noundef %49, ptr noundef @.str.3.15)
  %50 = load i32, ptr %7, align 4
  %51 = call i32 @NumberOfBitsNeeded(i32 noundef %50)
  store i32 %51, ptr %13, align 4
  store i32 0, ptr %14, align 4
  br label %52

52:                                               ; preds = %86, %46
  %53 = load i32, ptr %14, align 4
  %54 = load i32, ptr %7, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load i32, ptr %14, align 4
  %58 = load i32, ptr %13, align 4
  %59 = call i32 @ReverseBits(i32 noundef %57, i32 noundef %58)
  store i32 %59, ptr %15, align 4
  %60 = load ptr, ptr %9, align 8
  %61 = load i32, ptr %14, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %60, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = load ptr, ptr %11, align 8
  %66 = load i32, ptr %15, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %65, i64 %67
  store float %64, ptr %68, align 4
  %69 = load ptr, ptr %10, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  br label %79

72:                                               ; preds = %56
  %73 = load ptr, ptr %10, align 8
  %74 = load i32, ptr %14, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds float, ptr %73, i64 %75
  %77 = load float, ptr %76, align 4
  %78 = fpext float %77 to double
  br label %79

79:                                               ; preds = %72, %71
  %80 = phi double [ 0.000000e+00, %71 ], [ %78, %72 ]
  %81 = fptrunc double %80 to float
  %82 = load ptr, ptr %12, align 8
  %83 = load i32, ptr %15, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds float, ptr %82, i64 %84
  store float %81, ptr %85, align 4
  br label %86

86:                                               ; preds = %79
  %87 = load i32, ptr %14, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %14, align 4
  br label %52

89:                                               ; preds = %52
  store i32 1, ptr %19, align 4
  store i32 2, ptr %18, align 4
  br label %90

90:                                               ; preds = %230, %89
  %91 = load i32, ptr %18, align 4
  %92 = load i32, ptr %7, align 4
  %93 = icmp ule i32 %91, %92
  br i1 %93, label %94, label %233

94:                                               ; preds = %90
  %95 = load double, ptr %20, align 8
  %96 = load i32, ptr %18, align 4
  %97 = uitofp i32 %96 to double
  %98 = fdiv double %95, %97
  store double %98, ptr %23, align 8
  %99 = fmul double -2.000000e+00, %98
  %100 = call double @sin(double noundef %99) #9
  store double %100, ptr %24, align 8
  %101 = load double, ptr %23, align 8
  %102 = fneg double %101
  %103 = call double @sin(double noundef %102) #9
  store double %103, ptr %25, align 8
  %104 = load double, ptr %23, align 8
  %105 = fmul double -2.000000e+00, %104
  %106 = call double @cos(double noundef %105) #9
  store double %106, ptr %26, align 8
  %107 = load double, ptr %23, align 8
  %108 = fneg double %107
  %109 = call double @cos(double noundef %108) #9
  store double %109, ptr %27, align 8
  %110 = fmul double 2.000000e+00, %109
  store double %110, ptr %28, align 8
  store i32 0, ptr %14, align 4
  br label %111

111:                                              ; preds = %224, %94
  %112 = load i32, ptr %14, align 4
  %113 = load i32, ptr %7, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %228

115:                                              ; preds = %111
  %116 = load double, ptr %26, align 8
  %117 = getelementptr inbounds [3 x double], ptr %29, i64 0, i64 2
  store double %116, ptr %117, align 16
  %118 = load double, ptr %27, align 8
  %119 = getelementptr inbounds [3 x double], ptr %29, i64 0, i64 1
  store double %118, ptr %119, align 8
  %120 = load double, ptr %24, align 8
  %121 = getelementptr inbounds [3 x double], ptr %30, i64 0, i64 2
  store double %120, ptr %121, align 16
  %122 = load double, ptr %25, align 8
  %123 = getelementptr inbounds [3 x double], ptr %30, i64 0, i64 1
  store double %122, ptr %123, align 8
  %124 = load i32, ptr %14, align 4
  store i32 %124, ptr %15, align 4
  store i32 0, ptr %17, align 4
  br label %125

125:                                              ; preds = %218, %115
  %126 = load i32, ptr %17, align 4
  %127 = load i32, ptr %19, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %223

129:                                              ; preds = %125
  %130 = load double, ptr %28, align 8
  %131 = load double, ptr %119, align 8
  %132 = load double, ptr %117, align 16
  %133 = fneg double %132
  %134 = call double @llvm.fmuladd.f64(double %130, double %131, double %133)
  store double %134, ptr %29, align 16
  %135 = load double, ptr %119, align 8
  store double %135, ptr %117, align 16
  %136 = load double, ptr %29, align 16
  store double %136, ptr %119, align 8
  %137 = load double, ptr %28, align 8
  %138 = load double, ptr %123, align 8
  %139 = load double, ptr %121, align 16
  %140 = fneg double %139
  %141 = call double @llvm.fmuladd.f64(double %137, double %138, double %140)
  store double %141, ptr %30, align 16
  %142 = load double, ptr %123, align 8
  store double %142, ptr %121, align 16
  %143 = load double, ptr %30, align 16
  store double %143, ptr %123, align 8
  %144 = load i32, ptr %15, align 4
  %145 = load i32, ptr %19, align 4
  %146 = add i32 %144, %145
  store i32 %146, ptr %16, align 4
  %147 = load double, ptr %29, align 16
  %148 = load ptr, ptr %11, align 8
  %149 = load i32, ptr %16, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds float, ptr %148, i64 %150
  %152 = load float, ptr %151, align 4
  %153 = fpext float %152 to double
  %154 = load double, ptr %30, align 16
  %155 = load ptr, ptr %12, align 8
  %156 = getelementptr inbounds float, ptr %155, i64 %150
  %157 = load float, ptr %156, align 4
  %158 = fpext float %157 to double
  %159 = fmul double %154, %158
  %160 = fneg double %159
  %161 = call double @llvm.fmuladd.f64(double %147, double %153, double %160)
  store double %161, ptr %21, align 8
  %162 = load double, ptr %29, align 16
  %163 = load ptr, ptr %12, align 8
  %164 = load i32, ptr %16, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds float, ptr %163, i64 %165
  %167 = load float, ptr %166, align 4
  %168 = fpext float %167 to double
  %169 = load double, ptr %30, align 16
  %170 = load ptr, ptr %11, align 8
  %171 = getelementptr inbounds float, ptr %170, i64 %165
  %172 = load float, ptr %171, align 4
  %173 = fpext float %172 to double
  %174 = fmul double %169, %173
  %175 = call double @llvm.fmuladd.f64(double %162, double %168, double %174)
  store double %175, ptr %22, align 8
  %176 = load ptr, ptr %11, align 8
  %177 = load i32, ptr %15, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds float, ptr %176, i64 %178
  %180 = load float, ptr %179, align 4
  %181 = fpext float %180 to double
  %182 = load double, ptr %21, align 8
  %183 = fsub double %181, %182
  %184 = fptrunc double %183 to float
  %185 = load i32, ptr %16, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds float, ptr %176, i64 %186
  store float %184, ptr %187, align 4
  %188 = load ptr, ptr %12, align 8
  %189 = load i32, ptr %15, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds float, ptr %188, i64 %190
  %192 = load float, ptr %191, align 4
  %193 = fpext float %192 to double
  %194 = load double, ptr %22, align 8
  %195 = fsub double %193, %194
  %196 = fptrunc double %195 to float
  %197 = load i32, ptr %16, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds float, ptr %188, i64 %198
  store float %196, ptr %199, align 4
  %200 = load double, ptr %21, align 8
  %201 = load ptr, ptr %11, align 8
  %202 = load i32, ptr %15, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds float, ptr %201, i64 %203
  %205 = load float, ptr %204, align 4
  %206 = fpext float %205 to double
  %207 = fadd double %206, %200
  %208 = fptrunc double %207 to float
  store float %208, ptr %204, align 4
  %209 = load double, ptr %22, align 8
  %210 = load ptr, ptr %12, align 8
  %211 = load i32, ptr %15, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds float, ptr %210, i64 %212
  %214 = load float, ptr %213, align 4
  %215 = fpext float %214 to double
  %216 = fadd double %215, %209
  %217 = fptrunc double %216 to float
  store float %217, ptr %213, align 4
  br label %218

218:                                              ; preds = %129
  %219 = load i32, ptr %15, align 4
  %220 = add i32 %219, 1
  store i32 %220, ptr %15, align 4
  %221 = load i32, ptr %17, align 4
  %222 = add i32 %221, 1
  store i32 %222, ptr %17, align 4
  br label %125

223:                                              ; preds = %125
  br label %224

224:                                              ; preds = %223
  %225 = load i32, ptr %18, align 4
  %226 = load i32, ptr %14, align 4
  %227 = add i32 %226, %225
  store i32 %227, ptr %14, align 4
  br label %111

228:                                              ; preds = %111
  %229 = load i32, ptr %18, align 4
  store i32 %229, ptr %19, align 4
  br label %230

230:                                              ; preds = %228
  %231 = load i32, ptr %18, align 4
  %232 = shl i32 %231, 1
  store i32 %232, ptr %18, align 4
  br label %90

233:                                              ; preds = %90
  %234 = load i32, ptr %8, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %266

236:                                              ; preds = %233
  %237 = load i32, ptr %7, align 4
  %238 = uitofp i32 %237 to double
  store double %238, ptr %32, align 8
  store i32 0, ptr %14, align 4
  br label %239

239:                                              ; preds = %262, %236
  %240 = load i32, ptr %14, align 4
  %241 = load i32, ptr %7, align 4
  %242 = icmp ult i32 %240, %241
  br i1 %242, label %243, label %265

243:                                              ; preds = %239
  %244 = load double, ptr %32, align 8
  %245 = load ptr, ptr %11, align 8
  %246 = load i32, ptr %14, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds float, ptr %245, i64 %247
  %249 = load float, ptr %248, align 4
  %250 = fpext float %249 to double
  %251 = fdiv double %250, %244
  %252 = fptrunc double %251 to float
  store float %252, ptr %248, align 4
  %253 = load double, ptr %32, align 8
  %254 = load ptr, ptr %12, align 8
  %255 = load i32, ptr %14, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds float, ptr %254, i64 %256
  %258 = load float, ptr %257, align 4
  %259 = fpext float %258 to double
  %260 = fdiv double %259, %253
  %261 = fptrunc double %260 to float
  store float %261, ptr %257, align 4
  br label %262

262:                                              ; preds = %243
  %263 = load i32, ptr %14, align 4
  %264 = add i32 %263, 1
  store i32 %264, ptr %14, align 4
  br label %239

265:                                              ; preds = %239
  br label %266

266:                                              ; preds = %265, %233
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @CheckPointer(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.4.16, ptr noundef %9)
  call void @exit(i32 noundef 1) #7
  unreachable

11:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
