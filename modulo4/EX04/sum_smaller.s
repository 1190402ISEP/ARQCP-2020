.section .text
	.global sum_smaller

sum_smaller:

	#--
	# Prologue
	#--
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
    pushl %ebx

	# Parametros
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
	#--
comparar_a_b:
    cmpl %ecx,%ebx
    jle menor_a
    jmp menor_b

menor_a:
    movl %ebx,(%edx)
    jmp fim

menor_b:
    movl %ecx,(%edx)
    jmp fim

fim:
    movl %ebx,%eax
    addl %ecx,%eax

    popl %ebx
    #--
	# Epilogue
	#--
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	#--

	ret
