/*
** $Id: lualib.h,v 1.44 2014/02/06 17:32:33 roberto Exp $
** Lua standard libraries
** See Copyright Notice in lua.h
*/


#ifndef lutf8lib_h
#define lutf8lib_h

#include "lua.h"

#define LUA_UTF8LIBNAME    "utf8"

LUAMOD_API int (luaopen_utf8)(lua_State *L);

#endif
