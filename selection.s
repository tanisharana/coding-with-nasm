	.file	"selection.c"
	.text
	.section	.rodata
.LC0:
	.string	"Number of strings: "
.LC1:
	.string	"%ld"
.LC2:
	.string	"Enter the strings: "
.LC3:
	.string	"%s"
.LC4:
	.string	"Lexicographic order: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-136(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movq	%rax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	movq	%rax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L2:
	cmpq	%rdx, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L4
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -120(%rbp)
	movl	$0, -152(%rbp)
	jmp	.L5
.L8:
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -148(%rbp)
	jmp	.L6
.L7:
	movl	-152(%rbp), %eax
	imull	$50, %eax, %edx
	movl	-148(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-148(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %ecx
	movq	-120(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, (%rdx,%rax)
	addl	$1, -148(%rbp)
.L6:
	movl	-148(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L7
	movl	-152(%rbp), %eax
	imull	$50, %eax, %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	movq	-120(%rbp), %rdx
	cltq
	movb	$0, (%rdx,%rax)
	addl	$1, -152(%rbp)
.L5:
	movl	-152(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L8
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	valueString@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -144(%rbp)
	jmp	.L9
.L12:
	movl	$0, -140(%rbp)
	jmp	.L10
.L11:
	movl	-144(%rbp), %eax
	imull	$50, %eax, %edx
	movl	-140(%rbp), %eax
	addl	%edx, %eax
	movq	-120(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	addl	$1, -140(%rbp)
.L10:
	movl	-144(%rbp), %eax
	imull	$50, %eax, %edx
	movl	-140(%rbp), %eax
	addl	%edx, %eax
	movq	-120(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L11
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -144(%rbp)
.L9:
	movl	-144(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L12
	movq	%rbx, %rsp
	movl	$0, %eax
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
