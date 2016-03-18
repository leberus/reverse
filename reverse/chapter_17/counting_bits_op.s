	.file	"counting_bits.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	f
	.type	f, @function
f:
.LFB11:
	.cfi_startproc
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%esi, %edx
	sall	%cl, %edx
	andl	%edi, %edx
	cmpl	$1, %edx
	sbbl	$-1, %eax
	addl	$1, %ecx
	cmpl	$32, %ecx
	jne	.L3
	rep ret
	.cfi_endproc
.LFE11:
	.size	f, .-f
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.section	.text.startup,"ax",@progbits
.LHOTB1:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE1:
	.section	.text.startup
.LHOTE1:
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
