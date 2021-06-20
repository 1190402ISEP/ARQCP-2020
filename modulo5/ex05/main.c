#include <stdio.h>
#include <limits.h>
#include <float.h>
#include <string.h>
#include "ex5.h"

int main(void) {
    Student vec[5];

    Student * s = vec;

    char nome [80] = "Antonio";
    char *ptrnome = nome;
    char address [120] = "Rua 3, 454";
    char *ptraddress = address;
    fill_student(s, 18, 100, ptrnome, ptraddress);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);
    s++;

    strcpy(ptrnome, "Ana");
    strcpy(ptraddress,"Rua 5, 123");
    fill_student(s, 19, 101, ptrnome, ptraddress);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);
    s++;

    strcpy(ptrnome, "Raul");
    strcpy(ptraddress,"Rua 15, 153");
    fill_student(s, 19, 102, ptrnome, ptraddress);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);
    s++;

    strcpy(ptrnome, "Nuno");
    strcpy(ptraddress,"Rua 979, 13");
    fill_student(s, 19, 103, ptrnome, ptraddress);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);
    s++;

    strcpy(ptrnome, "Nelson");
    strcpy(ptraddress,"Rua Prg, 0");
    fill_student(s, 19, 104, ptrnome, ptraddress);
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);

    //Nova morada e apontador para a mesma
    char new_address_string [120] = "Rua do Isep,123";
    char *new_address = new_address_string;
    //Chama a função que substitui a address
    update_address(s, new_address);
    //Imprime o ultima estrutura, pois é esta que é passada por parametro
    printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n\n", s->name, s->age, s->number, s->address);

    s->age = 28;
    s->number = 10;
    strcpy(s->name, "Couto");
    strcpy(s->address, "Porto");

    // int oldGrades[10] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
    int newGrades[10] = {9, 9, 9, 9, 9, 9, 9, 9, 9, 9};

    Student *sPointer = &s;

    update_grades(sPointer, newGrades);

    printf("%s\n", "Grades updated!");

    int i = 0;
    while (i < 10) {
        printf("%d ", sPointer->grades[i]);
        i++;
    }

    return 0;

}