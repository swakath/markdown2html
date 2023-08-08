/* Unix wc mock*/
%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%
[a-zA-Z]+   {words++; chars += strlen(yytext); printf("%s\n", yytext);}
\n          {chars++; lines++;}    
.           {chars++;}
%%
int yywrap(){}
int main(int argc, char **argv){
    yylex();
    printf("%8d%8d%8d\n", lines, words, chars);
}