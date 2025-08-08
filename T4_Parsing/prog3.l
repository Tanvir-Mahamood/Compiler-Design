%option noyywrap

%{
    #include "prog3.tab.h"
%}


%%
"while"        { printf("%s = WHILE\n", yytext); return WHILE; }
"("            { printf("%s = LP\n", yytext); return LP; }
[0-9]+         { printf("%s = INTNUM\n", yytext); return INTNUM; }
")"            { printf("%s = RP\n", yytext); return RP; }
"{"            { printf("%s = LB\n", yytext); return LB; }
"}"            { printf("%s = RB\n", yytext); return RB; }
"int"          { printf("%s = TYPE_INT\n", yytext); return TYPE_INT; }
"a"            { printf("%s = VAR\n", yytext); return VAR; }
"="            { printf("%s = EQUL\n", yytext); return EQUL; }
";"            { printf("%s = SEMI\n", yytext); return SEMI; }
[ \t\n]        { /* skip whitespace */ }
.              { printf("Unknown character: %s\n", yytext); }
%%
