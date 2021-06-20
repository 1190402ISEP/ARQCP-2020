#include <stdio.h>
#include <limits.h>
#include <float.h>

void copy_vec(int *vec1,int *vec2,int n){


int i=0;
    while(i<n){
    *vec2=*vec1;
            printf("\n%d\n",*vec2);
    vec1++;
    vec2++;
    i++;

    }

}
