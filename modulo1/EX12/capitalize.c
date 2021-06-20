#include <stdio.h>
#include <limits.h>
#include <float.h>

void capitalize(char *str){
	
	char *pointer_temp;
	
	pointer_temp = str;
int i;
			if(*pointer_temp>='a' && *pointer_temp<='z'){
				*pointer_temp= *pointer_temp- 32;
			}

	pointer_temp++;
	
			for (i = 0; *pointer_temp != '\0' ; i++){
				if(*pointer_temp == ' '){
					pointer_temp++;
					if(*pointer_temp>='a' && *pointer_temp<'z'){
						*pointer_temp= *pointer_temp - 32;
					}
				}
				pointer_temp++;
			}
			
		}
