.section .text
	.global greatest

greatest:

	#--
	# Prologue
	#--
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	pushl %ecx

	# Parametros
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
	#--

comparar_a_b:
    cmpl %ecx,%ebx
    jge comparar_a_c
    jmp comparar_b_c

comparar_a_c:
    cmpl %edx,%ebx
    jge upper_a
    jl upper_c

comparar_b_c:
    cmpl %edx,%ecx
    jge upper_b
    jl upper_c

upper_a:
    movl %ebx,%eax
    jmp fim

upper_b:
    movl %ecx,%eax
    jmp fim

upper_c:
    movl %edx,%eax
    jmp fim



fim:
    #--
	# Epilogue
	#--
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	#--

	ret
