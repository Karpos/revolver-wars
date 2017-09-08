// ===========================================================================
// Purpose:     wxMedia library
// Author:      J Winwood, John Labenski
// Created:     14/11/2001
// Copyright:   (c) 2001-2002 Lomtick Software. All rights reserved.
// Licence:     wxWidgets licence
// wxWidgets:   Updated to 2.8.4
// ===========================================================================

// ---------------------------------------------------------------------------
//  wxMediaCtrl

%if wxLUA_USE_wxMediaCtrl && wxUSE_MEDIACTRL

%include "wx/mediactrl.h"

%enum wxMediaState
    wxMEDIASTATE_STOPPED
    wxMEDIASTATE_PAUSED
    wxMEDIASTATE_PLAYING
%endenum

%enum wxMediaCtrlPlayerControls
    wxMEDIACTRLPLAYERCONTROLS_NONE
    wxMEDIACTRLPLAYERCONTROLS_STEP
    wxMEDIACTRLPLAYERCONTROLS_VOLUME
    wxMEDIACTRLPLAYERCONTROLS_DEFAULT
%endenum

%define_string wxMEDIABACKEND_DIRECTSHOW   //wxT("wxAMMediaBackend")
%define_string wxMEDIABACKEND_MCI          //wxT("wxMCIMediaBackend")
%define_string wxMEDIABACKEND_QUICKTIME    //wxT("wxQTMediaBackend")
%define_string wxMEDIABACKEND_GSTREAMER    //wxT("wxGStreamerMediaBackend")
%wxchkver_2_8 %define_string wxMEDIABACKEND_REALPLAYER   //wxT("wxRealPlayerMediaBackend")
%wxchkver_2_8 %define_string wxMEDIABACKEND_WMP10        //wxT("wxWMP10MediaBackend")

%class wxMediaCtrl, wxControl
    wxMediaCtrl()
    wxMediaCtrl( wxWindow* parent, wxWindowID winid, const wxString& fileName = "", const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = 0, const wxString& szBackend = "", const wxValidator& val = wxDefaultValidator, const wxString& name = "wxMediaCtrl" )
    bool Create( wxWindow* parent, wxWindowID winid, const wxString& fileName = "", const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = 0, const wxString& szBackend = "", const wxValidator& val = wxDefaultValidator, const wxString& name = "wxMediaCtrl"  )

    wxFileOffset GetDownloadProgress()  // DirectShow only
    wxFileOffset GetDownloadTotal()     // DirectShow only
    wxMediaState GetState()
    double GetVolume()
    wxFileOffset Length()
    bool Load(const wxString& fileName)
    bool Load(const wxURI& location)
    bool Load(const wxURI& location, const wxURI& proxy)
    bool LoadURI(const wxString& fileName) // {   return Load(wxURI(fileName));       }
    bool LoadURIWithProxy(const wxString& fileName, const wxString& proxy) // {   return Load(wxURI(fileName), wxURI(proxy));       }
    bool Pause()
    bool Play()
    wxFileOffset Seek(wxFileOffset where, wxSeekMode mode = wxFromStart)
    bool Stop()
    bool SetVolume(double dVolume)
    double GetVolume()
    bool ShowPlayerControls(wxMediaCtrlPlayerControls flags = wxMEDIACTRLPLAYERCONTROLS_DEFAULT)
    wxFileOffset Tell();


%endclass

// ---------------------------------------------------------------------------
//  wxMediaEvent

%define wxMEDIA_FINISHED_ID
%define wxMEDIA_STOP_ID
%define wxMEDIA_LOADED_ID
%wxchkver_2_6_4 %define wxMEDIA_STATECHANGED_ID
%wxchkver_2_6_4 %define wxMEDIA_PLAY_ID
%wxchkver_2_6_4 %define wxMEDIA_PAUSE_ID

%class %delete wxMediaEvent, wxNotifyEvent
    %define_event wxEVT_MEDIA_FINISHED  // EVT_MEDIA_FINISHED(winid, fn)
    %define_event wxEVT_MEDIA_STOP      // EVT_MEDIA_STOP(winid, fn)
    %define_event wxEVT_MEDIA_LOADED    // EVT_MEDIA_LOADED(winid, fn)
    %wxchkver_2_6_4 %define_event wxEVT_MEDIA_STATECHANGED  // EVT_MEDIA_STATECHANGED(winid, fn)
    %wxchkver_2_6_4 %define_event wxEVT_MEDIA_PLAY          // EVT_MEDIA_PLAY(winid, fn)
    %wxchkver_2_6_4 %define_event wxEVT_MEDIA_PAUSE         // EVT_MEDIA_PAUSE(winid, fn)

    wxMediaEvent(wxEventType commandType = wxEVT_NULL, int winid = 0)

%endclass

%endif //wxLUA_USE_wxMediaCtrl && wxUSE_MEDIACTRL
