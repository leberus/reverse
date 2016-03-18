	.file	"romemory.c"
	.section	.rodata
.LC0:
	.string	"Result: %s\n"
	.text
	.globl	alter_string
	.type	alter_string, @function
alter_string:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)                 # Move string's address to -8(%rbp)
	movq	-8(%rbp), %rax                 # Move string's address from -8(%rbp) to rdx register
	movabsq	$2406463039398178631, %rdx     # Puts "!eybdooG" as an immediate value in rdx register ( 0x21657962646f6f47 )
	movq	%rdx, (%rax)                   # Try to move the value stored in rdx register to the address pointed by rax register. Not allowed because this memory area is read-only.
	movb	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	alter_string, .-alter_string
	.section	.rodata
.LC1:
	.string	"Hello, world!\n"
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
	movl	$.LC1, %edi     # Address of string load on edi register
	call	alter_string    # Call function
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
