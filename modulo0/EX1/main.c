#include <stdio.h>
#include <limits.h>
#include <float.h>
int main(){
    printf("\n Exercise1:\n");

printf("\nTamanho de Char: %zu bytes\n",sizeof(char));
printf("\nTamanho de Int: %zu bytes\n",sizeof(int));
printf("\nTamanho de Unsigned Int: %zu bytes\n",sizeof(unsigned int));
printf("\nTamanho de Long: %zu bytes\n",sizeof(long));
printf("\nTamanho de Short: %zu bytes\n",sizeof(short));
printf("\nTamanho de Long Long: %zu bytes\n",sizeof(long long));
printf("\nTamanho de Float: %zu bytes\n",sizeof(float));
printf("\nTamanho de Double: %zu bytes\n",sizeof(double));
return 0;
}
