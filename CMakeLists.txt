cmake_minimum_required(VERSION 3.18)
project(ctbench)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# This is needed for compilers relying on libstdc++ (eg: gcc, or clang using
# the libstdc++ installed with gcc).
# FIXME: there is probably a version for which is work; it may be worth to
# try to detect if the compiler needs that flag!
link_libraries(stdc++fs)

option(CTBENCH_ENABLE_TESTING "Enable testing for ctbench components." 0)

if(CTBENCH_ENABLE_TESTING)
  enable_testing()
endif(CTBENCH_ENABLE_TESTING)

add_subdirectory(time-trace-wrapper)

# Exporting time-trace-wrapper exec path
set(CTBENCH_TIME_TRACE_WRAPPER_EXEC
  ${CTBENCH_TIME_TRACE_WRAPPER_EXEC} PARENT_SCOPE)

add_subdirectory(grapher)

include(benchmarking.cmake)