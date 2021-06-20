.section .text

	.global greater_date	# unsigned int

greater_date:

	#prologue
	pushl %ebp
	movl %esp, %ebp
	
	movl 8(%ebp), %ecx		# copia o valor contido na primeira variável (date1) para o registo %ecx
	movl 12(%ebp), %edx		# copia o valor contido na primeira variável (date2) para o registo %edx
	
    #ANO
    rorl $8,%ecx
    rorl $8,%edx

    cmpw %cx,%dx
    jg segunda_maior
    jl primeira_maior


    #MÊS
    rorl $16,%ecx
    rorl $16,%edx


    cmpb %cl,%dl
    jg segunda_maior
    jl primeira_maior


    #DIA
    rorl $8,%ecx
    rorl $8,%edx

    cmpb %cl,%dl
    jg segunda_maior
    jl primeira_maior

segunda_maior:
    movl 12(%ebp),%eax     # coloca a segunda data para o registo %eax de retorno
    jmp fim                # vai para o fim da funcao

primeira_maior:
    movl 8(%ebp),%eax      # coloca a primeira para o registo %eax de retorno

fim:
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
