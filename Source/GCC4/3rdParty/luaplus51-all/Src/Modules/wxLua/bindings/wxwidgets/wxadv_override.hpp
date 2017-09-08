// ----------------------------------------------------------------------------
// Overridden functions for the wxWidgets binding for wxLua
//
// Please keep these functions in the same order as the .i file and in the
// same order as the listing of the functions in that file.
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Overrides for wxadv_adv.i
// ----------------------------------------------------------------------------

%override wxLua_wxCalendarCtrl_HitTest
//     wxCalendarHitTestResult HitTest(const wxPoint& pos) //, wxDateTime* date = NULL, wxDateTime::WeekDay* wd = NULL)
static int LUACALL wxLua_wxCalendarCtrl_HitTest(lua_State *L)
{
    // const wxPoint pos
    const wxPoint * pos = (const wxPoint *)wxluaT_getuserdatatype(L, 2, wxluatype_wxPoint);
    // get this
    wxCalendarCtrl * self = (wxCalendarCtrl *)wxluaT_getuserdatatype(L, 1, wxluatype_wxCalendarCtrl);
    // call HitTest
    wxDateTime* date = new wxDateTime();
    wxDateTime::WeekDay wd = wxDateTime::Inv_WeekDay;

    wxCalendarHitTestResult returns = self->HitTest(*pos, date, &wd);
    // push the result number
    lua_pushnumber(L, returns);
    wxluaT_pushuserdatatype(L, date, wxluatype_wxDateTime);
    lua_pushnumber(L, wd);

    return 3;
}
%end

// ----------------------------------------------------------------------------
// Overrides for wxadv_grid.i
// ----------------------------------------------------------------------------

%override wxLua_wxGridCellAttr_GetAlignment
// void GetAlignment(int *horz, int *vert) const
static int LUACALL wxLua_wxGridCellAttr_GetAlignment(lua_State *L)
{
    int horz;
    int vert;

    // get this
    wxGridCellAttr *self = (wxGridCellAttr *)wxluaT_getuserdatatype(L, 1, wxluatype_wxGridCellAttr);
    // call GetAlignment
    self->GetAlignment(&horz, &vert);

    lua_pushnumber(L, horz);
    lua_pushnumber(L, vert);
    // return the number of parameters
    return 2;
}
%end

%override wxLua_wxGridCellAttr_GetSize
// void GetSize(int *num_rows, int *num_cols) const
static int LUACALL wxLua_wxGridCellAttr_GetSize(lua_State *L)
{
    int num_rows;
    int num_cols;

    // get this
    wxGridCellAttr *self = (wxGridCellAttr *)wxluaT_getuserdatatype(L, 1, wxluatype_wxGridCellAttr);
    // call GetSize
    self->GetSize(&num_rows, &num_cols);

    lua_pushnumber(L, num_rows);
    lua_pushnumber(L, num_cols);
    // return the number of parameters
    return 2;
}
%end

%override wxLua_wxGrid_GetRowLabelAlignment
// void    GetRowLabelAlignment( int *horz, int *vert )
static int LUACALL wxLua_wxGrid_GetRowLabelAlignment(lua_State *L)
{
    int vert;
    int horz;
    // get this
    wxGrid *self = (wxGrid *)wxluaT_getuserdatatype(L, 1, wxluatype_wxGrid);
    // call GetRowLabelAlignment
    self->GetRowLabelAlignment(&horz, &vert);
    // push results
    lua_pushnumber(L, horz);
    lua_pushnumber(L, vert);
    // return the number of parameters
    return 2;
}
%end

%override wxLua_wxGrid_GetColLabelAlignment
// void    GetColLabelAlignment( int *horz, int *vert )
static int LUACALL wxLua_wxGrid_GetColLabelAlignment(lua_State *L)
{
    int vert;
    int horz;
    // get this
    wxGrid *self = (wxGrid *)wxluaT_getuserdatatype(L, 1, wxluatype_wxGrid);
    // call GetColLabelAlignment
    self->GetColLabelAlignment(&horz, &vert);
    // push results
    lua_pushnumber(L, horz);
    lua_pushnumber(L, vert);
    // return the number of parameters
    return 2;
}
%end

%override wxLua_wxGrid_GetDefaultCellAlignment
// void    GetDefaultCellAlignment( int *horiz, int *vert )
static int LUACALL wxLua_wxGrid_GetDefaultCellAlignment(lua_State *L)
{
    int vert;
    int horiz;
    // get this
    wxGrid *self = (wxGrid *)wxluaT_getuserdatatype(L, 1, wxluatype_wxGrid);
    // call GetDefaultCellAlignment
    self->GetDefaultCellAlignment(&horiz, &vert);
    // push results
    lua_pushnumber(L, horiz);
    lua_pushnumber(L, vert);
    // return the number of parameters
    return 2;
}
%end

