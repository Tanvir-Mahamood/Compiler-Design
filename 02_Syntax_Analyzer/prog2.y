%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);

%}

%token NUMBER IDENTIFIER OPERATOR
%start S

%%

S:  IDENTIFIER '=' E  { printf("Valid Assignment\n"); }
   |  error           { yyerror("Invalid Assignment"); }
   ;

E:  E '+' T  
   |  E '-' T 
   |  T
   ;

T:  T '*' F  
   |  T '/' F 
   |  F
   ;

F:  '(' E ')'  
   |  NUMBER    
   |  IDENTIFIER 
   ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Parse error: %s\n", s);
}

int main(void) {
    printf("=== Syntax Analysis ===\n");
    yyparse();
    printf("=== Parsing Completed ===\n");
    return 0;
}
