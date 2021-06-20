#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "copy_vec.h"

int main()
{

int vec1[]={1,2,3,4,5,6,7,8,9};
int n=9;
int vec2[9]={0};
int *pointer1=vec1;
int *pointer2=vec2;
        copy_vec(pointer1,pointer2,n);
return 0;
}
