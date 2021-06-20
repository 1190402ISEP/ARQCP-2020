.section .data
	.global ptr1

.section .text
	.global encrypt

encrypt:

	#prologue
	
	pushl % ebp # save previous stack frame pointer
	movl %esp , % ebp # the stack frame pointer for our function
	push %esi
	
	movl ptr1,%esi
	movl $0,%ecx
	movl $0,%eax	
		
		add_2:
			movb (%esi),%cl
			cmp $0,%cl
			je fim
			
			cmp $32, %cl
			je incrementar
			
			cmp $97, %cl
			je incrementar
			
			addl $2,(%esi)
			incl %eax

incrementar:
incl %esi
jmp add_2



fim:

	# epilogue
	pop %esi
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
