cmake_minimum_required(VERSION 3.18)
project(time-trace-wrapper)

set(CMAKE_CXX_STANDARD 20)

# time-trace-wrapper
add_executable(time-trace-wrapper time-trace-wrapper.cpp)
target_include_directories(time-trace-wrapper PUBLIC include/)

set(CTBENCH_TIME_TRACE_WRAPPER_EXEC
  "${PROJECT_BINARY_DIR}/time-trace-wrapper"
  PARENT_SCOPE)

if(CTBENCH_ENABLE_TESTING)
  add_executable(time-trace-wrapper-test-exec tests/time-trace-wrapper.cpp)
  add_test(NAME time-trace-wrapper-test COMMAND time-trace-wrapper-test-exec)
  target_include_directories(time-trace-wrapper-test-exec PUBLIC include/)
endif(CTBENCH_ENABLE_TESTING)
