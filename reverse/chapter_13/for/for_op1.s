	.file	"for.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"f(%d)\n"
	.text
	.globl	printing_function
	.type	printing_function, @function
printing_function:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	%edi, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	printing_function, .-printing_function
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$2, %ebx
.L4:
	movl	%ebx, %edi
	call	printing_function
	addl	$1, %ebx
	cmpl	$10, %ebx
	jne	.L4
	movl	$0, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
