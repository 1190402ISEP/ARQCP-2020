.section .text

	.global calc 			# int calc(int a, int *b, int c);

calc:


	######################################################
	# Prologue
	########################################
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	########################################
    subl $4,%esp

	######################################################
	# CALLE: Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################


	######################################################
	# Parametros
	######################################################
	movl 8(%ebp), %esi 			# int a = 1;
	movl 12(%ebp), %edi 		# int* b = {2};
	movl 16(%ebp), %ebx 		# int c = 3;
	######################################################

	# VARIABLES:

	# a = %esi
	# *b = %edi
	# c = %ebx
	# b = %ecx
	# z = %esp
	# result -> %eax

	# get the value pointed by *b
    movl (%edi), %ecx

	# move b to %edx
    movl %ecx,-4(% ebp )

	# subtract a to z
	subl %esi,-4(% ebp )

	# multiply c * z and put it in eax
	# move c o eax
    movl %ebx,%eax

	# multiply z by c (eax)
    imul -4(% ebp ) ,%eax

	# subtract 2 to eax
    subl $2,%eax

	######################################################
	# CALLE: Restore Regsiters
	######################################################
	popl %ebx
	popl %edi
	popl %esi
	######################################################
	######################################################
	# Epilogue
    ########################################
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	########################################

	ret
