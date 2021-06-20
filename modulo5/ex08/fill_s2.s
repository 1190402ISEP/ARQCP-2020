.section .data
.section .text


.global fill_s2


fill_s2:

    pushl %ebp
    movl %esp, %ebp

    pushl %ebx
    pushl %esi

    movl 8(%ebp), %eax #-> s2 *s  apontador da estrutura
    movl 12(%ebp), %ebx #-> short vw[3] array de 3 shorts
    movl $0,%esi #contador
    movl $0,%ecx

loop_shorts:
    cmpl $3, %esi
    je inteiro
    movw (%ebx,%esi,2), %cx
    movw %cx , (%eax)
    addl $2, %eax
    incl %esi
    jmp loop_shorts


inteiro:
    addl $2,%eax
    movl 16(%ebp), %ecx
    movl %ecx , (%eax)  #guardar na estrutura
    addl $4,%eax
    movl $0,%esi

    movl 20(%ebp), %edx

loop_chars:
    cmpl $3,%esi
    je end

    movb (%edx,%esi,1),%cl
    movb %cl, (%eax)
    addl $1, %eax
    incl %esi
    jmp loop_chars

end:
    popl %esi
    popl %ebx
    movl %ebp, %esp
    popl %ebp

ret
