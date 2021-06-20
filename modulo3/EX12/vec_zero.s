.section .data
	.global ptrvec #short int ptr
	.global num    # int

.section .text
	.global vec_zero #int void

#zeroes the elements of an array of short ints, pointed by ptrvec, with num elements, that are greater or equal to 100. The function should return the number of changed elements

vec_zero:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	#pushl %esi
	pushl %edi
	######################################################

	movl ptrvec,%edi
	movl num,%ecx

	movl $0,%eax
	movl $0,%edx

	cmpl $0,%ecx
	je fim
loop:
	cmpw $100,(%edi)
	jg alterar_para_zero
	je alterar_para_zero
	jmp incrementar

alterar_para_zero:
    movw $0, (%edi)
    incl %eax
    jmp incrementar

incrementar:
    decl %ecx
    cmpl $0,%ecx
    je fim
    addl $2,%edi
    jmp loop

fim:
	# Restore Regsiters
	######################################################
	popl %edi
	#popl %esi
	#popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret