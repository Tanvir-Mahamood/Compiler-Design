%{
#include <stdio.h>
void yyerror(const char *s);
int yylex();
%}

%token N V O
%start S

%%
S: N V O { printf("It Has Matched\n"); }
;
%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    printf("Parsing Finished\n");
    return 0;
}