.section .data

	.global even
	.global num
	.global ptrvec
	
.section .text
	.global sum_even

sum_even:

	#prologue
	
	pushl % ebp # save previous stack frame pointer
	movl %esp , % ebp # the stack frame pointer for our function
	push %esi
	
	#body
	
	
	
	
	
	
	
	
	


	# epilogue
	pop %esi
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
