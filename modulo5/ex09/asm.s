.section .data

.global fun1
.global fun2
.global fun3
.global fun4

.section .text


fun1:
    # prologo
    pushl %ebp
    movl %esp, %ebp

    movl 8(%ebp), %edx #mover o apontador para %edx
    movw (%edx),%ax #retornar o valor apontado por %edx

    jmp end

fun2:
    # prologo
    pushl %ebp
    movl %esp, %ebp

    movl 8(%ebp), %edx #mover o apontador para %edx
    addl $28, %edx # soma o offset para z para ir para o endereço onde este se encontra
    movw (%edx), %ax # copia o valor de z para o ax

    jmp end

fun3:
    # prologo
    pushl %ebp
    movl %esp, %ebp

    movl 8(%ebp), %eax #  apontador para estrutura
    addl $28, %eax # soma o offset para z para ir para o endereço onde este se encontra. Devolve esse endereço

jmp end

fun4:
    # prologo
    pushl %ebp
    movl %esp, %ebp

    movl 8(%ebp), %edx #  apontador para estrutura
    addl $8, %edx # soma o offset para chegar ao 2º elemento da estrutura, que é um apontador para outra estrutura
    movl (%edx), %ecx # o apontado por edx é um apontador, entao copiamos esse apontador para o ecx
    movw (%ecx), %ax # o apontado por ecx é o 1º elemento da estrutura apontada por edx

    jmp end


end:
    # epilogo
    movl %ebp, %esp
    popl %ebp

ret

