#include <stdio.h>
#include <limits.h>
#include <float.h>

int where_is (char *str, char c, int *p){
	
	char *temp;
	temp=str;
	int i;
	int size=0;
	int total=0;
	
	while(*temp !='\0'){
		size++;
	}
	for (i = 0; i <size ; i++)
	{
		if(*str==c){
			*p=i;
			p++;
			total++;
			
	}	

		}
			return total;

}
