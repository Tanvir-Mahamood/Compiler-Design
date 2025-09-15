main0:
	flex prog0.l
	gcc lex.yy.c -o lexer.exe
	lexer.exe < input0.txt > output0.txt

main1:
	flex prog1.l
	gcc lex.yy.c -o lexer.exe
	lexer.exe < input1.txt > output1.txt

main2:
	flex prog2.l
	gcc lex.yy.c -o lexer.exe
	lexer.exe < input2.txt > output2.txt

clean:
	rm lex.yy.c lexer.exe