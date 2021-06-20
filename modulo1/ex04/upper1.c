#include <stdio.h>
#include <limits.h>
#include <float.h>

void upper1(char *str){

int i=0;
int size=0;
int j=0;
	while (*(str+j)!='\0'){
		size = size + 1;
		j++;	
	}
	
    for (i=0;i<size;i++){
        if(str[i]<123 && str[i]>96){
            str[i]=str[i]-32;
            printf("%c",str[i]);
        } else {
			printf("%c",str[i]);
		}
    }
    printf("\n");

}
