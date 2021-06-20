.section .text
	.global sum_n # int sum_n(int n);

sum_n:

	#--
	# Prologue
	#--
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	# Parametros
	movl 8(%ebp),%eax
	#--
    movl %eax,%ecx
    decl %ecx
loop:
    cmpl $0,%ecx
    je fim
    addl %ecx,%eax
    decl %ecx
    jmp loop

fim:
	#--
	# Epilogue
	#--
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	#--

	ret
