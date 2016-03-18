	.file	"my_rand.c"
	.local	rand_state
	.comm	rand_state,4,4
	.text
	.globl	my_srand
	.type	my_srand, @function
my_srand:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, rand_state(%rip)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	my_srand, .-my_srand
	.globl	my_rand
	.type	my_rand, @function
my_rand:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	rand_state(%rip), %eax
	imull	$1664525, %eax, %eax
	movl	%eax, rand_state(%rip)
	movl	rand_state(%rip), %eax
	addl	$1013904223, %eax
	movl	%eax, rand_state(%rip)
	movl	rand_state(%rip), %eax
	andl	$32767, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	my_rand, .-my_rand
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
