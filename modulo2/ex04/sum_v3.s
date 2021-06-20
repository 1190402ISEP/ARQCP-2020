.section .data
.global op1
.global op2
op3: #declarar op3 - deve ser declarada primeiro
    .int 0 # inicializar op3 
op4: #declarar op4 - deve ser declarada primeiro
    .int 0 # inicializar op4
    
.global op3 # tornar op3 global
.global op4 # tornar op4 global
	
.section .text

	.global sum_v3
	
sum_v3:
	# prologue
	
	pushl %ebp 
	movl %esp, %ebp
	
	
	movl op4,%eax # move o valor de op4 para o registo eax
	addl op3,%eax # soma op3 ao valor do registo eax
	subl op2,%eax # subtrai op2 ao valor do registo eax
	addl op1,%eax # adiciona op1 ao valor do registo eax
	
		
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
	
	
