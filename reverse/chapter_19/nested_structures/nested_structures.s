	.file	"nested_structures.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"a=%d; b=%d; c.a=%d; c.b=%d; d=%d; e=%d\n"
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
	movl	36(%rbp), %esi
	movzbl	32(%rbp), %eax
	movsbl	%al, %r8d
	movl	28(%rbp), %edi
	movl	24(%rbp), %ecx
	movl	20(%rbp), %edx
	movzbl	16(%rbp), %eax
	movsbl	%al, %eax
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addq	$16, %rsp
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
	subq	$32, %rsp
	movb	$1, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$100, -24(%rbp)
	movl	$101, -20(%rbp)
	movb	$3, -16(%rbp)
	movl	$4, -12(%rbp)
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	call	f
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
