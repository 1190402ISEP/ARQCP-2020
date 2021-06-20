.section .data

	.global even


.section .text
	.global test_even

test_even:

	#prologue
	
	pushl % ebp # save previous stack frame pointer
	movl %esp , % ebp # the stack frame pointer for our function
	
	#body
	
	movl even,%eax
	cdq
	movl $2,%ecx
	idivl %ecx
	
	cmpl $0,%edx
	je resto_zero
	jmp resto_diferente_zero
	


resto_zero:
	movl $1,%eax
jmp fim

resto_diferente_zero:
	movl $0,%eax
jmp fim



fim:
	# epilogue
	
	
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	
	
	ret # return from the function
