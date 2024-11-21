%{
    #include "S5PC100.hpp"
    char *yyfile = nullptr;
%}

%option noyywrap yylineno

%%
#[^\n]*         {}              // line comment
[ \t\r\n]+      {}              // drop spaces
.               {yyerror("");}  // any undetected char
