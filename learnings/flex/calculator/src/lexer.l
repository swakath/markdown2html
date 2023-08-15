%{
    #include "parser.h"
    #include <stdio.h>
%}

%%
"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
"|" { return ABS; }
[0-9]+ {yylval.num = atoi(yytext); return NUMBER; }
\n { return EOL; }
[ \t] { /* ignore whitespace */ }
. {return yytext[0];}
%%

int yywrap(){
    return 1; 
}
