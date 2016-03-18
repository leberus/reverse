	.file	"for.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"f(%d)\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	printing_function
	.type	printing_function, @function
printing_function:					# This function is never called!
.LFB11:
	.cfi_startproc
	movl	%edi, %esi
	xorl	%eax, %eax
	movl	$.LC0, %edi
	jmp	printf
	.cfi_endproc
.LFE11:
	.size	printing_function, .-printing_function
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$2, %ebx
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%ebx, %esi
	xorl	%eax, %eax
	movl	$.LC0, %edi
	addl	$1, %ebx
	call	printf
	cmpl	$10, %ebx
	jne	.L3
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
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
