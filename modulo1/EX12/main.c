#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "capitalize.h"

int main()
{
char texto[17] = "bem vindo a arqcp";

char *str;
str=texto;

capitalize(str);

int i;
	for (i = 0; i<17 ; i++)
	{
		printf("%c\n",*str);
		str++;
	}
	


return 0;
}
