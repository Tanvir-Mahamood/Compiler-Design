%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>
%}  

%%
(RUET|KUET|CUET|BUET) {printf("Token = %s -> Uni\n", yytext);}
(CSE|EEE|ME|CE)       {printf("Token = %s -> Dept\n", yytext);}
(20|21|22|23|24)      {printf("Token = %s -> Series\n", yytext);}
[ \t\n] ;             
.                     { printf("Unknown Token: %s\n", yytext); } 

%%

int main(void) {
    printf("=== Lexical Analysis ===\n");
    yylex();
    printf("=== Tokenization Completed ===\n");
    return 0;
}