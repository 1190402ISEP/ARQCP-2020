int find_matrix(int ** m, int y, int k, int num){

//Apontador de apontador, logo dois **
    int ** ptrLinha=m;

//Apontador Normal, logo *
    int *ptrColuna= *ptrLinha;

    int i,j;

    for(i=0;i<y;i++){ //Para cada linha

        for(j=0;j<k;j++){ //Para cada Coluna

            if((*ptrColuna)==num){

                return 1;//Elemento encontrado

            }
            //Avançar para a próxima Coluna
            ptrColuna++;
        }
        //Próxima Linha
        ptrLinha++;

        //Atualizar o apontador da coluna para a linha seguinte (arr[i][j])->(arr[i+1][j])
        ptrColuna = *ptrLinha;
    }

    return 0; //Se ainda não tinha retornado é porque não encontrou

}