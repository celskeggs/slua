cmake_minimum_required(VERSION 3.6)
project(slua)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99 -O2 -Wall -Wextra -DLUA_COMPAT_5_2 -DLUA_USE_LINUX")

add_library(slua include
        src/lapi.c src/lauxlib.c src/lbaselib.c src/lbitlib.c src/lcode.c src/lcorolib.c src/lctype.c src/ldblib.c
        src/ldebug.c src/ldo.c src/ldump.c src/lfunc.c src/lgc.c src/linit.c src/liolib.c src/llex.c src/lmathlib.c
        src/lmem.c src/loadlib.c src/lobject.c src/lopcodes.c src/loslib.c src/lparser.c src/lstate.c src/lstring.c
        src/lstrlib.c src/ltable.c src/ltablib.c src/ltm.c src/lundump.c src/lutf8lib.c src/lvm.c src/lzio.c)
target_include_directories(slua PUBLIC include)
target_link_libraries(slua m dl)

add_executable(lua src/lua.c)
target_link_libraries(lua slua readline)
add_executable(luac src/luac.c)
target_link_libraries(luac slua)
