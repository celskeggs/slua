/*
** $Id: lualib.h,v 1.44 2014/02/06 17:32:33 roberto Exp $
** Lua standard libraries
** See Copyright Notice in lua.h
*/


#ifndef lmathlib_h
#define lmathlib_h

#include "lua.h"

#define LUA_MATHLIBNAME    "math"

LUAMOD_API int (luaopen_math)(lua_State *L);

#endif
