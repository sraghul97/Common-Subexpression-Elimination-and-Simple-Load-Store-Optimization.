; ModuleID = 'patricia-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ptree = type { i64, ptr, i8, i8, ptr, ptr }
%struct.ptree_mask = type { i64, ptr }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Found.\0A\00", align 1
@stderr = external global ptr, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @pat_insert(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %11 = icmp ne ptr %1, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.ptree, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %12, %2
  store ptr null, ptr %3, align 8
  br label %223

21:                                               ; preds = %15
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.ptree, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = load i64, ptr %24, align 8
  %26 = load i64, ptr %22, align 8
  %27 = and i64 %26, %25
  store i64 %27, ptr %22, align 8
  %28 = load ptr, ptr %5, align 8
  store ptr %28, ptr %6, align 8
  br label %29

29:                                               ; preds = %52, %21
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds %struct.ptree, ptr %30, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = sext i8 %32 to i32
  store i32 %33, ptr %9, align 4
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds %struct.ptree, ptr %34, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load ptr, ptr %4, align 8
  %39 = load i64, ptr %38, align 8
  %40 = call i64 @bit(i32 noundef %37, i64 noundef %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.ptree, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  br label %50

46:                                               ; preds = %29
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr inbounds %struct.ptree, ptr %47, i32 0, i32 4
  %49 = load ptr, ptr %48, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi ptr [ %45, %42 ], [ %49, %46 ]
  store ptr %51, ptr %6, align 8
  br label %52

52:                                               ; preds = %50
  %53 = load i32, ptr %9, align 4
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds %struct.ptree, ptr %54, i32 0, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %29, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr %4, align 8
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %6, align 8
  %63 = load i64, ptr %62, align 8
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %179

65:                                               ; preds = %59
  store i32 0, ptr %9, align 4
  br label %66

66:                                               ; preds = %104, %65
  %67 = load i32, ptr %9, align 4
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr inbounds %struct.ptree, ptr %68, i32 0, i32 2
  %70 = load i8, ptr %69, align 8
  %71 = zext i8 %70 to i32
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %66
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct.ptree, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %6, align 8
  %79 = getelementptr inbounds %struct.ptree, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8
  %81 = load i32, ptr %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ptree_mask, ptr %80, i64 %82
  %84 = load i64, ptr %83, align 8
  %85 = icmp eq i64 %77, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %73
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr inbounds %struct.ptree, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.ptree_mask, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 8
  %92 = load ptr, ptr %6, align 8
  %93 = getelementptr inbounds %struct.ptree, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8
  %95 = load i32, ptr %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ptree_mask, ptr %94, i64 %96
  %98 = getelementptr inbounds %struct.ptree_mask, ptr %97, i32 0, i32 1
  store ptr %91, ptr %98, align 8
  %99 = load ptr, ptr %4, align 8
  %100 = getelementptr inbounds %struct.ptree, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8
  call void @free(ptr noundef %101) #7
  call void @free(ptr noundef %99) #7
  store ptr null, ptr %4, align 8
  %102 = load ptr, ptr %6, align 8
  store ptr %102, ptr %3, align 8
  br label %223

103:                                              ; preds = %73
  br label %104

104:                                              ; preds = %103
  %105 = load i32, ptr %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %9, align 4
  br label %66

107:                                              ; preds = %66
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr inbounds %struct.ptree, ptr %108, i32 0, i32 2
  %110 = load i8, ptr %109, align 8
  %111 = zext i8 %110 to i32
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = mul i64 16, %113
  %115 = call noalias ptr @malloc(i64 noundef %114) #8
  store ptr %115, ptr %7, align 8
  store i32 0, ptr %10, align 4
  store i32 0, ptr %9, align 4
  %116 = load ptr, ptr %7, align 8
  store ptr %116, ptr %8, align 8
  br label %117

117:                                              ; preds = %154, %107
  %118 = load i32, ptr %9, align 4
  %119 = load ptr, ptr %6, align 8
  %120 = getelementptr inbounds %struct.ptree, ptr %119, i32 0, i32 2
  %121 = load i8, ptr %120, align 8
  %122 = zext i8 %121 to i32
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %157

124:                                              ; preds = %117
  %125 = load ptr, ptr %4, align 8
  %126 = getelementptr inbounds %struct.ptree, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 8
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %6, align 8
  %130 = getelementptr inbounds %struct.ptree, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 8
  %132 = load i32, ptr %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ptree_mask, ptr %131, i64 %133
  %135 = load i64, ptr %134, align 8
  %136 = icmp ugt i64 %128, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %124
  %138 = load ptr, ptr %6, align 8
  %139 = getelementptr inbounds %struct.ptree, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 8
  %141 = load i32, ptr %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ptree_mask, ptr %140, i64 %142
  %144 = load ptr, ptr %8, align 8
  %145 = call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef %143, ptr noundef %144, i64 noundef 16)
  %146 = add nsw i32 %141, 1
  store i32 %146, ptr %9, align 4
  br label %153

147:                                              ; preds = %124
  %148 = load ptr, ptr %4, align 8
  %149 = getelementptr inbounds %struct.ptree, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 8
  %151 = load ptr, ptr %8, align 8
  %152 = call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef %150, ptr noundef %151, i64 noundef 16)
  store i64 4294967295, ptr %150, align 8
  store i32 1, ptr %10, align 4
  br label %153

