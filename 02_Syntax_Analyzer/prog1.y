%{
    #include <stdio.h>
    #include <stdlib.h>
    void yyerror(const char *s);
    int yylex(void);
%}

%token UNI DEPT SERIES
%start S

%%

S:  UNI DEPT SERIES  { printf("Valid Sentence\n"); }
   |  error  { printf("Error: Invalid Sentence\n"); yyerror("Invalid Sentence"); }
   ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main(void) {
    printf("=== Syntax Analysis ===\n");
    yyparse();
    printf("=== Parsing Completed ===\n"); 
    return 0;
}