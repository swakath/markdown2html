cmake_minimum_required(VERSION 3.10)

project(Calc VERSION 1.0 LANGUAGES C)

set(SRC_DIR "src")
set(OUTPUT_DIR "${CMAKE_CURRENT_BINARY_DIR}")

find_package(FLEX 2.6 REQUIRED)
find_package(BISON 3.0 REQUIRED)

set(LEXER_OUT "${OUTPUT_DIR}/lexer.c")
set(PARSER_OUT "${OUTPUT_DIR}/parser.c")

flex_target(LEXER "${SRC_DIR}/lexer.l" "${LEXER_OUT}" DEFINES_FILE "${OUTPUT_DIR}/lexer.h")
bison_target(PARSER "${SRC_DIR}/parser.y" "${PARSER_OUT}" DEFINES_FILE "${OUTPUT_DIR}/parser.h")
add_flex_bison_dependency(LEXER PARSER)

add_executable(calculator "${PARSER_OUT}" "${LEXER_OUT}" )
target_include_directories(calculator PRIVATE "${OUTPUT_DIR}")
