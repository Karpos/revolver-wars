// ---------------------------------------------------------------------------
// wxluasocket.h - headers and wxLua types for wxLua binding
//
// This file was generated by genwxbind.lua 
// Any changes made to this file will be lost when the file is regenerated
// ---------------------------------------------------------------------------

#ifndef __HOOK_WXLUA_wxluasocket_H__
#define __HOOK_WXLUA_wxluasocket_H__

#include "wx/defs.h"
#include "wxluasocket/include/wxluasocketdefs.h"
#include "wxbind/include/wxcore_bind.h"

#include "wxlua/include/wxlstate.h"
#include "wxlua/include/wxlbind.h"

// ---------------------------------------------------------------------------
// Check if the version of binding generator used to create this is older than
//   the current version of the bindings.
//   See 'bindings/genwxbind.lua' and 'modules/wxlua/include/wxldefs.h'
#if WXLUA_BINDING_VERSION > 30
#   error "The WXLUA_BINDING_VERSION in the bindings is too old, regenerate bindings."
#endif //WXLUA_BINDING_VERSION > 30
// ---------------------------------------------------------------------------

// binding class
class WXDLLIMPEXP_WXLUASOCKET wxLuaBinding_wxluasocket : public wxLuaBinding
{
public:
    wxLuaBinding_wxluasocket();


private:
    DECLARE_DYNAMIC_CLASS(wxLuaBinding_wxluasocket)
};


// initialize wxLuaBinding_wxluasocket for all wxLuaStates
extern WXDLLIMPEXP_WXLUASOCKET wxLuaBinding* wxLuaBinding_wxluasocket_init();

// ---------------------------------------------------------------------------
// Includes
// ---------------------------------------------------------------------------

#include "wx/defs.h"
#include "wx/object.h"
#include "wxlua/include/wxlbind.h"
#include "wxlua/include/wxlstate.h"
#include "wxluasocket/include/wxldserv.h"

// ---------------------------------------------------------------------------
// Lua Tag Method Values and Tables for each Class
// ---------------------------------------------------------------------------

extern WXDLLIMPEXP_DATA_WXLUASOCKET(int) wxluatype_wxLuaDebuggerEvent;
extern WXDLLIMPEXP_DATA_WXLUASOCKET(int) wxluatype_wxLuaDebuggerServer;



#endif // __HOOK_WXLUA_wxluasocket_H__

