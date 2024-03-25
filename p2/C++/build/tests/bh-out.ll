; ModuleID = 'bh-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.datapoints = type { [3 x double], [3 x double], ptr, ptr }
%struct.icstruct = type { [3 x i32], i16 }
%struct.tree = type { [3 x double], double, ptr, [64 x ptr], [64 x ptr] }
%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, ptr, ptr }
%struct.hgstruct = type { ptr, [3 x double], double, [3 x double] }
%struct.cnode = type { i16, double, [3 x double], i32, i32, [8 x ptr], ptr }
%struct.node = type { i16, double, [3 x double], i32, i32 }
%struct.tms = type { i64, i64, i64, i64 }

@__NumNodes = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [27 x i8] c"nbody = %d, numnodes = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Bodies per %d = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Assertion Failure #%d\00", align 1
@cp_free_list = dso_local global ptr null, align 8
@bp_free_list = dso_local global ptr null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"testdata: not enough memory\0A\00", align 1
@root = dso_local global ptr null, align 8
@rmin = dso_local global [3 x double] zeroinitializer, align 16
@rsize = dso_local global double 0.000000e+00, align 8
@arg1 = dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"times() call failed\0A\00", align 1
@stderr = external global ptr, align 8
@.str.1.8 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@nbody = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %7 = load i32, ptr %4, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = call i32 @dealwithargs(i32 noundef %7, ptr noundef %8)
  %10 = load i32, ptr @nbody, align 4
  %11 = load i32, ptr @__NumNodes, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10, i32 noundef %11)
  %13 = call ptr @old_main()
  store ptr %13, ptr %6, align 8
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @old_main() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x double], align 16
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [64 x i32], align 16
  %17 = alloca [64 x ptr], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.datapoints, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.datapoints, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.icstruct, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.icstruct, align 4
  store ptr null, ptr %13, align 8
  store i32 0, ptr %14, align 4
  %31 = load i32, ptr @__NumNodes, align 4
  %32 = sdiv i32 64, %31
  store i32 %32, ptr %15, align 4
  %33 = call i32 @srand(i32 noundef 123) #9
  %34 = call noalias ptr @malloc(i64 noundef 1064) #9
  store ptr %34, ptr %6, align 8
  %35 = getelementptr inbounds %struct.tree, ptr %34, i32 0, i32 2
  store ptr null, ptr %35, align 8
  %36 = load ptr, ptr %6, align 8
  store double -2.000000e+00, ptr %36, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds [3 x double], ptr %37, i64 0, i64 1
  store double -2.000000e+00, ptr %38, align 8
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds [3 x double], ptr %39, i64 0, i64 2
  store double -2.000000e+00, ptr %40, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.tree, ptr %41, i32 0, i32 1
  store double 4.000000e+00, ptr %42, align 8
  store i32 0, ptr %18, align 4
  br label %43

43:                                               ; preds = %50, %0
  %44 = load i32, ptr %18, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, ptr %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %48
  store double 0.000000e+00, ptr %49, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %18, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %18, align 4
  br label %43

53:                                               ; preds = %43
  store i32 0, ptr %19, align 4
  br label %54

54:                                               ; preds = %61, %53
  %55 = load i32, ptr %19, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, ptr %19, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 %59
  store double 0.000000e+00, ptr %60, align 8
  br label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %19, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %19, align 4
  br label %54

64:                                               ; preds = %54
  store i32 0, ptr %3, align 4
  br label %65

65:                                               ; preds = %123, %64
  %66 = load i32, ptr %3, align 4
  %67 = icmp slt i32 %66, 32
  br i1 %67, label %68, label %126

68:                                               ; preds = %65
  %69 = load i32, ptr %3, align 4
  %70 = load i32, ptr @__NumNodes, align 4
  %71 = sdiv i32 32, %70
  %72 = sdiv i32 %69, %71
  store i32 %72, ptr %21, align 4
  %73 = load i32, ptr @nbody, align 4
  %74 = sdiv i32 %73, 32
  %75 = load i32, ptr %3, align 4
  %76 = add nsw i32 %75, 1
  call void @uniform_testdata(ptr sret(%struct.datapoints) align 8 %22, i32 noundef %72, i32 noundef %74, i32 noundef %76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %22, i64 64, i1 false)
  %77 = getelementptr inbounds %struct.datapoints, ptr %20, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr inbounds %struct.tree, ptr %79, i32 0, i32 3
  %81 = sext i32 %75 to i64
  %82 = getelementptr inbounds [64 x ptr], ptr %80, i64 0, i64 %81
  store ptr %78, ptr %82, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = icmp ne ptr %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %68
  %86 = load ptr, ptr %77, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds %struct.bnode, ptr %87, i32 0, i32 9
  store ptr %86, ptr %88, align 8
  br label %89

89:                                               ; preds = %85, %68
  %90 = getelementptr inbounds %struct.datapoints, ptr %20, i32 0, i32 3
  %91 = load ptr, ptr %90, align 8
  store ptr %91, ptr %13, align 8
  store i32 0, ptr %23, align 4
  br label %92

92:                                               ; preds = %103, %89
  %93 = load i32, ptr %23, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i32, ptr %23, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %97
  %99 = load double, ptr %98, align 8
  %100 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 %97
  %101 = load double, ptr %100, align 8
  %102 = fadd double %99, %101
  store double %102, ptr %98, align 8
  br label %103

103:                                              ; preds = %95
  %104 = load i32, ptr %23, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %23, align 4
  br label %92

106:                                              ; preds = %92
  store i32 0, ptr %24, align 4
  br label %107

107:                                              ; preds = %119, %106
  %108 = load i32, ptr %24, align 4
  %109 = icmp slt i32 %108, 3
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i32, ptr %24, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 %112
  %114 = load double, ptr %113, align 8
  %115 = getelementptr inbounds %struct.datapoints, ptr %20, i32 0, i32 1
  %116 = getelementptr inbounds [3 x double], ptr %115, i64 0, i64 %112
  %117 = load double, ptr %116, align 8
  %118 = fadd double %114, %117
  store double %118, ptr %113, align 8
  br label %119

119:                                              ; preds = %110
  %120 = load i32, ptr %24, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %24, align 4
  br label %107

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %3, align 4
  br label %65

126:                                              ; preds = %65
  store i32 0, ptr %25, align 4
  br label %127

127:                                              ; preds = %138, %126
  %128 = load i32, ptr %25, align 4
  %129 = icmp slt i32 %128, 3
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i32, ptr %25, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %132
  %134 = load double, ptr %133, align 8
  %135 = load i32, ptr @nbody, align 4
  %136 = sitofp i32 %135 to double
  %137 = fdiv double %134, %136
  store double %137, ptr %133, align 8
  br label %138

138:                                              ; preds = %130
  %139 = load i32, ptr %25, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr %25, align 4
  br label %127

141:                                              ; preds = %127
  store i32 0, ptr %26, align 4
  br label %142

142:                                              ; preds = %153, %141
  %143 = load i32, ptr %26, align 4
  %144 = icmp slt i32 %143, 3
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load i32, ptr %26, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 %147
  %149 = load double, ptr %148, align 8
  %150 = load i32, ptr @nbody, align 4
  %151 = sitofp i32 %150 to double
  %152 = fdiv double %149, %151
  store double %152, ptr %148, align 8
  br label %153

153:                                              ; preds = %145
  %154 = load i32, ptr %26, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr %26, align 4
  br label %142

156:                                              ; preds = %142
  store i32 0, ptr %14, align 4
  br label %157

157:                                              ; preds = %167, %156
  %158 = load i32, ptr %14, align 4
  %159 = icmp slt i32 %158, 64
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load i32, ptr %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [64 x i32], ptr %16, i64 0, i64 %162
  store i32 0, ptr %163, align 4
  %164 = load i32, ptr %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [64 x ptr], ptr %17, i64 0, i64 %165
  store ptr null, ptr %166, align 8
  br label %167

167:                                              ; preds = %160
  %168 = load i32, ptr %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr %14, align 4
  br label %157

170:                                              ; preds = %157
  %171 = load ptr, ptr %6, align 8
  %172 = getelementptr inbounds %struct.tree, ptr %171, i32 0, i32 3
  %173 = load ptr, ptr %172, align 8
  store ptr %173, ptr %8, align 8
  br label %174

174:                                              ; preds = %245, %170
  %175 = load ptr, ptr %8, align 8
  %176 = icmp ne ptr %175, null
  br i1 %176, label %177, label %249

177:                                              ; preds = %174
  store i32 0, ptr %28, align 4
  br label %178

178:                                              ; preds = %191, %177
  %179 = load i32, ptr %28, align 4
  %180 = icmp slt i32 %179, 3
  br i1 %180, label %181, label %194

181:                                              ; preds = %178
  %182 = load ptr, ptr %8, align 8
  %183 = getelementptr inbounds %struct.bnode, ptr %182, i32 0, i32 2
  %184 = load i32, ptr %28, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [3 x double], ptr %183, i64 0, i64 %185
  %187 = load double, ptr %186, align 8
  %188 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %185
  %189 = load double, ptr %188, align 8
  %190 = fsub double %187, %189
  store double %190, ptr %186, align 8
  br label %191

191:                                              ; preds = %181
  %192 = load i32, ptr %28, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %28, align 4
  br label %178

194:                                              ; preds = %178
  store i32 0, ptr %29, align 4
  br label %195

195:                                              ; preds = %208, %194
  %196 = load i32, ptr %29, align 4
  %197 = icmp slt i32 %196, 3
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  %199 = load ptr, ptr %8, align 8
  %200 = getelementptr inbounds %struct.bnode, ptr %199, i32 0, i32 5
  %201 = load i32, ptr %29, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [3 x double], ptr %200, i64 0, i64 %202
  %204 = load double, ptr %203, align 8
  %205 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 %202
  %206 = load double, ptr %205, align 8
  %207 = fsub double %204, %206
  store double %207, ptr %203, align 8
  br label %208

208:                                              ; preds = %198
  %209 = load i32, ptr %29, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %29, align 4
  br label %195

211:                                              ; preds = %195
  %212 = load ptr, ptr %8, align 8
  %213 = load ptr, ptr %6, align 8
  %214 = call { i64, i64 } @intcoord(ptr noundef %212, ptr noundef %213)
  %215 = extractvalue { i64, i64 } %214, 0
  store i64 %215, ptr %30, align 4
  %216 = getelementptr inbounds { i64, i64 }, ptr %30, i32 0, i32 1
  %217 = extractvalue { i64, i64 } %214, 1
  store i64 %217, ptr %216, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %27, ptr align 4 %30, i64 16, i1 false)
  %218 = load i64, ptr %27, align 4
  %219 = getelementptr inbounds { i64, i64 }, ptr %27, i32 0, i32 1
  %220 = load i64, ptr %219, align 4
  %221 = call i32 @old_subindex(i64 %218, i64 %220, i32 noundef 536870912)
  %222 = shl i32 %221, 3
  %223 = load i64, ptr %27, align 4
  %224 = call i32 @old_subindex(i64 %223, i64 %220, i32 noundef 268435456)
  %225 = add nsw i32 %222, %224
  store i32 %225, ptr %14, align 4
  %226 = load i32, ptr %15, align 4
  %227 = sdiv i32 %225, %226
  store i32 %227, ptr %14, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [64 x i32], ptr %16, i64 0, i64 %228
  %230 = load i32, ptr %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr %229, align 4
  %232 = load i32, ptr %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [64 x ptr], ptr %17, i64 0, i64 %233
  %235 = load ptr, ptr %234, align 8
  %236 = load ptr, ptr %8, align 8
  %237 = getelementptr inbounds %struct.bnode, ptr %236, i32 0, i32 10
  store ptr %235, ptr %237, align 8
  %238 = load ptr, ptr %8, align 8
  %239 = load i32, ptr %14, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [64 x ptr], ptr %17, i64 0, i64 %240
  store ptr %238, ptr %241, align 8
  %242 = load i32, ptr %14, align 4
  %243 = load ptr, ptr %8, align 8
  %244 = getelementptr inbounds %struct.bnode, ptr %243, i32 0, i32 3
  store i32 %242, ptr %244, align 8
  br label %245

