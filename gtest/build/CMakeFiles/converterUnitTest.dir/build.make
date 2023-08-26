# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build"

# Include any dependencies generated for this target.
include CMakeFiles/converterUnitTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/converterUnitTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/converterUnitTest.dir/flags.make

parser.cpp: /mnt/d/IITD/Sem1/COL701-Software\ Systems\ Lab/markdown2html/src/parser.y
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "[BISON][PARSER] Building parser with bison 3.0.4"
	cd "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest" && /usr/bin/bison "--defines=/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/parser.hpp" -o "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/parser.cpp" "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/../src/parser.y"

parser.hpp: parser.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate parser.hpp

lexer.cpp: /mnt/d/IITD/Sem1/COL701-Software\ Systems\ Lab/markdown2html/src/lexer.l
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "[FLEX][LEXER] Building scanner with flex 2.6.4"
	cd "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest" && /usr/bin/flex "--header-file=/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/lexer.hpp" "-o/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/lexer.cpp" "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/../src/lexer.l"

lexer.hpp: lexer.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate lexer.hpp

CMakeFiles/converterUnitTest.dir/parser.cpp.o: CMakeFiles/converterUnitTest.dir/flags.make
CMakeFiles/converterUnitTest.dir/parser.cpp.o: parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/converterUnitTest.dir/parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/converterUnitTest.dir/parser.cpp.o -c "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/parser.cpp"

CMakeFiles/converterUnitTest.dir/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/converterUnitTest.dir/parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/parser.cpp" > CMakeFiles/converterUnitTest.dir/parser.cpp.i

CMakeFiles/converterUnitTest.dir/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/converterUnitTest.dir/parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/parser.cpp" -o CMakeFiles/converterUnitTest.dir/parser.cpp.s

CMakeFiles/converterUnitTest.dir/parser.cpp.o.requires:

.PHONY : CMakeFiles/converterUnitTest.dir/parser.cpp.o.requires

CMakeFiles/converterUnitTest.dir/parser.cpp.o.provides: CMakeFiles/converterUnitTest.dir/parser.cpp.o.requires
	$(MAKE) -f CMakeFiles/converterUnitTest.dir/build.make CMakeFiles/converterUnitTest.dir/parser.cpp.o.provides.build
.PHONY : CMakeFiles/converterUnitTest.dir/parser.cpp.o.provides

CMakeFiles/converterUnitTest.dir/parser.cpp.o.provides.build: CMakeFiles/converterUnitTest.dir/parser.cpp.o


CMakeFiles/converterUnitTest.dir/lexer.cpp.o: CMakeFiles/converterUnitTest.dir/flags.make
CMakeFiles/converterUnitTest.dir/lexer.cpp.o: lexer.cpp
CMakeFiles/converterUnitTest.dir/lexer.cpp.o: parser.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/converterUnitTest.dir/lexer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/converterUnitTest.dir/lexer.cpp.o -c "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/lexer.cpp"

CMakeFiles/converterUnitTest.dir/lexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/converterUnitTest.dir/lexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/lexer.cpp" > CMakeFiles/converterUnitTest.dir/lexer.cpp.i

CMakeFiles/converterUnitTest.dir/lexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/converterUnitTest.dir/lexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/lexer.cpp" -o CMakeFiles/converterUnitTest.dir/lexer.cpp.s

CMakeFiles/converterUnitTest.dir/lexer.cpp.o.requires:

.PHONY : CMakeFiles/converterUnitTest.dir/lexer.cpp.o.requires

CMakeFiles/converterUnitTest.dir/lexer.cpp.o.provides: CMakeFiles/converterUnitTest.dir/lexer.cpp.o.requires
	$(MAKE) -f CMakeFiles/converterUnitTest.dir/build.make CMakeFiles/converterUnitTest.dir/lexer.cpp.o.provides.build
.PHONY : CMakeFiles/converterUnitTest.dir/lexer.cpp.o.provides

CMakeFiles/converterUnitTest.dir/lexer.cpp.o.provides.build: CMakeFiles/converterUnitTest.dir/lexer.cpp.o


CMakeFiles/converterUnitTest.dir/Tester.cpp.o: CMakeFiles/converterUnitTest.dir/flags.make
CMakeFiles/converterUnitTest.dir/Tester.cpp.o: ../Tester.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/converterUnitTest.dir/Tester.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/converterUnitTest.dir/Tester.cpp.o -c "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/Tester.cpp"

CMakeFiles/converterUnitTest.dir/Tester.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/converterUnitTest.dir/Tester.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/Tester.cpp" > CMakeFiles/converterUnitTest.dir/Tester.cpp.i

