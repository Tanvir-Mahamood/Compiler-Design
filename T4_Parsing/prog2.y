%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token UNI DEPT SERIES
%start S

%%
S: UNI DEPT SERIES { printf("It Has Matched\n"); };
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