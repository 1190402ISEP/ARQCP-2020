.section .data
	.global s1
	.global s2

.section .text

	.global crossSumBytes
		
crossSumBytes:

	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	
	
	movl $0,%eax
	movl $0,%ebx
	
	movw s1,%ax
	movw s2,%bx
	
	
	addb %bh,%al
	addb %bl,%ah
	
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	
	ret
