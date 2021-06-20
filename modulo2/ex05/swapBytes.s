.section .data
	.global s

.section .text

	.global swapBytes	
		
swapBytes:

	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	movl $0,%eax #limpa o valor do registo eax
	movw s,%ax #move o short para o registo eax
	xchg %ah,%al#inverte o valor dos bytes
	
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	
	ret
