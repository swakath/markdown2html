# markdown2html
This repository contains the source code and resources for a markdown to html converter using Flex, Bison and C++. The project was done as part of [Software Systems Lab](https://www.cse.iitd.ac.in/~srsarangi/courses/2023/cop_701_2023/index.html) at IIT Delhi during my MTech program. 

## Dependencies
- Flex 2.6, used for building lexer
- Bison 3.0, used for building parser
- C++ (g++ compiler 7.5.0 or above)
- [GTest](https://github.com/google/googletest), used for unit testing
- CMake

## Building and Usage
~~~
# Create a build directory inside markdown2html
mkdir build
cd build
cmake ..

# Usage
./markdown2html input.md output.html
~~~

## Unit Testing
I have used Google Test framework for unit testing. **gtest** directory hosts all the unit testing related files. More details about GTest can be found [here](https://github.com/google/googletest).
~~~
# Create a build directory inside gtest directory
mkdir build
cd build
cmake ..

# Testing usage
./converterUnitTest
~~~
