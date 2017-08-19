cmake_minimum_required(VERSION 3.7)
project(micky)

set(CMAKE_CXX_STANDARD 11)

find_package(Boost 1.64.0)

if(Boost_FOUND)
    message(STATUS "Boost_INCLUDE_DIRS: ${Boost_INCLUDE_DIRS}")
    message(STATUS "Boost_LIBRARIES: ${Boost_LIBRARIES}")
    message(STATUS "Boost_VERSION: ${Boost_VERSION}")
    include_directories(${Boost_INCLUDE_DIRS})
endif()

include_directories(${PROJECT_SOURCE_DIR}/micky/include)

set(SOURCE_FILES library.cpp library.h)
add_library(micky ${SOURCE_FILES})

if(Boost_FOUND)
    target_link_libraries(micky ${Boost_LIBRARIES})
endif()