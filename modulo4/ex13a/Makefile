ex13a: activate_bits.o main.o
		gcc activate_bits.o main.o -o ex13a

activate_bits.o: activate_bits.c
		gcc -g -Wall -c activate_bits.c -o activate_bits.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex13a

run: ex13a
		./ex13a