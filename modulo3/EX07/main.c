#include <stdio.h>
#include "asm.h"

char *ptr1;



int main(void){
	int num;
	char str[] = "ARQCP";
	ptr1=str;
	num=encrypt();
	printf("%s\n", str);
	printf("%d\n", num);
	num=decrypt();
	printf("%s\n", str);
	printf("%d\n", num);
	return 0;
}
