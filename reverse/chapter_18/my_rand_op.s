	.file	"my_rand.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	my_srand
	.type	my_srand, @function
my_srand:
.LFB0:
	.cfi_startproc
	movl	%edi, rand_state(%rip)
	ret
	.cfi_endproc
.LFE0:
	.size	my_srand, .-my_srand
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	my_rand
	.type	my_rand, @function
my_rand:
.LFB1:
	.cfi_startproc
	imull	$1664525, rand_state(%rip), %eax
	addl	$1013904223, %eax
	movl	%eax, rand_state(%rip)
	andl	$32767, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	my_rand, .-my_rand
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.local	rand_state
	.comm	rand_state,4,4
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
