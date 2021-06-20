#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "palindrome.h"

int main()
{

char name[]="ANA";
char *pointer= name;
int validation=palindrome(pointer);

    if(validation==0){
    printf("\nNão é Palindromo\n");
    }else{
    printf("\nÉ Palindromo\n");
    }

return 0;
}
