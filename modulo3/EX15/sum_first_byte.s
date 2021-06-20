.section .data
	.global ptrvec
	.global num

.section .text
	.global sum_first_byte


sum_first_byte:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	######################################################

   movl ptrvec, %ebx
   movl $0,%eax
   subl $4,%edx
   incl num

loop:
    decl num
    jz end
    addl $4,%edx
    movb (%edx), %cl
    movsbl %cl , % ecx
    addl %ecx, %eax
    jmp loop

end:
	# Restore Registers
	######################################################
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp
	ret