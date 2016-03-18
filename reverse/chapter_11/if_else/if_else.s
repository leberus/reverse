	.file	"if_else.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"it is ten"
.LC1:
	.string	"it is not ten"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	cmpl	$10, %edi
	movl	$.LC1, %edx
	movl	$.LC0, %eax
	cmovne	%rdx, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
