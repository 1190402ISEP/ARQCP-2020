int count_bits_zero(int x)
{
    int contador=0;
    int c;
    int temp;

    for (c=31;c>=0;c--){
        temp = x>>c; //o shift guarda o 1 ou zero arr[i]
    if(temp & 1){     //se for 1 o valor n faz nada pois se quer guardar os que são zero

    }else{
     contador++;
    }

    }

  return contador;

}
