add_library(slua_utf8lib src/lutf8lib.c include)
target_include_directories(slua_utf8lib PUBLIC include)
target_link_libraries(slua_utf8lib slua)
