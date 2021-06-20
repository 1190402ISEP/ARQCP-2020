#include <stdio.h>
#include <limits.h>
#include <float.h>

void getFormat(char *a)
{
int i=0;

int length = sizeof(a)/sizeof(a[0]);

    for(i;i<length;i++){
        if(atoi(a[i]) !=0 ||atoi(a[i])!=1){
            if(atoi(a[i]) <0 ||atoi(a[i])>7){
                if(atoi(a[i]) <0 ||atoi(a[i])>9){
                  printf("HexaDecimal");
                }else{
                printf("Decimal");}
            }else{
                printf("Octal");
                }
        }else {
        printf("Binário");
        }
    }
}
