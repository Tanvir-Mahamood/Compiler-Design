main1:
	flex prog0.l
	gcc lex.yy.c -o lexer.exe
	lexer.exe < input.txt > lex_output.txt

main2:
	bison -d prog1.y
	flex prog1.l
	gcc lex.yy.c prog1.tab.c -o parser.exe
	parser.exe < input.txt > output.txt

main3:
	bison -d prog2.y
	flex prog2.l
	gcc lex.yy.c prog2.tab.c -o parser.exe
	parser.exe < input.txt > output.txt

main4:
	bison -d prog3.y
	flex prog3.l
	gcc lex.yy.c prog3.tab.c -o parser.exe
	parser.exe < code_snippet.txt > output.txt



