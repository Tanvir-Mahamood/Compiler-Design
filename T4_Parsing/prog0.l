%{
#include <stdio.h>
%}

%%
[Ii]           { printf("Token: %s -> Noun\n", yytext); }
[eE]at         { printf("Token: %s -> Verb\n", yytext); }
[rR]ice        { printf("Token: %s -> Object\n", yytext); }
[ \t\n]+       { /* skip whitespace */ }
.              { printf("Unknown Token: %s\n", yytext); }
%%

int yywrap() {
    return 1;
}

int main() {
    printf("=== Lexical Analysis ===\n");
    yylex();
    printf("=== Tokenization Complete ===\n");
    return 0;
}