245:                                              ; preds = %211
  %246 = load ptr, ptr %8, align 8
  %247 = getelementptr inbounds %struct.bnode, ptr %246, i32 0, i32 9
  %248 = load ptr, ptr %247, align 8
  store ptr %248, ptr %8, align 8
  br label %174

249:                                              ; preds = %174
  store i32 0, ptr %14, align 4
  br label %250

250:                                              ; preds = %265, %249
  %251 = load i32, ptr %14, align 4
  %252 = load i32, ptr @__NumNodes, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %268

254:                                              ; preds = %250
  %255 = load i32, ptr %14, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [64 x i32], ptr %16, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4
  %259 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %255, i32 noundef %258)
  %260 = getelementptr inbounds [64 x ptr], ptr %17, i64 0, i64 %256
  %261 = load ptr, ptr %260, align 8
  %262 = load ptr, ptr %6, align 8
  %263 = getelementptr inbounds %struct.tree, ptr %262, i32 0, i32 4
  %264 = getelementptr inbounds [64 x ptr], ptr %263, i64 0, i64 %256
  store ptr %261, ptr %264, align 8
  br label %265

265:                                              ; preds = %254
  %266 = load i32, ptr %14, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr %14, align 4
  br label %250

268:                                              ; preds = %250
  store i32 0, ptr %14, align 4
  store double 0.000000e+00, ptr %1, align 8
  store i32 0, ptr %3, align 4
  store i32 10, ptr %4, align 4
  br label %269

269:                                              ; preds = %278, %268
  %270 = load double, ptr %1, align 8
  %271 = fcmp olt double %270, 2.001250e+00
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i32, ptr %3, align 4
  %274 = load i32, ptr %4, align 4
  %275 = icmp slt i32 %273, %274
  br label %276

276:                                              ; preds = %272, %269
  %277 = phi i1 [ false, %269 ], [ %275, %272 ]
  br i1 %277, label %278, label %286

278:                                              ; preds = %276
  %279 = load ptr, ptr %6, align 8
  %280 = load i32, ptr %3, align 4
  %281 = call i32 @stepsystem(ptr noundef %279, i32 noundef %280)
  %282 = load double, ptr %1, align 8
  %283 = fadd double %282, 1.250000e-02
  store double %283, ptr %1, align 8
  %284 = load i32, ptr %3, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, ptr %3, align 4
  br label %269

286:                                              ; preds = %276
  %287 = load ptr, ptr %6, align 8
  ret ptr %287
}

; Function Attrs: nounwind
declare i32 @srand(i32 noundef) #2

; Function Attrs: nounwind
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @uniform_testdata(ptr noalias sret(%struct.datapoints) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %32 = sitofp i32 %3 to double
  %33 = fmul double 1.230000e+02, %32
  store double %33, ptr %20, align 8
  store double 0x3FE2D97C7F3321D2, ptr %8, align 8
  %34 = call double @sqrt(double noundef 0x3FFB2995E7B7B604) #9
  store double %34, ptr %9, align 8
  store i32 0, ptr %26, align 4
  br label %35

35:                                               ; preds = %42, %4
  %36 = load i32, ptr %26, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, ptr %26, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %40
  store double 0.000000e+00, ptr %41, align 8
  br label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %26, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %26, align 4
  br label %35

45:                                               ; preds = %35
  store i32 0, ptr %27, align 4
  br label %46

46:                                               ; preds = %54, %45
  %47 = load i32, ptr %27, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.datapoints, ptr %0, i32 0, i32 1
  %51 = load i32, ptr %27, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x double], ptr %50, i64 0, i64 %52
  store double 0.000000e+00, ptr %53, align 8
  br label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %27, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %27, align 4
  br label %46

57:                                               ; preds = %46
  %58 = load i32, ptr %5, align 4
  %59 = call ptr @ubody_alloc(i32 noundef %58)
  store ptr %59, ptr %14, align 8
  store ptr %59, ptr %16, align 8
  store i32 0, ptr %17, align 4
  br label %60

60:                                               ; preds = %227, %57
  %61 = load i32, ptr %17, align 4
  %62 = load i32, ptr %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %230

64:                                               ; preds = %60
  %65 = load i32, ptr %5, align 4
  %66 = call ptr @ubody_alloc(i32 noundef %65)
  store ptr %66, ptr %15, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @error(ptr noundef @.str.3)
  br label %70

70:                                               ; preds = %68, %64
  %71 = load ptr, ptr %15, align 8
  %72 = load ptr, ptr %16, align 8
  %73 = getelementptr inbounds %struct.bnode, ptr %72, i32 0, i32 9
  store ptr %71, ptr %73, align 8
  %74 = load ptr, ptr %15, align 8
  store ptr %74, ptr %16, align 8
  %75 = load ptr, ptr %15, align 8
  store i16 1, ptr %75, align 8
  %76 = load i32, ptr %6, align 4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double 1.000000e+00, %77
  %79 = load ptr, ptr %15, align 8
  %80 = getelementptr inbounds %struct.bnode, ptr %79, i32 0, i32 1
  store double %78, ptr %80, align 8
  %81 = load double, ptr %20, align 8
  %82 = call double (double, ...) @my_rand(double noundef %81)
  store double %82, ptr %20, align 8
  %83 = call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %82)
  store double %83, ptr %19, align 8
  %84 = call double @pow(double noundef %83, double noundef 0xBFE5555555555555) #9
  %85 = fsub double %84, 1.000000e+00
  store double %85, ptr %18, align 8
  %86 = call double @sqrt(double noundef %85) #9
  %87 = fdiv double 1.000000e+00, %86
  store double %87, ptr %10, align 8
  store double 4.000000e+00, ptr %25, align 8
  store i32 0, ptr %21, align 4
  br label %88

88:                                               ; preds = %103, %70
  %89 = load i32, ptr %21, align 4
  %90 = icmp slt i32 %89, 3
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load double, ptr %20, align 8
  %93 = call double (double, ...) @my_rand(double noundef %92)
  store double %93, ptr %20, align 8
  %94 = call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %93)
  store double %94, ptr %10, align 8
  %95 = load double, ptr %25, align 8
  %96 = load double, ptr %10, align 8
  %97 = fmul double %95, %96
  %98 = load ptr, ptr %15, align 8
  %99 = getelementptr inbounds %struct.bnode, ptr %98, i32 0, i32 2
  %100 = load i32, ptr %21, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x double], ptr %99, i64 0, i64 %101
  store double %97, ptr %102, align 8
  br label %103

103:                                              ; preds = %91
  %104 = load i32, ptr %21, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %21, align 4
  br label %88

106:                                              ; preds = %88
  store i32 0, ptr %28, align 4
  br label %107

107:                                              ; preds = %121, %106
  %108 = load i32, ptr %28, align 4
  %109 = icmp slt i32 %108, 3
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i32, ptr %28, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %112
  %114 = load double, ptr %113, align 8
  %115 = load ptr, ptr %15, align 8
  %116 = getelementptr inbounds %struct.bnode, ptr %115, i32 0, i32 2
  %117 = getelementptr inbounds [3 x double], ptr %116, i64 0, i64 %112
  %118 = load double, ptr %117, align 8
  %119 = fadd double %114, %118
  %120 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %112
  store double %119, ptr %120, align 8
  br label %121

121:                                              ; preds = %110
  %122 = load i32, ptr %28, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %28, align 4
  br label %107

124:                                              ; preds = %107
  br label %125

125:                                              ; preds = %132, %124
  %126 = load double, ptr %20, align 8
  %127 = call double (double, ...) @my_rand(double noundef %126)
  store double %127, ptr %20, align 8
  %128 = call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %127)
  store double %128, ptr %12, align 8
  %129 = load double, ptr %20, align 8
  %130 = call double (double, ...) @my_rand(double noundef %129)
  store double %130, ptr %20, align 8
  %131 = call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef 1.000000e-01, double noundef %130)
  store double %131, ptr %13, align 8
  br label %132

132:                                              ; preds = %125
  %133 = load double, ptr %13, align 8
  %134 = load double, ptr %12, align 8
  %135 = fmul double %134, %134
  %136 = fneg double %134
  %137 = call double @llvm.fmuladd.f64(double %136, double %134, double 1.000000e+00)
  %138 = call double @pow(double noundef %137, double noundef 3.500000e+00) #9
  %139 = fmul double %135, %138
  %140 = fcmp ogt double %133, %139
  br i1 %140, label %125, label %141

141:                                              ; preds = %132
  %142 = call double @sqrt(double noundef 2.000000e+00) #9
  %143 = load double, ptr %12, align 8
  %144 = fmul double %142, %143
  %145 = load double, ptr %10, align 8
  %146 = call double @llvm.fmuladd.f64(double %145, double %145, double 1.000000e+00)
  %147 = call double @pow(double noundef %146, double noundef 2.500000e-01) #9
  %148 = fdiv double %144, %147
  store double %148, ptr %11, align 8
  %149 = load double, ptr %9, align 8
  %150 = load double, ptr %11, align 8
  %151 = fmul double %149, %150
  store double %151, ptr %24, align 8
  br label %152

152:                                              ; preds = %185, %141
  store i32 0, ptr %21, align 4
  br label %153

153:                                              ; preds = %165, %152
  %154 = load i32, ptr %21, align 4
  %155 = icmp slt i32 %154, 3
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = load double, ptr %20, align 8
  %158 = call double (double, ...) @my_rand(double noundef %157)
  store double %158, ptr %20, align 8
  %159 = call double (double, double, double, ...) @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %158)
  %160 = load ptr, ptr %15, align 8
  %161 = getelementptr inbounds %struct.bnode, ptr %160, i32 0, i32 5
  %162 = load i32, ptr %21, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [3 x double], ptr %161, i64 0, i64 %163
  store double %159, ptr %164, align 8
  br label %165

165:                                              ; preds = %156
  %166 = load i32, ptr %21, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %21, align 4
  br label %153

168:                                              ; preds = %153
  store double 0.000000e+00, ptr %22, align 8
  store i32 0, ptr %29, align 4
  br label %169

169:                                              ; preds = %181, %168
  %170 = load i32, ptr %29, align 4
  %171 = icmp slt i32 %170, 3
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = load ptr, ptr %15, align 8
  %174 = getelementptr inbounds %struct.bnode, ptr %173, i32 0, i32 5
  %175 = load i32, ptr %29, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [3 x double], ptr %174, i64 0, i64 %176
  %178 = load double, ptr %177, align 8
  %179 = load double, ptr %22, align 8
  %180 = call double @llvm.fmuladd.f64(double %178, double %178, double %179)
  store double %180, ptr %22, align 8
  br label %181

181:                                              ; preds = %172
  %182 = load i32, ptr %29, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %29, align 4
  br label %169

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184
  %186 = load double, ptr %22, align 8
  %187 = fcmp ogt double %186, 1.000000e+00
  br i1 %187, label %152, label %188

188:                                              ; preds = %185
  %189 = load double, ptr %24, align 8
  %190 = load double, ptr %22, align 8
  %191 = call double @sqrt(double noundef %190) #9
  %192 = fdiv double %189, %191
  store double %192, ptr %23, align 8
  store i32 0, ptr %30, align 4
  br label %193

193:                                              ; preds = %205, %188
  %194 = load i32, ptr %30, align 4
  %195 = icmp slt i32 %194, 3
  br i1 %195, label %196, label %208

196:                                              ; preds = %193
  %197 = load ptr, ptr %15, align 8
  %198 = getelementptr inbounds %struct.bnode, ptr %197, i32 0, i32 5
  %199 = load i32, ptr %30, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [3 x double], ptr %198, i64 0, i64 %200
  %202 = load double, ptr %201, align 8
  %203 = load double, ptr %23, align 8
  %204 = fmul double %202, %203
  store double %204, ptr %201, align 8
  br label %205

205:                                              ; preds = %196
  %206 = load i32, ptr %30, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %30, align 4
  br label %193

208:                                              ; preds = %193
  store i32 0, ptr %31, align 4
  br label %209

