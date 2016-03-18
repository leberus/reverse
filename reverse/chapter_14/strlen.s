	.file	"strlen.c"
	.text
	.globl	my_strlen
	.type	my_strlen, @function
my_strlen:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L2:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx				# Copy the memory addres of [current_address] + 1. So in every iteration, we're going trhough the chain till we reach '\0#
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax				# mov zero-extented from byte to long (copying the value: Indirect Memory Addressing: http://www.tutorialspoint.com/assembly_programming/assembly_addressing_modes.htm)
	testb	%al, %al				# Test with and AND if the value stored at %al is 0 (so the byte is '\0') (testbit) (lower 8 bits of eax)
	jne	.L2
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	subl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	my_strlen, .-my_strlen
	.section	.rodata
.LC0:
	.string	"hello!"
	.text
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
	movl	$.LC0, %edi
	call	my_strlen
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
