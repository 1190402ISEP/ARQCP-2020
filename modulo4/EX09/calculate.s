.section .text

	.global calculate 			# int calculate(int a, int b);
	.global print_result

calculate:


	######################################################
	# Prologue
	########################################
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	########################################
    subl $8,%esp


	######################################################
	# CALLE: Save Registers
	######################################################
	# pushl %ebx
	pushl %esi
	pushl %edi
	######################################################



	######################################################
	# Parametros
	######################################################
	movl 8(%ebp), %esi 			# int a = 2
	movl 12(%ebp), %edi 		# int b = 4;
	######################################################


	# clean registers
	movl $0, %eax
	movl $0, %ebx
	movl $0, -8(%ebp)
	movl $1, -4(%ebp)




	# MY VARIABLES

	# a = %esi
	# b = %edi
	# sum = -8(%ebp)
	# product = -4(%ebp)


	# sum = a+b;
	movl %esi,-8(%ebp)
	addl %edi, -8(%ebp)






	# print_result(’+’, a, b, sum);

	# ****************************************************
	# CALLER: Save Registers
	# ****************************************************
	pushl %eax
	pushl %edx
	pushl %ecx
	# ****************************************************

	pushl -8(%ebp) 	# 4th parameter (sum)
	pushl %edi 		# 3rd parameter (b)
	pushl %esi		# 2nd parameter (a)
	pushl $43 		# 1st parameter (ASCII: +)


	# print_result(’+’, a, b, sum);
	call print_result


	addl $2, %esp # clean parameters from stack
	addl $4 , %esp # clean parameters from stack
	addl $4 , %esp # clean parameters from stack
	addl $4 , %esp # clean parameters from stack

	# ****************************************************
	# CALLER: Restore Regsiters
	# ****************************************************
	popl %ecx
	popl %edx
	popl %eax
	# ****************************************************

    # product = a*b;
	movl %esi, %edx
	imul %edi,%edx
	movl %edx, -4(%ebp)



	# print_result(’*’, a, b, product);

	# ****************************************************
	# CALLER: Save Registers
	# ****************************************************
	pushl %eax
	pushl %edx
	pushl %ecx
	# ****************************************************

	pushl -4(%ebp) 		# 4th parameter (product)
	pushl %edi 		# 3rd parameter (b)
	pushl %esi		# 2nd parameter (a)
	pushl $42 		# 1st parameter (ASCII: *)


	# print_result(’*’, a, b, product);
	call print_result


	addl $2 , %esp # clean parameters from stack
	addl $4 , %esp # clean parameters from stack
	addl $4 , %esp # clean parameters from stack
	addl $4 , %esp # clean parameters from stack

	# ****************************************************
	# CALLER: Restore Regsiters
	# ****************************************************
	popl %ecx
	popl %edx
	popl %eax
	# ****************************************************


	# return (a+b)-(a*b);

	# move sum to eax


	movl -8(%ebp), %eax


	subl -4(%ebp), %eax











	######################################################
	# CALLE: Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	# popl %ebx
	######################################################
	######################################################
	# Epilogue
    ########################################
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	########################################




	ret
