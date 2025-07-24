%{
#include <stdio.h>
void yyerror(const char *s);
int yylex();
%}

%token N V O
%start S

%%
S: N V O { printf("Parsing Finished\n"); }
;
%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    return yyparse();
}
