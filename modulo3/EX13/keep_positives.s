.section .data

	# Global Variables
	.global num
	.global ptrvec

.section .text # section identifier : code

	.global keep_positives

keep_positives:

	# Prologue
	########################################
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	########################################


	# Save Registers
	######################################################
	pushl %esi
	######################################################

    movl ptrvec, %esi
    movl num,%edx
    movl $0,%ecx

loop:
    cmpl %edx,%ecx
    je fim

    cmpl $0,(%esi)
    jge proximo
    movl %ecx,(%esi)

proximo:
    addl $4, %esi
    incl %ecx
    jmp loop


fim:
	# Restore Regsiters
	######################################################
	popl %esi
	######################################################

	# Epilogue
    ########################################
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	########################################

	ret