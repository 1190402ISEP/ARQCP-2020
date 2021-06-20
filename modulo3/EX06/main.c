#include <stdio.h>
#include "encrypt.h"

char *ptrvec;

int main(void){

	char vec[]="";
	ptrvec=vec;

	printf("%d",encrypt());
printf("\n");

	int size=sizeof(vec)/sizeof(vec[0]);

int i;
for (i = 0; i < size; i++)
{
	printf("%c",vec[i]);
}
printf("\n");

	return 0;
}
