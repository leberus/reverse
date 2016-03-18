	.file	"f_abs.c"
	.text
	.globl	my_abs
	.type	my_abs, @function
my_abs:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)	# compare 0 - 4
	jns	.L2
	movl	-4(%rbp), %eax
	negl	%eax		# negate value
	jmp	.L3
.L2:
	movl	-4(%rbp), %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	my_abs, .-my_abs
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
