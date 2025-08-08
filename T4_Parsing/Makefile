main0:
	flex prog0.l
	gcc lex.yy.c -o lexer.exe
	lexer.exe < input0.txt > lex_output.txt

main1:
	bison -d prog1.y
	flex prog1.l
	gcc lex.yy.c prog1.tab.c -o parser.exe
	parser.exe < input0.txt > output1.txt

main2:
	bison -d prog2.y
	flex prog2.l
	gcc lex.yy.c prog2.tab.c -o parser.exe
	parser.exe < input2.txt > output2.txt

main3:
	bison -d prog3.y
	flex prog3.l
	gcc lex.yy.c prog3.tab.c -o parser.exe
	parser.exe < code_snippet.txt > code_output.txt



