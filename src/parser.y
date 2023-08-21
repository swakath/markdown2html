
%{
    void yyerror(const char* s);
    extern char* yytext;
    extern "C" int yylex(void);
    extern "C" int yyparse(void);  
%}

%code requires {
    #include <stdio.h>
    #include <stdlib.h>
    #include <string>
}

%union {
    int intval;
    std::string* strval; 
}

%token H1 H2 H3 H4 H5 H6 
%token ABOLD UBOLD 
%token AITALIC UITALIC 
%token PARA LINEBREAK TEXT NEWLINE

%start calclist
%%

calclist:
;
%%

void yyerror(const char *s){
    fprintf(stderr, "error: %s\n", s);
}

int main(int argc, char **argv){
    yyparse();
    return 0;
}