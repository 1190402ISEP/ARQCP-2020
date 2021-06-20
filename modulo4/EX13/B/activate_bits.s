#prologue
	pushl %ebp
	movl %esp, %ebp

	pushl %ebx				# guarda o valor de %ebx na stack
	pushl %esi				# guarda o valor de %esi na stack
    
	movl 8(%ebp), %eax		# a
	movl 12(%ebp), %esi		# left
	movl 16(%ebp), %edx		# right

    addl $1, %esi			# adiciona 1 ao valor contido em %esi pois apenas começa a contar a partir do bit left (excluindo)
    subl $1, %edx
    


loop_left:
    movl $1, %ecx
    cmpl $32, %esi			# compara o valor contido em %esi com 0 para verificar se já rodou para a direita todos os bits necessários, para começar a ativar os restantes
	je loop_right			# caso o valor contido em %esi seja menor ou igual a 0 salta para one_to_left para começar a ativar os bits restantes

    shl %esi, %ecx
    orl %ecx, %eax			# roda 1 bit para a direita em %eax
    
    incl %esi
    
loop_right:
    movl $1, %ecx
    movl $1, %edx

    shl %edx, %ecx
    orl %ecx, %eax			# roda 1 bit para a direita em %eax
    
    cmpl $0, %edx			# compara o valor contido em %esi com 0 para verificar se já rodou para a direita todos os bits necessários, para começar a ativar os restantes
    je end			        # caso o valor contido em %esi seja menor ou igual a 0 salta para one_to_left para começar a ativar os bits restantes
      
    decl %edx

end:
    popl %esi
    popl %ebx

	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
