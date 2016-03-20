	.file	"cpuid.c"
	.text
	.type	cpuid, @function
cpuid:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	-12(%rbp), %eax
#APP
# 4 "cpuid.c" 1
	cpuid
# 0 "" 2
#NO_APP
	movl	%ebx, %esi
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movl	%edi, (%rax)
	movq	-32(%rbp), %rax
	movl	%esi, (%rax)
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cpuid, .-cpuid
	.section	.rodata
.LC0:
	.string	"stepping=%d\n"
.LC1:
	.string	"model=%d\n"
.LC2:
	.string	"family_id=%d\n"
.LC3:
	.string	"processor_type=%d\n"
.LC4:
	.string	"extended_model_id=%d\n"
.LC5:
	.string	"extended_family_id=%d\n"
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
	subq	$32, %rsp
	leaq	-32(%rbp), %rax
	leaq	12(%rax), %rsi
	leaq	-32(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-32(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$1, %edi
	call	cpuid
	leaq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$15, %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$4, %al
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %eax
	andl	$15, %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %eax
	shrw	$4, %ax
	andb	$255, %ah
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
