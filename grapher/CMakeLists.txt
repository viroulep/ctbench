cmake_minimum_required(VERSION 3.20)
project(grapher)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 20)

# External libraries
include(cmake/external_libraries.cmake)

# LLVM as a library
find_package(LLVM REQUIRED CONFIG)
llvm_map_components_to_libnames(llvm_libs core support)

# Linking

# Executable declarations

file(GLOB_RECURSE GRAPHER_SOURCES lib/*.cpp)

# Creating the grapher library
add_library(grapher STATIC ${GRAPHER_SOURCES})

target_include_directories(grapher PUBLIC include)
target_link_libraries(grapher PUBLIC nlohmann_json::nlohmann_json)
target_link_libraries(grapher PUBLIC ${llvm_libs})
target_include_directories(grapher PUBLIC ${sciplot_content_SOURCE_DIR})

# Adding executable subdirectories
add_subdirectory(grapher-plot)
add_subdirectory(grapher-utils)
