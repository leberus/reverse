	.file	"strlen.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	my_strlen
	.type	my_strlen, @function
my_strlen:
.LFB11:
	.cfi_startproc
	movq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L2:
	addq	$1, %rax
	cmpb	$0, -1(%rax)
	jne	.L2
	subq	%rdi, %rax
	subl	$1, %eax
	ret
	.cfi_endproc
.LFE11:
	.size	my_strlen, .-my_strlen
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"hello!"
	.section	.text.unlikely
.LCOLDB2:
	.section	.text.startup,"ax",@progbits
.LHOTB2:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	movl	$.LC1, %eax
	.p2align 4,,10
	.p2align 3
.L6:
	addq	$1, %rax
	cmpb	$0, -1(%rax)
	jne	.L6
	subq	$.LC1, %rax
	subl	$1, %eax
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE2:
	.section	.text.startup
.LHOTE2:
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
