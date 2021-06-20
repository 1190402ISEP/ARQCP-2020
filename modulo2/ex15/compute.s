.section .data
	.global A
	.global B
	.global C
	.global D

.section .text

	.global compute
		
compute:

	# prologue
	pushl %ebp 			    # save previous stack frame pointer
	movl %esp, %ebp 	    # the stack frame pointer for sum function
	

    movl A,%eax             #move A para o registo %eax
    movl B,%ecx             #move b para o registo %ecx
    mul %ecx                #multiplica %eax por %ecx (A*B)

    addl C,%eax             #soma C a %eax

    movl D,%ecx             #move D para o registo %ecx
    cmp $0,%ecx             #efetua a comparação entre %ecx e 0 para verificar se o D é zero
    je divisao_por_zero     #caso se verifique a comparação anterior jum para divisão_por_zero


    cdq                     #extende o sinal no %edx (obrigatório inicializar)

    idivl %ecx             # %ex:%eax / %ecx

    addl $0,%edx            #adiciona 0 a %edx
    jmp fim                 #efetua um jump para o fim

    divisao_por_zero:       #zona de jump onde se faz o tratamento caso o valor de D seja 0

    movl $0,%eax            #move 0 para o registo %eax
    jmp fim                 #efetua um jump para o fim

    fim:                    #termina a função

	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	
	ret
