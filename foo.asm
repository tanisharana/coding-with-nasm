global foo
section .text
foo:
  xor rax, rax
  mov r9, rdx;
  mov r10, $0;
  xor rdx, rdx;
  mov rax, $0;
next:
  vmovupd zmm0, [rsi+8*rax]
  vmovupd zmm1, [r9+8*rax]
  vbroadcastsd zmm16, [rdi];
  ;vmulpd zmm0, zmm0, zmm16;
  ;vaddpd zmm0, zmm1;
  vfmadd213pd zmm16, zmm0, zmm1;
  vmovupd [r9+8*rax], zmm16;


  add rax, $8;
  vbroadcastsd zmm16, [rdi];
  vmovupd zmm2, [rsi+8*rax]
  vmovupd zmm3, [r9+8*rax]
  ;vmulpd zmm2, zmm2, zmm16;
  ;vaddpd zmm2, zmm3;
  vfmadd213pd zmm16, zmm2, zmm3;
  vmovupd [r9+8*rax], zmm16;


  add rax, $8;
  vbroadcastsd zmm16, [rdi];
  vmovupd zmm4, [rsi+8*rax]
  vmovupd zmm5, [r9+8*rax]
  vfmadd213pd zmm16, zmm4, zmm5;
  vmovupd [r9+8*rax], zmm16;


  add rax, $8;
  vbroadcastsd zmm16, [rdi];
  vmovupd zmm6, [rsi+8*rax]
  vmovupd zmm7, [r9+8*rax]
  vfmadd213pd zmm16, zmm6, zmm7;
  vmovupd [r9+8*rax], zmm16;


  add rax, $8;
  vbroadcastsd zmm16, [rdi];
  vmovupd zmm7, [rsi+8*rax]
  vmovupd zmm8, [r9+8*rax]
  vfmadd213pd zmm16, zmm7, zmm8;
  vmovupd [r9+8*rax], zmm16;


  add rax, $8;
  vbroadcastsd zmm16, [rdi];
  vmovupd zmm9, [rsi+8*rax]
  vmovupd zmm10, [r9+8*rax]
  vfmadd213pd zmm16, zmm9, zmm10;
  vmovupd [r9+8*rax], zmm16;


  add rax, $8;
  vbroadcastsd zmm16, [rdi];
  vmovupd zmm11, [rsi+8*rax]
  vmovupd zmm12, [r9+8*rax]
  vfmadd213pd zmm16, zmm11, zmm12;
  vmovupd [r9+8*rax], zmm16;


  add rax, $8;
  vbroadcastsd zmm16, [rdi];
  vmovupd zmm13, [rsi+8*rax]
  vmovupd zmm14, [r9+8*rax]
  vfmadd213pd zmm16, zmm13, zmm14;
  vmovupd [r9+8*rax], zmm16;
  
  add r10, $64;
  add rax, $8;
  cmp r10, rcx;
  jl next;
finish:
  ret