#include <stdio.h>
#include "swapBytes.h"

short s=0;

int main(void) {
	printf("Valor s:");
	scanf("%hd",&s);
	short res=swapBytes();
	printf("swap= %d:\n",res);
	return 0;
}

