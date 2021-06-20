.section .data
	.global ptrvec
	.global num
	.global x

.section .text
	.global  vec_search #returns pointer to int, receives void


#searches the short int x in an array of short ints, pointed by ptrvec, with num elements, and returns the
#memory address of it’s first occurrence or zero if not found.

vec_search:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
    pushl %ebx
    push %esi           #registo que aponta para o vetor
    pushl %edi

    cmpl $0, num        #compara com zero para verificar se não se trata do fim de uma string (array de char, que tambem pode ser short, ou int)
    jne start

start:
    movl $0,%eax        #limpeza do registo que armazena o resultado
    movl $0,%edx
    movl $0,%edi
    movl $0,%ecx
    movl ptrvec, %esi
    movl num, %ebx #valor total de elementos
    movw x,%cx

loop:
    movw (%esi), %dx
    cmpw %cx, %dx       #comparar o valor que se quer procurar com o valor da posicao do vetor
    je end              #caso seja igual,

    cmpl %ebx,%eax
    je not_found

    addl $2, %edi
    addl $1,%eax
    addl $2, %esi
    jmp loop

not_found:
   movl $0, %eax
   jmp end_2

end:
    movl ptrvec,%ebx
    addl %edi,%ebx
    movl %ebx,%eax

end_2:
    popl %edi
    popl %esi
    popl %ebx

	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret