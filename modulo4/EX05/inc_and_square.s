.section .text
	.global inc_and_square

inc_and_square:

	#--
	# Prologue
	#--
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	# Parametros
	movl 8(%ebp),%ecx
	movl 12(%ebp),%eax
	#--

    addl $1,(%ecx)
    imul %eax,%eax



    #--
	# Epilogue
	#--
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	#--

	ret
