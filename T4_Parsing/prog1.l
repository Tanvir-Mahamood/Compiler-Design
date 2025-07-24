%{
#include "prog1.tab.h"
%}

%%
[Ii]           { printf("Noun\n"); return N; }
[eE]at         { printf("Verb\n"); return V; }
[rR]ice        { printf("Object\n"); return O; }
[ \t\n]+       { /* skip whitespace */ }
.              { printf("Unknown Token: %s\n", yytext); return -1; }
%%

int yywrap() {
    return 1;
}