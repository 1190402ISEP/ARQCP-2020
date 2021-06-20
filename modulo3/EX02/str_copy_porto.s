.section .data

	# Global Variables
	.global ptr1
	.global ptr2

.section .text # section identifier : code

	.global str_copy_porto

str_copy_porto:

	# Prologue
	########################################
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	########################################


	# Save Registers
	######################################################
	# pushl %ebx
	pushl %esi
	pushl %edi
	######################################################



	# 48 is the ASCII code for 0
	# 56 is the ASCII code for 8

	movl	$0,			%eax 	# clean EAX - this will be our counter
	movl 	$0, 		%ecx

	movl 	ptr1,		%esi 	# move the address of the pointer PTR1 to %esi
	movl 	ptr2,		%edi 	# move the address of the pointer PTR1 to %edi

start:

	movb	(%esi),%cl 	# move the first letter of PTR1 to %cl
	movb	%cl,(%edi) 		# if the letter was not a zero, copy the letter to the string 2

	cmpb 	$0, 		%cl 	# check is it is the end of the string
	je		end_of_function

	cmpb 	$48, 		%cl 	# compare the ASCII 48 (zero) with the current letter of the array
	je 	zero_was_found

	cmpb $118,%cl
	je change_porto
	
	movb	%cl, (%edi) 		# if the letter was not a zero, copy the letter to the string 2
	jmp 	next_letter


zero_was_found:
	movb	$56, 	(%edi)


next_letter:
	addl 	$1, 	%esi
	addl 	$1, 	%edi
	jmp start
	
change_porto:
	movb $98,%cl
	movb %cl, (%edi) 
	jmp next_letter

end_of_function:


	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	# popl %ebx
	######################################################

	# Epilogue
    ########################################
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	########################################


	ret