209:                                              ; preds = %223, %208
  %210 = load i32, ptr %31, align 4
  %211 = icmp slt i32 %210, 3
  br i1 %211, label %212, label %226

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.datapoints, ptr %0, i32 0, i32 1
  %214 = load i32, ptr %31, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [3 x double], ptr %213, i64 0, i64 %215
  %217 = load double, ptr %216, align 8
  %218 = load ptr, ptr %15, align 8
  %219 = getelementptr inbounds %struct.bnode, ptr %218, i32 0, i32 5
  %220 = getelementptr inbounds [3 x double], ptr %219, i64 0, i64 %215
  %221 = load double, ptr %220, align 8
  %222 = fadd double %217, %221
  store double %222, ptr %216, align 8
  br label %223

223:                                              ; preds = %212
  %224 = load i32, ptr %31, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %31, align 4
  br label %209

226:                                              ; preds = %209
  br label %227

227:                                              ; preds = %226
  %228 = load i32, ptr %17, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, ptr %17, align 4
  br label %60

230:                                              ; preds = %60
  %231 = load ptr, ptr %16, align 8
  %232 = getelementptr inbounds %struct.bnode, ptr %231, i32 0, i32 9
  store ptr null, ptr %232, align 8
  %233 = load ptr, ptr %14, align 8
  %234 = getelementptr inbounds %struct.bnode, ptr %233, i32 0, i32 9
  %235 = load ptr, ptr %234, align 8
  %236 = getelementptr inbounds %struct.datapoints, ptr %0, i32 0, i32 2
  store ptr %235, ptr %236, align 8
  %237 = load ptr, ptr %16, align 8
  %238 = getelementptr inbounds %struct.datapoints, ptr %0, i32 0, i32 3
  store ptr %237, ptr %238, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @intcoord(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.icstruct, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = getelementptr inbounds %struct.icstruct, ptr %3, i32 0, i32 1
  store i16 1, ptr %9, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.tree, ptr %10, i32 0, i32 1
  %12 = load double, ptr %11, align 8
  store double %12, ptr %7, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.bnode, ptr %13, i32 0, i32 2
  %15 = load double, ptr %14, align 8
  store double %15, ptr %8, align 16
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.bnode, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 1
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 1
  store double %19, ptr %20, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.bnode, ptr %21, i32 0, i32 2
  %23 = getelementptr inbounds [3 x double], ptr %22, i64 0, i64 2
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 2
  store double %24, ptr %25, align 16
  %26 = load double, ptr %8, align 16
  %27 = load ptr, ptr %5, align 8
  %28 = load double, ptr %27, align 8
  %29 = fsub double %26, %28
  %30 = load double, ptr %7, align 8
  %31 = fdiv double %29, %30
  store double %31, ptr %6, align 8
  %32 = fcmp ole double 0.000000e+00, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load double, ptr %6, align 8
  %35 = fcmp olt double %34, 1.000000e+00
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load double, ptr %6, align 8
  %38 = fmul double 0x41D0000000000000, %37
  %39 = call double @llvm.floor.f64(double %38)
  %40 = fptosi double %39 to i32
  store i32 %40, ptr %3, align 4
  br label %42

41:                                               ; preds = %33, %2
  store i16 0, ptr %9, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load double, ptr %20, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds [3 x double], ptr %44, i64 0, i64 1
  %46 = load double, ptr %45, align 8
  %47 = fsub double %43, %46
  %48 = load double, ptr %7, align 8
  %49 = fdiv double %47, %48
  store double %49, ptr %6, align 8
  %50 = fcmp ole double 0.000000e+00, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load double, ptr %6, align 8
  %53 = fcmp olt double %52, 1.000000e+00
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load double, ptr %6, align 8
  %56 = fmul double 0x41D0000000000000, %55
  %57 = call double @llvm.floor.f64(double %56)
  %58 = fptosi double %57 to i32
  %59 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 1
  store i32 %58, ptr %59, align 4
  br label %61

60:                                               ; preds = %51, %42
  store i16 0, ptr %9, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = load double, ptr %25, align 16
  %63 = load ptr, ptr %5, align 8
  %64 = getelementptr inbounds [3 x double], ptr %63, i64 0, i64 2
  %65 = load double, ptr %64, align 8
  %66 = fsub double %62, %65
  %67 = load double, ptr %7, align 8
  %68 = fdiv double %66, %67
  store double %68, ptr %6, align 8
  %69 = fcmp ole double 0.000000e+00, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load double, ptr %6, align 8
  %72 = fcmp olt double %71, 1.000000e+00
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load double, ptr %6, align 8
  %75 = fmul double 0x41D0000000000000, %74
  %76 = call double @llvm.floor.f64(double %75)
  %77 = fptosi double %76 to i32
  %78 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 2
  store i32 %77, ptr %78, align 4
  br label %80

79:                                               ; preds = %70, %61
  store i16 0, ptr %9, align 4
  br label %80

80:                                               ; preds = %79, %73
  %81 = load { i64, i64 }, ptr %3, align 4
  ret { i64, i64 } %81
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @old_subindex(i64 %0, i64 %1, i32 noundef %2) #0 {
  %4 = alloca %struct.icstruct, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, ptr %4, align 4
  %8 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 1
  store i64 %1, ptr %8, align 4
  store i32 %2, ptr %5, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, ptr %7, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32, ptr %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %5, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, ptr %7, align 4
  %22 = add nsw i32 %21, 1
  %23 = ashr i32 8, %22
  %24 = load i32, ptr %6, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, ptr %6, align 4
  br label %26

26:                                               ; preds = %20, %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, ptr %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %7, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load i32, ptr %6, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stepsystem(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.tree, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %9, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load ptr, ptr %9, align 8
  %20 = call i32 @freetree1(ptr noundef %19)
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.tree, ptr %21, i32 0, i32 2
  store ptr null, ptr %22, align 8
  br label %23

23:                                               ; preds = %18, %2
  %24 = load ptr, ptr %5, align 8
  %25 = load i32, ptr @nbody, align 4
  %26 = load ptr, ptr %3, align 8
  %27 = load i32, ptr %4, align 4
  %28 = call ptr @maketree(ptr noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef 0)
  store ptr %28, ptr %9, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.tree, ptr %29, i32 0, i32 2
  store ptr %28, ptr %30, align 8
  %31 = load ptr, ptr %3, align 8
  %32 = load i32, ptr %4, align 4
  %33 = call i32 @computegrav(ptr noundef %31, i32 noundef %32)
  %34 = getelementptr inbounds %struct.tree, ptr %31, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @vp(ptr noundef %35, i32 noundef %32)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @freetree1(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %6 = call i32 @freetree(ptr noundef %0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @maketree(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca %struct.icstruct, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.icstruct, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds %struct.tree, ptr %17, i32 0, i32 2
  store ptr null, ptr %18, align 8
  %19 = load i32, ptr %7, align 4
  store i32 %19, ptr @nbody, align 4
  %20 = load i32, ptr @__NumNodes, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, ptr %12, align 4
  br label %22

22:                                               ; preds = %68, %5
  %23 = load i32, ptr %12, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds %struct.tree, ptr %26, i32 0, i32 4
  %28 = load i32, ptr %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x ptr], ptr %27, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %6, align 8
  store ptr %31, ptr %11, align 8
  br label %32

32:                                               ; preds = %63, %25
  %33 = load ptr, ptr %11, align 8
  %34 = icmp ne ptr %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = load ptr, ptr %11, align 8
  %37 = getelementptr inbounds %struct.bnode, ptr %36, i32 0, i32 1
  %38 = load double, ptr %37, align 8
  %39 = fcmp une double %38, 0.000000e+00
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load ptr, ptr %11, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load i32, ptr %9, align 4
  %44 = load i32, ptr %10, align 4
  %45 = call i32 @expandbox(ptr noundef %41, ptr noundef %42, i32 noundef %43, i32 noundef %44)
  %46 = call { i64, i64 } @intcoord(ptr noundef %41, ptr noundef %42)
  %47 = extractvalue { i64, i64 } %46, 0
  store i64 %47, ptr %16, align 4
  %48 = getelementptr inbounds { i64, i64 }, ptr %16, i32 0, i32 1
  %49 = extractvalue { i64, i64 } %46, 1
  store i64 %49, ptr %48, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %16, i64 16, i1 false)
  %50 = load ptr, ptr %8, align 8
  %51 = getelementptr inbounds %struct.tree, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  store ptr %52, ptr %13, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = load ptr, ptr %13, align 8
  %55 = load ptr, ptr %8, align 8
  %56 = load i64, ptr %14, align 4
  %57 = getelementptr inbounds { i64, i64 }, ptr %14, i32 0, i32 1
  %58 = load i64, ptr %57, align 4
  %59 = call ptr @loadtree(ptr noundef %53, i64 %56, i64 %58, ptr noundef %54, i32 noundef 536870912, ptr noundef %55)
  store ptr %59, ptr %13, align 8
  %60 = load ptr, ptr %8, align 8
  %61 = getelementptr inbounds %struct.tree, ptr %60, i32 0, i32 2
  store ptr %59, ptr %61, align 8
  br label %62

62:                                               ; preds = %40, %35
  br label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr %11, align 8
  %65 = getelementptr inbounds %struct.bnode, ptr %64, i32 0, i32 10
  %66 = load ptr, ptr %65, align 8
  store ptr %66, ptr %11, align 8
  br label %32

67:                                               ; preds = %32
  br label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %12, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, ptr %12, align 4
  br label %22

71:                                               ; preds = %22
  %72 = load ptr, ptr %8, align 8
  %73 = getelementptr inbounds %struct.tree, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  store ptr %74, ptr %13, align 8
  %75 = call double @hackcofm(ptr noundef %74)
  %76 = load ptr, ptr %8, align 8
  %77 = getelementptr inbounds %struct.tree, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  ret ptr %78
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @computegrav(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.tree, ptr %10, i32 0, i32 1
  %12 = load double, ptr %11, align 8
  store double %12, ptr %6, align 8
  store double 6.250000e-03, ptr %7, align 8
  %13 = load i32, ptr @__NumNodes, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, ptr %5, align 4
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, ptr %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.tree, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %8, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.tree, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [64 x ptr], ptr %23, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8
  store ptr %27, ptr %9, align 8
  %28 = load double, ptr %6, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = load ptr, ptr %9, align 8
  %31 = load i32, ptr %4, align 4
  %32 = load double, ptr %7, align 8
  %33 = call i32 @grav(double noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %31, double noundef %32)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, ptr %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %5, align 4
  br label %15

37:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vp(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store double 6.250000e-03, ptr %5, align 8
  %36 = load ptr, ptr %3, align 8
  %37 = icmp ne ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load ptr, ptr %3, align 8
  store ptr %39, ptr %11, align 8
  br label %40

40:                                               ; preds = %38, %2
  br label %41

41:                                               ; preds = %455, %40
  %42 = load ptr, ptr %3, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %459

44:                                               ; preds = %41
  store i32 0, ptr %12, align 4
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i32, ptr %12, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.bnode, ptr %49, i32 0, i32 7
  %51 = load i32, ptr %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x double], ptr %50, i64 0, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %52
  store double %54, ptr %55, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load i32, ptr %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %12, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32, ptr %4, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %128

62:                                               ; preds = %59
  store i32 0, ptr %13, align 4
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i32, ptr %13, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i32, ptr %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds %struct.bnode, ptr %71, i32 0, i32 6
  %73 = getelementptr inbounds [3 x double], ptr %72, i64 0, i64 %68
  %74 = load double, ptr %73, align 8
  %75 = fsub double %70, %74
  %76 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %68
  store double %75, ptr %76, align 8
  br label %77

77:                                               ; preds = %66
  %78 = load i32, ptr %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %13, align 4
  br label %63

80:                                               ; preds = %63
  store i32 0, ptr %14, align 4
  br label %81

81:                                               ; preds = %92, %80
  %82 = load i32, ptr %14, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i32, ptr %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = load double, ptr %5, align 8
  %90 = fmul double %88, %89
  %91 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %86
  store double %90, ptr %91, align 8
  br label %92

92:                                               ; preds = %84
  %93 = load i32, ptr %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %14, align 4
  br label %81

95:                                               ; preds = %81
  store i32 0, ptr %15, align 4
  br label %96

96:                                               ; preds = %109, %95
  %97 = load i32, ptr %15, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load ptr, ptr %3, align 8
  %101 = getelementptr inbounds %struct.bnode, ptr %100, i32 0, i32 5
  %102 = load i32, ptr %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [3 x double], ptr %101, i64 0, i64 %103
  %105 = load double, ptr %104, align 8
  %106 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %103
  %107 = load double, ptr %106, align 8
  %108 = fadd double %105, %107
  store double %108, ptr %106, align 8
  br label %109

109:                                              ; preds = %99
  %110 = load i32, ptr %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %15, align 4
  br label %96

112:                                              ; preds = %96
  store i32 0, ptr %16, align 4
  br label %113

113:                                              ; preds = %124, %112
  %114 = load i32, ptr %16, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i32, ptr %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %118
  %120 = load double, ptr %119, align 8
  %121 = load ptr, ptr %3, align 8
  %122 = getelementptr inbounds %struct.bnode, ptr %121, i32 0, i32 5
  %123 = getelementptr inbounds [3 x double], ptr %122, i64 0, i64 %118
  store double %120, ptr %123, align 8
  br label %124

124:                                              ; preds = %116
  %125 = load i32, ptr %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %16, align 4
  br label %113

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %59
  %129 = load ptr, ptr %3, align 8
  %130 = getelementptr inbounds %struct.bnode, ptr %129, i32 0, i32 2
  %131 = load double, ptr %130, align 8
  store double %131, ptr %17, align 8
  %132 = load ptr, ptr %3, align 8
  %133 = getelementptr inbounds %struct.bnode, ptr %132, i32 0, i32 2
  %134 = getelementptr inbounds [3 x double], ptr %133, i64 0, i64 1
  %135 = load double, ptr %134, align 8
  store double %135, ptr %18, align 8
  %136 = load ptr, ptr %3, align 8
  %137 = getelementptr inbounds %struct.bnode, ptr %136, i32 0, i32 2
  %138 = getelementptr inbounds [3 x double], ptr %137, i64 0, i64 2
  %139 = load double, ptr %138, align 8
  store double %139, ptr %19, align 8
  %140 = load double, ptr %17, align 8
  %141 = call i32 (double, ...) @isnan(double noundef %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %128
  %144 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 99)
  %145 = call i32 @exit(i32 noundef 0) #10
  unreachable

146:                                              ; preds = %128
  %147 = load double, ptr %18, align 8
  %148 = call i32 (double, ...) @isnan(double noundef %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 98)
  %152 = call i32 @exit(i32 noundef 0) #10
  unreachable

153:                                              ; preds = %146
  %154 = load double, ptr %19, align 8
  %155 = call i32 (double, ...) @isnan(double noundef %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 97)
  %159 = call i32 @exit(i32 noundef 0) #10
  unreachable

160:                                              ; preds = %153
  %161 = load double, ptr %17, align 8
  %162 = call double @llvm.fabs.f64(double %161)
  %163 = fcmp olt double %162, 1.000000e+01
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 96)
  %166 = call i32 @exit(i32 noundef 0) #10
  unreachable

167:                                              ; preds = %160
  %168 = load double, ptr %18, align 8
  %169 = call double @llvm.fabs.f64(double %168)
  %170 = fcmp olt double %169, 1.000000e+01
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 95)
  %173 = call i32 @exit(i32 noundef 0) #10
  unreachable

174:                                              ; preds = %167
  %175 = load double, ptr %19, align 8
  %176 = call double @llvm.fabs.f64(double %175)
  %177 = fcmp olt double %176, 1.000000e+01
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 94)
  %180 = call i32 @exit(i32 noundef 0) #10
  unreachable

181:                                              ; preds = %174
  store i32 0, ptr %20, align 4
  br label %182

182:                                              ; preds = %193, %181
  %183 = load i32, ptr %20, align 4
  %184 = icmp slt i32 %183, 3
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load i32, ptr %20, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %187
  %189 = load double, ptr %188, align 8
  %190 = load ptr, ptr %3, align 8
  %191 = getelementptr inbounds %struct.bnode, ptr %190, i32 0, i32 6
  %192 = getelementptr inbounds [3 x double], ptr %191, i64 0, i64 %187
  store double %189, ptr %192, align 8
  br label %193

193:                                              ; preds = %185
  %194 = load i32, ptr %20, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %20, align 4
  br label %182

196:                                              ; preds = %182
  %197 = load ptr, ptr %3, align 8
  %198 = getelementptr inbounds %struct.bnode, ptr %197, i32 0, i32 6
  %199 = load double, ptr %198, align 8
  store double %199, ptr %21, align 8
  %200 = load ptr, ptr %3, align 8
  %201 = getelementptr inbounds %struct.bnode, ptr %200, i32 0, i32 6
  %202 = getelementptr inbounds [3 x double], ptr %201, i64 0, i64 1
  %203 = load double, ptr %202, align 8
  store double %203, ptr %22, align 8
  %204 = load ptr, ptr %3, align 8
  %205 = getelementptr inbounds %struct.bnode, ptr %204, i32 0, i32 6
  %206 = getelementptr inbounds [3 x double], ptr %205, i64 0, i64 2
  %207 = load double, ptr %206, align 8
  store double %207, ptr %23, align 8
  %208 = load double, ptr %21, align 8
  %209 = call i32 (double, ...) @isnan(double noundef %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %196
  %212 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 89)
  %213 = call i32 @exit(i32 noundef 0) #10
  unreachable

214:                                              ; preds = %196
  %215 = load double, ptr %22, align 8
  %216 = call i32 (double, ...) @isnan(double noundef %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 88)
  %220 = call i32 @exit(i32 noundef 0) #10
  unreachable

221:                                              ; preds = %214
  %222 = load double, ptr %23, align 8
  %223 = call i32 (double, ...) @isnan(double noundef %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 87)
  %227 = call i32 @exit(i32 noundef 0) #10
  unreachable

228:                                              ; preds = %221
  %229 = load double, ptr %21, align 8
  %230 = call double @llvm.fabs.f64(double %229)
  %231 = fcmp olt double %230, 1.000000e+04
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 86)
  %234 = call i32 @exit(i32 noundef 0) #10
  unreachable

