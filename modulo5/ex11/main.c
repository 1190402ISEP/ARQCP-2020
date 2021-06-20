#include <stdio.h>
#include "new_matrix.h"

int main(){

    int ** matrix = new_matrix(5,6);
    printf("Address of matrix = %p\n", (*matrix));


    return 0;

}