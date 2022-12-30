	.file	"matmul.c"
	.text
	.globl	gemm2
	.type	gemm2, @function
gemm2:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L2
.L5:
	movq	$0, -8(%rbp)
	jmp	.L3
.L4:
	movq	-48(%rbp), %rax
	leaq	1088(%rax), %rcx
	movq	-16(%rbp), %rax
	imulq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	imulq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-32(%rbp), %rax
	addq	%rax, %rsi
	movq	-16(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	-8(%rbp), %rax
	addq	%rdi, %rax
	leaq	0(,%rax,8), %rdi
	movq	-24(%rbp), %rax
	addq	%rdi, %rax
	movq	%rax, %rdi
	call	foo@PLT
	addq	$1, -8(%rbp)
.L3:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.L4
	addq	$1, -16(%rbp)
.L2:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.L5
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	gemm2, .-gemm2
	.section	.rodata
.LC1:
	.string	"%.1lf "
	.align 8
.LC3:
	.string	"gemm2() with SMID parallelism took %f seconds to execute \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	call	clock@PLT
	movq	%rax, -32(%rbp)
	movl	$4194304, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L7
.L8:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -44(%rbp)
.L7:
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L8
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$2048, %ecx
	movq	%rax, %rdi
	call	gemm2
	movl	$0, -40(%rbp)
	jmp	.L9
.L10:
	movl	-40(%rbp), %eax
	sall	$11, %eax
	cltq
	addq	$2047, %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC1(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -40(%rbp)
.L9:
	cmpl	$2047, -40(%rbp)
	jle	.L10
	movl	$10, %edi
	call	putchar@PLT
	call	clock@PLT
	subq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	cvtsi2sdq	-32(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
