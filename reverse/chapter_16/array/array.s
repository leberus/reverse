	.file	"array.c"
	.section	.rodata
.LC0:
	.string	"a[%d]=%d\n"
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
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax				# This is the counter
	leal	(%rax,%rax), %edx			# We multiply the number for itself, and store the value on edx
	movl	-4(%rbp), %eax				# We store again the value of "i" in eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)			# Store the value of the multiplication in -96(%rbp,%rax,4)
							# (rbp - 96 + (rax * 4)) (Ex: rbp: 196
	                                                # rax = 0, 196-96 + (0 * 4) = 100 = rax
        	                                        # rax = 1, 196-96 + (1 * 4) = 104 = rax
                	                                # rax = 2, 196-96 + (2 * 4) = 108 = rax
	addl	$1, -4(%rbp)				# Increment he counter
.L2:
	cmpl	$19, -4(%rbp)				
	jle	.L3
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L4:
	cmpl	$19, -4(%rbp)
	jle	.L5
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
