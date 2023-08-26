cmake_minimum_required(VERSION 3.1)
project(converterUnitTest VERSION 1.0 LANGUAGES C CXX)

find_package(GTest REQUIRED)
find_package (Threads)
find_package(FLEX)
find_package(BISON)

set(TEST_SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}")
set(CODE_SRC_DIR "${TEST_SRC_DIR}/../src")
set(OUTPUT_DIR "${CMAKE_CURRENT_BINARY_DIR}")


set(LEXER_OUT "${OUTPUT_DIR}/lexer.cpp")
set(PARSER_OUT "${OUTPUT_DIR}/parser.cpp")

flex_target(LEXER "${CODE_SRC_DIR}/lexer.l" "${LEXER_OUT}" DEFINES_FILE "${OUTPUT_DIR}/lexer.hpp" )
bison_target(PARSER "${CODE_SRC_DIR}/parser.y" "${PARSER_OUT}" DEFINES_FILE "${OUTPUT_DIR}/parser.hpp")
add_flex_bison_dependency(LEXER PARSER)

add_executable(converterUnitTest 
            "${PARSER_OUT}" 
            "${LEXER_OUT}" 
            "${TEST_SRC_DIR}/Tester.cpp"
            "${TEST_SRC_DIR}/main.cpp")

target_include_directories(converterUnitTest PRIVATE "${OUTPUT_DIR}")

target_link_libraries(converterUnitTest ${GTEST_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT}) 




file(COPY "testFiles" DESTINATION "${OUTPUT_DIR}")

enable_testing()
add_test(add converterUnitTest)
