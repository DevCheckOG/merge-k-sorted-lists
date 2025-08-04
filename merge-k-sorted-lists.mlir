#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i128, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>} {
  llvm.mlir.global private unnamed_addr constant @".str"("%d \00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.1"("\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.2"("Input lists:\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.3"("List %d: \00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.4"("Combined lists: \00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.func @swap(%arg0: !llvm.ptr {llvm.noundef}, %arg1: !llvm.ptr {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %2 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %3 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %1 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %2 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %4 = llvm.load %1 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %5 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %5, %3 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %6 = llvm.load %2 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %7 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %8 = llvm.load %1 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %7, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %9 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %10 = llvm.load %2 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %9, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.return
  }
  llvm.func @heapify(%arg0: !llvm.ptr {llvm.noundef}, %arg1: i32 {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %3 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    %8 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %8, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    %9 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %10 = llvm.mul %1, %9  : i32
    %11 = llvm.add %10, %0  : i32
    llvm.store %11, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    %12 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %13 = llvm.mul %1, %12  : i32
    %14 = llvm.add %13, %1  : i32
    llvm.store %14, %7 {alignment = 4 : i64} : i32, !llvm.ptr
    %15 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %16 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %17 = llvm.getelementptr inbounds %16[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %18 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> i32
    %19 = llvm.icmp "slt" %15, %18 : i32
    llvm.cond_br %19, ^bb1, ^bb3
  ^bb1:  // pred: ^bb0
    %20 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %21 = llvm.getelementptr inbounds %20[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %22 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %23 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %24 = llvm.sext %23 : i32 to i64
    %25 = llvm.getelementptr inbounds %22[%24] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %26 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.getelementptr inbounds %26[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %28 = llvm.load %27 {alignment = 8 : i64} : !llvm.ptr -> i32
    %29 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %30 = llvm.getelementptr inbounds %29[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %31 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %32 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %33 = llvm.sext %32 : i32 to i64
    %34 = llvm.getelementptr inbounds %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %35 = llvm.load %34 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %36 = llvm.getelementptr inbounds %35[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %37 = llvm.load %36 {alignment = 8 : i64} : !llvm.ptr -> i32
    %38 = llvm.icmp "slt" %28, %37 : i32
    llvm.cond_br %38, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %39 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %39, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 3 preds: ^bb0, ^bb1, ^bb2
    %40 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %41 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %42 = llvm.getelementptr inbounds %41[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %43 = llvm.load %42 {alignment = 8 : i64} : !llvm.ptr -> i32
    %44 = llvm.icmp "slt" %40, %43 : i32
    llvm.cond_br %44, ^bb4, ^bb6
  ^bb4:  // pred: ^bb3
    %45 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %46 = llvm.getelementptr inbounds %45[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %47 = llvm.load %46 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %48 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    %49 = llvm.sext %48 : i32 to i64
    %50 = llvm.getelementptr inbounds %47[%49] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %51 = llvm.load %50 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %52 = llvm.getelementptr inbounds %51[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %53 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> i32
    %54 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %55 = llvm.getelementptr inbounds %54[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %56 = llvm.load %55 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %57 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %58 = llvm.sext %57 : i32 to i64
    %59 = llvm.getelementptr inbounds %56[%58] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %60 = llvm.load %59 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %61 = llvm.getelementptr inbounds %60[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %62 = llvm.load %61 {alignment = 8 : i64} : !llvm.ptr -> i32
    %63 = llvm.icmp "slt" %53, %62 : i32
    llvm.cond_br %63, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %64 = llvm.load %7 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %64, %5 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb6
  ^bb6:  // 3 preds: ^bb3, ^bb4, ^bb5
    %65 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %67 = llvm.icmp "ne" %65, %66 : i32
    llvm.cond_br %67, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %68 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %69 = llvm.getelementptr inbounds %68[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %70 = llvm.load %69 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %71 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %72 = llvm.sext %71 : i32 to i64
    %73 = llvm.getelementptr inbounds %70[%72] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %74 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %75 = llvm.getelementptr inbounds %74[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %76 = llvm.load %75 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %77 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    %78 = llvm.sext %77 : i32 to i64
    %79 = llvm.getelementptr inbounds %76[%78] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.call @swap(%73, %79) : (!llvm.ptr, !llvm.ptr) -> ()
    %80 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %81 = llvm.load %5 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.call @heapify(%80, %81) : (!llvm.ptr, i32) -> ()
    llvm.br ^bb8
  ^bb8:  // 2 preds: ^bb6, ^bb7
    llvm.return
  }
  llvm.func @push(%arg0: !llvm.ptr {llvm.noundef}, %arg1: !llvm.ptr {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(2 : i32) : i32
    %3 = llvm.mlir.constant(false) : i1
    %4 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %7 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %8 = llvm.getelementptr inbounds %7[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %9 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> i32
    %10 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %11 = llvm.getelementptr inbounds %10[%1, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %12 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %13 = llvm.icmp "eq" %9, %12 : i32
    llvm.cond_br %13, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.br ^bb7
  ^bb2:  // pred: ^bb0
    %14 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %15 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %16 = llvm.getelementptr inbounds %15[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %17 = llvm.load %16 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %18 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %19 = llvm.getelementptr inbounds %18[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %20 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> i32
    %21 = llvm.sext %20 : i32 to i64
    %22 = llvm.getelementptr inbounds %17[%21] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %14, %22 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %23 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %24 = llvm.getelementptr inbounds %23[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %25 = llvm.load %24 {alignment = 8 : i64} : !llvm.ptr -> i32
    %26 = llvm.add %25, %0  : i32
    llvm.store %26, %24 {alignment = 8 : i64} : i32, !llvm.ptr
    llvm.store %25, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb6
    %27 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %28 = llvm.icmp "sgt" %27, %1 : i32
    llvm.cond_br %28, ^bb4, ^bb5(%3 : i1)
  ^bb4:  // pred: ^bb3
    %29 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %30 = llvm.getelementptr inbounds %29[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %31 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %32 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %33 = llvm.sub %32, %0  : i32
    %34 = llvm.sdiv %33, %2  : i32
    %35 = llvm.sext %34 : i32 to i64
    %36 = llvm.getelementptr inbounds %31[%35] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %37 = llvm.load %36 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %38 = llvm.getelementptr inbounds %37[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %39 = llvm.load %38 {alignment = 8 : i64} : !llvm.ptr -> i32
    %40 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %41 = llvm.getelementptr inbounds %40[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %42 = llvm.load %41 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %43 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %44 = llvm.sext %43 : i32 to i64
    %45 = llvm.getelementptr inbounds %42[%44] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %46 = llvm.load %45 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %47 = llvm.getelementptr inbounds %46[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %48 = llvm.load %47 {alignment = 8 : i64} : !llvm.ptr -> i32
    %49 = llvm.icmp "sgt" %39, %48 : i32
    llvm.br ^bb5(%49 : i1)
  ^bb5(%50: i1):  // 2 preds: ^bb3, ^bb4
    llvm.cond_br %50, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %51 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %52 = llvm.getelementptr inbounds %51[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %53 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %54 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %55 = llvm.sext %54 : i32 to i64
    %56 = llvm.getelementptr inbounds %53[%55] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %57 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %58 = llvm.getelementptr inbounds %57[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %59 = llvm.load %58 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %60 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %61 = llvm.sub %60, %0  : i32
    %62 = llvm.sdiv %61, %2  : i32
    %63 = llvm.sext %62 : i32 to i64
    %64 = llvm.getelementptr inbounds %59[%63] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.call @swap(%56, %64) : (!llvm.ptr, !llvm.ptr) -> ()
    %65 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.sub %65, %0  : i32
    %67 = llvm.sdiv %66, %2  : i32
    llvm.store %67, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb7:  // 2 preds: ^bb1, ^bb5
    llvm.return
  }
  llvm.func @pop(%arg0: !llvm.ptr {llvm.noundef}) -> !llvm.ptr attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(-1 : i32) : i32
    %4 = llvm.mlir.null : !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %6 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %8 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %9 = llvm.getelementptr inbounds %8[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %10 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> i32
    %11 = llvm.icmp "eq" %10, %1 : i32
    llvm.cond_br %11, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.store %4, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %12 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %13 = llvm.getelementptr inbounds %12[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %14 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %15 = llvm.getelementptr inbounds %14[%2] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %16 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %16, %7 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %17 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %18 = llvm.getelementptr inbounds %17[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %19 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %20 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %21 = llvm.getelementptr inbounds %20[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %22 = llvm.load %21 {alignment = 8 : i64} : !llvm.ptr -> i32
    %23 = llvm.add %22, %3  : i32
    llvm.store %23, %21 {alignment = 8 : i64} : i32, !llvm.ptr
    %24 = llvm.sext %23 : i32 to i64
    %25 = llvm.getelementptr inbounds %19[%24] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %26 = llvm.load %25 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %28 = llvm.getelementptr inbounds %27[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %29 = llvm.load %28 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %30 = llvm.getelementptr inbounds %29[%2] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %26, %30 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %31 = llvm.load %6 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @heapify(%31, %1) : (!llvm.ptr, i32) -> ()
    %32 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %32, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    %33 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.return %33 : !llvm.ptr
  }
  llvm.func @mergeKLists(%arg0: !llvm.ptr {llvm.noundef}, %arg1: i32 {llvm.noundef}) -> !llvm.ptr attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(8 : i64) : i64
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.mlir.constant(0 : i8) : i8
    %5 = llvm.mlir.constant(16 : i64) : i64
    %6 = llvm.mlir.constant(false) : i1
    %7 = llvm.mlir.null : !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.struct<"struct.MinHeap", (ptr, i32, i32)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.struct<"struct.ListNode", (i32, ptr)> {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %9 {alignment = 4 : i64} : i32, !llvm.ptr
    %15 = llvm.getelementptr inbounds %10[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %16 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %17 = llvm.sext %16 : i32 to i64
    %18 = llvm.mul %17, %2  : i64
    %19 = llvm.call @malloc(%18) : (i64) -> !llvm.ptr
    llvm.store %19, %15 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %20 = llvm.getelementptr inbounds %10[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    llvm.store %1, %20 {alignment = 8 : i64} : i32, !llvm.ptr
    %21 = llvm.getelementptr inbounds %10[%1, 2] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %22 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %22, %21 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %1, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb5
    %23 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %24 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %25 = llvm.icmp "slt" %23, %24 : i32
    llvm.cond_br %25, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %26 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %28 = llvm.sext %27 : i32 to i64
    %29 = llvm.getelementptr inbounds %26[%28] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %30 = llvm.load %29 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %31 = llvm.icmp "ne" %30, %7 : !llvm.ptr
    llvm.cond_br %31, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %32 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %33 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %34 = llvm.sext %33 : i32 to i64
    %35 = llvm.getelementptr inbounds %32[%34] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %36 = llvm.load %35 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @push(%10, %36) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    llvm.br ^bb5
  ^bb5:  // pred: ^bb4
    %37 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %38 = llvm.add %37, %0  : i32
    llvm.store %38, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb6:  // pred: ^bb1
    "llvm.intr.memset"(%12, %4, %5) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    llvm.store %12, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb10
    %39 = llvm.getelementptr inbounds %10[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %40 = llvm.load %39 {alignment = 8 : i64} : !llvm.ptr -> i32
    %41 = llvm.icmp "sgt" %40, %1 : i32
    llvm.cond_br %41, ^bb8, ^bb11
  ^bb8:  // pred: ^bb7
    %42 = llvm.call @pop(%10) : (!llvm.ptr) -> !llvm.ptr
    llvm.store %42, %14 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %43 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %44 = llvm.load %13 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %45 = llvm.getelementptr inbounds %44[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    llvm.store %43, %45 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %46 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %46, %13 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %47 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %48 = llvm.getelementptr inbounds %47[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %49 = llvm.load %48 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %50 = llvm.icmp "ne" %49, %7 : !llvm.ptr
    llvm.cond_br %50, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %51 = llvm.load %14 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %52 = llvm.getelementptr inbounds %51[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %53 = llvm.load %52 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @push(%10, %53) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.br ^bb10
  ^bb10:  // 2 preds: ^bb8, ^bb9
    llvm.br ^bb7 {loop_annotation = #loop_annotation}
  ^bb11:  // pred: ^bb7
    %54 = llvm.getelementptr inbounds %10[%1, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.MinHeap", (ptr, i32, i32)>
    %55 = llvm.load %54 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%55) : (!llvm.ptr) -> ()
    %56 = llvm.getelementptr inbounds %12[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %57 = llvm.load %56 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.return %57 : !llvm.ptr
  }
  llvm.func @malloc(i64 {llvm.noundef}) -> (!llvm.ptr {llvm.noalias}) attributes {passthrough = ["nounwind", ["allocsize", "4294967295"], ["frame-pointer", "all"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]}
  llvm.func @free(!llvm.ptr {llvm.noundef}) attributes {passthrough = ["nounwind", ["frame-pointer", "all"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]}
  llvm.func @createNode(%arg0: i32 {llvm.noundef}) -> !llvm.ptr attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(16 : i64) : i64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.null : !llvm.ptr
    %4 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 4 : i64} : i32, !llvm.ptr
    %6 = llvm.call @malloc(%1) : (i64) -> !llvm.ptr
    llvm.store %6, %5 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %7 = llvm.load %4 {alignment = 4 : i64} : !llvm.ptr -> i32
    %8 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %9 = llvm.getelementptr inbounds %8[%2, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    llvm.store %7, %9 {alignment = 8 : i64} : i32, !llvm.ptr
    %10 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %11 = llvm.getelementptr inbounds %10[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    llvm.store %3, %11 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %12 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.return %12 : !llvm.ptr
  }
  llvm.func @printList(%arg0: !llvm.ptr {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.null : !llvm.ptr
    %2 = llvm.mlir.constant("\0A\00") : !llvm.array<2 x i8>
    %3 = llvm.mlir.addressof @".str.1" : !llvm.ptr
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant("%d \00") : !llvm.array<4 x i8>
    %6 = llvm.mlir.addressof @".str" : !llvm.ptr
    %7 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %7 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %8 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %9 = llvm.icmp "ne" %8, %1 : !llvm.ptr
    llvm.cond_br %9, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %10 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %11 = llvm.getelementptr inbounds %10[%4, 0] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %12 = llvm.load %11 {alignment = 8 : i64} : !llvm.ptr -> i32
    %13 = llvm.call @printf(%6, %12) : (!llvm.ptr, i32) -> i32
    %14 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %15 = llvm.getelementptr inbounds %14[%4, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %16 = llvm.load %15 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %16, %7 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb3:  // pred: ^bb1
    %17 = llvm.call @printf(%3) : (!llvm.ptr) -> i32
    llvm.return
  }
  llvm.func @printf(!llvm.ptr {llvm.noundef}, ...) -> i32 attributes {passthrough = [["frame-pointer", "all"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]}
  llvm.func @freeList(%arg0: !llvm.ptr {llvm.noundef}) attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.null : !llvm.ptr
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %4 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %3 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %5 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %6 = llvm.icmp "ne" %5, %1 : !llvm.ptr
    llvm.cond_br %6, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %7 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %7, %4 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %8 = llvm.load %3 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %9 = llvm.getelementptr inbounds %8[%2, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %10 = llvm.load %9 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %10, %3 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %11 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%11) : (!llvm.ptr) -> ()
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb3:  // pred: ^bb1
    llvm.return
  }
  llvm.func @main() -> i32 attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(4 : i32) : i32
    %3 = llvm.mlir.constant(5 : i32) : i32
    %4 = llvm.mlir.constant(3 : i32) : i32
    %5 = llvm.mlir.constant(2 : i32) : i32
    %6 = llvm.mlir.constant(6 : i32) : i32
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.mlir.constant(2 : i64) : i64
    %9 = llvm.mlir.constant("Input lists:\0A\00") : !llvm.array<14 x i8>
    %10 = llvm.mlir.addressof @".str.2" : !llvm.ptr
    %11 = llvm.mlir.constant(0 : i64) : i64
    %12 = llvm.mlir.constant("Combined lists: \00") : !llvm.array<17 x i8>
    %13 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %14 = llvm.mlir.constant("List %d: \00") : !llvm.array<10 x i8>
    %15 = llvm.mlir.addressof @".str.3" : !llvm.ptr
    %16 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x !llvm.array<3 x ptr> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %22 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %23 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    %24 = llvm.call @createNode(%0) : (i32) -> !llvm.ptr
    llvm.store %24, %17 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %25 = llvm.call @createNode(%2) : (i32) -> !llvm.ptr
    %26 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %27 = llvm.getelementptr inbounds %26[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    llvm.store %25, %27 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %28 = llvm.call @createNode(%3) : (i32) -> !llvm.ptr
    %29 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %30 = llvm.getelementptr inbounds %29[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %31 = llvm.load %30 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %32 = llvm.getelementptr inbounds %31[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    llvm.store %28, %32 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %33 = llvm.call @createNode(%0) : (i32) -> !llvm.ptr
    llvm.store %33, %18 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %34 = llvm.call @createNode(%4) : (i32) -> !llvm.ptr
    %35 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %36 = llvm.getelementptr inbounds %35[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    llvm.store %34, %36 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %37 = llvm.call @createNode(%2) : (i32) -> !llvm.ptr
    %38 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %39 = llvm.getelementptr inbounds %38[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    %40 = llvm.load %39 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %41 = llvm.getelementptr inbounds %40[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    llvm.store %37, %41 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %42 = llvm.call @createNode(%5) : (i32) -> !llvm.ptr
    llvm.store %42, %19 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %43 = llvm.call @createNode(%6) : (i32) -> !llvm.ptr
    %44 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %45 = llvm.getelementptr inbounds %44[%1, 1] : (!llvm.ptr, i32) -> !llvm.ptr, !llvm.struct<"struct.ListNode", (i32, ptr)>
    llvm.store %43, %45 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %46 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %46, %20 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %47 = llvm.getelementptr inbounds %20[%7] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %48 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %48, %47 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %49 = llvm.getelementptr inbounds %20[%8] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %50 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %50, %49 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %4, %21 {alignment = 4 : i64} : i32, !llvm.ptr
    %51 = llvm.call @printf(%10) : (!llvm.ptr) -> i32
    llvm.store %1, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %52 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %53 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %54 = llvm.icmp "slt" %52, %53 : i32
    llvm.cond_br %54, ^bb2, ^bb4
  ^bb2:  // pred: ^bb1
    %55 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.add %55, %0  : i32
    %57 = llvm.call @printf(%15, %56) : (!llvm.ptr, i32) -> i32
    %58 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %59 = llvm.sext %58 : i32 to i64
    %60 = llvm.getelementptr inbounds %20[%11, %59] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<3 x ptr>
    %61 = llvm.load %60 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @printList(%61) : (!llvm.ptr) -> ()
    llvm.br ^bb3
  ^bb3:  // pred: ^bb2
    %62 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> i32
    %63 = llvm.add %62, %0  : i32
    llvm.store %63, %22 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb4:  // pred: ^bb1
    %64 = llvm.getelementptr inbounds %20[%11, %11] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<3 x ptr>
    %65 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %66 = llvm.call @mergeKLists(%64, %65) : (!llvm.ptr, i32) -> !llvm.ptr
    llvm.store %66, %23 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %67 = llvm.call @printf(%13) : (!llvm.ptr) -> i32
    %68 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @printList(%68) : (!llvm.ptr) -> ()
    %69 = llvm.load %23 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @freeList(%69) : (!llvm.ptr) -> ()
    %70 = llvm.load %17 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @freeList(%70) : (!llvm.ptr) -> ()
    %71 = llvm.load %18 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @freeList(%71) : (!llvm.ptr) -> ()
    %72 = llvm.load %19 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.call @freeList(%72) : (!llvm.ptr) -> ()
    llvm.return %1 : i32
  }
}
