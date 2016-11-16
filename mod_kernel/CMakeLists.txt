add_library(slua include
        src/lapi.c src/lauxlib.c src/lcode.c src/lctype.c src/ldebug.c src/ldo.c src/ldump.c src/lfunc.c src/lgc.c
        src/llex.c src/lmem.c ../mod_libs/src/loadlib.c src/lobject.c src/lopcodes.c src/lparser.c src/lstate.c src/lstring.c
        src/ltable.c src/ltm.c src/lundump.c src/lvm.c src/lzio.c)
target_include_directories(slua PUBLIC include)
target_link_libraries(slua m dl)
