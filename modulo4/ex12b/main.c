#include <stdio.h>
#include "activate_bit.h"

int main(void){

	int number = 0;

	int* ptr = &number;

	int pos = 0;

	int result = activate_bit(ptr, pos);

	printf("Result = %d\n", result);

    printf("\n Num = %d\n",number);

	return 0;
}