; ModuleID = 'basicmath-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"********* CUBIC FUNCTIONS ***********\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"********* INTEGER SQR ROOTS ***********\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\0Asqrt(%lX) = %X, remainder = %X\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca [3 x double], align 16
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.int_sqrt, align 4
  %12 = alloca i64, align 8
  store i32 0, ptr %1, align 4
  store double 1.000000e+00, ptr %2, align 8
  store double -1.050000e+01, ptr %3, align 8
  store double 3.200000e+01, ptr %4, align 8
  store double -3.000000e+01, ptr %5, align 8
  store i64 1072497001, ptr %10, align 8
  store i64 0, ptr %12, align 8
  %13 = load double, ptr %2, align 8
  %14 = load double, ptr %3, align 8
  %15 = load double, ptr %4, align 8
  %16 = load double, ptr %5, align 8
  call void @SolveCubic(double noundef %13, double noundef %14, double noundef %15, double noundef %16, ptr noundef %8, ptr noundef %6)
  store i32 0, ptr %9, align 4
  br label %17

17:                                               ; preds = %23, %0
  %18 = load i32, ptr %9, align 4
  %19 = icmp slt i32 %18, 100
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, ptr %9, align 4
  %22 = sext i32 %21 to i64
  call void @usqrt(i64 noundef %22, ptr noundef %11)
  br label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %9, align 4
  %25 = add nsw i32 %24, 2
  store i32 %25, ptr %9, align 4
  br label %17

26:                                               ; preds = %17
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %28 = load double, ptr %2, align 8
  %29 = load double, ptr %3, align 8
  %30 = load double, ptr %4, align 8
  %31 = load double, ptr %5, align 8
  call void @SolveCubic(double noundef %28, double noundef %29, double noundef %30, double noundef %31, ptr noundef %8, ptr noundef %6)
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %9, align 4
  br label %33

33:                                               ; preds = %43, %26
  %34 = load i32, ptr %9, align 4
  %35 = load i32, ptr %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, ptr %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %41)
  br label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %9, align 4
  br label %33

46:                                               ; preds = %33
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double 1.000000e+00, ptr %2, align 8
  store double -4.500000e+00, ptr %3, align 8
  store double 1.700000e+01, ptr %4, align 8
  store double -3.000000e+01, ptr %5, align 8
  %48 = load double, ptr %2, align 8
  %49 = load double, ptr %3, align 8
  %50 = load double, ptr %4, align 8
  %51 = load double, ptr %5, align 8
  call void @SolveCubic(double noundef %48, double noundef %49, double noundef %50, double noundef %51, ptr noundef %8, ptr noundef %6)
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %9, align 4
  br label %53

53:                                               ; preds = %63, %46
  %54 = load i32, ptr %9, align 4
  %55 = load i32, ptr %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, ptr %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i32, ptr %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %9, align 4
  br label %53

66:                                               ; preds = %53
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double 1.000000e+00, ptr %2, align 8
  store double -3.500000e+00, ptr %3, align 8
  store double 2.200000e+01, ptr %4, align 8
  store double -3.100000e+01, ptr %5, align 8
  %68 = load double, ptr %2, align 8
  %69 = load double, ptr %3, align 8
  %70 = load double, ptr %4, align 8
  %71 = load double, ptr %5, align 8
  call void @SolveCubic(double noundef %68, double noundef %69, double noundef %70, double noundef %71, ptr noundef %8, ptr noundef %6)
  %72 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %9, align 4
  br label %73

73:                                               ; preds = %83, %66
  %74 = load i32, ptr %9, align 4
  %75 = load i32, ptr %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32, ptr %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %79
  %81 = load double, ptr %80, align 8
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %81)
  br label %83

83:                                               ; preds = %77
  %84 = load i32, ptr %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %9, align 4
  br label %73

86:                                               ; preds = %73
  %87 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double 1.000000e+00, ptr %2, align 8
  store double -1.370000e+01, ptr %3, align 8
  store double 1.000000e+00, ptr %4, align 8
  store double -3.500000e+01, ptr %5, align 8
  %88 = load double, ptr %2, align 8
  %89 = load double, ptr %3, align 8
  %90 = load double, ptr %4, align 8
  %91 = load double, ptr %5, align 8
  call void @SolveCubic(double noundef %88, double noundef %89, double noundef %90, double noundef %91, ptr noundef %8, ptr noundef %6)
  %92 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %9, align 4
  br label %93

93:                                               ; preds = %103, %86
  %94 = load i32, ptr %9, align 4
  %95 = load i32, ptr %8, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, ptr %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %99
  %101 = load double, ptr %100, align 8
  %102 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %101)
  br label %103

