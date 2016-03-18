	.file	"f_abs.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	my_abs
	.type	my_abs, @function
my_abs:
.LFB0:
	.cfi_startproc
	movl	%edi, %edx
	movl	%edi, %eax
	sarl	$31, %edx
	xorl	%edx, %eax
	subl	%edx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	my_abs, .-my_abs
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
