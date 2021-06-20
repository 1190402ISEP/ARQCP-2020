#include <stdlib.h>

int **new_matrix(int lines, int columns){


    //a matriz é um array de apontadores, cada elemento é apontador para outro
    //array   --> vou precisar de 4* nº de linhas
    int **ptrmatrix=(int **) malloc(lines * sizeof(int));

    int **ptrmatrix1=ptrmatrix; //guardar o endereço de memória inicial


    int i;// para  o índice da matriz

    for (i=0;i<lines;i++){

        //reserva espaço para as colunas da matriz e inicializa a 0
        *ptrmatrix1 = (int *) calloc(columns , sizeof(int));

        ptrmatrix1++;//avançar para a próxima linha
    }

    return ptrmatrix; //devolva apontador para a matriz
}