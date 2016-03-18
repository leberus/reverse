	.file	"array_p.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	get_month1
	.type	get_month1, @function
get_month1:
.LFB11:
	.cfi_startproc
	movslq	%edi, %rdi
	movq	month1(,%rdi,8), %rax
	ret
	.cfi_endproc
.LFE11:
	.size	get_month1, .-get_month1
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.globl	month1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"January"
.LC2:
	.string	"February"
.LC3:
	.string	"March"
.LC4:
	.string	"April"
.LC5:
	.string	"May"
.LC6:
	.string	"June"
.LC7:
	.string	"July"
.LC8:
	.string	"August"
.LC9:
	.string	"September"
.LC10:
	.string	"October"
.LC11:
	.string	"November"
.LC12:
	.string	"December"
	.data
	.align 64
	.type	month1, @object
	.size	month1, 96
month1:
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
	.quad	.LC12
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
