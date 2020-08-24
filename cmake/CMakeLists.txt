cmake_minimum_required(VERSION 3.10)

project(sample)

add_executable(sample main.cpp)
add_subdirectory(one)
add_dependencies(sample one)
set_property(TARGET sample PROPERTY CXX_STANDARD 14)
target_link_libraries(sample one)

install(
    TARGETS sample
    RUNTIME DESTINATION bin)

