#include <stdio.h>
#include <stdlib.h>
#include "asm.h"

int random_num(int min, int max){
    int number = min + rand() % (max - min);
    return number;
}

void preencher_matriz(int ** m, int nLinhas, int nColunas){
    int i, j;
    for (i = 0; i < nLinhas; i++){
        for(j = 0; j < nColunas; j++){
            m[i][j] = random_num (1, 40);
        }
    }
}

int main(){
     int nLinhas = 3;
     int nColunas = 3;

     //Aloca as matrizes dinamicamente
     int ** matrix1 = new_matrix(nLinhas, nColunas);
     int ** matrix2 = new_matrix(nLinhas, nColunas);


     //Preenche as Matrizes com Valores Aleatórios
     preencher_matriz(matrix1, nLinhas, nColunas);
     preencher_matriz(matrix2, nLinhas, nColunas);

     //Imprime a matriz 1
     printf("\nMatriz 1:\n");
     int i, j;
     for (i = 0; i < nLinhas; i++){
         for(j = 0; j < nColunas; j++){
             printf("%d  ", matrix1[i][j]);
         }
         printf("\n");
     }

     //Imprime a matriz 2
     printf("\nMatriz 2:\n");
     for (i = 0; i < nLinhas; i++){
         for(j = 0; j < nColunas; j++){
             printf("%d  ", matrix2[i][j]);
         }
         printf("\n");
     }

     //Adiciona as matrizes, devolvendo o apontador para o inicio da matriz reasultado. Imprime a matriz
     int ** result = add_matrixes(matrix1, matrix2, nLinhas, nColunas);
     printf("\nSoma das matrizes 1 e 2:\n");
     for (i = 0; i < nLinhas; i++){
         for(j = 0; j < nColunas; j++){
             printf("%d  ", result[i][j]);
         }

         printf("\n");
     }

     return 0;
}