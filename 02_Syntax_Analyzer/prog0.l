%option noyywrap

%{
    #include "prog0.tab.h"
%}  

%%
[Ii]      {printf("Token = %s -> Noun\n", yytext); return N; }
[Ee]at    {printf("Token = %s -> Verb\n", yytext); return V; }
[Rr]ice   {printf("Token = %s -> Object\n", yytext); return O; }
[ \t\n] ; 
.         { printf("Unknown Token: %s\n", yytext); return -1; }

%%