103:                                              ; preds = %97
  %104 = load i32, ptr %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %9, align 4
  br label %93

106:                                              ; preds = %93
  %107 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double 3.000000e+00, ptr %2, align 8
  store double 1.234000e+01, ptr %3, align 8
  store double 5.000000e+00, ptr %4, align 8
  store double 1.200000e+01, ptr %5, align 8
  %108 = load double, ptr %2, align 8
  %109 = load double, ptr %3, align 8
  %110 = load double, ptr %4, align 8
  %111 = load double, ptr %5, align 8
  call void @SolveCubic(double noundef %108, double noundef %109, double noundef %110, double noundef %111, ptr noundef %8, ptr noundef %6)
  %112 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %9, align 4
  br label %113

113:                                              ; preds = %123, %106
  %114 = load i32, ptr %9, align 4
  %115 = load i32, ptr %8, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i32, ptr %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %119
  %121 = load double, ptr %120, align 8
  %122 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %121)
  br label %123

123:                                              ; preds = %117
  %124 = load i32, ptr %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %9, align 4
  br label %113

126:                                              ; preds = %113
  %127 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double -8.000000e+00, ptr %2, align 8
  store double -6.789000e+01, ptr %3, align 8
  store double 6.000000e+00, ptr %4, align 8
  store double -2.360000e+01, ptr %5, align 8
  %128 = load double, ptr %2, align 8
  %129 = load double, ptr %3, align 8
  %130 = load double, ptr %4, align 8
  %131 = load double, ptr %5, align 8
  call void @SolveCubic(double noundef %128, double noundef %129, double noundef %130, double noundef %131, ptr noundef %8, ptr noundef %6)
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %133 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double 4.500000e+01, ptr %2, align 8
  store double 8.670000e+00, ptr %3, align 8
  store double 7.500000e+00, ptr %4, align 8
  store double 3.400000e+01, ptr %5, align 8
  %134 = load double, ptr %2, align 8
  %135 = load double, ptr %3, align 8
  %136 = load double, ptr %4, align 8
  %137 = load double, ptr %5, align 8
  call void @SolveCubic(double noundef %134, double noundef %135, double noundef %136, double noundef %137, ptr noundef %8, ptr noundef %6)
  %138 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %139 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double -1.200000e+01, ptr %2, align 8
  store double -1.700000e+00, ptr %3, align 8
  store double 5.300000e+00, ptr %4, align 8
  store double 1.600000e+01, ptr %5, align 8
  %140 = load double, ptr %2, align 8
  %141 = load double, ptr %3, align 8
  %142 = load double, ptr %4, align 8
  %143 = load double, ptr %5, align 8
  call void @SolveCubic(double noundef %140, double noundef %141, double noundef %142, double noundef %143, ptr noundef %8, ptr noundef %6)
  %144 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %9, align 4
  br label %145

145:                                              ; preds = %155, %126
  %146 = load i32, ptr %9, align 4
  %147 = load i32, ptr %8, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32, ptr %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %151
  %153 = load double, ptr %152, align 8
  %154 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %153)
  br label %155

155:                                              ; preds = %149
  %156 = load i32, ptr %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %9, align 4
  br label %145

158:                                              ; preds = %145
  %159 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double 1.000000e+00, ptr %2, align 8
  br label %160

160:                                              ; preds = %208, %158
  %161 = load double, ptr %2, align 8
  %162 = fcmp olt double %161, 1.000000e+01
  br i1 %162, label %163, label %211

163:                                              ; preds = %160
  store double 1.000000e+01, ptr %3, align 8
  br label %164

164:                                              ; preds = %204, %163
  %165 = load double, ptr %3, align 8
  %166 = fcmp ogt double %165, 0.000000e+00
  br i1 %166, label %167, label %207

167:                                              ; preds = %164
  store double 5.000000e+00, ptr %4, align 8
  br label %168

168:                                              ; preds = %200, %167
  %169 = load double, ptr %4, align 8
  %170 = fcmp olt double %169, 1.500000e+01
  br i1 %170, label %171, label %203

171:                                              ; preds = %168
  store double -1.000000e+00, ptr %5, align 8
  br label %172

172:                                              ; preds = %196, %171
  %173 = load double, ptr %5, align 8
  %174 = fcmp ogt double %173, -5.000000e+00
  br i1 %174, label %175, label %199

