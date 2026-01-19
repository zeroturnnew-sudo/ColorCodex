cmake_minimum_required(VERSION 3.10)
project(ColorCodex VERSION 0.0.0.1 LANGUAGES CXX)

# Determine C++ Standard
# Default: C++98 (maximum compatibility)
# Can be overridden: cmake -DCXX_STANDARD=11/14/17 ..
if(NOT DEFINED CXX_STANDARD)
    set(CXX_STANDARD 98)
endif()

message(STATUS "Building with C++${CXX_STANDARD}")

# Set C++ standard and disable extensions for portability
set(CMAKE_CXX_STANDARD ${CXX_STANDARD})
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Set output directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# Compiler flags for different configurations
if(MSVC)
    # Visual Studio
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4 /WX")
    set(CMAKE_CXX_FLAGS_DEBUG "/Zi /Od /D_DEBUG")
    set(CMAKE_CXX_FLAGS_RELEASE "/O2 /DNDEBUG")
else()
    # GCC/Clang - Common flags for all C++ standards
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wpedantic -Werror")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wshadow -Wdouble-promotion")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wformat=2 -Wnull-dereference")
    
    set(CMAKE_CXX_FLAGS_DEBUG "-g -O0 -DDEBUG_MODE")
    set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
    
    # C++98 specific: Disable C++11+ features
    if(CXX_STANDARD EQUAL 98)
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-variadic-macros")
    endif()
endif()

# Main executable
add_executable(colorcodex
    ZebDriver.cpp
    Game.cpp
    LinkedList.cpp
)

target_include_directories(colorcodex PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

# Enable testing
enable_testing()

# Add a simple test
add_test(
    NAME BasicExecution
    COMMAND colorcodex
)
