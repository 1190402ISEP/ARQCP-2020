.section .data

.global return_unionB_b
.equ structSize, 36
.equ offsetUnion, 20

.section .text

return_unionB_b:

# prologo
    pushl %ebp
    movl %esp, %ebp


    pushl %ebx
    pushl %esi

    movl 8(%ebp),%edx # structA ** matrix
    movl 12(%ebp),ecx # int i
    movl 16(%ebp),ebx # int j

    movl(%edx,%ecx,4), %esi #copiamos o endereço da linha

    imull $structSize,%ebx #avança até à coluna %ebx
    addl %ebx,%esi #colunas a avançar até chegar ao pretendido

    addl $20,%esi # agora no esi está o apontador para matriz[i][j].ub

    movb (%esi),%al # copia o valor do char apontado por esi para o al

    popl %esi
    popl %ebx

# epilogo
    movl %ebp, %esp
    popl %ebp
ret