175:                                              ; preds = %172
  %176 = load double, ptr %2, align 8
  %177 = load double, ptr %3, align 8
  %178 = load double, ptr %4, align 8
  %179 = load double, ptr %5, align 8
  call void @SolveCubic(double noundef %176, double noundef %177, double noundef %178, double noundef %179, ptr noundef %8, ptr noundef %6)
  %180 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %9, align 4
  br label %181

181:                                              ; preds = %191, %175
  %182 = load i32, ptr %9, align 4
  %183 = load i32, ptr %8, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %181
  %186 = load i32, ptr %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %187
  %189 = load double, ptr %188, align 8
  %190 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %189)
  br label %191

191:                                              ; preds = %185
  %192 = load i32, ptr %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %9, align 4
  br label %181

194:                                              ; preds = %181
  %195 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %196

196:                                              ; preds = %194
  %197 = load double, ptr %5, align 8
  %198 = fsub double %197, 4.510000e-01
  store double %198, ptr %5, align 8
  br label %172

199:                                              ; preds = %172
  br label %200

200:                                              ; preds = %199
  %201 = load double, ptr %4, align 8
  %202 = fadd double %201, 6.100000e-01
  store double %202, ptr %4, align 8
  br label %168

203:                                              ; preds = %168
  br label %204

204:                                              ; preds = %203
  %205 = load double, ptr %3, align 8
  %206 = fsub double %205, 2.500000e-01
  store double %206, ptr %3, align 8
  br label %164

207:                                              ; preds = %164
  br label %208

208:                                              ; preds = %207
  %209 = load double, ptr %2, align 8
  %210 = fadd double %209, 1.000000e+00
  store double %210, ptr %2, align 8
  br label %160

211:                                              ; preds = %160
  %212 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %9, align 4
  br label %213

213:                                              ; preds = %221, %211
  %214 = load i32, ptr %9, align 4
  %215 = icmp slt i32 %214, 100000
  br i1 %215, label %216, label %224

216:                                              ; preds = %213
  %217 = load i32, ptr %9, align 4
  %218 = sext i32 %217 to i64
  call void @usqrt(i64 noundef %218, ptr noundef %11)
  %219 = load i32, ptr %11, align 4
  %220 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %217, i32 noundef %219)
  br label %221

221:                                              ; preds = %216
  %222 = load i32, ptr %9, align 4
  %223 = add nsw i32 %222, 2
  store i32 %223, ptr %9, align 4
  br label %213

224:                                              ; preds = %213
  %225 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i64 1072497001, ptr %10, align 8
  br label %226

226:                                              ; preds = %237, %224
  %227 = load i64, ptr %10, align 8
  %228 = icmp ult i64 %227, 1072513385
  br i1 %228, label %229, label %240

229:                                              ; preds = %226
  %230 = load i64, ptr %10, align 8
  call void @usqrt(i64 noundef %230, ptr noundef %11)
  %231 = load i32, ptr %11, align 4
  %232 = getelementptr inbounds %struct.int_sqrt, ptr %11, i32 0, i32 1
  %233 = load i32, ptr %232, align 4
  %234 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %230, i32 noundef %231, i32 noundef %233)
  %235 = load i32, ptr %11, align 4
  %236 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i64 noundef %230, i32 noundef %235)
  br label %237

237:                                              ; preds = %229
  %238 = load i64, ptr %10, align 8
  %239 = add i64 %238, 1
  store i64 %239, ptr %10, align 8
  br label %226

240:                                              ; preds = %226
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @rad2deg(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  %3 = fmul double 1.800000e+02, %0
  %4 = call double @atan(double noundef 1.000000e+00) #5
  %5 = fmul double 4.000000e+00, %4
  %6 = fdiv double %3, %5
  ret double %6
}

