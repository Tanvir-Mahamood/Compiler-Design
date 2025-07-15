main:
	gcc -c -o ./lib/hellomake.o ./src/hellomake.c -I./include
	gcc -c -o ./lib/hellofunc.o ./src/hellofunc.c -I./include
	gcc -o ./build/hello ./lib/hellomake.o ./lib/hellofunc.o -I./include

clean:
	rm -f ./build/*
