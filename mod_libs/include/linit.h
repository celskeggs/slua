/*
** $Id: lualib.h,v 1.44 2014/02/06 17:32:33 roberto Exp $
** Lua standard libraries
** See Copyright Notice in lua.h
*/


#ifndef linit_h
#define linit_h

#include "lua.h"

/* open all libraries */
LUALIB_API void (luaL_openlibs)(lua_State *L);

#endif
