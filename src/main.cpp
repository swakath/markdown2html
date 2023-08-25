#include "parser.hpp"
#include "lexer.hpp"
#include <cstdio>
#include <iostream>

extern int yylex(void);
extern int yyparse(void);

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

    std::string* outputHTML;
    yyparse();

    outputHTML = getHtmlOut();
    fprintf(fptrout,"%s\n", outputHTML->c_str());
    printf("%s\n", outputHTML->c_str());
    fprintf(fptrout,"</body>\n");
    fprintf(fptrout,"</html>");

    fclose(fptrin);
    fclose(fptrout);
    return 0;
}