235:                                              ; preds = %228
  %236 = load double, ptr %22, align 8
  %237 = call double @llvm.fabs.f64(double %236)
  %238 = fcmp olt double %237, 1.000000e+04
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 85)
  %241 = call i32 @exit(i32 noundef 0) #10
  unreachable

242:                                              ; preds = %235
  %243 = load double, ptr %23, align 8
  %244 = call double @llvm.fabs.f64(double %243)
  %245 = fcmp olt double %244, 1.000000e+04
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 84)
  %248 = call i32 @exit(i32 noundef 0) #10
  unreachable

249:                                              ; preds = %242
  store i32 0, ptr %24, align 4
  br label %250

250:                                              ; preds = %263, %249
  %251 = load i32, ptr %24, align 4
  %252 = icmp slt i32 %251, 3
  br i1 %252, label %253, label %266

253:                                              ; preds = %250
  %254 = load ptr, ptr %3, align 8
  %255 = getelementptr inbounds %struct.bnode, ptr %254, i32 0, i32 6
  %256 = load i32, ptr %24, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [3 x double], ptr %255, i64 0, i64 %257
  %259 = load double, ptr %258, align 8
  %260 = load double, ptr %5, align 8
  %261 = fmul double %259, %260
  %262 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %257
  store double %261, ptr %262, align 8
  br label %263

263:                                              ; preds = %253
  %264 = load i32, ptr %24, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, ptr %24, align 4
  br label %250

266:                                              ; preds = %250
  %267 = load ptr, ptr %3, align 8
  %268 = getelementptr inbounds %struct.bnode, ptr %267, i32 0, i32 5
  %269 = load double, ptr %268, align 8
  store double %269, ptr %25, align 8
  %270 = load ptr, ptr %3, align 8
  %271 = getelementptr inbounds %struct.bnode, ptr %270, i32 0, i32 5
  %272 = getelementptr inbounds [3 x double], ptr %271, i64 0, i64 1
  %273 = load double, ptr %272, align 8
  store double %273, ptr %26, align 8
  %274 = load ptr, ptr %3, align 8
  %275 = getelementptr inbounds %struct.bnode, ptr %274, i32 0, i32 5
  %276 = getelementptr inbounds [3 x double], ptr %275, i64 0, i64 2
  %277 = load double, ptr %276, align 8
  store double %277, ptr %27, align 8
  %278 = load double, ptr %25, align 8
  %279 = call i32 (double, ...) @isnan(double noundef %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %266
  %282 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 79)
  %283 = call i32 @exit(i32 noundef 0) #10
  unreachable

284:                                              ; preds = %266
  %285 = load double, ptr %26, align 8
  %286 = call i32 (double, ...) @isnan(double noundef %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 78)
  %290 = call i32 @exit(i32 noundef 0) #10
  unreachable

291:                                              ; preds = %284
  %292 = load double, ptr %27, align 8
  %293 = call i32 (double, ...) @isnan(double noundef %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 77)
  %297 = call i32 @exit(i32 noundef 0) #10
  unreachable

298:                                              ; preds = %291
  %299 = load double, ptr %25, align 8
  %300 = call double @llvm.fabs.f64(double %299)
  %301 = fcmp olt double %300, 1.000000e+04
  br i1 %301, label %305, label %302

302:                                              ; preds = %298
  %303 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 76)
  %304 = call i32 @exit(i32 noundef 0) #10
  unreachable

305:                                              ; preds = %298
  %306 = load double, ptr %26, align 8
  %307 = call double @llvm.fabs.f64(double %306)
  %308 = fcmp olt double %307, 1.000000e+04
  br i1 %308, label %312, label %309

309:                                              ; preds = %305
  %310 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 75)
  %311 = call i32 @exit(i32 noundef 0) #10
  unreachable

312:                                              ; preds = %305
  %313 = load double, ptr %27, align 8
  %314 = call double @llvm.fabs.f64(double %313)
  %315 = fcmp olt double %314, 1.000000e+04
  br i1 %315, label %319, label %316

316:                                              ; preds = %312
  %317 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 74)
  %318 = call i32 @exit(i32 noundef 0) #10
  unreachable

319:                                              ; preds = %312
  store i32 0, ptr %28, align 4
  br label %320

320:                                              ; preds = %334, %319
  %321 = load i32, ptr %28, align 4
  %322 = icmp slt i32 %321, 3
  br i1 %322, label %323, label %337

323:                                              ; preds = %320
  %324 = load ptr, ptr %3, align 8
  %325 = getelementptr inbounds %struct.bnode, ptr %324, i32 0, i32 5
  %326 = load i32, ptr %28, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [3 x double], ptr %325, i64 0, i64 %327
  %329 = load double, ptr %328, align 8
  %330 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %327
  %331 = load double, ptr %330, align 8
  %332 = fadd double %329, %331
  %333 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %327
  store double %332, ptr %333, align 8
  br label %334

334:                                              ; preds = %323
  %335 = load i32, ptr %28, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, ptr %28, align 4
  br label %320

337:                                              ; preds = %320
  store i32 0, ptr %29, align 4
  br label %338

338:                                              ; preds = %348, %337
  %339 = load i32, ptr %29, align 4
  %340 = icmp slt i32 %339, 3
  br i1 %340, label %341, label %351

341:                                              ; preds = %338
  %342 = load i32, ptr %29, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %343
  %345 = load double, ptr %344, align 8
  %346 = fmul double %345, 1.250000e-02
  %347 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %343
  store double %346, ptr %347, align 8
  br label %348

348:                                              ; preds = %341
  %349 = load i32, ptr %29, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, ptr %29, align 4
  br label %338

351:                                              ; preds = %338
  store i32 0, ptr %30, align 4
  br label %352

352:                                              ; preds = %365, %351
  %353 = load i32, ptr %30, align 4
  %354 = icmp slt i32 %353, 3
  br i1 %354, label %355, label %368

