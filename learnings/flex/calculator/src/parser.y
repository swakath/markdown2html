
%{
    #include <stdio.h>
    #include <stdlib.h>
    extern int yylex(void);
    extern int yyparse(void);
    void yyerror(char *s){
        fprintf(stderr, "error: %s\n", s);
    }

    int main(int argc, char **argv){
        yyparse();
        return 0;
    }
%}

%union{
    int num;
}


%token <num> NUMBER
%token ADD SUB MUL DIV ABS
%token EOL


%start calclist
%type <num> exp
%type <num> factor
%type <num> term

%%

calclist:
    | calclist exp EOL { printf("= %d\n", $2);}
    | calclist error EOL {}
;

exp : factor {$$ = $1; }
    | exp ADD factor { $$ = $1 + $3; }
    | exp SUB factor { $$ = $1 - $3; }
;

factor: term
    | factor MUL term { $$ = $1 * $3; }
    | factor DIV term { $$ = $1 / $3; }
;

term: NUMBER
    | ABS term { $$ = ($2>=0) ? $2 : -1*$2; }
;


%%

