set(APP_NAME SkyboltSimTests)

file(GLOB SOURCE_FILES *.cpp *.h)

include_directories("../")

find_package(Catch2)

add_executable(${APP_NAME} ${SOURCE_FILES})

target_include_directories(${APP_NAME} PUBLIC $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/third-party/Catch2/single_include>)

target_link_libraries (${APP_NAME} SkyboltSim Catch2::Catch2)

catch_discover_tests(${APP_NAME})