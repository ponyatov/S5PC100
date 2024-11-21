#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

int main(int argc, char *argv[]);
void arg(int argc, char *argv);

extern int yylex();
extern int yylineno;
extern char *yytext;
extern char *yyfile;
extern FILE *yyin;
extern int yyparse();
extern void yyerror(const char *msg);
#include "S5PC100.parser.hpp"
