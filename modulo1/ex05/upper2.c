#include <stdio.h>
#include <limits.h>
#include <float.h>

void upper2(char *str){


int i=0;
int size=0;
int j=0;

	while (*(str+j)!='\0'){
		size = size + 1;
		j++;	
	}

    for (i=0;i<size;i++){
        if(*str<123 && *str>96){
            *str=*str-32;
            printf("%c",*str);
        }else{
			printf("%c",*str);
		}
        str++;
    }
    printf("\n");

}
