ex10b: count_bits_zero.o main.o
		gcc count_bits_zero.o main.o -o ex10b

count_bits_zero.o: count_bits_zero.s
		gcc -g -Wall -c count_bits_zero.s -o count_bits_zero.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex10b

run: ex10b
		./ex10b