355:                                              ; preds = %352
  %356 = load ptr, ptr %3, align 8
  %357 = getelementptr inbounds %struct.bnode, ptr %356, i32 0, i32 2
  %358 = load i32, ptr %30, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [3 x double], ptr %357, i64 0, i64 %359
  %361 = load double, ptr %360, align 8
  %362 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %359
  %363 = load double, ptr %362, align 8
  %364 = fadd double %361, %363
  store double %364, ptr %362, align 8
  br label %365

365:                                              ; preds = %355
  %366 = load i32, ptr %30, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, ptr %30, align 4
  br label %352

368:                                              ; preds = %352
  store i32 0, ptr %31, align 4
  br label %369

369:                                              ; preds = %380, %368
  %370 = load i32, ptr %31, align 4
  %371 = icmp slt i32 %370, 3
  br i1 %371, label %372, label %383

372:                                              ; preds = %369
  %373 = load i32, ptr %31, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %374
  %376 = load double, ptr %375, align 8
  %377 = load ptr, ptr %3, align 8
  %378 = getelementptr inbounds %struct.bnode, ptr %377, i32 0, i32 2
  %379 = getelementptr inbounds [3 x double], ptr %378, i64 0, i64 %374
  store double %376, ptr %379, align 8
  br label %380

380:                                              ; preds = %372
  %381 = load i32, ptr %31, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, ptr %31, align 4
  br label %369

383:                                              ; preds = %369
  store i32 0, ptr %32, align 4
  br label %384

384:                                              ; preds = %398, %383
  %385 = load i32, ptr %32, align 4
  %386 = icmp slt i32 %385, 3
  br i1 %386, label %387, label %401

387:                                              ; preds = %384
  %388 = load i32, ptr %32, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %389
  %391 = load double, ptr %390, align 8
  %392 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %389
  %393 = load double, ptr %392, align 8
  %394 = fadd double %391, %393
  %395 = load ptr, ptr %3, align 8
  %396 = getelementptr inbounds %struct.bnode, ptr %395, i32 0, i32 5
  %397 = getelementptr inbounds [3 x double], ptr %396, i64 0, i64 %389
  store double %394, ptr %397, align 8
  br label %398

398:                                              ; preds = %387
  %399 = load i32, ptr %32, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, ptr %32, align 4
  br label %384

401:                                              ; preds = %384
  %402 = load ptr, ptr %3, align 8
  %403 = getelementptr inbounds %struct.bnode, ptr %402, i32 0, i32 2
  %404 = load double, ptr %403, align 8
  store double %404, ptr %33, align 8
  %405 = load ptr, ptr %3, align 8
  %406 = getelementptr inbounds %struct.bnode, ptr %405, i32 0, i32 2
  %407 = getelementptr inbounds [3 x double], ptr %406, i64 0, i64 1
  %408 = load double, ptr %407, align 8
  store double %408, ptr %34, align 8
  %409 = load ptr, ptr %3, align 8
  %410 = getelementptr inbounds %struct.bnode, ptr %409, i32 0, i32 2
  %411 = getelementptr inbounds [3 x double], ptr %410, i64 0, i64 2
  %412 = load double, ptr %411, align 8
  store double %412, ptr %35, align 8
  %413 = load double, ptr %33, align 8
  %414 = call i32 (double, ...) @isnan(double noundef %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %401
  %417 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 69)
  %418 = call i32 @exit(i32 noundef 0) #10
  unreachable

419:                                              ; preds = %401
  %420 = load double, ptr %34, align 8
  %421 = call i32 (double, ...) @isnan(double noundef %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %419
  %424 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 68)
  %425 = call i32 @exit(i32 noundef 0) #10
  unreachable

426:                                              ; preds = %419
  %427 = load double, ptr %35, align 8
  %428 = call i32 (double, ...) @isnan(double noundef %427)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %426
  %431 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 67)
  %432 = call i32 @exit(i32 noundef 0) #10
  unreachable

433:                                              ; preds = %426
  %434 = load double, ptr %33, align 8
  %435 = call double @llvm.fabs.f64(double %434)
  %436 = fcmp olt double %435, 1.000000e+04
  br i1 %436, label %440, label %437

437:                                              ; preds = %433
  %438 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 66)
  %439 = call i32 @exit(i32 noundef 0) #10
  unreachable

440:                                              ; preds = %433
  %441 = load double, ptr %34, align 8
  %442 = call double @llvm.fabs.f64(double %441)
  %443 = fcmp olt double %442, 1.000000e+04
  br i1 %443, label %447, label %444

444:                                              ; preds = %440
  %445 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 65)
  %446 = call i32 @exit(i32 noundef 0) #10
  unreachable

447:                                              ; preds = %440
  %448 = load double, ptr %35, align 8
  %449 = call double @llvm.fabs.f64(double %448)
  %450 = fcmp olt double %449, 1.000000e+04
  br i1 %450, label %454, label %451

451:                                              ; preds = %447
  %452 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 64)
  %453 = call i32 @exit(i32 noundef 0) #10
  unreachable

454:                                              ; preds = %447
  br label %455

455:                                              ; preds = %454
  %456 = load ptr, ptr %3, align 8
  %457 = getelementptr inbounds %struct.bnode, ptr %456, i32 0, i32 10
  %458 = load ptr, ptr %457, align 8
  store ptr %458, ptr %3, align 8
  br label %41

459:                                              ; preds = %41
  ret i32 0
}

declare i32 @isnan(...) #1

; Function Attrs: noreturn nounwind
declare i32 @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @grav(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  store double %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  store double %4, ptr %10, align 8
  store i32 0, ptr %13, align 4
  %15 = load ptr, ptr %8, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load ptr, ptr %8, align 8
  store ptr %18, ptr %14, align 8
  br label %19

19:                                               ; preds = %17, %5
  %20 = load ptr, ptr %8, align 8
  store ptr %20, ptr %12, align 8
  br label %21

21:                                               ; preds = %24, %19
  %22 = load ptr, ptr %12, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load double, ptr %6, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load i32, ptr %9, align 4
  %29 = load double, ptr %10, align 8
  %30 = call i32 @gravstep(double noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28, double noundef %29)
  %31 = getelementptr inbounds %struct.bnode, ptr %27, i32 0, i32 10
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr %12, align 8
  %33 = load i32, ptr %13, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %13, align 4
  br label %21

35:                                               ; preds = %21
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gravstep(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store double %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  store double %4, ptr %10, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = load double, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = call i32 @hackgrav(ptr noundef %11, double noundef %12, ptr noundef %13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hackgrav(ptr noundef %0, double noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.hgstruct, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hgstruct, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store double %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %13 = load ptr, ptr %4, align 8
  store ptr %13, ptr %7, align 8
  store i32 0, ptr %9, align 4
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i32, ptr %9, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.bnode, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x double], ptr %19, i64 0, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds %struct.hgstruct, ptr %7, i32 0, i32 1
  %25 = getelementptr inbounds [3 x double], ptr %24, i64 0, i64 %21
  store double %23, ptr %25, align 8
  br label %26

26:                                               ; preds = %17
  %27 = load i32, ptr %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %9, align 4
  br label %14

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.hgstruct, ptr %7, i32 0, i32 2
  store double 0.000000e+00, ptr %30, align 8
  store i32 0, ptr %10, align 4
  br label %31

31:                                               ; preds = %39, %29
  %32 = load i32, ptr %10, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.hgstruct, ptr %7, i32 0, i32 3
  %36 = load i32, ptr %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x double], ptr %35, i64 0, i64 %37
  store double 0.000000e+00, ptr %38, align 8
  br label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %10, align 4
  br label %31

42:                                               ; preds = %31
  %43 = load double, ptr %5, align 8
  %44 = fmul double %43, %43
  store double %44, ptr %8, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = load double, ptr %8, align 8
  call void @walksub(ptr sret(%struct.hgstruct) align 8 %11, ptr noundef %45, double noundef %46, double noundef 1.000000e+00, ptr noundef byval(%struct.hgstruct) align 8 %7, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %11, i64 64, i1 false)
  %47 = load double, ptr %30, align 8
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.bnode, ptr %48, i32 0, i32 8
  store double %47, ptr %49, align 8
  store i32 0, ptr %12, align 4
  br label %50

50:                                               ; preds = %62, %42
  %51 = load i32, ptr %12, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.hgstruct, ptr %7, i32 0, i32 3
  %55 = load i32, ptr %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x double], ptr %54, i64 0, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.bnode, ptr %59, i32 0, i32 7
  %61 = getelementptr inbounds [3 x double], ptr %60, i64 0, i64 %56
  store double %58, ptr %61, align 8
  br label %62

62:                                               ; preds = %53
  %63 = load i32, ptr %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %12, align 4
  br label %50

65:                                               ; preds = %50
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @walksub(ptr noalias sret(%struct.hgstruct) align 8 %0, ptr noundef %1, double noundef %2, double noundef %3, ptr noundef byval(%struct.hgstruct) align 8 %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca [8 x ptr], align 16
  %15 = alloca %struct.hgstruct, align 8
  %16 = alloca %struct.hgstruct, align 8
  store ptr %1, ptr %7, align 8
  store double %2, ptr %8, align 8
  store double %3, ptr %9, align 8
  store i32 %5, ptr %10, align 4
  %17 = load ptr, ptr %7, align 8
  %18 = load double, ptr %8, align 8
  %19 = load double, ptr %9, align 8
  %20 = call signext i16 @subdivp(ptr noundef %17, double noundef %18, double noundef %19, ptr noundef byval(%struct.hgstruct) align 8 %4)
  %21 = icmp ne i16 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %6
  store i32 0, ptr %11, align 4
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32, ptr %11, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %struct.cnode, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x ptr], ptr %28, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr %13, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load ptr, ptr %13, align 8
  %36 = load double, ptr %8, align 8
  %37 = fdiv double %36, 4.000000e+00
  %38 = load double, ptr %9, align 8
  %39 = load i32, ptr %10, align 4
  %40 = add nsw i32 %39, 1
  call void @walksub(ptr sret(%struct.hgstruct) align 8 %15, ptr noundef %35, double noundef %37, double noundef %38, ptr noundef byval(%struct.hgstruct) align 8 %4, i32 noundef %40)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %15, i64 64, i1 false)
  br label %41

41:                                               ; preds = %34, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %11, align 4
  br label %23

45:                                               ; preds = %23
  br label %53

46:                                               ; preds = %6
  %47 = load ptr, ptr %7, align 8
  %48 = load ptr, ptr %4, align 8
  %49 = icmp ne ptr %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load ptr, ptr %7, align 8
  call void @gravsub(ptr sret(%struct.hgstruct) align 8 %16, ptr noundef %51, ptr noundef byval(%struct.hgstruct) align 8 %4)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %16, i64 64, i1 false)
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %45
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %4, i64 64, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @subdivp(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef byval(%struct.hgstruct) align 8 %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store double %1, ptr %7, align 8
  store double %2, ptr %8, align 8
  %15 = load ptr, ptr %6, align 8
  store ptr %15, ptr %9, align 8
  %16 = load i16, ptr %15, align 8
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i16 0, ptr %5, align 2
  br label %61

20:                                               ; preds = %4
  store i32 0, ptr %13, align 4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, ptr %13, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds %struct.node, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x double], ptr %26, i64 0, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = getelementptr inbounds %struct.hgstruct, ptr %3, i32 0, i32 1
  %32 = getelementptr inbounds [3 x double], ptr %31, i64 0, i64 %28
  %33 = load double, ptr %32, align 8
  %34 = fsub double %30, %33
  %35 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %28
  store double %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %24
  %37 = load i32, ptr %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %13, align 4
  br label %21

39:                                               ; preds = %21
  store double 0.000000e+00, ptr %12, align 8
  store i32 0, ptr %14, align 4
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, ptr %14, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, ptr %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = load double, ptr %12, align 8
  %49 = call double @llvm.fmuladd.f64(double %47, double %47, double %48)
  store double %49, ptr %12, align 8
  br label %50

50:                                               ; preds = %43
  %51 = load i32, ptr %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %14, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load double, ptr %8, align 8
  %55 = load double, ptr %12, align 8
  %56 = fmul double %54, %55
  %57 = load double, ptr %7, align 8
  %58 = fcmp olt double %56, %57
  %59 = zext i1 %58 to i32
  %60 = trunc i32 %59 to i16
  store i16 %60, ptr %5, align 2
  br label %61

