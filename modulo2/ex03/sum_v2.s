.section .data
.equ CONST ,15
.global op1
.global op2
.global total
.section .text
.global sum_v2
sum_v2:

# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function

movl $CONST, %eax #Atribui o valor de CONST ao registo eax
movl $CONST,%ebx #Atribui o valor de CONST ao registo ebx

subl op1,%eax #Atribui ao registo eax o valor de eax-op1
subl op2,%ebx #Atribui ao registo eax o valor de ebx-op2

subl %ebx,%eax #Atribui ao registo eax o valor de eax-ebx


# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret
