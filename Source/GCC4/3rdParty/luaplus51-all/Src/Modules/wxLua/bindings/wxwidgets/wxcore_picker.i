// ===========================================================================
// Purpose:     wxPickerXXX controls
// Author:      John Labenski
// Created:     14/11/2001
// Copyright:   (c) 2007 John Labenski
// Licence:     wxWidgets licence
// wxWidgets:   Updated to 2.8.4
// ===========================================================================

%if %wxchkver_2_8 && wxLUA_USE_wxPicker

// ---------------------------------------------------------------------------
// wxPickerBase

%include "wx/pickerbase.h"

%define wxPB_USE_TEXTCTRL

%class wxPickerBase, wxControl
    // No construcor - this is a base class

    // margin between the text control and the picker
    void SetInternalMargin(int newmargin)
    int GetInternalMargin() const

    // proportion of the text control
    void SetTextCtrlProportion(int prop)
    int GetTextCtrlProportion() const

    // proportion of the picker control
    void SetPickerCtrlProportion(int prop)
    int GetPickerCtrlProportion() const

    bool IsTextCtrlGrowable() const
    void SetTextCtrlGrowable(bool grow = true)

    bool IsPickerCtrlGrowable() const
    void SetPickerCtrlGrowable(bool grow = true)

   bool HasTextCtrl() const
    wxTextCtrl *GetTextCtrl()
    wxControl *GetPickerCtrl()

    // methods that derived class must/may override
    virtual void UpdatePickerFromTextCtrl()
    virtual void UpdateTextCtrlFromPicker()

%endclass

// ---------------------------------------------------------------------------
// wxColourPickerCtrl

%if wxLUA_USE_wxColourPickerCtrl && wxUSE_COLOURPICKERCTRL

%include "wx/clrpicker.h"

%define wxCLRP_SHOW_LABEL
%define wxCLRP_USE_TEXTCTRL
%define wxCLRP_DEFAULT_STYLE

%class wxColourPickerCtrl, wxPickerBase
    wxColourPickerCtrl()
    // Note default color is *wxBLACK
    wxColourPickerCtrl(wxWindow *parent, wxWindowID id, const wxColour& col, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxCLRP_DEFAULT_STYLE, const wxValidator& validator = wxDefaultValidator, const wxString& name = "wxColourPickerCtrl")
    bool Create(wxWindow *parent, wxWindowID id, const wxColour& col, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxCLRP_DEFAULT_STYLE, const wxValidator& validator = wxDefaultValidator, const wxString& name = "wxColourPickerCtrl")

    // get the colour chosen
    wxColour GetColour() const
    // set currently displayed color
    void SetColour(const wxColour& col)
    // set colour using RGB(r,g,b) syntax or considering given text as a colour name;
    // returns true if the given text was successfully recognized.
    bool SetColour(const wxString& text)

%endclass

// ---------------------------------------------------------------------------
// wxColourPickerEvent

%class %delete wxColourPickerEvent, wxCommandEvent
    %define_event wxEVT_COMMAND_COLOURPICKER_CHANGED // EVT_COLOURPICKER_CHANGED(id, func)

    wxColourPickerEvent()
    wxColourPickerEvent(wxObject *generator, int id, const wxColour &col)

    wxColour GetColour() const
    void SetColour(const wxColour &c)
%endclass

%endif //wxLUA_USE_wxColourPickerCtrl && wxUSE_COLOURPICKERCTRL

// ---------------------------------------------------------------------------
// wxDatePickerCtrl

%if wxLUA_USE_wxDatePickerCtrl && wxUSE_DATEPICKCTRL

%include "wx/datectrl.h"

// Note: this sends a wxDateEvent wxEVT_DATE_CHANGED // EVT_DATE_CHANGED(id, fn)

%enum
    wxDP_SPIN           // MSW only
    wxDP_DROPDOWN
    wxDP_DEFAULT
    wxDP_ALLOWNONE
    wxDP_SHOWCENTURY
%endenum

%class wxDatePickerCtrl, wxControl
    wxDatePickerCtrl()
    wxDatePickerCtrl(wxWindow *parent, wxWindowID id, const wxDateTime& dt = wxDefaultDateTime, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxDP_DEFAULT | wxDP_SHOWCENTURY, const wxValidator& validator = wxDefaultValidator, const wxString& name = "wxDatePickerCtrl")
    bool Create(wxWindow *parent, wxWindowID id, const wxDateTime& dt = wxDefaultDateTime, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxDP_DEFAULT | wxDP_SHOWCENTURY, const wxValidator& validator = wxDefaultValidator, const wxString& name = "wxDatePickerCtrl")

    // %override [bool, wxDateTime dt1, wxDateTime dt2] wxDatePickerCtrl::GetRange() const
    // C++ Func: bool GetRange(wxDateTime *dt1, wxDateTime *dt2) const
    bool GetRange() const
    wxDateTime GetValue() const
    void SetRange(const wxDateTime& dt1, const wxDateTime& dt2)
    void SetValue(const wxDateTime& dt)
%endclass

%endif //wxLUA_USE_wxDatePickerCtrl && wxUSE_DATEPICKCTRL

// ---------------------------------------------------------------------------
// wxFileDirPickerCtrlBase

%if (wxLUA_USE_wxDirPickerCtrl || wxLUA_USE_wxFilePickerCtrl) && (wxUSE_FILEPICKERCTRL || wxUSE_DIRPICKERCTRL)

%include "wx/filepicker.h"

%class wxFileDirPickerCtrlBase, wxPickerBase
    // No constructor - this is a base class

    wxString GetPath() const
    void SetPath(const wxString &str)

    // return true if the given path is valid for this control
    bool CheckPath(const wxString& path) const
    // return the text control value in canonical form
    wxString GetTextCtrlValue() const
%endclass

// ---------------------------------------------------------------------------
// wxFileDirPickerEvent

%class %delete wxFileDirPickerEvent, wxCommandEvent
    %define_event wxEVT_COMMAND_FILEPICKER_CHANGED  // EVT_FILEPICKER_CHANGED(id, fn)
    %define_event wxEVT_COMMAND_DIRPICKER_CHANGED   // EVT_DIRPICKER_CHANGED(id, fn)

    //wxFileDirPickerEvent()
    wxFileDirPickerEvent(wxEventType type, wxObject *generator, int id, const wxString &path)

    wxString GetPath() const
    void SetPath(const wxString &p)
%endclass

%endif // (wxLUA_USE_wxDirPickerCtrl || wxLUA_USE_wxFilePickerCtrl) && (wxUSE_FILEPICKERCTRL || wxUSE_DIRPICKERCTRL)

// ---------------------------------------------------------------------------
// wxDirPickerCtrl

%if wxLUA_USE_wxDirPickerCtrl && (wxUSE_FILEPICKERCTRL || wxUSE_DIRPICKERCTRL)

%define wxDIRP_DIR_MUST_EXIST
%define wxDIRP_CHANGE_DIR

%define wxDIRP_DEFAULT_STYLE
%define wxDIRP_USE_TEXTCTRL

%class wxDirPickerCtrl, wxFileDirPickerCtrlBase
    wxDirPickerCtrl()
    wxDirPickerCtrl(wxWindow *parent, wxWindowID id, const wxString& path = "", const wxString& message = wxDirSelectorPromptStr, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxDIRP_DEFAULT_STYLE, const wxValidator& validator = wxDefaultValidator, const wxString& name = "wxDirPickerCtrl")
    bool Create(wxWindow *parent, wxWindowID id, const wxString& path = "", const wxString& message = wxDirSelectorPromptStr, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxDIRP_DEFAULT_STYLE, const wxValidator& validator = wxDefaultValidator, const wxString& name = "wxDirPickerCtrl")

