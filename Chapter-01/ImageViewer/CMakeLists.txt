cmake_minimum_required(VERSION 3.1.0)

project(Qt5-helloworld)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

if(CMAKE_VERSION VERSION_LESS "3.7.0")
    set(CMAKE_INCLUDE_CURRENT_DIR ON)
endif()

find_package(Qt5 COMPONENTS Widgets REQUIRED)
find_package(OpenCV REQUIRED)

add_executable(helloworld
    mainwindow.cpp
    main.cpp
)

target_link_libraries(helloworld ${OpenCV_LIBS} Qt5::Widgets)

