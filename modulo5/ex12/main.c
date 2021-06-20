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
            m[i][j] = random_num (1, 20);
        }
    }
}

int main(){
    int nLinhas = 3;
    int nColunas = 3;
    int num = 9;

    //Aloca Dinamicamente a matriz e retorna o endereço
    int ** matrix = new_matrix(nLinhas, nColunas);
    printf("Address of matrix = %p\n", (*matrix));

    //Preenche de forma Random a Matriz
    preencher_matriz(matrix, nLinhas, nColunas);

    //Imprimir toda a matriz
    printf("\nMatriz m:\n");
    int i, j;
    for (i = 0; i < nLinhas; i++){
        for(j = 0; j < nColunas; j++){
            printf("%d  ", matrix[i][j]);
        }
        printf("\n");
    }


    //Procura o nº na matriz

    int resultado = find_matrix(matrix, nLinhas, nColunas, num);

    //output: 1 se encontra 0 se não encontra
    printf("ENCONTRADO?: %d (1 encontrou, 0 não encontrou)\n", resultado);

    return 0;

}