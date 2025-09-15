%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);
%}

%token WHILE LP RP LB RB SEMI LE GE EQ NE
%token NUMBER IDENTIFIER
%token AND OR
%token '=' '+' '-' '*' '/' '<' '>'

%start S

%%

S: WHILE LP L_EXPR RP LB STMT_LIST RB { printf("String Matched\n"); }
    | error { printf("String does not match\n"); yyerror("Invalid Syntax"); }
    ;

L_EXPR: L_EXPR LOGICAL_OP L_TERM 
        | L_TERM
        ;

L_TERM: E REL_OP E
        | LP L_EXPR RP
        | IDENTIFIER
        | NUMBER
        ;

LOGICAL_OP: AND 
            | OR
            ;

REL_OP: '<'
        | '>'
        | LE
        | GE
        | EQ
        | NE
        ;

STMT_LIST: STMT_LIST STMT
           | STMT
           ;

STMT: EXPR SEMI
;

EXPR: IDENTIFIER '=' E
      ;

E: E '+' T
   | E '-' T
   | T
   ;

T: T '*' F
   | T '/' F
   | F
   ;

F: LP E RP
   | NUMBER
   | IDENTIFIER
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
