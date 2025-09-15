%option noyywrap

%{
    #include "prog2.tab.h"
%}  

%%

[0-9]+                 { printf("Token = %s -> Number\n", yytext); return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Token = %s -> Identifier\n", yytext); return IDENTIFIER; }
"="                    { printf("Token = %s -> Operator\n", yytext); return '='; }
"+"                    { printf("Token = %s -> Operator\n", yytext); return '+'; }
"-"                    { printf("Token = %s -> Operator\n", yytext); return '-'; }
"*"                    { printf("Token = %s -> Operator\n", yytext); return '*'; }
"/"                    { printf("Token = %s -> Operator\n", yytext); return '/'; }
[ \t\n]                ;  /* ignore whitespace */
.                      { printf("Unknown Token: %s\n", yytext); return -1; }

%%
