	.file	"scanf.c"
	.section	.rodata
.LC0:
	.string	"Enter X:"
.LC1:
	.string	"%d"
.LC2:
	.string	"You entered %d...\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$.LC0, %edi	# loads the address of LCO to edi
	call	puts
	leaq	-4(%rbp), %rax  #loads the address of the first local variable
	movq	%rax, %rsi      # move the address from rax to rsi register
	movl	$.LC1, %edi     # loads the address of LC1 to edi
	movl	$0, %eax 
	call	__isoc99_scanf  # call scanf
	movl	-4(%rbp), %eax  # moves the value of the first local variable to eax
	movl	%eax, %esi      # move the value from eax to esi register
	movl	$.LC2, %edi     # loads the address of LC2 to edi
	movl	$0, %eax
	call	printf          # calls printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
