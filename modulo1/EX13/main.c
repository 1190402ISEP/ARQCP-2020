#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "where_is.h"

int main()
{

char string[] = "INFORMATICA";
char *str;
str=string;
char c='A';
int size=sizeof(string)/sizeof(string[0]);
int array[size];
int *p;
p=array;
int i;


	int total= where_is(str,c,p);
	printf("Total od ocurrences: %d\n",total);
	
	for (i = 0; i<size; i++)
	{
		printf("Index: %d\n",array[i]);
	}
	

return 0;
}
