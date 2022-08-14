include(FetchContent)

FetchContent_Declare(
  c_spectre_api_content
  GIT_REPOSITORY https://gitlab.com/spectre.app/api.git
  GIT_TAG 06243e2673ffa4b050c957276d6cb18b0feb981f #Main
)

FetchContent_MakeAvailable(c_spectre_api_content)

add_library(c_spectre_api STATIC
  ${c_spectre_api_content_SOURCE_DIR}/c/aes.c
  ${c_spectre_api_content_SOURCE_DIR}/c/spectre-algorithm.c
  ${c_spectre_api_content_SOURCE_DIR}/c/spectre-algorithm_v0.c
  ${c_spectre_api_content_SOURCE_DIR}/c/spectre-algorithm_v1.c
  ${c_spectre_api_content_SOURCE_DIR}/c/spectre-algorithm_v2.c
  ${c_spectre_api_content_SOURCE_DIR}/c/spectre-algorithm_v3.c
  ${c_spectre_api_content_SOURCE_DIR}/c/spectre-marshal-util.c
  ${c_spectre_api_content_SOURCE_DIR}/c/spectre-marshal.c
  ${c_spectre_api_content_SOURCE_DIR}/c/spectre-types.c
  ${c_spectre_api_content_SOURCE_DIR}/c/spectre-util.c
)

target_include_directories(c_spectre_api INTERFACE ${c_spectre_api_content_SOURCE_DIR})
