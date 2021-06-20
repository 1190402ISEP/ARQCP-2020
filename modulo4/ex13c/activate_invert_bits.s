.section .data

.section .text

	.global activate_invert_bits	# int

activate_invert_bits:

	# prologue
	pushl %ebp
	movl %esp, %ebp

    pushl 16(%ebp)
    pushl 12(%ebp)
    pushl 8(%ebp)

    call activate_bits
	addl $12, %esp

	notl %eax

	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
