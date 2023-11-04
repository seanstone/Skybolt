
add_source_group_tree(. SOURCE_FILES)

find_package(nlohmann_json REQUIRED)

find_package(Boost REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

include_directories("../")

set(CMAKE_INCLUDE_CURRENT_DIR ON)

add_library(SkyboltCommon STATIC ${SOURCE_FILES})

target_include_directories(SkyboltCommon PUBLIC ${Boost_INCLUDE_DIRS})

find_package (PkgConfig REQUIRED)
pkg_check_modules (glm REQUIRED glm)
target_include_directories(AircraftHud PUBLIC ${glm_INCLUDE_DIRS})

target_link_libraries(SkyboltCommon PUBLIC nlohmann_json::nlohmann_json)

target_compile_definitions(SkyboltCommon PUBLIC GLM_FORCE_RADIANS BOOST_ALL_NO_LIB)

skybolt_install(SkyboltCommon)