
add_source_group_tree(. SOURCE)

find_package(glm REQUIRED)

include_directories("../")

add_library(AircraftHud STATIC ${SOURCE})

if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
find_package (PkgConfig REQUIRED)
pkg_check_modules (glm REQUIRED glm)
target_include_directories(AircraftHud PUBLIC ${glm_INCLUDE_DIRS})
endif()

target_link_libraries(AircraftHud glm::glm)

skybolt_install(AircraftHud)