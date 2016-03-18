	.file	"switch.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
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
	.section	.text.unlikely,"ax",@progbits
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	f
	.type	f, @function
f:
.LFB11:
	.cfi_startproc
	cmpl	$22, %edi
	ja	.L2
	movl	%edi, %edi
	jmp	*.L4(,%rdi,8)
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
	.p2align 4,,10
	.p2align 3
.L7:
	movl	$.LC3, %edi
	jmp	puts
	.p2align 4,,10
	.p2align 3
.L6:
	movl	$.LC2, %edi
	jmp	puts
	.p2align 4,,10
	.p2align 3
.L5:
	movl	$.LC1, %edi
	jmp	puts
	.p2align 4,,10
	.p2align 3
.L3:
	movl	$.LC0, %edi
	jmp	puts
	.p2align 4,,10
	.p2align 3
.L2:
	movl	$.LC4, %edi
	jmp	puts
	.cfi_endproc
.LFE11:
	.size	f, .-f
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.section	.text.startup,"ax",@progbits
.LHOTB6:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$4, %edi
	call	f
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE6:
	.section	.text.startup
.LHOTE6:
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
