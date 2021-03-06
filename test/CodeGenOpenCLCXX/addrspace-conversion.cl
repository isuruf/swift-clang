// RUN: %clang_cc1 %s -triple spir-unknown-unknown -cl-std=c++ -emit-llvm -O0 -o - | FileCheck %s

void bar(__generic volatile unsigned int* ptr)
{
  //CHECK: addrspacecast i32 addrspace(4)* %{{.+}} to i32 addrspace(1)*
  auto gptr = (__global volatile unsigned int*)ptr;
}
