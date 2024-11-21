%{
    #include "S5PC100.hpp"
%}

%defines %union { char c; }

%%
REPL:

%%
void yyerror(const char *msg) {
    fprintf(stderr, "\n\n%s:%i %s [%s]\n", yyfile, yylineno, msg, yytext);
    exit(-1);
}
