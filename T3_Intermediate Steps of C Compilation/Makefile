CC = gcc                       # Defines the compiler to use (GCC)
CFLAGS = -I.                   # Compiler flags, here telling GCC to look in current directory for headers
DEPS = hellomake.h             # Lists header file dependencies
OBJS = hellomake.o hellofunc.o # Lists object files needed for final linking

# Targets:all (default target)

# Compiles HelloWorld.c directly into an executable named HelloWorld
# Preprocesses the source file, outputting to HelloWorld.i. Expands macros, includes headers.
# Generates assembly code in Intel syntax, outputting to HelloWorld.s
# Assembles the assembly code into an object file HelloWorld.o
# Disassemble the object file into human-readable format (HelloWorld.dump).
# Compiles directly to object file (alternative method)
# Disassembles that object file (HelloWorld2.dump)

all:
	gcc -o HelloWorld HelloWorld.c 
	gcc -E HelloWorld.c > HelloWorld.i 
	gcc -S -masm=intel HelloWorld.i 
	as -o HelloWorld.o HelloWorld.s 
	objdump -M intel -d HelloWorld.o > HelloWorld.dump 
	gcc -c -o HelloWorld2.o HelloWorld.c 
	objdump -M intel -d HelloWorld2.o > HelloWorld2.dump 


.PHONY: clean

clean:
	rm -f *.o
	rm -f *.i
	rm -f *.s
	rm -f *.dump
	rm -f HelloWorld