61:                                               ; preds = %53, %19
  %62 = load i16, ptr %5, align 2
  ret i16 %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gravsub(ptr noalias sret(%struct.hgstruct) align 8 %0, ptr noundef %1, ptr noundef byval(%struct.hgstruct) align 8 %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca [3 x double], align 16
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %15, align 4
  br label %19

19:                                               ; preds = %34, %3
  %20 = load i32, ptr %15, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.node, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x double], ptr %24, i64 0, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds %struct.hgstruct, ptr %2, i32 0, i32 1
  %30 = getelementptr inbounds [3 x double], ptr %29, i64 0, i64 %26
  %31 = load double, ptr %30, align 8
  %32 = fsub double %28, %31
  %33 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 %26
  store double %32, ptr %33, align 8
  br label %34

34:                                               ; preds = %22
  %35 = load i32, ptr %15, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %15, align 4
  br label %19

37:                                               ; preds = %19
  store double 0.000000e+00, ptr %14, align 8
  store i32 0, ptr %16, align 4
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i32, ptr %16, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, ptr %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = load double, ptr %14, align 8
  %47 = call double @llvm.fmuladd.f64(double %45, double %45, double %46)
  store double %47, ptr %14, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i32, ptr %16, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %16, align 4
  br label %38

51:                                               ; preds = %38
  %52 = load double, ptr %14, align 8
  %53 = fadd double %52, 0x3F647AE147AE147C
  store double %53, ptr %14, align 8
  %54 = call double @sqrt(double noundef %53) #9
  store double %54, ptr %5, align 8
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct.node, ptr %55, i32 0, i32 1
  %57 = load double, ptr %56, align 8
  %58 = load double, ptr %5, align 8
  %59 = fdiv double %57, %58
  store double %59, ptr %6, align 8
  %60 = getelementptr inbounds %struct.hgstruct, ptr %2, i32 0, i32 2
  %61 = load double, ptr %60, align 8
  %62 = fsub double %61, %59
  store double %62, ptr %60, align 8
  %63 = load double, ptr %6, align 8
  %64 = load double, ptr %14, align 8
  %65 = fdiv double %63, %64
  store double %65, ptr %7, align 8
  store i32 0, ptr %17, align 4
  br label %66

66:                                               ; preds = %77, %51
  %67 = load i32, ptr %17, align 4
  %68 = icmp slt i32 %67, 3
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i32, ptr %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 %71
  %73 = load double, ptr %72, align 8
  %74 = load double, ptr %7, align 8
  %75 = fmul double %73, %74
  %76 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %71
  store double %75, ptr %76, align 8
  br label %77

77:                                               ; preds = %69
  %78 = load i32, ptr %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %17, align 4
  br label %66

80:                                               ; preds = %66
  store i32 0, ptr %18, align 4
  br label %81

81:                                               ; preds = %93, %80
  %82 = load i32, ptr %18, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.hgstruct, ptr %2, i32 0, i32 3
  %86 = load i32, ptr %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x double], ptr %85, i64 0, i64 %87
  %89 = load double, ptr %88, align 8
  %90 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %87
  %91 = load double, ptr %90, align 8
  %92 = fadd double %89, %91
  store double %92, ptr %88, align 8
  br label %93

93:                                               ; preds = %84
  %94 = load i32, ptr %18, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %18, align 4
  br label %81

96:                                               ; preds = %81
  %97 = load ptr, ptr %4, align 8
  %98 = load i16, ptr %97, align 8
  %99 = sext i16 %98 to i32
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %96
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %2, i64 64, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @expandbox(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.icstruct, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x double], align 16
  %12 = alloca ptr, align 8
  %13 = alloca %struct.tree, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.icstruct, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = call i32 @ic_test(ptr noundef %20, ptr noundef %21)
  store i32 %22, ptr %15, align 4
  br label %23

23:                                               ; preds = %129, %4
  %24 = load i32, ptr %15, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %130

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.tree, ptr %28, i32 0, i32 1
  %30 = load double, ptr %29, align 8
  store double %30, ptr %14, align 8
  %31 = fcmp olt double %30, 1.000000e+03
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 999)
  %34 = call i32 @exit(i32 noundef 0) #10
  unreachable

35:                                               ; preds = %27
  store i32 0, ptr %16, align 4
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i32, ptr %16, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load ptr, ptr %6, align 8
  %41 = load i32, ptr %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x double], ptr %40, i64 0, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = load double, ptr %14, align 8
  %46 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %45, double %44)
  %47 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %42
  store double %46, ptr %47, align 8
  br label %48

48:                                               ; preds = %39
  %49 = load i32, ptr %16, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %16, align 4
  br label %36

51:                                               ; preds = %36
  store i32 0, ptr %10, align 4
  br label %52

52:                                               ; preds = %78, %51
  %53 = load i32, ptr %10, align 4
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %81

55:                                               ; preds = %52
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct.bnode, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x double], ptr %57, i64 0, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %59
  %63 = load double, ptr %62, align 8
  %64 = fcmp olt double %61, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %55
  %66 = load ptr, ptr %6, align 8
  %67 = load i32, ptr %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x double], ptr %66, i64 0, i64 %68
  %70 = load double, ptr %69, align 8
  store double %70, ptr %17, align 8
  %71 = load double, ptr %14, align 8
  %72 = fsub double %70, %71
  %73 = load ptr, ptr %6, align 8
  %74 = load i32, ptr %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [3 x double], ptr %73, i64 0, i64 %75
  store double %72, ptr %76, align 8
  br label %77

77:                                               ; preds = %65, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %10, align 4
  br label %52

81:                                               ; preds = %52
  %82 = load double, ptr %14, align 8
  %83 = fmul double 2.000000e+00, %82
  %84 = load ptr, ptr %6, align 8
  %85 = getelementptr inbounds %struct.tree, ptr %84, i32 0, i32 1
  store double %83, ptr %85, align 8
  %86 = load ptr, ptr %6, align 8
  %87 = getelementptr inbounds %struct.tree, ptr %86, i32 0, i32 1
  %88 = load double, ptr %87, align 8
  store double %88, ptr %14, align 8
  %89 = load ptr, ptr %6, align 8
  %90 = getelementptr inbounds %struct.tree, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = icmp ne ptr %91, null
  br i1 %92, label %93, label %129

93:                                               ; preds = %81
  %94 = call ptr @cell_alloc(i32 noundef 0)
  store ptr %94, ptr %12, align 8
  %95 = load double, ptr %11, align 16
  %96 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 1
  %97 = load double, ptr %96, align 8
  %98 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 2
  %99 = load double, ptr %98, align 16
  %100 = load ptr, ptr %6, align 8
  %101 = call { i64, i64 } @intcoord1(double noundef %95, double noundef %97, double noundef %99, ptr noundef %100)
  %102 = extractvalue { i64, i64 } %101, 0
  store i64 %102, ptr %19, align 4
  %103 = getelementptr inbounds { i64, i64 }, ptr %19, i32 0, i32 1
  %104 = extractvalue { i64, i64 } %101, 1
  store i64 %104, ptr %103, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %19, i64 16, i1 false)
  %105 = getelementptr inbounds %struct.icstruct, ptr %9, i32 0, i32 1
  %106 = load i16, ptr %105, align 4
  %107 = icmp ne i16 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %93
  %109 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 1)
  %110 = call i32 @exit(i32 noundef 0) #10
  unreachable

111:                                              ; preds = %93
  %112 = load i64, ptr %9, align 4
  %113 = load i64, ptr %105, align 4
  %114 = call i32 @old_subindex(i64 %112, i64 %113, i32 noundef 536870912)
  store i32 %114, ptr %10, align 4
  %115 = load ptr, ptr %6, align 8
  %116 = getelementptr inbounds %struct.tree, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8
  %118 = load ptr, ptr %12, align 8
  %119 = getelementptr inbounds %struct.cnode, ptr %118, i32 0, i32 5
  %120 = load i32, ptr %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x ptr], ptr %119, i64 0, i64 %121
  store ptr %117, ptr %122, align 8
  %123 = load ptr, ptr %12, align 8
  %124 = load ptr, ptr %6, align 8
  %125 = getelementptr inbounds %struct.tree, ptr %124, i32 0, i32 2
  store ptr %123, ptr %125, align 8
  %126 = load ptr, ptr %5, align 8
  %127 = load ptr, ptr %6, align 8
  %128 = call i32 @ic_test(ptr noundef %126, ptr noundef %127)
  store i32 %128, ptr %15, align 4
  br label %129

129:                                              ; preds = %111, %81
  br label %23

130:                                              ; preds = %23
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @loadtree(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.icstruct, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.icstruct, align 4
  %19 = alloca %struct.icstruct, align 4
  store i64 %1, ptr %8, align 4
  %20 = getelementptr inbounds { i64, i64 }, ptr %8, i32 0, i32 1
  store i64 %2, ptr %20, align 4
  store ptr %0, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store i32 %4, ptr %11, align 4
  store ptr %5, ptr %12, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load ptr, ptr %9, align 8
  store ptr %24, ptr %7, align 8
  br label %78

25:                                               ; preds = %6
  %26 = load i32, ptr %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 2)
  %30 = call i32 @exit(i32 noundef 0) #10
  unreachable

31:                                               ; preds = %25
  %32 = load ptr, ptr %10, align 8
  %33 = load i16, ptr %32, align 8
  %34 = sext i16 %33 to i32
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load ptr, ptr %10, align 8
  %38 = ptrtoint ptr %37 to i32
  %39 = and i32 %38, 127
  store i32 %39, ptr %16, align 4
  %40 = call ptr @cell_alloc(i32 noundef %39)
  store ptr %40, ptr %14, align 8
  %41 = load ptr, ptr %10, align 8
  %42 = load ptr, ptr %12, align 8
  %43 = load i32, ptr %11, align 4
  %44 = call i32 @subindex(ptr noundef %41, ptr noundef %42, i32 noundef %43)
  store i32 %44, ptr %13, align 4
  %45 = load ptr, ptr %10, align 8
  %46 = load ptr, ptr %14, align 8
  %47 = getelementptr inbounds %struct.cnode, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x ptr], ptr %47, i64 0, i64 %49
  store ptr %45, ptr %50, align 8
  %51 = load ptr, ptr %14, align 8
  store ptr %51, ptr %10, align 8
  br label %52

52:                                               ; preds = %36, %31
  %53 = load i32, ptr %11, align 4
  %54 = load i64, ptr %8, align 4
  %55 = load i64, ptr %20, align 4
  %56 = call i32 @old_subindex(i64 %54, i64 %55, i32 noundef %53)
  store i32 %56, ptr %13, align 4
  %57 = load ptr, ptr %10, align 8
  %58 = getelementptr inbounds %struct.cnode, ptr %57, i32 0, i32 5
  %59 = load i32, ptr %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x ptr], ptr %58, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 8
  store ptr %62, ptr %15, align 8
  %63 = load ptr, ptr %9, align 8
  %64 = load ptr, ptr %15, align 8
  %65 = load i32, ptr %11, align 4
  %66 = ashr i32 %65, 1
  %67 = load ptr, ptr %12, align 8
  %68 = load i64, ptr %8, align 4
  %69 = load i64, ptr %20, align 4
  %70 = call ptr @loadtree(ptr noundef %63, i64 %68, i64 %69, ptr noundef %64, i32 noundef %66, ptr noundef %67)
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds %struct.cnode, ptr %71, i32 0, i32 5
  %73 = load i32, ptr %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x ptr], ptr %72, i64 0, i64 %74
  store ptr %70, ptr %75, align 8
  br label %76

76:                                               ; preds = %52
  %77 = load ptr, ptr %10, align 8
  store ptr %77, ptr %7, align 8
  br label %78

