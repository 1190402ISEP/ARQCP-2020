ex12b: activate_bit.o main.o
		gcc activate_bit.o main.o -o ex12b

activate_bit.o: activate_bit.s
		gcc -g -Wall -c activate_bit.s -o activate_bit.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex12b

run: ex12b
		./ex12b