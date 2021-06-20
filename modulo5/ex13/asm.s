.section .data

.global count_odd_matrix

.section .text

count_odd_matrix:
    # prologo
    pushl %ebp
    movl %esp, %ebp
# como usamos o ebx, esi e edi, damos push de todos
    pushl %ebx
    pushl %esi
    pushl %edi

    movl 8(%ebp), %edx # 1º parametro apontador para matriz
    movl 12(%ebp), %ecx # 2º: numero de linhas
    movl 16(%ebp), %edi # 3º: numero de colunas
    movl $0, %eax # inicia o contador resultado

loop_linhas:
    cmpl $0, %ecx #chega ao fim da matriz se for 0
    je end
    movl (%edx), %ebx #apontador para iterar cada coluna da linha
    jmp loop_colunas

loop_colunas:
    cmpl $0,%edi #quando chegar ao fim da coluna é 0
    je proxima_linha

    movl (%ebx), %esi
    andl $1, %esi # vai buscar o bit menos significativo do inteiro
    cmpl $1, %esi #Se o resultado do and for 1 significa que o nº é par
    je nr_par

    decl %edi # decrementa o numero de colunas da linha que faltam verificar
    addl $4, %ebx # proximo elemento da linha (ou seja, proxima coluna)
    jmp loop_colunas

nr_par:
    incl %eax
    decl %edi # decrementa o numero de colunas da linha que faltam verificar
    addl $4, %ebx # proximo elemento da linha (ou seja, proxima coluna)
    jmp loop_colunas

proxima_linha:
    movl 16(%ebp), %edi #repor o nº de colunas
    addl $4, %edx #próxima linha
    decl %ecx #decrementa o nº de linhas que ainda faltam verificar
    jmp loop_linhas

end:
# pop dos registos guardados no inicio da função
    popl %edi
    popl %esi
    popl %ebx
# epilogo
    movl %ebp, %esp
    popl %ebp
    ret
