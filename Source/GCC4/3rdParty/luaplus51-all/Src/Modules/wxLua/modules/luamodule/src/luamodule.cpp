/////////////////////////////////////////////////////////////////////////////
// Purpose:     wxLuaModuleApp - code to allow wxLua to be used as a module using require"wx"
// Author:      John Labenski, J Winwood
// Created:     14/11/2001
// Copyright:   (c) 2001-2002 Lomtick Software. All rights reserved.
// Licence:     wxWidgets licence
/////////////////////////////////////////////////////////////////////////////

#include "wx/wxprec.h"

#ifndef WX_PRECOMP
     #include "wx/wx.h"
#endif

#include "wx/image.h"       // for wxInitAllImageHandlers
#include "wxlua/include/wxlstate.h"
#include "luamodule/include/luamoduledefs.h"

extern "C"
{
    WXDLLIMPEXP_LUAMODULE int luaopen_wx(lua_State *L); // force C linkage w/o name mangling
}

static wxLuaState s_wxlState; // This is our wxLuaState for the module

// Declare the binding initialization functions as extern so we don't have to
//  #include the binding header for simplicity.
#include "wxbind/include/wxbinddefs.h"
WXLUA_DECLARE_BIND_ALL

// ----------------------------------------------------------------------------
// wxLuaModuleApp
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_LUAMODULE wxLuaModuleApp : public wxApp
{
public:
    wxLuaModuleApp() : wxApp() {}

    // Override the base class virtual functions
    virtual bool OnInit();
    //virtual int  OnExit();
    virtual int  MainLoop();

    void OnLua( wxLuaEvent &event );
    void DisplayError(const wxString &errorStr) const;

private:
    DECLARE_ABSTRACT_CLASS(wxLuaModuleApp)
    DECLARE_EVENT_TABLE()
};

// ----------------------------------------------------------------------------
// wxLuaModuleApp
// ----------------------------------------------------------------------------

IMPLEMENT_ABSTRACT_CLASS(wxLuaModuleApp, wxApp);
IMPLEMENT_APP_NO_MAIN(wxLuaModuleApp)

BEGIN_EVENT_TABLE(wxLuaModuleApp, wxApp)
    EVT_LUA_PRINT       (wxID_ANY, wxLuaModuleApp::OnLua)
    EVT_LUA_ERROR       (wxID_ANY, wxLuaModuleApp::OnLua)
    //EVT_LUA_DEBUG_HOOK  (wxID_ANY, wxLuaModuleApp::OnLua)
END_EVENT_TABLE()

// Override the base class virtual functions
bool wxLuaModuleApp::OnInit()
{
    return true;
}

int wxLuaModuleApp::MainLoop()
{
    // only run the mainloop if there are any toplevel windows
    int retval = 0;
    bool initialized = (wxTopLevelWindows.GetCount() != 0);
    if (initialized && !IsMainLoopRunning())
        retval = wxApp::MainLoop();
    return retval;
}

void wxLuaModuleApp::OnLua( wxLuaEvent &event )
{
    DisplayError(event.GetString());
}

void wxLuaModuleApp::DisplayError(const wxString &errorStr) const
{
#ifdef __WXMSW__
    wxMessageBox(errorStr, wxT("wxLua"));
#else
    wxPrintf(wxT("%s\n"), errorStr.c_str()); fflush(stdout);
#endif
}

// ----------------------------------------------------------------------------
// luaopen_wx the C function for require to call
// ----------------------------------------------------------------------------

wxLuaModuleApp* app = NULL;

int luaopen_wx(lua_State *L)
{
    // only initialize the wxLuaState once, allows require to be called more than once
    if (!s_wxlState.Ok())
    {
        int argc = 0;
        wxChar **argv = NULL;

        if (!wxEntryStart(argc, argv))
        {
            wxPrintf(wxT("Error calling wxEntryStart(argc, argv), aborting.\n"));
            return 0;
        }
        if (!wxTheApp || !wxTheApp->CallOnInit())
        {
            wxPrintf(wxT("Error calling wxTheApp->CallOnInit(), aborting.\n"));
            return 0;
        }

        wxTheApp->SetExitOnFrameDelete(true);
        wxInitAllImageHandlers();

        WXLUA_IMPLEMENT_BIND_ALL
        s_wxlState.Create(L, wxLUASTATE_SETSTATE|wxLUASTATE_OPENBINDINGS|wxLUASTATE_STATICSTATE);
        s_wxlState.SetEventHandler((wxEvtHandler*)wxTheApp);
    }

    lua_getglobal(L, "wx"); // push global wx table on the stack
    return 1;
}



