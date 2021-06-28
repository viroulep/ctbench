# ==============================================================================
# Set these CTBENCH_SCIPLOT_GIT_TAG and CTBENCH_SCIPLOT_GIT_REPOSITORY

if(NOT CTBENCH_SCIPLOT_GIT_TAG)
  set(CTBENCH_SCIPLOT_GIT_TAG "origin/master")
endif(NOT CTBENCH_SCIPLOT_GIT_TAG)

if(NOT CTBENCH_SCIPLOT_GIT_REPOSITORY)
  set(CTBENCH_SCIPLOT_GIT_REPOSITORY "https://github.com/sciplot/sciplot.git")
endif(NOT CTBENCH_SCIPLOT_GIT_REPOSITORY)

# ==============================================================================
# Fetching ctbench

include(FetchContent)
FetchContent_Declare(
  sciplot
  GIT_REPOSITORY ${CTBENCH_SCIPLOT_GIT_REPOSITORY}
  GIT_TAG        ${CTBENCH_SCIPLOT_GIT_TAG})
FetchContent_GetProperties(sciplot)
if(NOT sciplot_POPULATED)
  FetchContent_Populate(sciplot)
endif()
