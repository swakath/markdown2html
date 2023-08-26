/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_MNT_D_IITD_SEM1_COL701_SOFTWARE_SYSTEMS_LAB_MARKDOWN2HTML_GTEST_BUILD_PARSER_HPP_INCLUDED
# define YY_YY_MNT_D_IITD_SEM1_COL701_SOFTWARE_SYSTEMS_LAB_MARKDOWN2HTML_GTEST_BUILD_PARSER_HPP_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif
/* "%code requires" blocks.  */
#line 9 "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/../src/parser.y" /* yacc.c:1909  */

    #include <cstdio>
    #include <string>
    extern int yylex(void);
    static void yyerror(const char* s); 
    std::string* getHtmlOut(void);

#line 52 "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/parser.hpp" /* yacc.c:1909  */

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    H1 = 258,
    H2 = 259,
    H3 = 260,
    H4 = 261,
    H5 = 262,
    H6 = 263,
    ABOLD = 264,
    UBOLD = 265,
    AITALIC = 266,
    UITALIC = 267,
    ORDERED = 268,
    UNORDERED = 269,
    PARA = 270,
    LINEBREAK = 271,
    NEWLINE = 272,
    ENDLIST = 273,
    TEXT = 274
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 17 "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/../src/parser.y" /* yacc.c:1909  */

    std::string* strval; 

#line 88 "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/parser.hpp" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_MNT_D_IITD_SEM1_COL701_SOFTWARE_SYSTEMS_LAB_MARKDOWN2HTML_GTEST_BUILD_PARSER_HPP_INCLUDED  */