; Function Attrs: nounwind
declare double @atan(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @deg2rad(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  %3 = call double @atan(double noundef 1.000000e+00) #5
  %4 = fmul double 4.000000e+00, %3
  %5 = load double, ptr %2, align 8
  %6 = fmul double %4, %5
  %7 = fdiv double %6, 1.800000e+02
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SolveCubic(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  %16 = alloca x86_fp80, align 16
  %17 = alloca x86_fp80, align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, ptr %7, align 8
  store double %1, ptr %8, align 8
  store double %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %20 = load double, ptr %8, align 8
  %21 = load double, ptr %7, align 8
  %22 = fdiv double %20, %21
  %23 = fpext double %22 to x86_fp80
  store x86_fp80 %23, ptr %13, align 16
  %24 = load double, ptr %9, align 8
  %25 = load double, ptr %7, align 8
  %26 = fdiv double %24, %25
  %27 = fpext double %26 to x86_fp80
  store x86_fp80 %27, ptr %14, align 16
  %28 = load double, ptr %10, align 8
  %29 = load double, ptr %7, align 8
  %30 = fdiv double %28, %29
  %31 = fpext double %30 to x86_fp80
  store x86_fp80 %31, ptr %15, align 16
  %32 = load x86_fp80, ptr %13, align 16
  %33 = load x86_fp80, ptr %14, align 16
  %34 = fmul x86_fp80 0xK4000C000000000000000, %33
  %35 = fneg x86_fp80 %34
  %36 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %32, x86_fp80 %32, x86_fp80 %35)
  %37 = fdiv x86_fp80 %36, 0xK40029000000000000000
  store x86_fp80 %37, ptr %16, align 16
  %38 = load x86_fp80, ptr %13, align 16
  %39 = fmul x86_fp80 0xK40008000000000000000, %38
  %40 = fmul x86_fp80 %39, %38
  %41 = fmul x86_fp80 0xK40029000000000000000, %38
  %42 = load x86_fp80, ptr %14, align 16
  %43 = fmul x86_fp80 %41, %42
  %44 = fneg x86_fp80 %43
  %45 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %40, x86_fp80 %38, x86_fp80 %44)
  %46 = load x86_fp80, ptr %15, align 16
  %47 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 0xK4003D800000000000000, x86_fp80 %46, x86_fp80 %45)
  %48 = fdiv x86_fp80 %47, 0xK4004D800000000000000
  store x86_fp80 %48, ptr %17, align 16
  %49 = load x86_fp80, ptr %16, align 16
  %50 = fmul x86_fp80 %49, %49
  %51 = fmul x86_fp80 %50, %49
  %52 = fneg x86_fp80 %51
  %53 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %48, x86_fp80 %48, x86_fp80 %52)
  %54 = fptrunc x86_fp80 %53 to double
  store double %54, ptr %18, align 8
  %55 = fcmp ole double %54, 0.000000e+00
  br i1 %55, label %56, label %118

56:                                               ; preds = %6
  %57 = load ptr, ptr %11, align 8
  store i32 3, ptr %57, align 4
  %58 = load x86_fp80, ptr %17, align 16
  %59 = load x86_fp80, ptr %16, align 16
  %60 = fmul x86_fp80 %59, %59
  %61 = fmul x86_fp80 %60, %59
  %62 = fptrunc x86_fp80 %61 to double
  %63 = call double @sqrt(double noundef %62) #5
  %64 = fpext double %63 to x86_fp80
  %65 = fdiv x86_fp80 %58, %64
  %66 = fptrunc x86_fp80 %65 to double
  %67 = call double @acos(double noundef %66) #5
  store double %67, ptr %19, align 8
  %68 = load x86_fp80, ptr %16, align 16
  %69 = fptrunc x86_fp80 %68 to double
  %70 = call double @sqrt(double noundef %69) #5
  %71 = fmul double -2.000000e+00, %70
  %72 = load double, ptr %19, align 8
  %73 = fdiv double %72, 3.000000e+00
  %74 = call double @cos(double noundef %73) #5
  %75 = fmul double %71, %74
  %76 = fpext double %75 to x86_fp80
  %77 = load x86_fp80, ptr %13, align 16
  %78 = fdiv x86_fp80 %77, 0xK4000C000000000000000
  %79 = fsub x86_fp80 %76, %78
  %80 = fptrunc x86_fp80 %79 to double
  %81 = load ptr, ptr %12, align 8
  store double %80, ptr %81, align 8
  %82 = load x86_fp80, ptr %16, align 16
  %83 = fptrunc x86_fp80 %82 to double
  %84 = call double @sqrt(double noundef %83) #5
  %85 = fmul double -2.000000e+00, %84
  %86 = load double, ptr %19, align 8
  %87 = call double @atan(double noundef 1.000000e+00) #5
  %88 = fmul double 4.000000e+00, %87
  %89 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %88, double %86)
  %90 = fdiv double %89, 3.000000e+00
  %91 = call double @cos(double noundef %90) #5
  %92 = fmul double %85, %91
  %93 = fpext double %92 to x86_fp80
  %94 = load x86_fp80, ptr %13, align 16
  %95 = fdiv x86_fp80 %94, 0xK4000C000000000000000
  %96 = fsub x86_fp80 %93, %95
  %97 = fptrunc x86_fp80 %96 to double
  %98 = load ptr, ptr %12, align 8
  %99 = getelementptr inbounds double, ptr %98, i64 1
  store double %97, ptr %99, align 8
  %100 = load x86_fp80, ptr %16, align 16
  %101 = fptrunc x86_fp80 %100 to double
  %102 = call double @sqrt(double noundef %101) #5
  %103 = fmul double -2.000000e+00, %102
  %104 = load double, ptr %19, align 8
  %105 = call double @atan(double noundef 1.000000e+00) #5
  %106 = fmul double 4.000000e+00, %105
  %107 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %106, double %104)
  %108 = fdiv double %107, 3.000000e+00
  %109 = call double @cos(double noundef %108) #5
  %110 = fmul double %103, %109
  %111 = fpext double %110 to x86_fp80
  %112 = load x86_fp80, ptr %13, align 16
  %113 = fdiv x86_fp80 %112, 0xK4000C000000000000000
  %114 = fsub x86_fp80 %111, %113
  %115 = fptrunc x86_fp80 %114 to double
  %116 = load ptr, ptr %12, align 8
  %117 = getelementptr inbounds double, ptr %116, i64 2
  store double %115, ptr %117, align 8
  br label %151

