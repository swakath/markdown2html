#include <gtest/gtest.h>
#include "parser.hpp"
#include "lexer.hpp"

TEST(markdown2htmlcheck, Heading1){
    const char* inputFilePath = "testFiles/test.md";
    FILE  *fptrin;

    fptrin = fopen(inputFilePath, "r");
  
    if (fptrin == NULL) {
        printf("Error: Unable to open MD File\n.");
        exit(0);
    }
    extern FILE *yyin;
    yyin = fptrin;
    std::string* outputHTML;
    yyparse();

    outputHTML = getHtmlOut();
    printf("%s\n", outputHTML->c_str());

    fclose(fptrin);
}
