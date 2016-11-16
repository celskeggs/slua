add_library(slua_mathlib src/lmathlib.c include)
target_include_directories(slua_mathlib PUBLIC include)
target_link_libraries(slua_mathlib slua)
