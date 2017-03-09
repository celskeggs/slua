# so that ltablua counts as a dependency
add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/luaembed_final.s
        COMMAND cp ${CMAKE_CURRENT_SOURCE_DIR}/src/luaembed.s ${CMAKE_CURRENT_BINARY_DIR}/luaembed_final.s
        DEPENDS src/luaembed.s include/ltablib.lua)

add_library(slua_libs include
        src/linit.c src/lmathlib.c src/lutf8lib.c src/lbaselib.c src/lbitlib.c src/lcorolib.c src/ldblib.c src/liolib.c
        src/loslib.c src/lstrlib.c src/ltablib.c ${CMAKE_CURRENT_BINARY_DIR}/luaembed_final.s)
target_include_directories(slua_libs PUBLIC include)
target_link_libraries(slua_libs slua)
