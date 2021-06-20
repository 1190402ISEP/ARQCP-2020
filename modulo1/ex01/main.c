#include <stdio.h>
#include <limits.h>
#include <float.h>

int main()
{
  int x=5;
  int* xPtr = &x;
  float y = *xPtr + 3;
  int vec[]={10,11,12,13};
printf("The value of x and y\n");
  printf("%d\n%f\n",x,y);
  printf("--\n");
  printf("The address (in Hexadecimal) of x and xptr\n");
  printf("%p\n%p\n",&x,&xPtr);
  printf("--\n");
  printf("The value pointed by xptr\n");
  printf("%d",*xPtr);
  printf("--\n");
  printf("The address of vec\n");
  printf("%p\n",&vec);
  printf("--\n");
  printf("The values of vec [0], vec [1], vec [2] and vec [3]\n");
  printf("%d _%d _%d _%d \n",vec[0],vec[1],vec[2],vec[3]);
  printf("--\n");
  printf("The addresses of vec [0], vec [1], vec [2]and vec [3]\n");
  printf("%p _%p _%p _%p \n",&vec[0],&vec[1],&vec[2],&vec[3]);
  printf("--\n");


printf("a) Informacao esperada para linux com arquitetura 32bits\n");
printf("b) Os endereços das várias posicoes do vetor sao seguidos em memoria\n");
printf("c) Seria de esperar diferentes endereços em computadores com diferentes arquiteturas pois teriam diferente valor de bits por tipo de variável\n");


return 0;






}