78:                                               ; preds = %76, %23
  %79 = load ptr, ptr %7, align 8
  ret ptr %79
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @hackcofm(ptr noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %14 = load i16, ptr %0, align 8
  %15 = sext i16 %14 to i32
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %116

17:                                               ; preds = %1
  store double 0.000000e+00, ptr %8, align 8
  store i32 0, ptr %10, align 4
  br label %18

18:                                               ; preds = %25, %17
  %19 = load i32, ptr %10, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, ptr %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %23
  store double 0.000000e+00, ptr %24, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %10, align 4
  br label %18

28:                                               ; preds = %18
  store i32 0, ptr %4, align 4
  br label %29

29:                                               ; preds = %78, %28
  %30 = load i32, ptr %4, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %81

32:                                               ; preds = %29
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.cnode, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x ptr], ptr %34, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8
  store ptr %38, ptr %5, align 8
  %39 = icmp ne ptr %38, null
  br i1 %39, label %40, label %77

40:                                               ; preds = %32
  %41 = load ptr, ptr %5, align 8
  %42 = call double @hackcofm(ptr noundef %41)
  store double %42, ptr %9, align 8
  %43 = load double, ptr %8, align 8
  %44 = fadd double %42, %43
  store double %44, ptr %8, align 8
  store i32 0, ptr %11, align 4
  br label %45

45:                                               ; preds = %58, %40
  %46 = load i32, ptr %11, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.node, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x double], ptr %50, i64 0, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = load double, ptr %9, align 8
  %56 = fmul double %54, %55
  %57 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %52
  store double %56, ptr %57, align 8
  br label %58

58:                                               ; preds = %48
  %59 = load i32, ptr %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %11, align 4
  br label %45

61:                                               ; preds = %45
  store i32 0, ptr %12, align 4
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i32, ptr %12, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, ptr %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %67
  %71 = load double, ptr %70, align 8
  %72 = fadd double %69, %71
  store double %72, ptr %68, align 8
  br label %73

73:                                               ; preds = %65
  %74 = load i32, ptr %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %12, align 4
  br label %62

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %32
  br label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %4, align 4
  br label %29

81:                                               ; preds = %29
  %82 = load double, ptr %8, align 8
  %83 = load ptr, ptr %3, align 8
  %84 = getelementptr inbounds %struct.node, ptr %83, i32 0, i32 1
  store double %82, ptr %84, align 8
  %85 = load double, ptr %7, align 16
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %struct.node, ptr %86, i32 0, i32 2
  store double %85, ptr %87, align 8
  %88 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %89 = load double, ptr %88, align 8
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct.node, ptr %90, i32 0, i32 2
  %92 = getelementptr inbounds [3 x double], ptr %91, i64 0, i64 1
  store double %89, ptr %92, align 8
  %93 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  %94 = load double, ptr %93, align 16
  %95 = load ptr, ptr %3, align 8
  %96 = getelementptr inbounds %struct.node, ptr %95, i32 0, i32 2
  %97 = getelementptr inbounds [3 x double], ptr %96, i64 0, i64 2
  store double %94, ptr %97, align 8
  store i32 0, ptr %13, align 4
  br label %98

98:                                               ; preds = %111, %81
  %99 = load i32, ptr %13, align 4
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load ptr, ptr %3, align 8
  %103 = getelementptr inbounds %struct.node, ptr %102, i32 0, i32 2
  %104 = load i32, ptr %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x double], ptr %103, i64 0, i64 %105
  %107 = load double, ptr %106, align 8
  %108 = getelementptr inbounds %struct.node, ptr %102, i32 0, i32 1
  %109 = load double, ptr %108, align 8
  %110 = fdiv double %107, %109
  store double %110, ptr %106, align 8
  br label %111

111:                                              ; preds = %101
  %112 = load i32, ptr %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %13, align 4
  br label %98

114:                                              ; preds = %98
  %115 = load double, ptr %8, align 8
  store double %115, ptr %2, align 8
  br label %120

116:                                              ; preds = %1
  %117 = load ptr, ptr %3, align 8
  %118 = getelementptr inbounds %struct.node, ptr %117, i32 0, i32 1
  %119 = load double, ptr %118, align 8
  store double %119, ptr %8, align 8
  store double %119, ptr %2, align 8
  br label %120

120:                                              ; preds = %116, %114
  %121 = load double, ptr %2, align 8
  ret double %121
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @cell_alloc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load ptr, ptr @cp_free_list, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr @cp_free_list, align 8
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr @cp_free_list, align 8
  %10 = getelementptr inbounds %struct.cnode, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr @cp_free_list, align 8
  br label %14

12:                                               ; preds = %1
  %13 = call noalias ptr @malloc(i64 noundef 120) #9
  store ptr %13, ptr %3, align 8
  br label %14

14:                                               ; preds = %12, %7
  %15 = load ptr, ptr %3, align 8
  store i16 2, ptr %15, align 8
  %16 = load i32, ptr %2, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.cnode, ptr %17, i32 0, i32 3
  store i32 %16, ptr %18, align 8
  store i32 0, ptr %4, align 4
  br label %19

19:                                               ; preds = %28, %14
  %20 = load i32, ptr %4, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.cnode, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x ptr], ptr %24, i64 0, i64 %26
  store ptr null, ptr %27, align 8
  br label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %4, align 4
  br label %19

31:                                               ; preds = %19
  %32 = load ptr, ptr %3, align 8
  ret ptr %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subindex(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x double], align 16
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.bnode, ptr %13, i32 0, i32 2
  %15 = load double, ptr %14, align 8
  store double %15, ptr %12, align 16
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.bnode, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 1
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 1
  store double %19, ptr %20, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.bnode, ptr %21, i32 0, i32 2
  %23 = getelementptr inbounds [3 x double], ptr %22, i64 0, i64 2
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 2
  store double %24, ptr %25, align 16
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.tree, ptr %26, i32 0, i32 1
  %28 = load double, ptr %27, align 8
  store double %28, ptr %9, align 8
  %29 = load double, ptr %12, align 16
  %30 = load ptr, ptr %5, align 8
  %31 = load double, ptr %30, align 8
  %32 = fsub double %29, %31
  %33 = load double, ptr %9, align 8
  %34 = fdiv double %32, %33
  store double %34, ptr %10, align 8
  %35 = fcmp ole double 0.000000e+00, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load double, ptr %10, align 8
  %38 = fcmp olt double %37, 1.000000e+00
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %3
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 5)
  %41 = call i32 @exit(i32 noundef 0) #10
  unreachable

42:                                               ; preds = %36
  %43 = load double, ptr %10, align 8
  %44 = fmul double 0x41D0000000000000, %43
  %45 = call double @llvm.floor.f64(double %44)
  %46 = fptosi double %45 to i32
  store i32 %46, ptr %11, align 4
  %47 = load double, ptr %20, align 8
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds [3 x double], ptr %48, i64 0, i64 1
  %50 = load double, ptr %49, align 8
  %51 = fsub double %47, %50
  %52 = load double, ptr %9, align 8
  %53 = fdiv double %51, %52
  store double %53, ptr %10, align 8
  %54 = fcmp ole double 0.000000e+00, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load double, ptr %10, align 8
  %57 = fcmp olt double %56, 1.000000e+00
  br i1 %57, label %61, label %58

58:                                               ; preds = %55, %42
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 6)
  %60 = call i32 @exit(i32 noundef 0) #10
  unreachable

61:                                               ; preds = %55
  %62 = load double, ptr %10, align 8
  %63 = fmul double 0x41D0000000000000, %62
  %64 = call double @llvm.floor.f64(double %63)
  %65 = fptosi double %64 to i32
  %66 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 1
  store i32 %65, ptr %66, align 4
  %67 = load double, ptr %25, align 16
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds [3 x double], ptr %68, i64 0, i64 2
  %70 = load double, ptr %69, align 8
  %71 = fsub double %67, %70
  %72 = load double, ptr %9, align 8
  %73 = fdiv double %71, %72
  store double %73, ptr %10, align 8
  %74 = fcmp ole double 0.000000e+00, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %61
  %76 = load double, ptr %10, align 8
  %77 = fcmp olt double %76, 1.000000e+00
  br i1 %77, label %81, label %78

78:                                               ; preds = %75, %61
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 7)
  %80 = call i32 @exit(i32 noundef 0) #10
  unreachable

81:                                               ; preds = %75
  %82 = load double, ptr %10, align 8
  %83 = fmul double 0x41D0000000000000, %82
  %84 = call double @llvm.floor.f64(double %83)
  %85 = fptosi double %84 to i32
  %86 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 2
  store i32 %85, ptr %86, align 4
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %87

87:                                               ; preds = %105, %81
  %88 = load i32, ptr %8, align 4
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load i32, ptr %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %6, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i32, ptr %8, align 4
  %100 = add nsw i32 %99, 1
  %101 = ashr i32 8, %100
  %102 = load i32, ptr %7, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, ptr %7, align 4
  br label %104

104:                                              ; preds = %98, %90
  br label %105

105:                                              ; preds = %104
  %106 = load i32, ptr %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %8, align 4
  br label %87

