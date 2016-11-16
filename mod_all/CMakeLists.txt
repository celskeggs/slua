add_library(slua_all src/linit.c)
target_include_directories(slua_all PUBLIC include)
target_link_libraries(slua_all slua)
