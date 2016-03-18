	.file	"array_p.c"
	.globl	month1
	.section	.rodata
.LC0:
	.string	"January"
.LC1:
	.string	"February"
.LC2:
	.string	"March"
.LC3:
	.string	"April"
.LC4:
	.string	"May"
.LC5:
	.string	"June"
.LC6:
	.string	"July"
.LC7:
	.string	"August"
.LC8:
	.string	"September"
.LC9:
	.string	"October"
.LC10:
	.string	"November"
.LC11:
	.string	"December"
	.data
	.align 64
	.type	month1, @object
	.size	month1, 96
month1:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.text
	.globl	get_month1
	.type	get_month1, @function
get_month1:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	month1(,%rax,8), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	get_month1, .-get_month1
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
