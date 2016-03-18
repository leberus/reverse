	.file	"memcpy.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
.LFB0:
	.cfi_startproc
	xorl	%eax, %eax
.L2:
	cmpq	%rdx, %rax
	je	.L5
	movb	(%rsi,%rax), %cl
	movb	%cl, (%rdi,%rax)
	incq	%rax
	jmp	.L2
.L5:
	ret
	.cfi_endproc
.LFE0:
	.size	my_memcpy, .-my_memcpy
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
