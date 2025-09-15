%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>
%}  

%%
[0-9]+                 {printf("Token = %s -> Number\n", yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("Token = %s -> Identifier\n", yytext);}
[+\-*/=]               {printf("Token = %s -> Operator\n", yytext);}
[ \t\n] ;             
.                      { printf("Unknown Token: %s\n", yytext); }

%%

int main(void) {
    printf("=== Lexical Analysis ===\n");
    yylex();
    printf("=== Tokenization Completed ===\n");
    return 0;
}