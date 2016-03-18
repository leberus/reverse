	.file	"struc.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a=%d; b=%d; c=%d; d=%d\n"
	.text
	.globl	f
	.type	f, @function
f:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movsbl	%sil, %ecx
	movq	%rdi, %rdx
	sarq	$32, %rdx
	movsbl	%dil, %edi
	shrq	$32, %rsi
	movq	%rsi, %r8
	movl	%edi, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	f, .-f
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movabsq	$8589934593, %rdi
	movabsq	$17179869187, %rsi
	call	f
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
