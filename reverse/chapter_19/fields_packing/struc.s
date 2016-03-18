	.file	"struc.c"
	.section	.rodata
.LC0:
	.string	"a=%d; b=%d; c=%d; d=%d\n"
	.text
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax				# -16(%rbp)
	movq	%rsi, %rcx				# -8(%rbp)
	movq	%rcx, %rdx				# -8(%rbp)
	movq	%rax, -16(%rbp)				# -16(%rbp)
	movq	%rdx, -8(%rbp)				# -8(%rbp)
	movl	-4(%rbp), %esi
	movzbl	-8(%rbp), %eax
	movsbl	%al, %ecx
	movl	-12(%rbp), %edx
	movzbl	-16(%rbp), %eax
	movsbl	%al, %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movb	$1, -16(%rbp)
	movl	$2, -12(%rbp)
	movb	$3, -8(%rbp)
	movl	$4, -4(%rbp)		# 4bytes boundary
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	f
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
