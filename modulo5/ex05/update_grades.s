.section .data
.equ OFFSETGRADES, 4 # número de bytes que tem de avançar para chegar ao início do vetor int [] grades
.section .text
.global update_grades

update_grades:
    # prologo
    pushl %ebp
    movl %esp, %ebp
    pushl %ebx

    movl 8(%ebp),%ebx  #pointer estrutura
    movl 12(%ebp),%edx #pointer novas notas
    movl $0,%ecx #contador

    addl $OFFSETGRADES,%ebx #avançar para a posição inicial do array grades na estrutura

loop:
    cmpl $10, %ecx
    je end

    movl (%edx,%ecx, 4), %eax # Copia o valor em grades[ecx] para o eax
          #arr,[0+i] ,size(arr[i])=4
    #move o valor em %edx (novas notas) para o index %ecx , cada elemento tamanho 4
    # offset(inicial,posicao,tamanho de cada elemento), destino
    #neste caso o offset = inicial

    movl %eax, (%ebx) #mover %eax para o apontado de %ebx - posição no array da estrutura

    addl $4,%ebx #passa à próxima grade da estrutura
    incl %ecx #vai aumentar o nosso indice para o movl / contador

    jmp loop


end:
    popl %ebx # pop ebx antigo
    movl %ebp, %esp
    popl %ebp
ret