118:                                              ; preds = %6
  %119 = load ptr, ptr %11, align 8
  store i32 1, ptr %119, align 4
  %120 = load double, ptr %18, align 8
  %121 = call double @sqrt(double noundef %120) #5
  %122 = load x86_fp80, ptr %17, align 16
  %123 = fptrunc x86_fp80 %122 to double
  %124 = call double @llvm.fabs.f64(double %123)
  %125 = fadd double %121, %124
  %126 = call double @pow(double noundef %125, double noundef 0x3FD5555555555555) #5
  %127 = load ptr, ptr %12, align 8
  store double %126, ptr %127, align 8
  %128 = load x86_fp80, ptr %16, align 16
  %129 = load ptr, ptr %12, align 8
  %130 = load double, ptr %129, align 8
  %131 = fpext double %130 to x86_fp80
  %132 = fdiv x86_fp80 %128, %131
  %133 = load double, ptr %129, align 8
  %134 = fpext double %133 to x86_fp80
  %135 = fadd x86_fp80 %134, %132
  %136 = fptrunc x86_fp80 %135 to double
  store double %136, ptr %129, align 8
  %137 = load x86_fp80, ptr %17, align 16
  %138 = fcmp olt x86_fp80 %137, 0xK00000000000000000000
  %139 = select i1 %138, i32 1, i32 -1
  %140 = sitofp i32 %139 to double
  %141 = load ptr, ptr %12, align 8
  %142 = load double, ptr %141, align 8
  %143 = fmul double %142, %140
  store double %143, ptr %141, align 8
  %144 = load x86_fp80, ptr %13, align 16
  %145 = fdiv x86_fp80 %144, 0xK4000C000000000000000
  %146 = load ptr, ptr %12, align 8
  %147 = load double, ptr %146, align 8
  %148 = fpext double %147 to x86_fp80
  %149 = fsub x86_fp80 %148, %145
  %150 = fptrunc x86_fp80 %149 to double
  store double %150, ptr %146, align 8
  br label %151

151:                                              ; preds = %118, %56
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: nounwind
declare double @acos(double noundef) #2

; Function Attrs: nounwind
declare double @cos(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @usqrt(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i64 0, ptr %5, align 8
  store i64 0, ptr %6, align 8
  store i64 0, ptr %7, align 8
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, ptr %8, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = load i64, ptr %6, align 8
  %14 = shl i64 %13, 2
  %15 = load i64, ptr %3, align 8
  %16 = and i64 %15, 3221225472
  %17 = lshr i64 %16, 30
  %18 = add i64 %14, %17
  store i64 %18, ptr %6, align 8
  %19 = load i64, ptr %3, align 8
  %20 = shl i64 %19, 2
  store i64 %20, ptr %3, align 8
  %21 = load i64, ptr %5, align 8
  %22 = shl i64 %21, 1
  store i64 %22, ptr %5, align 8
  %23 = shl i64 %22, 1
  %24 = add i64 %23, 1
  store i64 %24, ptr %7, align 8
  %25 = load i64, ptr %6, align 8
  %26 = load i64, ptr %7, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %12
  %29 = load i64, ptr %7, align 8
  %30 = load i64, ptr %6, align 8
  %31 = sub i64 %30, %29
  store i64 %31, ptr %6, align 8
  %32 = load i64, ptr %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, ptr %5, align 8
  br label %34

34:                                               ; preds = %28, %12
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %8, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %39, ptr align 8 %5, i64 8, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
