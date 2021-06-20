.section .data
	.global ptrvec
	.global num

.section .text
	.global vec_add_one

vec_add_one:

	#prologue
	
	pushl % ebp # save previous stack frame pointer
	movl %esp , % ebp # the stack frame pointer for our function
	push %esi
	
	movl ptrvec,%esi
		movl num,%ebx
		
		add_1:
			cmpl $0,%ebx
			je fim
			cmpl $1,%ebx
			je nulo
			addl $1,(%esi)
			decl %ebx
			addl $4,%esi
			jmp add_1

nulo:

cmpl $0,(%esi)
je fim


			addl $1,(%esi)
			decl %ebx
			addl $4,%esi


fim:

	# epilogue
	pop %esi
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
