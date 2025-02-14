include(FetchContent)

# ==============================================================================
# nlohmann::json

set(JSON_BuildTests OFF)
set(JSON_Install OFF)
set(JSON_MultipleHeaders ON)
set(JSON_ImplicitConversions ON)
set(JSON_Diagnostics ON)
set(JSON_CI OFF)

FetchContent_Declare(json_content
  GIT_REPOSITORY https://github.com/nlohmann/json.git
  GIT_TAG v3.9.1)

FetchContent_MakeAvailable(json_content)

# ==============================================================================
# Sciplot

FetchContent_Declare(sciplot_content
  GIT_REPOSITORY https://github.com/sciplot/sciplot.git
  GIT_TAG master)

FetchContent_GetProperties(sciplot_content)
if(NOT sciplot_content_POPULATED)
  FetchContent_Populate(sciplot_content)
endif()