153:                                              ; preds = %147, %137
  br label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr %8, align 8
  %156 = getelementptr inbounds %struct.ptree_mask, ptr %155, i32 1
  store ptr %156, ptr %8, align 8
  br label %117

157:                                              ; preds = %117
  %158 = load i32, ptr %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %4, align 8
  %162 = getelementptr inbounds %struct.ptree, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8
  %164 = load ptr, ptr %8, align 8
  %165 = call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef %163, ptr noundef %164, i64 noundef 16)
  br label %166

166:                                              ; preds = %160, %157
  %167 = load ptr, ptr %4, align 8
  %168 = getelementptr inbounds %struct.ptree, ptr %167, i32 0, i32 1
  %169 = load ptr, ptr %168, align 8
  call void @free(ptr noundef %169) #7
  call void @free(ptr noundef %167) #7
  store ptr null, ptr %4, align 8
  %170 = load ptr, ptr %6, align 8
  %171 = getelementptr inbounds %struct.ptree, ptr %170, i32 0, i32 2
  %172 = load i8, ptr %171, align 8
  %173 = add i8 %172, 1
  store i8 %173, ptr %171, align 8
  %174 = load ptr, ptr %6, align 8
  %175 = getelementptr inbounds %struct.ptree, ptr %174, i32 0, i32 1
  %176 = load ptr, ptr %175, align 8
  call void @free(ptr noundef %176) #7
  %177 = load ptr, ptr %7, align 8
  store ptr %177, ptr %175, align 8
  %178 = load ptr, ptr %6, align 8
  store ptr %178, ptr %3, align 8
  br label %223

179:                                              ; preds = %59
  store i32 1, ptr %9, align 4
  br label %180

180:                                              ; preds = %195, %179
  %181 = load i32, ptr %9, align 4
  %182 = icmp slt i32 %181, 32
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load i32, ptr %9, align 4
  %185 = load ptr, ptr %4, align 8
  %186 = load i64, ptr %185, align 8
  %187 = call i64 @bit(i32 noundef %184, i64 noundef %186)
  %188 = load ptr, ptr %6, align 8
  %189 = load i64, ptr %188, align 8
  %190 = call i64 @bit(i32 noundef %184, i64 noundef %189)
  %191 = icmp eq i64 %187, %190
  br label %192

192:                                              ; preds = %183, %180
  %193 = phi i1 [ false, %180 ], [ %191, %183 ]
  br i1 %193, label %194, label %198

194:                                              ; preds = %192
  br label %195

195:                                              ; preds = %194
  %196 = load i32, ptr %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %9, align 4
  br label %180

