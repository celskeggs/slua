
.globl lualib_bytes_ltablib_lua
.globl lualib_bytes_ltablib_lua_end
.section .rodata
.align 8

lualib_bytes_ltablib_lua:
    .incbin "ltablib.lua"
lualib_bytes_ltablib_lua_end:
    .byte 0

