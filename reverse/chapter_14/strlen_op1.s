	.file	"strlen.c"
	.text
	.globl	my_strlen
	.type	my_strlen, @function
my_strlen:
.LFB11:
	.cfi_startproc
	movq	%rdi, %rax
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"hello!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	movl	$.LC0, %edi
	call	my_strlen
	rep ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
