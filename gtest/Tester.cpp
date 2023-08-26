#include <gtest/gtest.h>
#include "parser.hpp"
#include "lexer.hpp"

TEST(markdown2htmlcheck, Heading1){
    const char* inputFilePath = "testFiles/heading1.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<h1>This is heading1</h1>");
    fclose(fptrin);
}


TEST(markdown2htmlcheck, Heading2){
    const char* inputFilePath = "testFiles/heading2.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<h2>This is heading2</h2>");
    fclose(fptrin);
}


TEST(markdown2htmlcheck, Heading3){
    const char* inputFilePath = "testFiles/heading3.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<h3>This is heading3</h3>");
    fclose(fptrin);
}

TEST(markdown2htmlcheck, Heading4){
    const char* inputFilePath = "testFiles/heading4.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<h4>This is heading4</h4>");
    fclose(fptrin);
}


TEST(markdown2htmlcheck, Heading5){
    const char* inputFilePath = "testFiles/heading5.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<h5>This is heading5</h5>");
    fclose(fptrin);
}



TEST(markdown2htmlcheck, Heading6){
    const char* inputFilePath = "testFiles/heading6.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<h6>This is heading6</h6>");
    fclose(fptrin);
}

TEST(markdown2htmlcheck, Paragraph){
    const char* inputFilePath = "testFiles/paragraph.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<p>This is a first paragraph</p><p>And this is the second</p>");
    fclose(fptrin);
}

TEST(markdown2htmlcheck, Line_Break){
    const char* inputFilePath = "testFiles/line_break.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<p>This is a first paragraph<br>And this is the same paragraph</p>");
    fclose(fptrin);
}

TEST(markdown2htmlcheck, Soft_Break){
    const char* inputFilePath = "testFiles/soft_break.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<p>This is a first paragraph And this is the same line</p>");
    fclose(fptrin);
}

TEST(markdown2htmlcheck, Italic){
    const char* inputFilePath = "testFiles/italic.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<p><em>this is italic</em></p>");
    fclose(fptrin);
}

TEST(markdown2htmlcheck, Strong){
    const char* inputFilePath = "testFiles/strong.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<p><strong>this is strong</strong></p>");
    fclose(fptrin);
}

TEST(markdown2htmlcheck, Strong_Italic){
    const char* inputFilePath = "testFiles/strong_italic.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<p><strong><em>this is strong and italic</em></strong></p>");
    fclose(fptrin);
}


TEST(markdown2htmlcheck, Ordered_List){
    const char* inputFilePath = "testFiles/ordered_list.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<ol><li>first</li><li>second</li><li>third</li></ol>");
    fclose(fptrin);
}

TEST(markdown2htmlcheck, Unordered_List){
    const char* inputFilePath = "testFiles/unordered_list.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<ul><li>first</li><li>second</li><li>third</li></ul>");
    fclose(fptrin);
}

TEST(markdown2htmlcheck, Link){
    const char* inputFilePath = "testFiles/link.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<p><a href=\"https://www.cse.iitd.ac.in/\">click here</a></p>");
    fclose(fptrin);
}

TEST(markdown2htmlcheck, Image){
    const char* inputFilePath = "testFiles/image.md";
    FILE  *fptrin;
    extern FILE *yyin;
    std::string* outputHTML;

    fptrin = fopen(inputFilePath, "r");
    ASSERT_TRUE(fptrin!=NULL);

    yyin = fptrin;
    yyparse();
    outputHTML = getHtmlOut();
    EXPECT_STREQ(outputHTML->c_str(), "<p><img src=\"iitd-logo.jpg\" alt=\"IITD logo\"></p>");
    fclose(fptrin);
}