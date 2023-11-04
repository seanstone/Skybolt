
add_source_group_tree(. SOURCE)

include_directories("../")

add_library(AircraftHud STATIC ${SOURCE})

find_package (PkgConfig REQUIRED)
pkg_check_modules (glm REQUIRED glm)
target_include_directories(AircraftHud PUBLIC ${glm_INCLUDE_DIRS})

target_link_libraries(AircraftHud)

skybolt_install(AircraftHud)