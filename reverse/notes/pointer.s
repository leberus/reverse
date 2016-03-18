	.file "pointer.s"
	.section .rodata

	.globl a
	.data
        .align 4
        .type   a, @object
        .size   a, 4
a:
        .long   2

	.text 
	.globl main
	.type main, @function
main:

	pushq %rbp
	movq %rsp, %rbp
	mov $a, %rax			# copy memory addr of a to rax
	mov %rax, %rbx			# copy contents of rax to rbx
	mov (%rax), %rbx		# copy the value stored at that memory adress to rbx
	leave
	ret

