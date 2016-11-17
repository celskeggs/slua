cmake_minimum_required(VERSION 3.6)
project(slua)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99 -O2 -Wall -Wextra -DLUA_COMPAT_5_2 -DLUA_USE_LINUX")

add_subdirectory("mod_kernel")
add_subdirectory("mod_libs")
add_subdirectory("mod_compiler")
add_subdirectory("mod_interpreter")
add_subdirectory("tests")
