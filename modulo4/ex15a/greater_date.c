#include <stdio.h>

unsigned int greater_date(unsigned int data1, unsigned int data2){

    short year1=(short) (data1>>8)|(data1<<(32-8));
    short year2=(short) (data2>>8|(data2)<<(32-8));

    if(year1>year2){
        return data1;
    }else if(year1<year2){
        return data2;
    }

    char month1=(char) (data1>>24)|(data1<<(32-24));
    char month2=(char) (data2>>24)|(data2<<(32-24));

    if(month1>month2){
        return data1;
    }else if(month1<month2){
        return data2;
    }

    char day1=(char) data1;
    char day2=(char) data2;

    if(day1>day2){
        return data1;
    }else if(day1<day2){
        return data2;
    }



return data1;

}
