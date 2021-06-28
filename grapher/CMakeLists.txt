cmake_minimum_required(VERSION 3.18)
project(grapher)

file(GLOB_RECURSE GRAPHER_SOURCES "src/*.cpp")
add_executable(grapher ${GRAPHER_SOURCES} ${IMPLOT_SOURCES})

target_include_directories(grapher PRIVATE
  "include/"
  ${JSON_INCLUDE_DIR}
  ${sciplot_SOURCE_DIR}
  )
