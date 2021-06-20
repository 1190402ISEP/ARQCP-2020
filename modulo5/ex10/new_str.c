#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *new_str(char str[80]){

    int sizeOfString = strlen(str); //tamanho da string

    sizeOfString++; //Somar 1 para o zero final

    char* ptr_char; // apontador para a posição inicial do espaço a alocar

    ptr_char = (char*) malloc(sizeOfString * sizeof(char));

    int i = 0;
    for(i = 0; i < sizeOfString-1; i++){
        ptr_char[i] = str[i]; //copiar caracteres
    }
    ptr_char[sizeOfString-1] = '\0';//inserir o zero no final da string


    return ptr_char;

}