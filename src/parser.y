
%{
    void yyerror(const char* s);
    extern char* yytext;
    extern "C" int yylex(void);
    extern "C" int yyparse(void);
    #include <string>
    std::string* outStr;  
%}

%code requires {
    #include <cstdio>
    #include <stdlib.h>
    #include <iostream>
}

%union {
    std::string* strval; 
}

%token H1 H2 H3 H4 H5 H6 
%token ABOLD UBOLD 
%token AITALIC UITALIC 
%token ORDERED
%token PARA LINEBREAK  NEWLINE
%token <strval> TEXT

%left H1 H2 H3 H4 H5 H6 PARA LINEBREAK

%start convertList

%type <strval> convertList
%type <strval> blocks
%type <strval> block
%type <strval> paragraph
%type <strval> contents
%type <strval> content
%type <strval> lines
%type <strval> line

%type <strval> paragraphs
%type <strval> headings


%%

convertList: NEWLINE convertList {$$ = $2;}
        | PARA convertList {$$ = $2;}
        | blocks {outStr = $1;}
   
;

blocks : block
       | blocks block {
		    $$ = new std::string(*$1 + *$2);
		    delete $1;
		    delete $2;
	}
;

block : paragraphs
      | headings

;

paragraphs: paragraph { 
	  if( $1->length() > 6){
	  if( $1->substr(0,3) == "<p>" && 
			    $1->substr($1->length()-4,4) == "</p>"){
			    $$ = $1;
			}
			else{
			    $$ = new std::string("<p>" + *$1 + "</p>");
			    delete $1;
			}
		    }    
		    else{ 
			$$ = new std::string("<p>" + *$1 + "</p>");
			delete $1;
		    }
		}

        | paragraphs paragraph { 
	                    std::string* temp;

                        if( $2->length() > 6){
                            if( $2->substr(0,3) == "<p>" && 
                                $2->substr($2->length()-4,4) == "</p>"){
                                temp = $2;
                            }
                            
                            else{
                                temp = new std::string("<p>" + *$2 + "</p>");
                                delete $2;
                            }
                        }    
                        else{ 
                            temp = new std::string("<p>" + *$2 + "</p>");
                            delete $2;
                        }
	
                        $$ = new std::string(*$1 + *temp);
                        delete $1;
                        delete temp;
                }
;





paragraph: contents
    | paragraph PARA              { $$ = new std::string("<p>" + *$1 + "</p>"); 
                                        delete $1;
                                       }

    | paragraph LINEBREAK paragraph { $$ = new std::string(*$1 + "<br>" + *$3); 
                                        delete $1;
                                    }
;

headings: 
        H1 contents PARA { 
                    $$ = new std::string("<h1>" + *$2 + "</h1>");
                    delete $2;
                }

        | H2 contents PARA {
                    $$ = new std::string("<h2>" + *$2 + "</h2>");
                    delete $2;
                }
        | H3 contents PARA {
                    $$ = new std::string("<h3>" + *$2 + "</h3>");
                    delete $2;
                } 
        | H4 contents PARA{
                    $$ = new std::string("<h4>" + *$2 + "</h4>");
                    delete $2;
                } 
        | H5 contents PARA{
                    $$ = new std::string("<h5>" + *$2 + "</h5>");
                    delete $2;
                }
        | H6 contents PARA{
                    $$ = new std::string("<h6>" + *$2 + "</h6>");
                    delete $2;
                }
        | H1 contents LINEBREAK { 
                    $$ = new std::string("<h1>" + *$2 + "</h1>");
                    delete $2;
                }

        | H2 contents LINEBREAK {
                    $$ = new std::string("<h2>" + *$2 + "</h2>");
                    delete $2;
                }
        | H3 contents LINEBREAK {
                    $$ = new std::string("<h3>" + *$2 + "</h3>");
                    delete $2;
                } 
        | H4 contents LINEBREAK {
                    $$ = new std::string("<h4>" + *$2 + "</h4>");
                    delete $2;
                } 
        | H5 contents LINEBREAK{
                    $$ = new std::string("<h5>" + *$2 + "</h5>");
                    delete $2;
                }
        | H6 contents LINEBREAK{
                    $$ = new std::string("<h6>" + *$2 + "</h6>");
                    delete $2;
                } 
;


contents : content
        | contents content {
                    $$ = new std::string(*$1 + *$2);
                    delete $1;
                    delete $2;
        }
        | contents NEWLINE content {$$ = new std::string(*$1 + " "+ *$3); delete $1; delete $3;}
;

content: lines
    | AITALIC content AITALIC             {   $$ = new std::string("<em>" + *$2 + "</em>");
                                            delete $2;      
                                        }

    | UITALIC content UITALIC             {   $$ = new std::string("<em>" + *$2 + "</em>");
                                            delete $2;
                                        }

    | ABOLD   content  ABOLD              {   $$ = new std::string("<strong>" + *$2 + "</strong>");
                                            delete $2;
                                        }

    | UBOLD   content  UBOLD              {   $$ = new std::string("<strong>" + *$2 + "</strong>");
                                            delete $2;
                                        }

    | ABOLD AITALIC content ABOLD AITALIC   { $$ = new std::string("<strong><em>" + *$3 + "</em></strong>");
                                            delete $3;
                                        }
    | UBOLD UITALIC content UBOLD UITALIC   { $$ = new std::string("<strong><em>" + *$3 + "</em></strong>");
                                            delete $3;
                                        }
;

lines: line
    | lines line            {$$ = new std::string(*$1 + *$2); delete $1; delete $2;}
;


line: TEXT
    | line TEXT {$$ = new std::string(*$1 + *$2); delete $1; delete $2;}
;

%%

void yyerror(const char *s){
    fprintf(stderr, "error: %s\n", s);
}

int main(int argc, char* argv[]){

    if(argc!=3){
        std::cout<<"Error USAGE: "<<argv[0]<<" <input.md> <output.html>\n";
    }

    const char* inputFilePath = argv[1];
    const char* outputFilePath = argv[2];

    FILE *fptrout , *fptrin;

    // opening the file in read mode
    fptrin = fopen(inputFilePath, "r");
  
    // checking if the file is opened successfully
    if (fptrin == NULL) {
        printf("Error: Unable to open MD File\n.");
        exit(0);
    }

    // opening the file in read mode
    fptrout = fopen(outputFilePath, "w");
  
    // checking if the file is opened successfully
    if (fptrout == NULL) {
        printf("Error: Unable to open HTML File\n.");
        exit(0);
    }


    extern FILE *yyin;

    yyin = fptrin;

    fprintf(fptrout,"<!DOCTYPE html>\n");
    fprintf(fptrout,"<html>\n");
    fprintf(fptrout,"<head>\n");
    fprintf(fptrout,"\t<title>Title html</title>\n");
    fprintf(fptrout,"</head>\n");
    fprintf(fptrout,"<body>\n");

    yyparse();

    fprintf(fptrout,"%s\n", outStr->c_str());
    fprintf(fptrout,"</body>\n");
    fprintf(fptrout,"</html>");

    fclose(fptrin);
    fclose(fptrout);
    return 0;
}
