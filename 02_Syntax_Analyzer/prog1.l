%option noyywrap

%{
    #include "prog1.tab.h"
%}  

%%
(RUET|KUET|CUET|BUET) {printf("Token = %s -> Uni\n", yytext); return UNI;}
(CSE|EEE|ME|CE)       {printf("Token = %s -> Dept\n", yytext); return DEPT;}
(20|21|22|23|24)      {printf("Token = %s -> Series\n", yytext); return SERIES;}
[ \t\n] ;             
.                     { printf("Unknown Token: %s\n", yytext); return -1; } 

%%

