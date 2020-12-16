cmake_minimum_required(VERSION 3.10)

project(one VERSION 0.1.0 LANGUAGES CXX)

add_library(one SHARED one.cpp)
set_property(TARGET one PROPERTY CXX_STANDARD 14)
set_property(TARGET one PROPERTY POSITION_INDEPENDENT_CODE ON)

target_include_directories(one PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<INSTALL_INTERFACE:include>  # <prefix>/include/mylib
)

install(TARGETS one
        EXPORT one-config
        RUNTIME DESTINATION bin
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
)

install(EXPORT one-config
        DESTINATION cmake
)

install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/
    DESTINATION include)
