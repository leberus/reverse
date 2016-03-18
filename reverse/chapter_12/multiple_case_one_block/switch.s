	.file	"switch.c"
	.section	.rodata
.LC0:
	.string	"1, 2, 7, 10"
.LC1:
	.string	"3, 4, 5"
.LC2:
	.string	"8, 9, 21"
.LC3:
	.string	"22"
.LC4:
	.string	"default"
	.text
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$22, -4(%rbp)
	ja	.L2
	movl	-4(%rbp), %eax
	movq	.L4(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L4:
	.quad	.L2
	.quad	.L3
	.quad	.L3
	.quad	.L5
	.quad	.L5
	.quad	.L5
	.quad	.L5
	.quad	.L3
	.quad	.L6
	.quad	.L6
	.quad	.L3
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L2
	.quad	.L6
	.quad	.L6
	.quad	.L7
	.text
.L3:
	movl	$.LC0, %edi
	call	puts
	jmp	.L1
.L5:
	movl	$.LC1, %edi
	call	puts
	jmp	.L1
.L6:
	movl	$.LC2, %edi
	call	puts
	jmp	.L1
.L7:
	movl	$.LC3, %edi
	call	puts
	jmp	.L1
.L2:
	movl	$.LC4, %edi
	call	puts
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
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
	movl	$4, %edi
	call	f
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
