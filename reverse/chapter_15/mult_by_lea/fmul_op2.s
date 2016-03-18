	.file	"fmul.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	leal	0(,%rdi,8), %eax	# multiplies %rdi * 8 and loads the effective address in %eax
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
