.section .data
	.global base
	.global height
	
	.equ CONST ,2
.section .text

	.global getArea
		
getArea:

	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	
	movl base,%eax 		#move o valor da base para o registo %eax
	movl height,%ecx 	#move o valor da altura para o registo %ecx
	
	mul %ecx 			#multiplicar %eax por %ecx
	
	movl $CONST,%ecx	#move o valor da constante para %ecx
	
	divl %ecx			#divide %eax por %ecx
	
	
	
	
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	
	ret
