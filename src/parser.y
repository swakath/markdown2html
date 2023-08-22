
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

convertList: blocks  {std::cout << *$1 << std::endl;}
   
;
blocks: paragraph { if( $1->length() > 6){
                        if( $1->substr(0,3) == "<p>" && 
                            $1->substr($1->length()-4,4) == "<\\p>"){
                            $$ = $1;
                        }
                        else{
                            $$ = new std::string("<p>" + *$1 + "<\\p>");
                            delete $1;
                        }
                    }    
                    else{ 
                        $$ = new std::string("<p>" + *$1 + "<\\p>");
                        delete $1;
                    }
                }

        | blocks paragraph {
                    $$ = new std::string(*$1 + *$2);
                    delete $1;
                    delete $2;
        }


paragraph: content
    | paragraph content             {   $$ = new std::string(*$1 + *$2);
                                        delete $1;
                                        delete $2;
                                    }
    | PARA paragraph                { $$ = new std::string("<p>" + *$2 + "<\\p>"); 
                                        delete $2;
                                    }
    | paragraph LINEBREAK           { $$ = new std::string(*$1 + "<br>"); 
                                        delete $1;
                                    }
;
    
content: lines
    | AITALIC lines AITALIC             {   $$ = new std::string("<em>" + *$2 + "<\\em>");
                                            delete $2;      
                                        }

    | UITALIC lines UITALIC             {   $$ = new std::string("<em>" + *$2 + "<\\em>");
                                            delete $2;
                                        }

    | ABOLD   lines  ABOLD              {   $$ = new std::string("<strong>" + *$2 + "<\\strong>");
                                            delete $2;
                                        }

    | UBOLD   lines  UBOLD              {   $$ = new std::string("<strong>" + *$2 + "<\\strong>");
                                            delete $2;
                                        }

    | ABOLD AITALIC lines ABOLD AITALIC   { $$ = new std::string("<strong><em>" + *$3 + "<\\em><\\strong>");
                                            delete $3;
                                        }
    | UBOLD UITALIC lines UBOLD UITALIC   { $$ = new std::string("<strong><em>" + *$3 + "<\\em><\\strong>");
                                            delete $3;
                                        }
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