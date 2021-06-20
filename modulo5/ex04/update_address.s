.section .data

	# Constants
	.equ STUDENT_AGE_OFFSET, 0 			# char age; - 1 byte
	.equ STUDENT_NUMBER_OFFSET, 2	# short number; - 2 bytes
	.equ STUDENT_GRADES_OFFSET, 4		# int grades[10]; - 10 x 4 bytes
	.equ STUDENT_NAME_OFFSET, 44	# char name[80]; - 80 x 1 byte
	.equ STUDENT_ADDRESS_OFFSET, 124	# char address[120]; - 120 x 1 byte


.section .text

	# void update_address(Student* s, char* new_address)
	.global update_address

update_address:
	
	# Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	movl 8(%ebp), %esi # pointer da estrutura S
	movl 12(%ebp), %edi # pointer do address

	leal STUDENT_ADDRESS_OFFSET(%esi,1) ,%eax

        #offset (ponto inicial) , pointer estrutura, index,tamanho de cada elemento -> destino
        # equivale a leal STUDENT_AGE_OFFSET(%esi,1) ,%eax
        #eax contem o array de address da estrutura

start:
    movb (%edi),%bl # move o char para %bl

    cmpb $0,%bl #verifica se é o fim da string
    je end      #se for salta para o final

    movb %bl,(%eax) #se não é o final então copiar o char para a estrutura

    incl %edi #incrementa o pointer para o address
    incl %eax #incrementa o pointer para a estrutura->address

    jmp start

end:

    movb $0,(%eax) #insere o fim da string na estrutura->address

	# Restore Regiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret
