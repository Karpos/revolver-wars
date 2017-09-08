/////////////////////////////////////////////////////////////////////////////
// Name:        wxluaedit.cpp
// Purpose:     wxLuaEditor app
// Author:      John Labenski
// Modified by:
// Created:     04/01/98
// RCS-ID:
// Copyright:   (c) John Labenski
// Licence:     wxWidgets licence
/////////////////////////////////////////////////////////////////////////////

// For compilers that support precompilation, includes "wx/wx.h".
#include "wx/wxprec.h"

#ifdef __BORLANDC__
    #pragma hdrstop
#endif

#ifndef WX_PRECOMP
    #include "wx/wx.h"
#endif

#ifdef __WXGTK__
#include <locale.h>
#endif

#include "wx/cmdline.h"
#include "wx/image.h"
#include "wx/fileconf.h"
#include "wx/stedit/stedit.h"
#include "wxledit.h"

#include "wxluasocket/include/wxldserv.h"
#include "wxluasocket/include/wxldtarg.h"
#include "wxluadebug/include/wxlstack.h"

#include "../../wxlua/src/lconsole.cpp"

//#include "art/wxlua.xpm" get it from the lconsole

wxWindowID ID_WXLUASTATE_DEBUG = 200;
wxWindowID ID_WXLUA_CONSOLE = 201;

// Declare the binding initialization functions
// Note : We could also do this "extern bool wxLuaBinding_XXX_init();" and
//        later call "wxLuaBinding_XXX_init();" to initialize it.
//        However we use the macros that include #if conditions to have a
//        better chance of determining what libs are available.
// Note : Make sure you link to the binding libraries.

#include "wxbind/include/wxbinddefs.h"
WXLUA_DECLARE_BIND_ALL

// ----------------------------------------------------------------------------
// command line options
// ----------------------------------------------------------------------------

static const wxCmdLineEntryDesc g_cmdLineDesc[] =
{
    // help
    { wxCMD_LINE_SWITCH, wxT("h"), wxT("help"),
        _("Show this help message"),
        wxCMD_LINE_VAL_NONE, wxCMD_LINE_OPTION_HELP },

    { wxCMD_LINE_OPTION, wxT("d"), wxT("debuggee"), wxT("run as debuggee, internal use"),
        wxCMD_LINE_VAL_STRING, wxCMD_LINE_PARAM_OPTIONAL },

//    { wxCMD_LINE_OPTION, wxT("r"), wxT("run"), wxT("run wxLua program w/ command line args"),
//        wxCMD_LINE_VAL_STRING, wxCMD_LINE_PARAM_OPTIONAL|wxCMD_LINE_NEEDS_SEPARATOR },

    // filenames to open in the editor
    { wxCMD_LINE_PARAM, wxEmptyString, wxEmptyString,
        _("lua files to open in the editor"),
        wxCMD_LINE_VAL_STRING, wxCMD_LINE_PARAM_OPTIONAL | wxCMD_LINE_PARAM_MULTIPLE },

    { wxCMD_LINE_NONE }
};

// ----------------------------------------------------------------------------
// wxLuaEditorApp
// ----------------------------------------------------------------------------

class wxLuaEditorApp : public wxApp
{
public:

    virtual bool OnInit();
    virtual int  OnExit();

    void OnLua(wxLuaEvent &event);

    void DisplayMessage(const wxString &msg, bool is_error,
                        const wxLuaState& wxlState = wxNullLuaState);

    wxLuaDebugTarget*   m_pDebugTarget;
    wxLuaState          m_wxlState;
    wxString            m_programName;
    wxLuaConsoleWrapper m_luaConsoleWrapper;
    bool                m_want_console;

private:
    DECLARE_EVENT_TABLE();
};

IMPLEMENT_APP(wxLuaEditorApp)

// ----------------------------------------------------------------------------
// wxLuaEditorFrame
// ----------------------------------------------------------------------------

class wxLuaEditorFrame : public wxSTEditorFrame
{
public:

    wxLuaEditorFrame(const wxString& title, const wxPoint& pos, const wxSize& size,
                     long frame_style = wxDEFAULT_FRAME_STYLE) : wxSTEditorFrame()
    {
        Create(title, pos, size, frame_style);
    }

    virtual ~wxLuaEditorFrame() {}

    bool Create(const wxString& title, const wxPoint& pos, const wxSize& size,
                long frame_style = wxDEFAULT_FRAME_STYLE);

    void OnMenu( wxCommandEvent& event ) { HandleMenuEvent(event); }
    virtual bool HandleMenuEvent( wxCommandEvent &event );
    void OnAbout(wxCommandEvent& event);

    wxLuaIDE *m_wxluaIDE;

private:
    DECLARE_ABSTRACT_CLASS(wxLuaEditorFrame)
    DECLARE_EVENT_TABLE()
};

// ----------------------------------------------------------------------------
// wxLuaEditorApp
// ----------------------------------------------------------------------------

BEGIN_EVENT_TABLE(wxLuaEditorApp, wxApp)
    EVT_LUA_PRINT       (ID_WXLUASTATE_DEBUG, wxLuaEditorApp::OnLua)
    EVT_LUA_ERROR       (ID_WXLUASTATE_DEBUG, wxLuaEditorApp::OnLua)
    EVT_LUA_DEBUG_HOOK  (ID_WXLUASTATE_DEBUG, wxLuaEditorApp::OnLua)
END_EVENT_TABLE()

bool wxLuaEditorApp::OnInit()
{
    m_pDebugTarget = NULL;
    m_programName  = argv[0];
    m_want_console = false;

#if defined(__WXMSW__) && wxCHECK_VERSION(2, 3, 3)
    WSADATA wsaData;
    WORD wVersionRequested = MAKEWORD(1, 1);
    WSAStartup(wVersionRequested, &wsaData);
#endif // defined(__WXMSW__) && wxCHECK_VERSION(2, 3, 3)

    wxInitAllImageHandlers();

#ifdef __WXGTK__
    // this call is very important since otherwise scripts using the decimal
    // point '.' could not work with those locales which use a different symbol
    // (e.g. the comma) for the decimal point...
    // It doesn't work to put os.setlocale('c', 'numeric') in the Lua file that
    // you want to use decimal points in. That's because the file has been lexed
    // and compiler before the locale has changed, so the lexer - the part that
    // recognises numbers - will use the old locale.
    setlocale(LC_NUMERIC, "C");
#endif

    // Initialize the wxLua bindings we want to use.
    // See notes for WXLUA_DECLARE_BIND_ALL above.
    WXLUA_IMPLEMENT_BIND_ALL

    // parse command line
    wxCmdLineParser parser(g_cmdLineDesc, argc, argv);

    switch ( parser.Parse() )
    {
        case -1 :
        {
            // help should be given by the wxCmdLineParser, exit program
            return false;
        }
        case 0:
        {
            wxString debugString;
            if (parser.Found(wxT("d"), &debugString))
            {
                // Note: wxLuaDebuggerServer::StartClient() runs
                //       wxExecute(m_programName -d[host]:[port], ...)

                wxString serverName(debugString.BeforeFirst(wxT(':')));

                if (serverName.IsEmpty())
                {
                    DisplayMessage(_("The wxLua debugger server host name is empty : wxLua -d[host]:[port]\n"), true);
                }
                else
                {
                    long portNumber = 0;
                    if (debugString.AfterFirst(wxT(':')).ToLong(&portNumber))
                    {
                        m_wxlState = wxLuaState(this, ID_WXLUASTATE_DEBUG);
                        if (!m_wxlState.Ok())
                            return false;

                        m_pDebugTarget = new wxLuaDebugTarget(m_wxlState, serverName, (int)portNumber);
                        if (m_pDebugTarget != NULL)
                        {
                            bool ok =  m_pDebugTarget->Run();
                            return ok;
                        }
                        else
                            DisplayMessage(_("The wxLua debug target cannot start.\n"), true);
                    }
                }
                return false;
            }

            break;
        }
        default:
        {
            wxLogMessage(wxT("Unknown command line option, aborting."));
            return false;
        }
    }

    // These are the options for the frame
    wxSTEditorOptions steOptions(STE_DEFAULT_OPTIONS,
                                 STS_DEFAULT_OPTIONS,
                                 STN_DEFAULT_OPTIONS,
                                 STF_DEFAULT_OPTIONS,
                                 STE_CONFIG_DEFAULT_OPTIONS,
                                 wxT("untitled.lua"));
    steOptions.SetFrameOption(STF_CREATE_NOTEBOOK, false);
    steOptions.SetFrameOption(STF_CREATE_SINGLEPAGE, false);
    steOptions.SetFrameOption(STF_CREATE_SIDEBAR, false);

    // use a wxFileConfig to load/save our preferences
    wxFileConfig *config = new wxFileConfig(wxT("wxLuaEdit"), wxT("wxLua"));
    wxConfigBase::Set((wxConfigBase*)config);
    steOptions.LoadConfig(*wxConfigBase::Get(false));

    wxLuaEditorFrame *frame = new wxLuaEditorFrame(_T("wxLuaEditor"),
                                            wxDefaultPosition, wxSize(600, 400));
#if wxCHECK_VERSION(2,7,1)
    frame->SetSizeHints(wxSize(300, 300));
#else // < 2.7.1
    frame->SetMinSize(wxSize(300, 300));
#endif // wxCHECK_VERSION(2,7,1)
    frame->CreateOptions(steOptions);
    wxIcon icon;
    icon.CopyFromBitmap(wxBitmap(LUA_xpm));
    frame->SetIcon(icon);

    frame->GetToolBar()->AddSeparator();
    frame->m_wxluaIDE->PopulateToolBar(frame->GetToolBar(), WXLUAIDE_TB_LUA);
    frame->m_wxluaIDE->SetToolBar(frame->GetToolBar());
    frame->m_wxluaIDE->SetMenuBar(frame->GetMenuBar());

    // The size of the frame isn't set when the splitter is created, resize it
    wxSplitterWindow *splitWin = frame->m_wxluaIDE->GetSplitterWin();
    splitWin->SetSashPosition(splitWin->GetSize().y/2);

    // ------------------------------------------------------------------------
    // handle loading the files (code taken from wxStEdit sample program)
    size_t n;

    // gather up all the filenames to load
    wxArrayString fileNames;
    wxArrayString badFileNames;
    for (n = 0; n < parser.GetParamCount(); n++)
        fileNames.Add(parser.GetParam(n));

    // if the files have *, ? or are directories, don't try to load them
    for (n=0; n < fileNames.GetCount(); n++)
    {
        if (wxIsWild(fileNames[n]))
        {
            badFileNames.Add(fileNames[n]);
            fileNames.RemoveAt(n);
            n--;
        }
        else if (wxDirExists(fileNames[n]))
        {
            fileNames.RemoveAt(n);
            n--;
        }
    }

    // If there are any good files left, try to load them
    if (fileNames.GetCount() > 0u)
    {
        if (wxFileExists(fileNames[0]))
            frame->GetEditor()->LoadFile( fileNames[0] );
        else
            frame->GetEditor()->NewFile( fileNames[0] );

        fileNames.RemoveAt(0);
        if (fileNames.GetCount() > 0u)
            frame->GetEditorNotebook()->LoadFiles( &fileNames );
    }

    frame->UpdateFileTreeCtrl();
    frame->Show(true);

    // filenames had *, ? or other junk so we didn't load them
    if (badFileNames.GetCount())
    {
        wxString msg(wxT("There was a problem trying to load file(s):\n"));
        for (n=0; n < badFileNames.GetCount(); n++)
            msg += wxT("'") + badFileNames[n] + wxT("'\n");

        wxMessageBox(msg, wxT("Unable to load file(s)"), wxOK|wxICON_ERROR, frame);
    }

    return true;
}

int wxLuaEditorApp::OnExit()
{
    // If acting as a debuggee, we're done - disconnect from the debugger.
    if (m_pDebugTarget != NULL)
    {
        m_pDebugTarget->Stop();
        delete m_pDebugTarget;
        m_pDebugTarget = NULL;
    }

    if (m_wxlState.Ok())
    {
        m_wxlState.CloseLuaState(true);
        m_wxlState.Destroy();
    }

    wxSafeYield();  // make sure windows get destroyed

    wxApp::OnExit();

#if defined(__WXMSW__) && wxCHECK_VERSION(2, 3, 3)
    WSACleanup();
#endif // defined(__WXMSW__) && wxCHECK_VERSION(2, 3, 3)

    return 0;
}

void wxLuaEditorApp::OnLua( wxLuaEvent &event )
{
    if (event.GetEventType() == wxEVT_LUA_PRINT)
    {
        //if (m_pConsole != NULL)
        //    m_pConsole->DisplayText(event.GetString());
        //else
#ifdef __WXMSW__
            wxMessageBox(event.GetString(), wxT("wxLua"));
#else
            fprintf(stderr, wx2lua(event.GetString() + wxT("\n")));
#endif // __WXMSW__
    }
    else if (event.GetEventType() == wxEVT_LUA_ERROR)
    {
        DisplayMessage(event.GetString(), true);
    }
}

void wxLuaEditorApp::DisplayMessage(const wxString &msg, bool is_error,
                                    const wxLuaState& wxlState)
{
    // If they closed the console, but specified they wanted it
    // on the command-line, recreate it.
    if (m_want_console && (!m_luaConsoleWrapper.Ok()))
    {
        m_luaConsoleWrapper.SetConsole(new wxLuaConsole(&m_luaConsoleWrapper, NULL, ID_WXLUA_CONSOLE));
        m_luaConsoleWrapper.GetConsole()->Show(true);
    }

    if (!is_error)
    {
        if (m_luaConsoleWrapper.Ok())
            m_luaConsoleWrapper.GetConsole()->AppendText(msg);
        else
        {
#ifdef __WXMSW__
            wxMessageBox(msg, wxT("wxLua Print"));
#else
            //fprintf(stderr, wx2lua(msg + wxT("\n")));
            wxPrintf(wxT("%s\n"), msg.c_str());
#endif // __WXMSW__
        }
    }
    else
    {
        if (m_pDebugTarget != NULL)
            m_pDebugTarget->DisplayError(msg);
        else if (m_luaConsoleWrapper.Ok())
        {
            m_luaConsoleWrapper.GetConsole()->AppendText(msg);
            m_luaConsoleWrapper.GetConsole()->SetExitWhenClosed(is_error);
            if (wxlState.Ok())
                m_luaConsoleWrapper.GetConsole()->DisplayStack(wxlState);
        }
        else
        {
#ifdef __WXMSW__
            wxMessageBox(msg, wxT("wxLua Error"));
#else
            //fprintf(stderr, wx2lua(msg + wxT("\n")));
            wxPrintf(wxT("%s\n"), msg.c_str());
#endif // __WXMSW__
        }
    }
}

// ----------------------------------------------------------------------------
// wxLuaEditorFrame
// ----------------------------------------------------------------------------
IMPLEMENT_ABSTRACT_CLASS(wxLuaEditorFrame, wxSTEditorFrame)

BEGIN_EVENT_TABLE(wxLuaEditorFrame, wxSTEditorFrame)
    EVT_MENU(wxID_ANY, wxLuaEditorFrame::OnMenu)
END_EVENT_TABLE()

bool wxLuaEditorFrame::Create(const wxString& title, const wxPoint& pos, const wxSize& size,
                              long frame_style)

{
    m_wxluaIDE = NULL;
    if (!wxSTEditorFrame::Create(NULL, wxID_ANY, title, pos, size, frame_style))
        return false;

    m_sideSplitter = new wxSplitterWindow(this, wxID_ANY);
    m_sideSplitter->SetMinimumPaneSize(10);
    m_sideNotebook = new wxNotebook(m_sideSplitter, wxID_ANY);

    m_fileTreeCtrl = new wxTreeCtrl(m_sideNotebook, ID_STF_FILE_TREECTRL,
                                    wxDefaultPosition, wxDefaultSize, wxTR_SINGLE|wxTR_HAS_BUTTONS|wxTR_HIDE_ROOT );
    m_fileTreeCtrl->SetIndent(5);
    m_fileTreeCtrl->AddRoot(wxT("Files"));
    m_sideNotebook->AddPage(m_fileTreeCtrl, wxT("Files"));

    m_sideSplitterWin1 = m_sideNotebook;

    m_wxluaIDE = new wxLuaIDE(m_sideSplitter, wxID_ANY, wxDefaultPosition, wxSize(400,300), 0, 0);
    m_steNotebook = m_wxluaIDE->GetEditorNotebook();
    m_sideSplitterWin2 = m_wxluaIDE;

    m_sideSplitter->SplitVertically(m_sideNotebook, m_wxluaIDE, 150);

    wxLuaShell *shell = m_wxluaIDE->GetLuaShellWin();
    shell->AppendText(wxT("Welcome to the wxLuaShell, an interactive lua interpreter.\n"));
    shell->AppendText(wxT("  Enter lua code and press <enter> to run it.\n"));
    shell->AppendText(wxT("  Multiline code can be typed by pressing <shift>+<enter>.\n"));
    shell->AppendText(wxT("  Values can be printed by prepending '=' or 'return'.\n"));
    shell->AppendText(wxT("  The wxLua intrepreter can be restarted with the command 'reset'.\n"));
    shell->MarkerDeleteAll(wxSTEditorShell::markerPrompt);
    shell->CheckPrompt(true);

    return true;
}

bool wxLuaEditorFrame::HandleMenuEvent(wxCommandEvent &event)
{
    wxWindow *focusWin = FindFocus();

    switch (event.GetId())
    {
        case wxID_ABOUT :
        {
            OnAbout(event);
            return true;
        }
        case wxID_CUT       :
        case wxID_COPY      :
        case wxID_PASTE     :
        case wxID_SELECTALL :
        {
            // These windows only handle these IDs
            if (focusWin == m_wxluaIDE->GetLuaOutputWin())
                return m_wxluaIDE->GetLuaOutputWin()->HandleMenuEvent(event);
            if (focusWin == m_wxluaIDE->GetLuaShellWin())
                return m_wxluaIDE->GetLuaShellWin()->HandleMenuEvent(event);

            break;
        }

        default : break;
    }

    if (!wxSTEditorFrame::HandleMenuEvent(event))
        m_wxluaIDE->OnMenu(event);

    return true;
}

void wxLuaEditorFrame::OnAbout(wxCommandEvent& WXUNUSED(event))
{
    // since the dialog is modal, it's ok that the interpreter is created on the stack
    wxLuaState wxlState(this, wxID_ANY);

    // Create a script to run
    //    local msg = "Welcome to wxLua!\n"
    //    msg = msg..string.format("%s", "This dialog is created from a wxLua script.")
    //    wx.wxMessageBox(msg, "About wxLua Embedded", wx.wxOK + wx.wxICON_INFORMATION)

    wxString script;
    script += wxT("local msg = \"Welcome to wxLuaEditor using \"..wxlua.wxLUA_VERSION_STRING..\"\\n\"");
    script += wxT("msg = msg..\"and compiled with \"..wx.wxVERSION_STRING..\"\\n\"");
    script += wxT("msg = msg..\"Written by John Labenski\\n\\n\"");
    script += wxT("msg = msg..string.format(\"%s\", \"This dialog is created from a wxLua script.\")");
    script += wxT("wx.wxMessageBox(msg, \"About wxLua Editor\", wx.wxOK + wx.wxICON_INFORMATION)");

    wxlState.RunString(script);
    wxlState.Destroy();

    // Equivalent code
    //wxString msg;
    //msg.Printf( _T("This is the About dialog of the minimal sample.\n")
    //            _T("Welcome to %s"), wxVERSION_STRING);
    //wxMessageBox(msg, _T("About Minimal"), wxOK | wxICON_INFORMATION, this);
}
