add_custom_target(luatest_short
        COMMAND $<TARGET_FILE:lua> -e_U=true all.lua WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_custom_target(luatest
        COMMAND $<TARGET_FILE:lua> all.lua WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
