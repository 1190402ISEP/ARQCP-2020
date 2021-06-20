#include <stdio.h>
#include <limits.h>
#include <float.h>


int palindrome(char *str){

    int check=1;
    int i;
    /*j==size*/
    int j=0;
    char *pointer2;
    pointer2=str;
    
        while(*pointer2 != '\0'){
            j++;
            pointer2++;
        }
        
	for(i=0;i<(j/2);i++){
        if (*str == ' ' || *str== '!' || *str=='.' ||*str == '?') {

            if (*pointer2 == ' ' || *pointer2== '!' || *pointer2=='.' ||*pointer2 == '?') {

                    continue;

            }

          j+=2;

            continue;

        }
        if(*pointer2 == ' ' || *pointer2== '!' || *pointer2=='.' ||*pointer2 == '?'){
            if (*str == ' ' || *str== '!' || *str=='.' ||*str == '?') {
                continue;
            }
          i--;
          j++;
            continue;
        }
            if(*str == *pointer2){
                check=1;
                j--;
                }else{

                check=0;

                return check;

            }

        }
        	return check;
	}
    
