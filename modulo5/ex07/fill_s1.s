.section .data


.section .text
	.global fill_s1 #void fill_s1(s1 *s, int vi, char vc, int vj, char vd);

fill_s1:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	######################################################
    movl 8(%ebp), %esi
    movl 12(%ebp), %eax
    movb 16(%ebp), %dl
    movl 20(%ebp), %ebx
    movb 24(%ebp), %cl


    movl %eax,0(%esi)
    movb %dl,4(%esi)
    movl %ebx,8(%esi)
    movb %cl,12(%esi)

	# Restore Regsiters
	######################################################
	popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