CMakeFiles/converterUnitTest.dir/Tester.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/converterUnitTest.dir/Tester.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/Tester.cpp" -o CMakeFiles/converterUnitTest.dir/Tester.cpp.s

CMakeFiles/converterUnitTest.dir/Tester.cpp.o.requires:

.PHONY : CMakeFiles/converterUnitTest.dir/Tester.cpp.o.requires

CMakeFiles/converterUnitTest.dir/Tester.cpp.o.provides: CMakeFiles/converterUnitTest.dir/Tester.cpp.o.requires
	$(MAKE) -f CMakeFiles/converterUnitTest.dir/build.make CMakeFiles/converterUnitTest.dir/Tester.cpp.o.provides.build
.PHONY : CMakeFiles/converterUnitTest.dir/Tester.cpp.o.provides

CMakeFiles/converterUnitTest.dir/Tester.cpp.o.provides.build: CMakeFiles/converterUnitTest.dir/Tester.cpp.o


CMakeFiles/converterUnitTest.dir/main.cpp.o: CMakeFiles/converterUnitTest.dir/flags.make
CMakeFiles/converterUnitTest.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/converterUnitTest.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/converterUnitTest.dir/main.cpp.o -c "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/main.cpp"

CMakeFiles/converterUnitTest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/converterUnitTest.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/main.cpp" > CMakeFiles/converterUnitTest.dir/main.cpp.i

CMakeFiles/converterUnitTest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/converterUnitTest.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/main.cpp" -o CMakeFiles/converterUnitTest.dir/main.cpp.s

CMakeFiles/converterUnitTest.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/converterUnitTest.dir/main.cpp.o.requires

CMakeFiles/converterUnitTest.dir/main.cpp.o.provides: CMakeFiles/converterUnitTest.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/converterUnitTest.dir/build.make CMakeFiles/converterUnitTest.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/converterUnitTest.dir/main.cpp.o.provides

CMakeFiles/converterUnitTest.dir/main.cpp.o.provides.build: CMakeFiles/converterUnitTest.dir/main.cpp.o


# Object files for target converterUnitTest
converterUnitTest_OBJECTS = \
"CMakeFiles/converterUnitTest.dir/parser.cpp.o" \
"CMakeFiles/converterUnitTest.dir/lexer.cpp.o" \
"CMakeFiles/converterUnitTest.dir/Tester.cpp.o" \
"CMakeFiles/converterUnitTest.dir/main.cpp.o"

# External object files for target converterUnitTest
converterUnitTest_EXTERNAL_OBJECTS =

converterUnitTest: CMakeFiles/converterUnitTest.dir/parser.cpp.o
converterUnitTest: CMakeFiles/converterUnitTest.dir/lexer.cpp.o
converterUnitTest: CMakeFiles/converterUnitTest.dir/Tester.cpp.o
converterUnitTest: CMakeFiles/converterUnitTest.dir/main.cpp.o
converterUnitTest: CMakeFiles/converterUnitTest.dir/build.make
converterUnitTest: /usr/local/lib/libgtest.a
converterUnitTest: CMakeFiles/converterUnitTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable converterUnitTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/converterUnitTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/converterUnitTest.dir/build: converterUnitTest

.PHONY : CMakeFiles/converterUnitTest.dir/build

CMakeFiles/converterUnitTest.dir/requires: CMakeFiles/converterUnitTest.dir/parser.cpp.o.requires
CMakeFiles/converterUnitTest.dir/requires: CMakeFiles/converterUnitTest.dir/lexer.cpp.o.requires
CMakeFiles/converterUnitTest.dir/requires: CMakeFiles/converterUnitTest.dir/Tester.cpp.o.requires
CMakeFiles/converterUnitTest.dir/requires: CMakeFiles/converterUnitTest.dir/main.cpp.o.requires

.PHONY : CMakeFiles/converterUnitTest.dir/requires

CMakeFiles/converterUnitTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/converterUnitTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/converterUnitTest.dir/clean

CMakeFiles/converterUnitTest.dir/depend: parser.cpp
CMakeFiles/converterUnitTest.dir/depend: parser.hpp
CMakeFiles/converterUnitTest.dir/depend: lexer.cpp
CMakeFiles/converterUnitTest.dir/depend: lexer.hpp
	cd "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest" "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest" "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build" "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build" "/mnt/d/IITD/Sem1/COL701-Software Systems Lab/markdown2html/gtest/build/CMakeFiles/converterUnitTest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/converterUnitTest.dir/depend

