.section .data

	# Constants
	.equ STUDENT_AGE_OFFSET, 0 			# char age; - 1 byte
	.equ STUDENT_NUMBER_OFFSET, 2		# short number; - 2 bytes
	.equ STUDENT_GRADES_OFFSET, 4		# int grades[10]; - 10 x 4 bytes
	.equ STUDENT_NAME_OFFSET, 44		# char name[80]; - 80 x 1 byte
	.equ STUDENT_ADDRESS_OFFSET, 124	# char address[120]; - 120 x 1 byte


.section .text

	# int locate_greater(Student* s, int minimum, int* greater_grades);
	.global locate_greater

locate_greater:

	# Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	# Save Registers
    pushl %ebx
    pushl %esi
    pushl %edi

   movl 8(%ebp), %ebx # Aluno
   movl 12(%ebp), %ecx # Nota Mínima
   movl 16(%ebp), %edx # Vetor de notas maiores que a Mínima
   addl $4, %ebx # move o apontador para o inicio do vetor de notas do aluno
   movl $0, %esi # limpa esi - contador de posições
   movl $0, %eax # limpa eax
   movl $0, %edi # limpa edi

#em cada nota do vetor de notas da estrutura aluno ele verifica se a nota é
#maior que o valor mínimo

loop:
    cmpl $10,%esi
    je end

    movl (%ebx, %esi, 4) , %edi #nota fica no %edi
    cmpl %ecx, %edi
    jg greater

    incl %esi #incrementa contador (i- posição a iterar)
    jmp loop


greater:
    incl %eax
    movl %edi,(%edx)
    incl %esi #incrementa contador (i- posição a iterar)
    addl $4,%edx #avança para a próxima posição do vetor de notas maiores que a mínima
    jmp loop


end:
	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret
