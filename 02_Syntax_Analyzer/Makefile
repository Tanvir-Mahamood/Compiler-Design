main0:
	bison -d prog0.y
	flex prog0.l
	gcc lex.yy.c prog0.tab.c -o parser.exe
	parser.exe < input0.txt > output0.txt

main1:
	bison -d prog1.y
	flex prog1.l
	gcc lex.yy.c prog1.tab.c -o parser.exe
	parser.exe < input1.txt > output1.txt

main2:
	bison -d prog2.y
	flex prog2.l
	gcc lex.yy.c prog2.tab.c -o parser.exe
	parser.exe < input2.txt > output2.txt

main3:
	bison -d prog3.y
	flex prog3.l
	gcc lex.yy.c prog3.tab.c -o parser.exe
	parser.exe < input3.txt > output3.txt

clean:
	rm -f parser.exe lex.yy.c *.tab.c *.tab.h