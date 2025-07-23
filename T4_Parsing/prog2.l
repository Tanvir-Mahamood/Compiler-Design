%option noyywrap

%{
    #include "prog2.tab.h"
%}

%%
"RUET"|"KUET" {printf("%s = UNI\n", yytext); return(UNI);}
"CSE"|"EEE" {printf("%s = DEPT\n", yytext); return(DEPT);}
"20" {printf("%s = SERIES\n", yytext); return(SERIES);}
%%

//int main()
//{
//    yylex();
//    return 0;
//}