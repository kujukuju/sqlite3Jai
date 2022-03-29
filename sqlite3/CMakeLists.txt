cmake_minimum_required(VERSION 3.5.2)

project(sqlite3 C)

set(CMAKE_C_STANDARD 99)
set(BUILD_SHARED_LIBS TRUE)

set(CMAKE_BUILD_TYPE RelWithDebInfo)

set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

include_directories(.)

add_library(sqlite3
    shell.c
    sqlite3.c
)

if(WIN32)
	# target_link_libraries(ws pthread ws2_32 -static)
    message("not sure what to do for windows")
else()
	target_link_libraries(sqlite3 pthread dl m)
endif(WIN32)