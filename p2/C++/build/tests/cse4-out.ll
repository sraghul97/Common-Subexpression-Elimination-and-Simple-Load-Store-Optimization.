; ModuleID = 'cse4-out.bc'
source_filename = "cse4"

define i32 @cse4(ptr %0, ptr %1, ptr %2, i32 %3, i64 %4, i8 %5) {
BB:
  %A = alloca i32, align 4
  %A1 = alloca i32, align 4
  store i32 -1, ptr %A, align 4
  ret i32 0
}
