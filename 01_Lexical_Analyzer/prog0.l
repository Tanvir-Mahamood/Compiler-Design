%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>
%}  

%%
[Ii]      {printf("Token = %s -> Noun\n", yytext);}
[Ee]at    {printf("Token = %s -> Verb\n", yytext);}
[Rr]ice   {printf("Token = %s -> Object\n", yytext);}
[ \t\n] ; // Ignore whitespace
.         { printf("Unknown Token: %s\n", yytext); } // Matches any single character not caught by earlier rules → flagged as Unknow

%%

int main(void) {
    printf("=== Lexical Analysis ===\n");
    yylex();
    printf("=== Tokenization Completed ===\n");
    return 0;
}