%override wxLua_wxGrid_GetCellAlignment
// void    GetCellAlignment( int row, int col, int *horiz, int *vert )
static int LUACALL wxLua_wxGrid_GetCellAlignment(lua_State *L)
{
    int vert;
    int horiz;
    // int col
    int col = (int)lua_tonumber(L, 3);
    // int row
    int row = (int)lua_tonumber(L, 2);
    // get this
    wxGrid *self = (wxGrid *)wxluaT_getuserdatatype(L, 1, wxluatype_wxGrid);
    // call GetCellAlignment
    self->GetCellAlignment(row, col, &horiz, &vert);
    // push results
    lua_pushnumber(L, horiz);
    lua_pushnumber(L, vert);
    // return the number of parameters
    return 2;
}
%end

%override wxLua_wxGrid_GetCellSize
// void     GetCellSize( int row, int col, int *num_rows, int *num_cols )
static int LUACALL wxLua_wxGrid_GetCellSize(lua_State *L)
{
    int num_rows;
    int num_cols;
    // int col
    int col = (int)lua_tonumber(L, 3);
    // int row
    int row = (int)lua_tonumber(L, 2);
    // get this
    wxGrid *self = (wxGrid *)wxluaT_getuserdatatype(L, 1, wxluatype_wxGrid);
    // call GetCellSize
    self->GetCellSize(row, col, &num_rows, &num_cols);
    // push results
    lua_pushnumber(L, num_rows);
    lua_pushnumber(L, num_cols);
    // return the number of parameters
    return 2;
}
%end

%override wxLua_wxGrid_GetTextBoxSize
// void    GetTextBoxSize(wxDC& dc, wxArrayString& lines, long * width, long * height)
static int LUACALL wxLua_wxGrid_GetTextBoxSize(lua_State *L)
{
    long height;
    long width;
    // wxArrayString& lines
    wxArrayString *lines = (wxArrayString *)wxluaT_getuserdatatype(L, 3, wxluatype_wxArrayString);
    // wxDC& dc
    wxDC *dc = (wxDC *)wxluaT_getuserdatatype(L, 2, wxluatype_wxDC);
    // get this
    wxGrid *self = (wxGrid *)wxluaT_getuserdatatype(L, 1, wxluatype_wxGrid);
    // call GetTextBoxSize
    self->GetTextBoxSize(*dc, *lines, &width, &height);
    lua_pushnumber(L, width);
    lua_pushnumber(L, height);
    // return the number of parameters
    return 2;
}
%end

%override wxLua_wxGrid_SetTable
// bool SetTable(wxGridTableBase *table, bool takeOwnership = false,
//                    wxGrid::wxGridSelectionModes selmode =
//                   wxGrid::wxGridSelectCells)
static int LUACALL wxLua_wxGrid_SetTable(lua_State *L)
{
    // get number of arguments
    int argCount = lua_gettop(L);
    // wxGrid::wxGridSelectionModes selmode = wxGrid::wxGridSelectCells
    wxGrid::wxGridSelectionModes selmode = (argCount >= 4 ? (wxGrid::wxGridSelectionModes)wxlua_getenumtype(L, 4) : wxGrid::wxGridSelectCells);
    // bool takeOwnership = false
    bool takeOwnership = (argCount >= 3 ? wxlua_getbooleantype(L, 3) : false);
    // wxGridTableBase table
    wxGridTableBase * table = (wxGridTableBase *)wxluaT_getuserdatatype(L, 2, wxluatype_wxGridTableBase);
    // get this
    wxGrid * self = (wxGrid *)wxluaT_getuserdatatype(L, 1, wxluatype_wxGrid);
    // call SetTable
    bool returns = (self->SetTable(table, takeOwnership, selmode));

    if (returns && takeOwnership)
    {
        if (!wxluaO_isgcobject(L, table)) wxluaO_addgcobject(L, table, wxluatype_wxGridTableBase);
    }

    // push the result flag
    lua_pushboolean(L, returns);

    return 1;
}
%end

%override wxLua_wxLuaGridTableBase_constructor
//     wxLuaGridTableBase()
static int LUACALL wxLua_wxLuaGridTableBase_constructor(lua_State *L)
{
    wxLuaState wxlState(L);

    // call constructor
    wxLuaGridTableBase *returns = new wxLuaGridTableBase(wxlState);
    // add to tracked memory list
    wxluaO_addgcobject(L, returns, wxluatype_wxLuaGridTableBase);
    // push the constructed class pointer
    wxluaT_pushuserdatatype(L, returns, wxluatype_wxLuaGridTableBase);

    return 1;
}
%end

%override wxLua_wxGridCellWorker_delete_function
// delete is private in wxGridCellWorker, DecRef() it in derived classes
void wxLua_wxGridCellWorker_delete_function(void** p)
{
    wxGridCellWorker* o = (wxGridCellWorker*)(*p);
    o->DecRef();
}
%end

%override wxLua_wxGridCellEditor_delete_function
// delete is private in wxGridCellWorker, DecRef() it in derived classes
void wxLua_wxGridCellEditor_delete_function(void** p)
{
    wxGridCellEditor* o = (wxGridCellEditor*)(*p);
    o->DecRef();
}
%end

%override wxLua_wxGridCellAttr_delete_function
// delete is private in wxGridCellWorker, DecRef() it in derived classes
void wxLua_wxGridCellAttr_delete_function(void** p)
{
    wxGridCellAttr* o = (wxGridCellAttr*)(*p);
    o->DecRef();
}
%end
