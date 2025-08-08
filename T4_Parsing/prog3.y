%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token WHILE LP RP LB RB TYPE_INT VAR EQUL INTNUM SEMI
%start S

%%
S: WHILE LP INTNUM RP LB STMT RB { printf("It Has Matched\n"); };

STMT: TYPE_INT VAR EQUL INTNUM SEMI ;
%%

int main()
{
    yyparse();
    printf("Parsing Finished\n");
    return 0;
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);
}