.section .text

	.global cube # int cube(int x);

cube:



	######################################################	
	# Prologue
	########################################
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	#--


	#--

	# Parametros
	#--
    movl 8(%ebp),%ecx

    movl %ecx,%eax

    imul %ecx,%eax
    imul %ecx,%eax

	#--
	# Epilogue
	#--
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	#--



	ret
