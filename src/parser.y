
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
    #include <iostream>
}

%union {
    std::string* strval; 
}

%token H1 H2 H3 H4 H5 H6 
%token ABOLD UBOLD 
%token AITALIC UITALIC 
%token PARA LINEBREAK  NEWLINE
%token <strval> TEXT
%token END_OF_FILE EOL

%start convertList

%type <strval> blocks
%type <strval> paragraph
%type <strval> content
%type <strval> lines



%%

convertList:
    |   convertList blocks {std::cout << *$2 << std::endl;}
    
;
blocks: paragraph


paragraph: content
    | paragraph content             { $$ = new std::string(*$1 + *$2);}
    | PARA paragraph                { $$ = new std::string("<p>" + *$2 + "<\\p>"); }
    | paragraph LINEBREAK           { $$ = new std::string(*$1 + "<br>"); }
;
    
content: lines
    | AITALIC lines AITALIC               {$$ = new std::string("<em>" + *$2 + "<\\em>");}
    | UITALIC lines UITALIC               {$$ = new std::string("<em>" + *$2 + "<\\em>");}
    | ABOLD   lines  ABOLD                {$$ = new std::string("<strong>" + *$2 + "<\\strong>");}
    | UBOLD   lines  UBOLD                {$$ = new std::string("<strong>" + *$2 + "<\\strong>");}
    | ABOLD AITALIC lines ABOLD AITALIC   {$$ = new std::string("<strong><em>" + *$3 + "<\\em><\\strong>");}
    | UBOLD UITALIC lines UBOLD UITALIC   {$$ = new std::string("<strong><em>" + *$3 + "<\\em><\\strong>");}
;

lines: TEXT
    | TEXT lines {$$ = new std::string(*$1 + *$2);}
;
%%

void yyerror(const char *s){
    fprintf(stderr, "error: %s\n", s);
}

int main(int argc, char **argv){
    yyparse();
    return 0;
}