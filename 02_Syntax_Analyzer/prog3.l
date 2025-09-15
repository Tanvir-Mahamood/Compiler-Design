%option noyywrap

%{
    #include "prog3.tab.h"
%}  

%%

"while"        { printf("%s = WHILE\n", yytext); return WHILE; }
"("            { printf("%s = LP\n", yytext); return LP; }
")"            { printf("%s = RP\n", yytext); return RP; }
"{"            { printf("%s = LB\n", yytext); return LB; }
"}"            { printf("%s = RB\n", yytext); return RB; }
";"            { printf("%s = SEMI\n", yytext); return SEMI; }

[0-9]+                 { printf("Token = %s -> Number\n", yytext); return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Token = %s -> Identifier\n", yytext); return IDENTIFIER; }
"="                    { printf("Token = %s -> Operator\n", yytext); return '='; }
"+"                    { printf("Token = %s -> Operator\n", yytext); return '+'; }
"-"                    { printf("Token = %s -> Operator\n", yytext); return '-'; }
"*"                    { printf("Token = %s -> Operator\n", yytext); return '*'; }
"/"                    { printf("Token = %s -> Operator\n", yytext); return '/'; }
"&&"                   { printf("Token = %s -> Logical AND\n", yytext); return AND; }
"||"                   { printf("Token = %s -> Logical OR\n", yytext); return OR; }

"<"  {printf("Token = %s -> Less Than\n", yytext); return '<'; }
">"  {printf("Token = %s -> Greater Than\n", yytext); return '>'; }
"<=" {printf("Token = %s -> Less Than or Equal To\n", yytext); return LE; }
">=" {printf("Token = %s -> Greater Than or Equal To\n", yytext); return GE; }
"==" {printf("Token = %s -> Equal To\n", yytext); return EQ; }
"!=" {printf("Token = %s -> Not Equal To\n", yytext); return NE; }

[ \t\n]                ;  
.                      { printf("Unknown Token: %s\n", yytext); return -1; }

%%
