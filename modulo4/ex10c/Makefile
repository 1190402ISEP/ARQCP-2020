ex10c: count_bits_zero.o vec_count_bits_zero.o main.o
		gcc count_bits_zero.o vec_count_bits_zero.o main.o -o ex10c

count_bits_zero.o: count_bits_zero.s
		gcc -g -Wall -c count_bits_zero.s -o count_bits_zero.o

vec_count_bits_zero.o: vec_count_bits_zero.s
		gcc -g -Wall -c vec_count_bits_zero.s -o vec_count_bits_zero.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex10c

run: ex10c
		./ex10c