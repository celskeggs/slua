add_library(slua_libs include
        src/linit.c src/lmathlib.c src/lutf8lib.c src/lbaselib.c src/lbitlib.c src/lcorolib.c src/ldblib.c src/liolib.c
        src/loslib.c src/lstrlib.c src/ltablib.c)
target_include_directories(slua_libs PUBLIC include)
target_link_libraries(slua_libs slua)
