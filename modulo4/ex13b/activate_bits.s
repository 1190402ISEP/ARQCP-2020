.section .text

	.global activate_bits	# int

activate_bits:
#prologue
	pushl %ebp
	movl %esp, %ebp

	pushl %ebx				# guarda o valor de %ebx na stack
	pushl %esi				# guarda o valor de %esi na stack

	movl 8(%ebp), %eax		# copia o valor contido na primeira variável (a) para o registo %eax
	movl 12(%ebp), %esi		# copia o valor contido na segunda variável (left) para o registo %esi
	movl 16(%ebp), %edx		# copia o valor contido na terceira variável (right) para o registo %edx
	movb 16(%ebp), %cl		# copia o valor contido na terceira variável (right) para o registo %cl

    movb $0,%al
    movb %esi,%bl

    cmpb $31-%bl
    jl loop_direita

    loop_esquerda:
    shl %bl,%al
    decl %bl

    loop_direita:
    je %al,%cl
    shl %cl,%al
    decl %cl
    jmp end

end:
    orb %al,%eax

    popl %esi
    popl %ebx

	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