108:                                              ; preds = %87
  %109 = load i32, ptr %7, align 4
  ret i32 %109
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ic_test(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x double], align 16
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 1, ptr %7, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.bnode, ptr %9, i32 0, i32 2
  %11 = load double, ptr %10, align 8
  store double %11, ptr %8, align 16
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.bnode, ptr %12, i32 0, i32 2
  %14 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 1
  %15 = load double, ptr %14, align 8
  %16 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 1
  store double %15, ptr %16, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.bnode, ptr %17, i32 0, i32 2
  %19 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 2
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 2
  store double %20, ptr %21, align 16
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.tree, ptr %22, i32 0, i32 1
  %24 = load double, ptr %23, align 8
  store double %24, ptr %6, align 8
  %25 = load double, ptr %8, align 16
  %26 = load ptr, ptr %4, align 8
  %27 = load double, ptr %26, align 8
  %28 = fsub double %25, %27
  %29 = load double, ptr %6, align 8
  %30 = fdiv double %28, %29
  store double %30, ptr %5, align 8
  %31 = fcmp ole double 0.000000e+00, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load double, ptr %5, align 8
  %34 = fcmp olt double %33, 1.000000e+00
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %2
  store i32 0, ptr %7, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load double, ptr %16, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds [3 x double], ptr %38, i64 0, i64 1
  %40 = load double, ptr %39, align 8
  %41 = fsub double %37, %40
  %42 = load double, ptr %6, align 8
  %43 = fdiv double %41, %42
  store double %43, ptr %5, align 8
  %44 = fcmp ole double 0.000000e+00, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load double, ptr %5, align 8
  %47 = fcmp olt double %46, 1.000000e+00
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %36
  store i32 0, ptr %7, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load double, ptr %21, align 16
  %51 = load ptr, ptr %4, align 8
  %52 = getelementptr inbounds [3 x double], ptr %51, i64 0, i64 2
  %53 = load double, ptr %52, align 8
  %54 = fsub double %50, %53
  %55 = load double, ptr %6, align 8
  %56 = fdiv double %54, %55
  store double %56, ptr %5, align 8
  %57 = fcmp ole double 0.000000e+00, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load double, ptr %5, align 8
  %60 = fcmp olt double %59, 1.000000e+00
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %49
  store i32 0, ptr %7, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, ptr %7, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @intcoord1(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.icstruct, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca double, align 8
  store double %0, ptr %6, align 8
  store double %1, ptr %7, align 8
  store double %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %11 = getelementptr inbounds %struct.icstruct, ptr %5, i32 0, i32 1
  store i16 1, ptr %11, align 4
  %12 = load double, ptr %6, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = load double, ptr %13, align 8
  %15 = fsub double %12, %14
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr inbounds %struct.tree, ptr %16, i32 0, i32 1
  %18 = load double, ptr %17, align 8
  %19 = fdiv double %15, %18
  store double %19, ptr %10, align 8
  %20 = fcmp ole double 0.000000e+00, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load double, ptr %10, align 8
  %23 = fcmp olt double %22, 1.000000e+00
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load double, ptr %10, align 8
  %26 = fmul double 0x41D0000000000000, %25
  %27 = call double @llvm.floor.f64(double %26)
  %28 = fptosi double %27 to i32
  store i32 %28, ptr %5, align 4
  br label %30

29:                                               ; preds = %21, %4
  store i16 0, ptr %11, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load double, ptr %7, align 8
  %32 = load ptr, ptr %9, align 8
  %33 = getelementptr inbounds [3 x double], ptr %32, i64 0, i64 1
  %34 = load double, ptr %33, align 8
  %35 = fsub double %31, %34
  %36 = getelementptr inbounds %struct.tree, ptr %32, i32 0, i32 1
  %37 = load double, ptr %36, align 8
  %38 = fdiv double %35, %37
  store double %38, ptr %10, align 8
  %39 = fcmp ole double 0.000000e+00, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load double, ptr %10, align 8
  %42 = fcmp olt double %41, 1.000000e+00
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load double, ptr %10, align 8
  %45 = fmul double 0x41D0000000000000, %44
  %46 = call double @llvm.floor.f64(double %45)
  %47 = fptosi double %46 to i32
  %48 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 1
  store i32 %47, ptr %48, align 4
  br label %50

49:                                               ; preds = %40, %30
  store i16 0, ptr %11, align 4
  br label %50

50:                                               ; preds = %49, %43
  %51 = load double, ptr %8, align 8
  %52 = load ptr, ptr %9, align 8
  %53 = getelementptr inbounds [3 x double], ptr %52, i64 0, i64 2
  %54 = load double, ptr %53, align 8
  %55 = fsub double %51, %54
  %56 = getelementptr inbounds %struct.tree, ptr %52, i32 0, i32 1
  %57 = load double, ptr %56, align 8
  %58 = fdiv double %55, %57
  store double %58, ptr %10, align 8
  %59 = fcmp ole double 0.000000e+00, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load double, ptr %10, align 8
  %62 = fcmp olt double %61, 1.000000e+00
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load double, ptr %10, align 8
  %65 = fmul double 0x41D0000000000000, %64
  %66 = call double @llvm.floor.f64(double %65)
  %67 = fptosi double %66 to i32
  %68 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 2
  store i32 %67, ptr %68, align 4
  br label %70

69:                                               ; preds = %60, %50
  store i16 0, ptr %11, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = load { i64, i64 }, ptr %5, align 4
  ret { i64, i64 } %71
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @freetree(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = load i16, ptr %8, align 8
  %10 = sext i16 %9 to i32
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i32 0, ptr %2, align 4
  br label %35

13:                                               ; preds = %7
  store i32 7, ptr %5, align 4
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i32, ptr %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.cnode, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x ptr], ptr %19, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %4, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load ptr, ptr %4, align 8
  %27 = call i32 @freetree(ptr noundef %26)
  br label %28

28:                                               ; preds = %25, %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, ptr %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %5, align 4
  br label %14

32:                                               ; preds = %14
  %33 = load ptr, ptr %3, align 8
  %34 = call i32 @my_free(ptr noundef %33)
  store i32 0, ptr %2, align 4
  br label %35

35:                                               ; preds = %32, %12
  %36 = load i32, ptr %2, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i16, ptr %0, align 8
  %4 = sext i16 %3 to i32
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr @bp_free_list, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.bnode, ptr %8, i32 0, i32 9
  store ptr %7, ptr %9, align 8
  %10 = load ptr, ptr %2, align 8
  store ptr %10, ptr @bp_free_list, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load ptr, ptr @cp_free_list, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.cnode, ptr %13, i32 0, i32 6
  store ptr %12, ptr %14, align 8
  %15 = load ptr, ptr %2, align 8
  store ptr %15, ptr @cp_free_list, align 8
  br label %16

16:                                               ; preds = %11, %6
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @ubody_alloc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = call noalias ptr @malloc(i64 noundef 144) #9
  store ptr %4, ptr %3, align 8
  store i16 1, ptr %4, align 8
  %5 = load i32, ptr %2, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.bnode, ptr %6, i32 0, i32 3
  store i32 %5, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.bnode, ptr %8, i32 0, i32 10
  store ptr null, ptr %9, align 8
  %10 = load i32, ptr %2, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.bnode, ptr %11, i32 0, i32 4
  store i32 %10, ptr %12, align 4
  %13 = load ptr, ptr %3, align 8
  ret ptr %13
}

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @testdata() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store double 1.230000e+02, ptr %15, align 8
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 99)
  %25 = call i32 @exit(i32 noundef 0) #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @body_alloc(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, ptr noundef %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  store i32 %0, ptr %13, align 4
  store double %1, ptr %14, align 8
  store double %2, ptr %15, align 8
  store double %3, ptr %16, align 8
  store double %4, ptr %17, align 8
  store double %5, ptr %18, align 8
  store double %6, ptr %19, align 8
  store double %7, ptr %20, align 8
  store double %8, ptr %21, align 8
  store double %9, ptr %22, align 8
  store double %10, ptr %23, align 8
  store ptr %11, ptr %24, align 8
  %26 = load ptr, ptr @bp_free_list, align 8
  %27 = icmp ne ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %12
  %29 = load ptr, ptr @bp_free_list, align 8
  store ptr %29, ptr %25, align 8
  %30 = load ptr, ptr @bp_free_list, align 8
  %31 = getelementptr inbounds %struct.bnode, ptr %30, i32 0, i32 9
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr @bp_free_list, align 8
  br label %35

33:                                               ; preds = %12
  %34 = call noalias ptr @malloc(i64 noundef 144) #9
  store ptr %34, ptr %25, align 8
  br label %35

35:                                               ; preds = %33, %28
  %36 = load ptr, ptr %25, align 8
  store i16 1, ptr %36, align 8
  %37 = load i32, ptr %13, align 4
  %38 = load ptr, ptr %25, align 8
  %39 = getelementptr inbounds %struct.bnode, ptr %38, i32 0, i32 3
  store i32 %37, ptr %39, align 8
  %40 = load double, ptr %14, align 8
  %41 = load ptr, ptr %25, align 8
  %42 = getelementptr inbounds %struct.bnode, ptr %41, i32 0, i32 2
  store double %40, ptr %42, align 8
  %43 = load double, ptr %15, align 8
  %44 = load ptr, ptr %25, align 8
  %45 = getelementptr inbounds %struct.bnode, ptr %44, i32 0, i32 2
  %46 = getelementptr inbounds [3 x double], ptr %45, i64 0, i64 1
  store double %43, ptr %46, align 8
  %47 = load double, ptr %16, align 8
  %48 = load ptr, ptr %25, align 8
  %49 = getelementptr inbounds %struct.bnode, ptr %48, i32 0, i32 2
  %50 = getelementptr inbounds [3 x double], ptr %49, i64 0, i64 2
  store double %47, ptr %50, align 8
  %51 = load double, ptr %17, align 8
  %52 = load ptr, ptr %25, align 8
  %53 = getelementptr inbounds %struct.bnode, ptr %52, i32 0, i32 5
  store double %51, ptr %53, align 8
  %54 = load double, ptr %18, align 8
  %55 = load ptr, ptr %25, align 8
  %56 = getelementptr inbounds %struct.bnode, ptr %55, i32 0, i32 5
  %57 = getelementptr inbounds [3 x double], ptr %56, i64 0, i64 1
  store double %54, ptr %57, align 8
  %58 = load double, ptr %19, align 8
  %59 = load ptr, ptr %25, align 8
  %60 = getelementptr inbounds %struct.bnode, ptr %59, i32 0, i32 5
  %61 = getelementptr inbounds [3 x double], ptr %60, i64 0, i64 2
  store double %58, ptr %61, align 8
  %62 = load double, ptr %20, align 8
  %63 = load ptr, ptr %25, align 8
  %64 = getelementptr inbounds %struct.bnode, ptr %63, i32 0, i32 6
  store double %62, ptr %64, align 8
  %65 = load double, ptr %21, align 8
  %66 = load ptr, ptr %25, align 8
  %67 = getelementptr inbounds %struct.bnode, ptr %66, i32 0, i32 6
  %68 = getelementptr inbounds [3 x double], ptr %67, i64 0, i64 1
  store double %65, ptr %68, align 8
  %69 = load double, ptr %22, align 8
  %70 = load ptr, ptr %25, align 8
  %71 = getelementptr inbounds %struct.bnode, ptr %70, i32 0, i32 6
  %72 = getelementptr inbounds [3 x double], ptr %71, i64 0, i64 2
  store double %69, ptr %72, align 8
  %73 = load double, ptr %23, align 8
  %74 = load ptr, ptr %25, align 8
  %75 = getelementptr inbounds %struct.bnode, ptr %74, i32 0, i32 1
  store double %73, ptr %75, align 8
  %76 = load ptr, ptr %25, align 8
  ret ptr %76
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dis_number(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load i32, ptr @nbody, align 4
  %5 = sitofp i32 %4 to double
  %6 = load i32, ptr @__NumNodes, align 4
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %5, %7
  %9 = call double @llvm.ceil.f64(double %8)
  %10 = fptosi double %9 to i32
  store i32 %10, ptr %3, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = load i32, ptr %3, align 4
  %13 = call i32 @dis2_number(ptr noundef %11, i32 noundef -1, i32 noundef %12)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dis2_number(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, ptr %6, align 4
  store i32 %13, ptr %4, align 4
  br label %47

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load i16, ptr %15, align 8
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, ptr %6, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, ptr %7, align 4
  %23 = sdiv i32 %21, %22
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.node, ptr %24, i32 0, i32 4
  store i32 %23, ptr %25, align 4
  %26 = load i32, ptr %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %4, align 4
  br label %47

28:                                               ; preds = %14
  store i32 0, ptr %8, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, ptr %8, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds %struct.cnode, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x ptr], ptr %34, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8
  store ptr %38, ptr %9, align 8
  %39 = load i32, ptr %6, align 4
  %40 = load i32, ptr %7, align 4
  %41 = call i32 @dis2_number(ptr noundef %38, i32 noundef %39, i32 noundef %40)
  store i32 %41, ptr %6, align 4
  br label %42

42:                                               ; preds = %32
  %43 = load i32, ptr %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %8, align 4
  br label %29

45:                                               ; preds = %29
  %46 = load i32, ptr %6, align 4
  store i32 %46, ptr %4, align 4
  br label %47

47:                                               ; preds = %45, %19, %12
  %48 = load i32, ptr %4, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @my_rand(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %2, align 8
  %4 = call double @llvm.fmuladd.f64(double 1.680700e+04, double %0, double 1.000000e+00)
  store double %4, ptr %3, align 8
  %5 = fdiv double %4, 0x41DFFFFFFFC00000
  %6 = call double @llvm.floor.f64(double %5)
  %7 = call double @llvm.fmuladd.f64(double 0xC1DFFFFFFFC00000, double %6, double %4)
  store double %7, ptr %2, align 8
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @xrand(double noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, ptr %4, align 8
  store double %1, ptr %5, align 8
  store double %2, ptr %6, align 8
  %8 = load double, ptr %4, align 8
  %9 = load double, ptr %5, align 8
  %10 = fsub double %9, %8
  %11 = load double, ptr %6, align 8
  %12 = fmul double %10, %11
  %13 = fdiv double %12, 0x41DFFFFFFFC00000
  %14 = fadd double %8, %13
  store double %14, ptr %7, align 8
  ret double %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @cputime() #0 {
  %1 = alloca %struct.tms, align 8
  %2 = call i64 @times(ptr noundef %1) #9
  %3 = icmp eq i64 %2, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @error(ptr noundef @.str.5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i64, ptr %1, align 8
  %8 = sitofp i64 %7 to double
  %9 = fdiv double %8, 3.600000e+03
  ret double %9
}

; Function Attrs: nounwind
declare i64 @times(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @error(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %11 = load ptr, ptr @stderr, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16)
  %18 = call ptr @__errno_location() #11
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  call void @perror(ptr noundef @.str.1.8) #12
  br label %22

22:                                               ; preds = %21, %5
  call void @exit(i32 noundef 0) #10
  unreachable
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: cold
declare void @perror(ptr noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dealwithargs(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %6 = load i32, ptr %3, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @atoi(ptr noundef %11) #13
  store i32 %12, ptr @nbody, align 4
  br label %14

13:                                               ; preds = %2
  store i32 2048, ptr @nbody, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, ptr %5, align 4
  ret i32 %15
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { cold }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
