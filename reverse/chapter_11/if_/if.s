	.file	"if.c"
	.section	.rodata
.LC0:
	.string	"a>b"
.LC1:
	.string	"a==b"
.LC2:
	.string	"a<b"
	.text
	.globl	f_signed
	.type	f_signed, @function
f_signed:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L2
	movl	$.LC0, %edi
	call	puts
.L2:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L3
	movl	$.LC1, %edi
	call	puts
.L3:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L1
	movl	$.LC2, %edi
	call	puts
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	f_signed, .-f_signed
	.globl	f_unsigned
	.type	f_unsigned, @function
f_unsigned:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jbe	.L6
	movl	$.LC0, %edi
	call	puts
.L6:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L7
	movl	$.LC1, %edi
	call	puts
.L7:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jnb	.L5
	movl	$.LC2, %edi
	call	puts
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	f_unsigned, .-f_unsigned
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$2, %esi
	movl	$1, %edi
	call	f_signed
	movl	$2, %esi
	movl	$1, %edi
	call	f_unsigned
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
