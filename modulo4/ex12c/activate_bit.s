.section .text

	.global activate_bit 			# int activate_bit(int *ptr, int pos);

activate_bit:

    #prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
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
    movl 8(%ebp),%esi
    movl 12(%ebp),%edi
	######################################################

    pushl %esi
       movl 8(%ebp),%edx # stores the pointer for the vector ptr
       movb 12(%ebp),%cl # stores pos

       rorl %cl, (%edx)    # rotate cl times (right)
       movl (%edx), %esi
       orl $1, (%edx)  # change bit
       roll %cl, (%edx)  # restore rotation

   	andl $1, %esi    # ?
       cmpl $0, %esi
       je editado
       movl $0, %eax
       jmp end

   editado:
       movl $1, %eax

fim:

	######################################################
	# CALLE: Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################
	######################################################
	# Epilogue
    ########################################
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	########################################

	ret
