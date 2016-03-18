	.file	"three_array.c"
	.comm	a,24000,64
	.text
	.globl	insert
	.type	insert, @function
insert:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	cltq
	imulq	$600, %rdx, %rsi
	movq	%rax, %rdx
	leaq	(%rdx,%rdx), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	leaq	(%rax,%rcx), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, a(,%rdx,4)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	insert, .-insert
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