%endclass

%endif wxLUA_USE_wxDirPickerCtrl && (wxUSE_FILEPICKERCTRL || wxUSE_DIRPICKERCTRL)

// ---------------------------------------------------------------------------
// wxFilePickerCtrl

%if wxLUA_USE_wxDirPickerCtrl && (wxUSE_FILEPICKERCTRL || wxUSE_DIRPICKERCTRL)

%define wxFLP_OPEN
%define wxFLP_SAVE
%define wxFLP_OVERWRITE_PROMPT
%define wxFLP_FILE_MUST_EXIST
%define wxFLP_CHANGE_DIR

%define wxFLP_DEFAULT_STYLE
%define wxFLP_USE_TEXTCTRL

%class wxFilePickerCtrl, wxFileDirPickerCtrlBase
    wxFilePickerCtrl()
    wxFilePickerCtrl(wxWindow *parent, wxWindowID id, const wxString& path = "", const wxString& message = wxFileSelectorPromptStr, const wxString& wildcard = wxFileSelectorDefaultWildcardStr, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxFLP_DEFAULT_STYLE, const wxValidator& validator = wxDefaultValidator, const wxString& name = "wxFilePickerCtrl")
    bool Create(wxWindow *parent, wxWindowID id, const wxString& path = "", const wxString& message = wxFileSelectorPromptStr, const wxString& wildcard = wxFileSelectorDefaultWildcardStr, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxFLP_DEFAULT_STYLE, const wxValidator& validator = wxDefaultValidator, const wxString& name = "wxFilePickerCtrl")

%endclass

%endif // wxLUA_USE_wxDirPickerCtrl && (wxUSE_FILEPICKERCTRL || wxUSE_DIRPICKERCTRL)

// ---------------------------------------------------------------------------
// wxFontPickerCtrl

%if wxLUA_USE_wxFontPickerCtrl && wxUSE_FONTPICKERCTRL

%include "wx/fontpicker.h"

%define wxFNTP_FONTDESC_AS_LABEL
%define wxFNTP_USEFONT_FOR_LABEL
%define wxFNTP_USE_TEXTCTRL         // (wxFNTP_FONTDESC_AS_LABEL|wxFNTP_USEFONT_FOR_LABEL)
%define wxFNTP_DEFAULT_STYLE

%define wxFNTP_MAXPOINT_SIZE // 100 the default max size to allow

%class wxFontPickerCtrl, wxPickerBase
    wxFontPickerCtrl()
    wxFontPickerCtrl(wxWindow *parent, wxWindowID id, const wxFont& initial = wxNullFont, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxFNTP_DEFAULT_STYLE, const wxValidator& validator = wxDefaultValidator, const wxString& name = "wxFontPickerCtrl")
    bool Create(wxWindow *parent, wxWindowID id, const wxFont& initial = wxNullFont, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxFNTP_DEFAULT_STYLE, const wxValidator& validator = wxDefaultValidator, const wxString& name = "wxFontPickerCtrl")

    wxFont GetSelectedFont() const
    virtual void SetSelectedFont(const wxFont &f)

    void SetMaxPointSize(unsigned int max)
    unsigned int GetMaxPointSize() const

%endclass

// ---------------------------------------------------------------------------
// wxFontPickerEvent

%class %delete wxFontPickerEvent, wxCommandEvent
    %define_event wxEVT_COMMAND_FONTPICKER_CHANGED // EVT_FONTPICKER_CHANGED(id, fn)

    //wxFontPickerEvent()
    wxFontPickerEvent(wxObject *generator, int id, const wxFont &f)

    wxFont GetFont() const
    void SetFont(const wxFont &c)
%endclass

%endif // wxLUA_USE_wxFontPickerCtrl && wxUSE_FONTPICKERCTRL

%endif // %wxchkver_2_8 && wxLUA_USE_wxPicker


