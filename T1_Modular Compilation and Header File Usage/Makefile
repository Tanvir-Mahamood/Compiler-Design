CC = gcc                       # Defines the compiler to use (GCC)
CFLAGS = -I.                   # Compiler flags, here telling GCC to look in current directory for headers
DEPS = hellomake.h             # Lists header file dependencies
OBJS = hellomake.o hellofunc.o # Lists object files needed for final linking

hellomake: hellomake.c hellofunc.c
	gcc -o hellomake hellomake.c hellofunc.c -I.

hellomake2: hellomake.o hellofunc.o
	$(CC) -o hellomake2 hellomake.o hellofunc.o $(CFLAGS)

# hellomake.o: hellomake.c
# 	gcc -c -o hellomake.o hellomake.c -I.

# hellofunc.o: hellofunc.c
# 	gcc -c -o hellofunc.o hellofunc.c -I.

hellomake3: $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

# Pattern Rule:
%.o: %.c $(DEPS) 
	gcc -c -o $@ $< -I.

.PHONY: clean

clean:
	rm -f *.o