198:                                              ; preds = %192
  %199 = load ptr, ptr %5, align 8
  %200 = getelementptr inbounds %struct.ptree, ptr %199, i32 0, i32 3
  %201 = load i8, ptr %200, align 1
  %202 = sext i8 %201 to i32
  %203 = load ptr, ptr %4, align 8
  %204 = load i64, ptr %203, align 8
  %205 = call i64 @bit(i32 noundef %202, i64 noundef %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %198
  %208 = load ptr, ptr %5, align 8
  %209 = getelementptr inbounds %struct.ptree, ptr %208, i32 0, i32 5
  %210 = load ptr, ptr %209, align 8
  %211 = load ptr, ptr %4, align 8
  %212 = load i32, ptr %9, align 4
  %213 = call ptr @insertR(ptr noundef %210, ptr noundef %211, i32 noundef %212, ptr noundef %208)
  store ptr %213, ptr %209, align 8
  br label %221

214:                                              ; preds = %198
  %215 = load ptr, ptr %5, align 8
  %216 = getelementptr inbounds %struct.ptree, ptr %215, i32 0, i32 4
  %217 = load ptr, ptr %216, align 8
  %218 = load ptr, ptr %4, align 8
  %219 = load i32, ptr %9, align 4
  %220 = call ptr @insertR(ptr noundef %217, ptr noundef %218, i32 noundef %219, ptr noundef %215)
  store ptr %220, ptr %216, align 8
  br label %221

221:                                              ; preds = %214, %207
  %222 = load ptr, ptr %4, align 8
  store ptr %222, ptr %3, align 8
  br label %223

223:                                              ; preds = %221, %166, %86, %20
  %224 = load ptr, ptr %3, align 8
  ret ptr %224
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @bit(i32 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, ptr %3, align 4
  store i64 %1, ptr %4, align 8
  %5 = load i32, ptr %3, align 4
  %6 = sub nsw i32 31, %5
  %7 = shl i32 1, %6
  %8 = sext i32 %7 to i64
  %9 = and i64 %1, %8
  ret i64 %9
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare i32 @bcopy(...) #3

; Function Attrs: noinline nounwind uwtable
define internal ptr @insertR(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.ptree, ptr %10, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, ptr %8, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.ptree, ptr %17, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds %struct.ptree, ptr %21, i32 0, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %20, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %16, %4
  %27 = load i32, ptr %8, align 4
  %28 = trunc i32 %27 to i8
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds %struct.ptree, ptr %29, i32 0, i32 3
  store i8 %28, ptr %30, align 1
  %31 = load i32, ptr %8, align 4
  %32 = load ptr, ptr %7, align 8
  %33 = load i64, ptr %32, align 8
  %34 = call i64 @bit(i32 noundef %31, i64 noundef %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load ptr, ptr %6, align 8
  br label %40

38:                                               ; preds = %26
  %39 = load ptr, ptr %7, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi ptr [ %37, %36 ], [ %39, %38 ]
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds %struct.ptree, ptr %42, i32 0, i32 4
  store ptr %41, ptr %43, align 8
  %44 = load i32, ptr %8, align 4
  %45 = load ptr, ptr %7, align 8
  %46 = load i64, ptr %45, align 8
  %47 = call i64 @bit(i32 noundef %44, i64 noundef %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load ptr, ptr %7, align 8
  br label %53

51:                                               ; preds = %40
  %52 = load ptr, ptr %6, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  %55 = load ptr, ptr %7, align 8
  %56 = getelementptr inbounds %struct.ptree, ptr %55, i32 0, i32 5
  store ptr %54, ptr %56, align 8
  %57 = load ptr, ptr %7, align 8
  store ptr %57, ptr %5, align 8
  br label %83

58:                                               ; preds = %16
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr inbounds %struct.ptree, ptr %59, i32 0, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load ptr, ptr %7, align 8
  %64 = load i64, ptr %63, align 8
  %65 = call i64 @bit(i32 noundef %62, i64 noundef %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr inbounds %struct.ptree, ptr %68, i32 0, i32 5
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr %7, align 8
  %72 = load i32, ptr %8, align 4
  %73 = call ptr @insertR(ptr noundef %70, ptr noundef %71, i32 noundef %72, ptr noundef %68)
  store ptr %73, ptr %69, align 8
  br label %81

74:                                               ; preds = %58
  %75 = load ptr, ptr %6, align 8
  %76 = getelementptr inbounds %struct.ptree, ptr %75, i32 0, i32 4
  %77 = load ptr, ptr %76, align 8
  %78 = load ptr, ptr %7, align 8
  %79 = load i32, ptr %8, align 4
  %80 = call ptr @insertR(ptr noundef %77, ptr noundef %78, i32 noundef %79, ptr noundef %75)
  store ptr %80, ptr %76, align 8
  br label %81

81:                                               ; preds = %74, %67
  %82 = load ptr, ptr %6, align 8
  store ptr %82, ptr %5, align 8
  br label %83

83:                                               ; preds = %81, %53
  %84 = load ptr, ptr %5, align 8
  ret ptr %84
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pat_remove(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.ptree, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load ptr, ptr %10, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %16, %2
  store i32 0, ptr %3, align 4
  br label %313

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8
  store ptr %26, ptr %10, align 8
  store ptr %26, ptr %6, align 8
  store ptr %26, ptr %7, align 8
  br label %27

27:                                               ; preds = %52, %25
  %28 = load ptr, ptr %10, align 8
  %29 = getelementptr inbounds %struct.ptree, ptr %28, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, ptr %13, align 4
  %32 = load ptr, ptr %6, align 8
  store ptr %32, ptr %7, align 8
  %33 = load ptr, ptr %10, align 8
  store ptr %33, ptr %6, align 8
  %34 = load ptr, ptr %10, align 8
  %35 = getelementptr inbounds %struct.ptree, ptr %34, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load ptr, ptr %4, align 8
  %39 = load i64, ptr %38, align 8
  %40 = call i64 @bit(i32 noundef %37, i64 noundef %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load ptr, ptr %10, align 8
  %44 = getelementptr inbounds %struct.ptree, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  br label %50

46:                                               ; preds = %27
  %47 = load ptr, ptr %10, align 8
  %48 = getelementptr inbounds %struct.ptree, ptr %47, i32 0, i32 4
  %49 = load ptr, ptr %48, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi ptr [ %45, %42 ], [ %49, %46 ]
  store ptr %51, ptr %10, align 8
  br label %52

52:                                               ; preds = %50
  %53 = load i32, ptr %13, align 4
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds %struct.ptree, ptr %54, i32 0, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %27, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr %10, align 8
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %4, align 8
  %63 = load i64, ptr %62, align 8
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, ptr %3, align 4
  br label %313

66:                                               ; preds = %59
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr inbounds %struct.ptree, ptr %67, i32 0, i32 2
  %69 = load i8, ptr %68, align 8
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %226

72:                                               ; preds = %66
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr inbounds %struct.ptree, ptr %73, i32 0, i32 3
  %75 = load i8, ptr %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 0, ptr %3, align 4
  br label %313

79:                                               ; preds = %72
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds %struct.ptree, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %4, align 8
  %85 = getelementptr inbounds %struct.ptree, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = load i64, ptr %86, align 8
  %88 = icmp ne i64 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32 0, ptr %3, align 4
  br label %313

90:                                               ; preds = %79
  %91 = load ptr, ptr %6, align 8
  store ptr %91, ptr %8, align 8
  store ptr %91, ptr %9, align 8
  br label %92

92:                                               ; preds = %116, %90
  %93 = load ptr, ptr %8, align 8
  %94 = getelementptr inbounds %struct.ptree, ptr %93, i32 0, i32 3
  %95 = load i8, ptr %94, align 1
  %96 = sext i8 %95 to i32
  store i32 %96, ptr %13, align 4
  %97 = load ptr, ptr %8, align 8
  store ptr %97, ptr %9, align 8
  %98 = load ptr, ptr %8, align 8
  %99 = getelementptr inbounds %struct.ptree, ptr %98, i32 0, i32 3
  %100 = load i8, ptr %99, align 1
  %101 = sext i8 %100 to i32
  %102 = load ptr, ptr %6, align 8
  %103 = load i64, ptr %102, align 8
  %104 = call i64 @bit(i32 noundef %101, i64 noundef %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %92
  %107 = load ptr, ptr %8, align 8
  %108 = getelementptr inbounds %struct.ptree, ptr %107, i32 0, i32 5
  %109 = load ptr, ptr %108, align 8
  br label %114

110:                                              ; preds = %92
  %111 = load ptr, ptr %8, align 8
  %112 = getelementptr inbounds %struct.ptree, ptr %111, i32 0, i32 4
  %113 = load ptr, ptr %112, align 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi ptr [ %109, %106 ], [ %113, %110 ]
  store ptr %115, ptr %8, align 8
  br label %116

116:                                              ; preds = %114
  %117 = load i32, ptr %13, align 4
  %118 = load ptr, ptr %8, align 8
  %119 = getelementptr inbounds %struct.ptree, ptr %118, i32 0, i32 3
  %120 = load i8, ptr %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %92, label %123

123:                                              ; preds = %116
  %124 = load ptr, ptr %9, align 8
  %125 = getelementptr inbounds %struct.ptree, ptr %124, i32 0, i32 3
  %126 = load i8, ptr %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load ptr, ptr %6, align 8
  %129 = load i64, ptr %128, align 8
  %130 = call i64 @bit(i32 noundef %127, i64 noundef %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %123
  %133 = load ptr, ptr %10, align 8
  %134 = load ptr, ptr %9, align 8
  %135 = getelementptr inbounds %struct.ptree, ptr %134, i32 0, i32 5
  store ptr %133, ptr %135, align 8
  br label %140

136:                                              ; preds = %123
  %137 = load ptr, ptr %10, align 8
  %138 = load ptr, ptr %9, align 8
  %139 = getelementptr inbounds %struct.ptree, ptr %138, i32 0, i32 4
  store ptr %137, ptr %139, align 8
  br label %140

140:                                              ; preds = %136, %132
  %141 = load ptr, ptr %7, align 8
  %142 = getelementptr inbounds %struct.ptree, ptr %141, i32 0, i32 3
  %143 = load i8, ptr %142, align 1
  %144 = sext i8 %143 to i32
  %145 = load ptr, ptr %4, align 8
  %146 = load i64, ptr %145, align 8
  %147 = call i64 @bit(i32 noundef %144, i64 noundef %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %140
  %150 = load ptr, ptr %6, align 8
  %151 = getelementptr inbounds %struct.ptree, ptr %150, i32 0, i32 3
  %152 = load i8, ptr %151, align 1
  %153 = sext i8 %152 to i32
  %154 = load ptr, ptr %4, align 8
  %155 = load i64, ptr %154, align 8
  %156 = call i64 @bit(i32 noundef %153, i64 noundef %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load ptr, ptr %6, align 8
  %160 = getelementptr inbounds %struct.ptree, ptr %159, i32 0, i32 4
  %161 = load ptr, ptr %160, align 8
  br label %166

162:                                              ; preds = %149
  %163 = load ptr, ptr %6, align 8
  %164 = getelementptr inbounds %struct.ptree, ptr %163, i32 0, i32 5
  %165 = load ptr, ptr %164, align 8
  br label %166

166:                                              ; preds = %162, %158
  %167 = phi ptr [ %161, %158 ], [ %165, %162 ]
  %168 = load ptr, ptr %7, align 8
  %169 = getelementptr inbounds %struct.ptree, ptr %168, i32 0, i32 5
  store ptr %167, ptr %169, align 8
  br label %191

170:                                              ; preds = %140
  %171 = load ptr, ptr %6, align 8
  %172 = getelementptr inbounds %struct.ptree, ptr %171, i32 0, i32 3
  %173 = load i8, ptr %172, align 1
  %174 = sext i8 %173 to i32
  %175 = load ptr, ptr %4, align 8
  %176 = load i64, ptr %175, align 8
  %177 = call i64 @bit(i32 noundef %174, i64 noundef %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %170
  %180 = load ptr, ptr %6, align 8
  %181 = getelementptr inbounds %struct.ptree, ptr %180, i32 0, i32 4
  %182 = load ptr, ptr %181, align 8
  br label %187

183:                                              ; preds = %170
  %184 = load ptr, ptr %6, align 8
  %185 = getelementptr inbounds %struct.ptree, ptr %184, i32 0, i32 5
  %186 = load ptr, ptr %185, align 8
  br label %187

187:                                              ; preds = %183, %179
  %188 = phi ptr [ %182, %179 ], [ %186, %183 ]
  %189 = load ptr, ptr %7, align 8
  %190 = getelementptr inbounds %struct.ptree, ptr %189, i32 0, i32 4
  store ptr %188, ptr %190, align 8
  br label %191

191:                                              ; preds = %187, %166
  %192 = load ptr, ptr %10, align 8
  %193 = getelementptr inbounds %struct.ptree, ptr %192, i32 0, i32 1
  %194 = load ptr, ptr %193, align 8
  %195 = getelementptr inbounds %struct.ptree_mask, ptr %194, i32 0, i32 1
  %196 = load ptr, ptr %195, align 8
  %197 = icmp ne ptr %196, null
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load ptr, ptr %10, align 8
  %200 = getelementptr inbounds %struct.ptree, ptr %199, i32 0, i32 1
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds %struct.ptree_mask, ptr %201, i32 0, i32 1
  %203 = load ptr, ptr %202, align 8
  call void @free(ptr noundef %203) #7
  br label %204

204:                                              ; preds = %198, %191
  %205 = load ptr, ptr %10, align 8
  %206 = getelementptr inbounds %struct.ptree, ptr %205, i32 0, i32 1
  %207 = load ptr, ptr %206, align 8
  call void @free(ptr noundef %207) #7
  %208 = load ptr, ptr %6, align 8
  %209 = icmp ne ptr %205, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %204
  %211 = load ptr, ptr %6, align 8
  %212 = load i64, ptr %211, align 8
  %213 = load ptr, ptr %10, align 8
  store i64 %212, ptr %213, align 8
  %214 = load ptr, ptr %6, align 8
  %215 = getelementptr inbounds %struct.ptree, ptr %214, i32 0, i32 1
  %216 = load ptr, ptr %215, align 8
  %217 = load ptr, ptr %10, align 8
  %218 = getelementptr inbounds %struct.ptree, ptr %217, i32 0, i32 1
  store ptr %216, ptr %218, align 8
  %219 = load ptr, ptr %6, align 8
  %220 = getelementptr inbounds %struct.ptree, ptr %219, i32 0, i32 2
  %221 = load i8, ptr %220, align 8
  %222 = load ptr, ptr %10, align 8
  %223 = getelementptr inbounds %struct.ptree, ptr %222, i32 0, i32 2
  store i8 %221, ptr %223, align 8
  br label %224

224:                                              ; preds = %210, %204
  %225 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %225) #7
  store i32 1, ptr %3, align 4
  br label %313

226:                                              ; preds = %66
  store i32 0, ptr %13, align 4
  br label %227

227:                                              ; preds = %249, %226
  %228 = load i32, ptr %13, align 4
  %229 = load ptr, ptr %10, align 8
  %230 = getelementptr inbounds %struct.ptree, ptr %229, i32 0, i32 2
  %231 = load i8, ptr %230, align 8
  %232 = zext i8 %231 to i32
  %233 = icmp slt i32 %228, %232
  br i1 %233, label %234, label %252

234:                                              ; preds = %227
  %235 = load ptr, ptr %4, align 8
  %236 = getelementptr inbounds %struct.ptree, ptr %235, i32 0, i32 1
  %237 = load ptr, ptr %236, align 8
  %238 = load i64, ptr %237, align 8
  %239 = load ptr, ptr %10, align 8
  %240 = getelementptr inbounds %struct.ptree, ptr %239, i32 0, i32 1
  %241 = load ptr, ptr %240, align 8
  %242 = load i32, ptr %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ptree_mask, ptr %241, i64 %243
  %245 = load i64, ptr %244, align 8
  %246 = icmp eq i64 %238, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %234
  br label %252

248:                                              ; preds = %234
  br label %249

249:                                              ; preds = %248
  %250 = load i32, ptr %13, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %13, align 4
  br label %227

252:                                              ; preds = %247, %227
  %253 = load i32, ptr %13, align 4
  %254 = load ptr, ptr %10, align 8
  %255 = getelementptr inbounds %struct.ptree, ptr %254, i32 0, i32 2
  %256 = load i8, ptr %255, align 8
  %257 = zext i8 %256 to i32
  %258 = icmp sge i32 %253, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %252
  store i32 0, ptr %3, align 4
  br label %313

260:                                              ; preds = %252
  %261 = load ptr, ptr %10, align 8
  %262 = getelementptr inbounds %struct.ptree, ptr %261, i32 0, i32 2
  %263 = load i8, ptr %262, align 8
  %264 = zext i8 %263 to i32
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = mul i64 16, %266
  %268 = call noalias ptr @malloc(i64 noundef %267) #8
  store ptr %268, ptr %11, align 8
  store i32 0, ptr %13, align 4
  %269 = load ptr, ptr %11, align 8
  store ptr %269, ptr %12, align 8
  br label %270

270:                                              ; preds = %301, %260
  %271 = load i32, ptr %13, align 4
  %272 = load ptr, ptr %10, align 8
  %273 = getelementptr inbounds %struct.ptree, ptr %272, i32 0, i32 2
  %274 = load i8, ptr %273, align 8
  %275 = zext i8 %274 to i32
  %276 = icmp slt i32 %271, %275
  br i1 %276, label %277, label %304

277:                                              ; preds = %270
  %278 = load ptr, ptr %4, align 8
  %279 = getelementptr inbounds %struct.ptree, ptr %278, i32 0, i32 1
  %280 = load ptr, ptr %279, align 8
  %281 = load i64, ptr %280, align 8
  %282 = load ptr, ptr %10, align 8
  %283 = getelementptr inbounds %struct.ptree, ptr %282, i32 0, i32 1
  %284 = load ptr, ptr %283, align 8
  %285 = load i32, ptr %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.ptree_mask, ptr %284, i64 %286
  %288 = load i64, ptr %287, align 8
  %289 = icmp ne i64 %281, %288
  br i1 %289, label %290, label %300

290:                                              ; preds = %277
  %291 = load ptr, ptr %10, align 8
  %292 = getelementptr inbounds %struct.ptree, ptr %291, i32 0, i32 1
  %293 = load ptr, ptr %292, align 8
  %294 = load i32, ptr %13, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.ptree_mask, ptr %293, i64 %295
  %297 = load ptr, ptr %12, align 8
  %298 = getelementptr inbounds %struct.ptree_mask, ptr %297, i32 1
  store ptr %298, ptr %12, align 8
  %299 = call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef %296, ptr noundef %297, i64 noundef 16)
  br label %300

300:                                              ; preds = %290, %277
  br label %301

301:                                              ; preds = %300
  %302 = load i32, ptr %13, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, ptr %13, align 4
  br label %270

304:                                              ; preds = %270
  %305 = load ptr, ptr %10, align 8
  %306 = getelementptr inbounds %struct.ptree, ptr %305, i32 0, i32 2
  %307 = load i8, ptr %306, align 8
  %308 = add i8 %307, -1
  store i8 %308, ptr %306, align 8
  %309 = load ptr, ptr %10, align 8
  %310 = getelementptr inbounds %struct.ptree, ptr %309, i32 0, i32 1
  %311 = load ptr, ptr %310, align 8
  call void @free(ptr noundef %311) #7
  %312 = load ptr, ptr %11, align 8
  store ptr %312, ptr %310, align 8
  store i32 1, ptr %3, align 4
  br label %313

313:                                              ; preds = %304, %259, %224, %89, %78, %65, %24
  %314 = load i32, ptr %3, align 4
  ret i32 %314
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @pat_search(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr null, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %7, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store ptr null, ptr %3, align 8
  br label %68

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %46, %12
  %14 = load ptr, ptr %7, align 8
  %15 = load i64, ptr %14, align 8
  %16 = load i64, ptr %4, align 8
  %17 = getelementptr inbounds %struct.ptree, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %16, %19
  %21 = icmp eq i64 %15, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load ptr, ptr %7, align 8
  store ptr %23, ptr %6, align 8
  br label %24

24:                                               ; preds = %22, %13
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds %struct.ptree, ptr %25, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, ptr %8, align 4
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds %struct.ptree, ptr %29, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i64, ptr %4, align 8
  %34 = call i64 @bit(i32 noundef %32, i64 noundef %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load ptr, ptr %7, align 8
  %38 = getelementptr inbounds %struct.ptree, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8
  br label %44

40:                                               ; preds = %24
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds %struct.ptree, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi ptr [ %39, %36 ], [ %43, %40 ]
  store ptr %45, ptr %7, align 8
  br label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %8, align 4
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr inbounds %struct.ptree, ptr %48, i32 0, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %13, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %7, align 8
  %55 = load i64, ptr %54, align 8
  %56 = load i64, ptr %4, align 8
  %57 = getelementptr inbounds %struct.ptree, ptr %54, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %56, %59
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load ptr, ptr %7, align 8
  br label %66

64:                                               ; preds = %53
  %65 = load ptr, ptr %6, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %63, %62 ], [ %65, %64 ]
  store ptr %67, ptr %3, align 8
  br label %68

68:                                               ; preds = %66, %11
  %69 = load ptr, ptr %3, align 8
  ret ptr %69
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca [16 x i8], align 16
  %13 = alloca %struct.in_addr, align 4
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i64 4294967295, ptr %14, align 8
  %16 = load i32, ptr %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %20)
  call void @exit(i32 noundef -1) #9
  unreachable

22:                                               ; preds = %2
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = call noalias ptr @fopen(ptr noundef %25, ptr noundef @.str.1)
  store ptr %26, ptr %10, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %31)
  call void @exit(i32 noundef 1) #9
  unreachable

33:                                               ; preds = %22
  %34 = call noalias ptr @malloc(i64 noundef 40) #8
  store ptr %34, ptr %6, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call void @perror(ptr noundef @.str.3) #10
  call void @exit(i32 noundef 1) #9
  unreachable

37:                                               ; preds = %33
  %38 = load ptr, ptr %6, align 8
  call void @bzero(ptr noundef %38, i64 noundef 40) #7
  %39 = call noalias ptr @malloc(i64 noundef 16) #8
  %40 = getelementptr inbounds %struct.ptree, ptr %38, i32 0, i32 1
  store ptr %39, ptr %40, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.ptree, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = icmp ne ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  call void @perror(ptr noundef @.str.4) #10
  call void @exit(i32 noundef 1) #9
  unreachable

46:                                               ; preds = %37
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr inbounds %struct.ptree, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  call void @bzero(ptr noundef %49, i64 noundef 16) #7
  store ptr %49, ptr %9, align 8
  %50 = call noalias ptr @malloc(i64 noundef 16) #8
  %51 = load ptr, ptr %9, align 8
  %52 = getelementptr inbounds %struct.ptree_mask, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 8
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr inbounds %struct.ptree_mask, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = icmp ne ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  call void @perror(ptr noundef @.str.5) #10
  call void @exit(i32 noundef 1) #9
  unreachable

58:                                               ; preds = %46
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr inbounds %struct.ptree_mask, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8
  call void @bzero(ptr noundef %61, i64 noundef 1) #7
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr inbounds %struct.ptree, ptr %62, i32 0, i32 2
  store i8 1, ptr %63, align 8
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.ptree, ptr %64, i32 0, i32 5
  store ptr %64, ptr %65, align 8
  %66 = load ptr, ptr %6, align 8
  %67 = getelementptr inbounds %struct.ptree, ptr %66, i32 0, i32 4
  store ptr %64, ptr %67, align 8
  br label %68

68:                                               ; preds = %136, %58
  %69 = load ptr, ptr %10, align 8
  %70 = call ptr @fgets(ptr noundef %11, i32 noundef 128, ptr noundef %69)
  %71 = icmp ne ptr %70, null
  br i1 %71, label %72, label %137

72:                                               ; preds = %68
  %73 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %11, ptr noundef @.str.6, ptr noundef %15, ptr noundef %13) #7
  %74 = call noalias ptr @malloc(i64 noundef 40) #8
  store ptr %74, ptr %7, align 8
  %75 = icmp ne ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  call void @perror(ptr noundef @.str.3) #10
  call void @exit(i32 noundef 1) #9
  unreachable

77:                                               ; preds = %72
  %78 = load ptr, ptr %7, align 8
  call void @bzero(ptr noundef %78, i64 noundef 40) #7
  %79 = call noalias ptr @malloc(i64 noundef 16) #8
  %80 = getelementptr inbounds %struct.ptree, ptr %78, i32 0, i32 1
  store ptr %79, ptr %80, align 8
  %81 = load ptr, ptr %7, align 8
  %82 = getelementptr inbounds %struct.ptree, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = icmp ne ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  call void @perror(ptr noundef @.str.4) #10
  call void @exit(i32 noundef 1) #9
  unreachable

86:                                               ; preds = %77
  %87 = load ptr, ptr %7, align 8
  %88 = getelementptr inbounds %struct.ptree, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8
  call void @bzero(ptr noundef %89, i64 noundef 16) #7
  store ptr %89, ptr %9, align 8
  %90 = call noalias ptr @malloc(i64 noundef 16) #8
  %91 = load ptr, ptr %9, align 8
  %92 = getelementptr inbounds %struct.ptree_mask, ptr %91, i32 0, i32 1
  store ptr %90, ptr %92, align 8
  %93 = load ptr, ptr %9, align 8
  %94 = getelementptr inbounds %struct.ptree_mask, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = icmp ne ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %86
  call void @perror(ptr noundef @.str.5) #10
  call void @exit(i32 noundef 1) #9
  unreachable

98:                                               ; preds = %86
  %99 = load ptr, ptr %9, align 8
  %100 = getelementptr inbounds %struct.ptree_mask, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8
  call void @bzero(ptr noundef %101, i64 noundef 1) #7
  %102 = load i32, ptr %13, align 4
  %103 = zext i32 %102 to i64
  %104 = load ptr, ptr %7, align 8
  store i64 %103, ptr %104, align 8
  %105 = load i64, ptr %14, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @htonl(i32 noundef %106) #11
  %108 = zext i32 %107 to i64
  %109 = load ptr, ptr %7, align 8
  %110 = getelementptr inbounds %struct.ptree, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8
  store i64 %108, ptr %111, align 8
  %112 = load i32, ptr %13, align 4
  %113 = zext i32 %112 to i64
  %114 = load ptr, ptr %6, align 8
  %115 = call ptr @pat_search(i64 noundef %113, ptr noundef %114)
  store ptr %115, ptr %8, align 8
  %116 = load i64, ptr %115, align 8
  %117 = load i32, ptr %13, align 4
  %118 = zext i32 %117 to i64
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %98
  %121 = load float, ptr %15, align 4
  %122 = fpext float %121 to double
  %123 = load i32, ptr %13, align 4
  %124 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %122, i32 noundef %123)
  %125 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %130

126:                                              ; preds = %98
  %127 = load ptr, ptr %7, align 8
  %128 = load ptr, ptr %6, align 8
  %129 = call ptr @pat_insert(ptr noundef %127, ptr noundef %128)
  store ptr %129, ptr %7, align 8
  br label %130

130:                                              ; preds = %126, %120
  %131 = load ptr, ptr %7, align 8
  %132 = icmp ne ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr @stderr, align 8
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef @.str.9)
  call void @exit(i32 noundef 1) #9
  unreachable

136:                                              ; preds = %130
  br label %68

137:                                              ; preds = %68
  call void @exit(i32 noundef 0) #9
  unreachable
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

; Function Attrs: cold
declare void @perror(ptr noundef) #5

; Function Attrs: nounwind
declare void @bzero(ptr noundef, i64 noundef) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(none)
declare i32 @htonl(i32 noundef) #6

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
