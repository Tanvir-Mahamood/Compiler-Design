main1:
	gcc -o Hello HelloWorld.c

main2:
	bison -d prog1.y
	flex prog1.l
	gcc lex.yy.c prog1.tab.c -o parser.exe
	parser.exe < input.txt > output.txt

main3:
	bison -d prog1.y
	flex prog1.l
	gcc lex.yy.c prog1.tab.c -o parser.exe
	parser

