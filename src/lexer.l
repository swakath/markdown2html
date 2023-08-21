%{
    #include <stdio.h>
    #include <stdlib.h>    
    #include <string>
    // #include "parser.hpp"

    extern "C" int yylex();
    #define TOKEN(p) printf("%s\n", p)
%}

ALPA                [a-zA-Z]
NUM                 [0-9]
PUNC                [@$%^&\{\};"'<>,?/~`=\\]
SPACE               " "

TEXT                ({ALPA}|{NUM}|{PUNC})+

HASH                "#"
ASTRX               "*"
USCORE              "_"
EXCLA               "!"
LSQRB               "["
RSQRB               "]"
LPAR                "("
RPAR                ")"
PIPE                "|"
COLON               ":""
PLUS                "+"
MINUS               "-"
DOT                 "."
BACKSLASH           "\"

NEWLINE             "\n"
TAB                 "\t"

%%
{HASH}{SPACE}                                       { TOKEN ("H1"); }//return H1;}
{HASH}{HASH}{SPACE}                                 { TOKEN ("H2"); }//return H2; }
{HASH}{HASH}{HASH}{SPACE}                           { TOKEN ("H3"); }//return H3; }
{HASH}{HASH}{HASH}{HASH}{SPACE}                     { TOKEN ("H4"); }//return H4; }
{HASH}{HASH}{HASH}{HASH}{HASH}{SPACE}               { TOKEN ("H5"); }//return H5; }
{HASH}{HASH}{HASH}{HASH}{HASH}{HASH}{SPACE}         { TOKEN ("H6"); }//return H6; }
{HASH}+                                             { TOKEN ("HTEXT"); }//return TEXT; }//{ yylval.strval = new std::string(yytext); TOKEN ("TEXT"); }//return TEXT; }
{SPACE}{2,}{NEWLINE}                                { TOKEN ("LINEBREAK"); }//return LINEBREAK;}
{NEWLINE}{2,}                                       { TOKEN ("PARA"); }//return PARA;}
{NEWLINE}                                           { TOKEN ("NEWLINE"); }//return NEWLINE;}
{SPACE}{1,}                                         { TOKEN ("SPACE");}

{ASTRX}                                             { TOKEN ("AITALIC"); }//return AITALIC;}
{USCORE}                                            { TOKEN ("UITALIC"); }//return UITALIC;}
{ASTRX}{ASTRX}                                      { TOKEN ("ABOLD"); }//return ABOLD;}
{USCORE}{USCORE}                                    { TOKEN ("UBOLD"); }//return UBOLD;}
{TEXT}                                              { TOKEN ("TEXT"); }////{ yylval.strval = new std::string(yytext); TOKEN ("TEXT"); }//return TEXT;}
.                                                   { TOKEN ("OTHER");}

%%
 
int yywrap(){
    return 1;
}
void yyerror(const char *s){
    fprintf(stderr, "error: %s\n", s);
}
int main(int argc, char **argv){
    yylex();
    return 0;
}