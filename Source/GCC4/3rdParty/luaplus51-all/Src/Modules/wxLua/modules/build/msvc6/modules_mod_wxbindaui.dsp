# Microsoft Developer Studio Project File - Name="modules_mod_wxbindaui" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104
# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=mod_wxbindaui - Win32 Debug Multilib
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "modules_mod_wxbindaui.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "modules_mod_wxbindaui.mak" CFG="mod_wxbindaui - Win32 Debug Multilib"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_wxbindaui - Win32 Release Unicode DLL Monolithic" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_wxbindaui - Win32 Release Unicode DLL Multilib" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_wxbindaui - Win32 Release Unicode Monolithic" (based on "Win32 (x86) Static Library")
!MESSAGE "mod_wxbindaui - Win32 Release Unicode Multilib" (based on "Win32 (x86) Static Library")
!MESSAGE "mod_wxbindaui - Win32 Release DLL Monolithic" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_wxbindaui - Win32 Release DLL Multilib" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_wxbindaui - Win32 Release Monolithic" (based on "Win32 (x86) Static Library")
!MESSAGE "mod_wxbindaui - Win32 Release Multilib" (based on "Win32 (x86) Static Library")
!MESSAGE "mod_wxbindaui - Win32 Debug Unicode DLL Monolithic" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_wxbindaui - Win32 Debug Unicode DLL Multilib" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_wxbindaui - Win32 Debug Unicode Monolithic" (based on "Win32 (x86) Static Library")
!MESSAGE "mod_wxbindaui - Win32 Debug Unicode Multilib" (based on "Win32 (x86) Static Library")
!MESSAGE "mod_wxbindaui - Win32 Debug DLL Monolithic" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_wxbindaui - Win32 Debug DLL Multilib" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_wxbindaui - Win32 Debug Monolithic" (based on "Win32 (x86) Static Library")
!MESSAGE "mod_wxbindaui - Win32 Debug Multilib" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "mod_wxbindaui - Win32 Release Unicode DLL Monolithic"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\lib\vc_dll"
# PROP BASE Intermediate_Dir "vcmswu_dll\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\lib\vc_dll"
# PROP Intermediate_Dir "vcmswu_dll\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswu" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswu_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /c
# ADD CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswu" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswu_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /c
# ADD BASE MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /mktyplib203 /win32
# ADD MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "_UNICODE" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswu" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d WXMAKINGDLL_WXBINDAUI
# ADD RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "_UNICODE" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswu" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d WXMAKINGDLL_WXBINDAUI
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 wxlua_msw28u_wxbindbase.lib wxlua_msw28u_wxbindcore.lib wxlua_msw28u_wxlua.lib lua5.1.lib wxmsw28u.lib wxmsw28u_gl.lib wxtiff.lib wxjpeg.lib wxpng.lib wxzlib.lib wxregexu.lib wxexpat.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.lib" /pdb:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.pdb"
# ADD LINK32 wxlua_msw28u_wxbindbase.lib wxlua_msw28u_wxbindcore.lib wxlua_msw28u_wxlua.lib lua5.1.lib wxmsw28u.lib wxmsw28u_gl.lib wxtiff.lib wxjpeg.lib wxpng.lib wxzlib.lib wxregexu.lib wxexpat.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.lib" /pdb:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.pdb"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Release Unicode DLL Multilib"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\lib\vc_dll"
# PROP BASE Intermediate_Dir "vcmswu_dll\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\lib\vc_dll"
# PROP Intermediate_Dir "vcmswu_dll\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswu" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswu_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /c
# ADD CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswu" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswu_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /c
# ADD BASE MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /mktyplib203 /win32
# ADD MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "_UNICODE" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswu" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d WXMAKINGDLL_WXBINDAUI
# ADD RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "_UNICODE" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswu" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d WXMAKINGDLL_WXBINDAUI
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 wxlua_msw28u_wxbindbase.lib wxlua_msw28u_wxbindcore.lib wxlua_msw28u_wxlua.lib lua5.1.lib wxbase28u.lib wxmsw28u_core.lib wxbase28u_xml.lib wxbase28u_net.lib wxmsw28u_adv.lib wxmsw28u_gl.lib wxmsw28u_media.lib wxmsw28u_aui.lib wxmsw28u_html.lib wxmsw28u_xrc.lib wxmsw28u_aui.lib wxtiff.lib wxjpeg.lib wxpng.lib wxzlib.lib wxregexu.lib wxexpat.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.lib" /pdb:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.pdb"
# ADD LINK32 wxlua_msw28u_wxbindbase.lib wxlua_msw28u_wxbindcore.lib wxlua_msw28u_wxlua.lib lua5.1.lib wxbase28u.lib wxmsw28u_core.lib wxbase28u_xml.lib wxbase28u_net.lib wxmsw28u_adv.lib wxmsw28u_gl.lib wxmsw28u_media.lib wxmsw28u_aui.lib wxmsw28u_html.lib wxmsw28u_xrc.lib wxmsw28u_aui.lib wxtiff.lib wxjpeg.lib wxpng.lib wxzlib.lib wxregexu.lib wxexpat.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.lib" /pdb:"..\..\..\lib\vc_dll\wxlua_msw28u_wxbindaui.pdb"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Release Unicode Monolithic"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\lib\vc_lib"
# PROP BASE Intermediate_Dir "vcmswu\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\lib\vc_lib"
# PROP Intermediate_Dir "vcmswu\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswu" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswu\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_lib\wxlua_msw28u_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "_UNICODE" /D "__WXMSW__" /c
# ADD CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswu" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswu\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_lib\wxlua_msw28u_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "_UNICODE" /D "__WXMSW__" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28u_wxbindaui.lib"
# ADD LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28u_wxbindaui.lib"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Release Unicode Multilib"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\lib\vc_lib"
# PROP BASE Intermediate_Dir "vcmswu\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\lib\vc_lib"
# PROP Intermediate_Dir "vcmswu\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswu" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswu\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_lib\wxlua_msw28u_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "_UNICODE" /D "__WXMSW__" /c
# ADD CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswu" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswu\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_lib\wxlua_msw28u_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "_UNICODE" /D "__WXMSW__" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28u_wxbindaui.lib"
# ADD LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28u_wxbindaui.lib"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Release DLL Monolithic"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\lib\vc_dll"
# PROP BASE Intermediate_Dir "vcmsw_dll\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\lib\vc_dll"
# PROP Intermediate_Dir "vcmsw_dll\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\msw" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmsw_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /c
# ADD CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\msw" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmsw_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /c
# ADD BASE MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /mktyplib203 /win32
# ADD MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\msw" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d WXMAKINGDLL_WXBINDAUI
# ADD RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\msw" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d WXMAKINGDLL_WXBINDAUI
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 wxlua_msw28_wxbindbase.lib wxlua_msw28_wxbindcore.lib wxlua_msw28_wxlua.lib lua5.1.lib wxmsw28.lib wxmsw28_gl.lib wxtiff.lib wxjpeg.lib wxpng.lib wxzlib.lib wxregex.lib wxexpat.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.lib" /pdb:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.pdb"
# ADD LINK32 wxlua_msw28_wxbindbase.lib wxlua_msw28_wxbindcore.lib wxlua_msw28_wxlua.lib lua5.1.lib wxmsw28.lib wxmsw28_gl.lib wxtiff.lib wxjpeg.lib wxpng.lib wxzlib.lib wxregex.lib wxexpat.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.lib" /pdb:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.pdb"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Release DLL Multilib"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\lib\vc_dll"
# PROP BASE Intermediate_Dir "vcmsw_dll\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\lib\vc_dll"
# PROP Intermediate_Dir "vcmsw_dll\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\msw" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmsw_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /c
# ADD CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\msw" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmsw_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /c
# ADD BASE MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /mktyplib203 /win32
# ADD MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\msw" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d WXMAKINGDLL_WXBINDAUI
# ADD RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\msw" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d WXMAKINGDLL_WXBINDAUI
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 wxlua_msw28_wxbindbase.lib wxlua_msw28_wxbindcore.lib wxlua_msw28_wxlua.lib lua5.1.lib wxbase28.lib wxmsw28_core.lib wxbase28_xml.lib wxbase28_net.lib wxmsw28_adv.lib wxmsw28_gl.lib wxmsw28_media.lib wxmsw28_aui.lib wxmsw28_html.lib wxmsw28_xrc.lib wxmsw28_aui.lib wxtiff.lib wxjpeg.lib wxpng.lib wxzlib.lib wxregex.lib wxexpat.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.lib" /pdb:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.pdb"
# ADD LINK32 wxlua_msw28_wxbindbase.lib wxlua_msw28_wxbindcore.lib wxlua_msw28_wxlua.lib lua5.1.lib wxbase28.lib wxmsw28_core.lib wxbase28_xml.lib wxbase28_net.lib wxmsw28_adv.lib wxmsw28_gl.lib wxmsw28_media.lib wxmsw28_aui.lib wxmsw28_html.lib wxmsw28_xrc.lib wxmsw28_aui.lib wxtiff.lib wxjpeg.lib wxpng.lib wxzlib.lib wxregex.lib wxexpat.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.lib" /pdb:"..\..\..\lib\vc_dll\wxlua_msw28_wxbindaui.pdb"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Release Monolithic"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\lib\vc_lib"
# PROP BASE Intermediate_Dir "vcmsw\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\lib\vc_lib"
# PROP Intermediate_Dir "vcmsw\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\msw" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmsw\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_lib\wxlua_msw28_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "__WXMSW__" /c
# ADD CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\msw" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmsw\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_lib\wxlua_msw28_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "__WXMSW__" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28_wxbindaui.lib"
# ADD LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28_wxbindaui.lib"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Release Multilib"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\lib\vc_lib"
# PROP BASE Intermediate_Dir "vcmsw\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\lib\vc_lib"
# PROP Intermediate_Dir "vcmsw\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\msw" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmsw\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_lib\wxlua_msw28_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "__WXMSW__" /c
# ADD CPP /nologo /FD /MD /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\msw" /I "$(WXWIN)\include" /O2 /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmsw\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Fd..\..\..\lib\vc_lib\wxlua_msw28_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "__WXMSW__" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28_wxbindaui.lib"
# ADD LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28_wxbindaui.lib"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Debug Unicode DLL Monolithic"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\lib\vc_dll"
# PROP BASE Intermediate_Dir "vcmswud_dll\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\lib\vc_dll"
# PROP Intermediate_Dir "vcmswud_dll\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswud" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswud_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /c
# ADD CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswud" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswud_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /c
# ADD BASE MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "_UNICODE" /d "__WXDEBUG__" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswud" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d "WXMAKINGDLL_WXBINDAUI" /d _DEBUG
# ADD RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "_UNICODE" /d "__WXDEBUG__" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswud" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d "WXMAKINGDLL_WXBINDAUI" /d _DEBUG
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 wxlua_msw28ud_wxbindbase.lib wxlua_msw28ud_wxbindcore.lib wxlua_msw28ud_wxlua.lib lua5.1.lib wxmsw28ud.lib wxmsw28ud_gl.lib wxtiffd.lib wxjpegd.lib wxpngd.lib wxzlibd.lib wxregexud.lib wxexpatd.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.lib" /debug /pdb:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.pdb"
# ADD LINK32 wxlua_msw28ud_wxbindbase.lib wxlua_msw28ud_wxbindcore.lib wxlua_msw28ud_wxlua.lib lua5.1.lib wxmsw28ud.lib wxmsw28ud_gl.lib wxtiffd.lib wxjpegd.lib wxpngd.lib wxzlibd.lib wxregexud.lib wxexpatd.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.lib" /debug /pdb:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.pdb"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Debug Unicode DLL Multilib"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\lib\vc_dll"
# PROP BASE Intermediate_Dir "vcmswud_dll\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\lib\vc_dll"
# PROP Intermediate_Dir "vcmswud_dll\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswud" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswud_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /c
# ADD CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswud" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswud_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /c
# ADD BASE MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "_UNICODE" /d "__WXDEBUG__" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswud" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d "WXMAKINGDLL_WXBINDAUI" /d _DEBUG
# ADD RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "_UNICODE" /d "__WXDEBUG__" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswud" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d "WXMAKINGDLL_WXBINDAUI" /d _DEBUG
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 wxlua_msw28ud_wxbindbase.lib wxlua_msw28ud_wxbindcore.lib wxlua_msw28ud_wxlua.lib lua5.1.lib wxbase28ud.lib wxmsw28ud_core.lib wxbase28ud_xml.lib wxbase28ud_net.lib wxmsw28ud_adv.lib wxmsw28ud_gl.lib wxmsw28ud_media.lib wxmsw28ud_aui.lib wxmsw28ud_html.lib wxmsw28ud_xrc.lib wxmsw28ud_aui.lib wxtiffd.lib wxjpegd.lib wxpngd.lib wxzlibd.lib wxregexud.lib wxexpatd.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.lib" /debug /pdb:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.pdb"
# ADD LINK32 wxlua_msw28ud_wxbindbase.lib wxlua_msw28ud_wxbindcore.lib wxlua_msw28ud_wxlua.lib lua5.1.lib wxbase28ud.lib wxmsw28ud_core.lib wxbase28ud_xml.lib wxbase28ud_net.lib wxmsw28ud_adv.lib wxmsw28ud_gl.lib wxmsw28ud_media.lib wxmsw28ud_aui.lib wxmsw28ud_html.lib wxmsw28ud_xrc.lib wxmsw28ud_aui.lib wxtiffd.lib wxjpegd.lib wxpngd.lib wxzlibd.lib wxregexud.lib wxexpatd.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.lib" /debug /pdb:"..\..\..\lib\vc_dll\wxlua_msw28ud_wxbindaui.pdb"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Debug Unicode Monolithic"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\lib\vc_lib"
# PROP BASE Intermediate_Dir "vcmswud\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\lib\vc_lib"
# PROP Intermediate_Dir "vcmswud\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswud" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswud\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_lib\wxlua_msw28ud_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "_DEBUG" /c
# ADD CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswud" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswud\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_lib\wxlua_msw28ud_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "_DEBUG" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28ud_wxbindaui.lib"
# ADD LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28ud_wxbindaui.lib"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Debug Unicode Multilib"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\lib\vc_lib"
# PROP BASE Intermediate_Dir "vcmswud\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\lib\vc_lib"
# PROP Intermediate_Dir "vcmswud\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswud" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswud\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_lib\wxlua_msw28ud_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "_DEBUG" /c
# ADD CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswud" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswud\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_lib\wxlua_msw28ud_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "_UNICODE" /D "__WXDEBUG__" /D "__WXMSW__" /D "_DEBUG" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28ud_wxbindaui.lib"
# ADD LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28ud_wxbindaui.lib"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Debug DLL Monolithic"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\lib\vc_dll"
# PROP BASE Intermediate_Dir "vcmswd_dll\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\lib\vc_dll"
# PROP Intermediate_Dir "vcmswd_dll\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswd" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswd_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /c
# ADD CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswd" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswd_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /c
# ADD BASE MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "__WXDEBUG__" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswd" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d "WXMAKINGDLL_WXBINDAUI" /d _DEBUG
# ADD RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "__WXDEBUG__" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswd" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d "WXMAKINGDLL_WXBINDAUI" /d _DEBUG
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 wxlua_msw28d_wxbindbase.lib wxlua_msw28d_wxbindcore.lib wxlua_msw28d_wxlua.lib lua5.1.lib wxmsw28d.lib wxmsw28d_gl.lib wxtiffd.lib wxjpegd.lib wxpngd.lib wxzlibd.lib wxregexd.lib wxexpatd.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.lib" /debug /pdb:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.pdb"
# ADD LINK32 wxlua_msw28d_wxbindbase.lib wxlua_msw28d_wxbindcore.lib wxlua_msw28d_wxlua.lib lua5.1.lib wxmsw28d.lib wxmsw28d_gl.lib wxtiffd.lib wxjpegd.lib wxpngd.lib wxzlibd.lib wxregexd.lib wxexpatd.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.lib" /debug /pdb:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.pdb"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Debug DLL Multilib"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\lib\vc_dll"
# PROP BASE Intermediate_Dir "vcmswd_dll\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\lib\vc_dll"
# PROP Intermediate_Dir "vcmswd_dll\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswd" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswd_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /c
# ADD CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_dll\mswd" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswd_dll\wxprec_wxbindaui_dll.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.pdb /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /c
# ADD BASE MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "WIN32" /D "_USRDLL" /D "DLL_EXPORTS" /D "WXUSINGDLL" /D "__WXDEBUG__" /D "__WXMSW__" /D "WXMAKINGDLL_WXBINDAUI" /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "__WXDEBUG__" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswd" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d "WXMAKINGDLL_WXBINDAUI" /d _DEBUG
# ADD RSC /l 0x409 /i "..\..\..\modules\wxbind\setup" /d "WXUSINGDLL" /d "__WXDEBUG__" /d "__WXMSW__" /i "$(WXWIN)\lib\vc_dll\mswd" /i "$(WXWIN)\include" /i "..\..\..\modules" /i ".\..\..\.." /i "..\..\..\modules\lua\include" /i "$(WXWIN)\contrib\include" /d "WXMAKINGDLL_WXBINDAUI" /d _DEBUG
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 wxlua_msw28d_wxbindbase.lib wxlua_msw28d_wxbindcore.lib wxlua_msw28d_wxlua.lib lua5.1.lib wxbase28d.lib wxmsw28d_core.lib wxbase28d_xml.lib wxbase28d_net.lib wxmsw28d_adv.lib wxmsw28d_gl.lib wxmsw28d_media.lib wxmsw28d_aui.lib wxmsw28d_html.lib wxmsw28d_xrc.lib wxmsw28d_aui.lib wxtiffd.lib wxjpegd.lib wxpngd.lib wxzlibd.lib wxregexd.lib wxexpatd.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.lib" /debug /pdb:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.pdb"
# ADD LINK32 wxlua_msw28d_wxbindbase.lib wxlua_msw28d_wxbindcore.lib wxlua_msw28d_wxlua.lib lua5.1.lib wxbase28d.lib wxmsw28d_core.lib wxbase28d_xml.lib wxbase28d_net.lib wxmsw28d_adv.lib wxmsw28d_gl.lib wxmsw28d_media.lib wxmsw28d_aui.lib wxmsw28d_html.lib wxmsw28d_xrc.lib wxmsw28d_aui.lib wxtiffd.lib wxjpegd.lib wxpngd.lib wxzlibd.lib wxregexd.lib wxexpatd.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib oleacc.lib /nologo /dll /machine:i386 /out:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.dll" /libpath:"$(WXWIN)\lib\vc_dll" /libpath:"..\..\..\lib\vc_dll" /libpath:"..\..\..\modules\lua\lib" /implib:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.lib" /debug /pdb:"..\..\..\lib\vc_dll\wxlua_msw28d_wxbindaui.pdb"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Debug Monolithic"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\lib\vc_lib"
# PROP BASE Intermediate_Dir "vcmswd\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\lib\vc_lib"
# PROP Intermediate_Dir "vcmswd\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswd" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswd\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_lib\wxlua_msw28d_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "__WXDEBUG__" /D "__WXMSW__" /D "_DEBUG" /c
# ADD CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswd" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswd\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_lib\wxlua_msw28d_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "__WXDEBUG__" /D "__WXMSW__" /D "_DEBUG" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28d_wxbindaui.lib"
# ADD LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28d_wxbindaui.lib"

!ELSEIF  "$(CFG)" == "mod_wxbindaui - Win32 Debug Multilib"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\lib\vc_lib"
# PROP BASE Intermediate_Dir "vcmswd\mod_wxbindaui"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\lib\vc_lib"
# PROP Intermediate_Dir "vcmswd\mod_wxbindaui"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswd" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswd\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_lib\wxlua_msw28d_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "__WXDEBUG__" /D "__WXMSW__" /D "_DEBUG" /c
# ADD CPP /nologo /FD /MDd /W1 /GR /EHsc /I "..\..\..\modules\wxbind\setup" /I "$(WXWIN)\lib\vc_lib\mswd" /I "$(WXWIN)\include" /Od /Gm /I "..\..\..\modules" /I ".\..\..\.." /I "..\..\..\modules\lua\include" /Yu"wx/wxprec.h" /Fp"vcmswd\wxprec_wxbindaui_lib.pch" /I "$(WXWIN)\contrib\include" /Zi /Fd..\..\..\lib\vc_lib\wxlua_msw28d_wxbindaui.pdb /D "WIN32" /D "_LIB" /D "__WXDEBUG__" /D "__WXMSW__" /D "_DEBUG" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28d_wxbindaui.lib"
# ADD LIB32 /nologo /out:"..\..\..\lib\vc_lib\wxlua_msw28d_wxbindaui.lib"

!ENDIF

# Begin Target

# Name "mod_wxbindaui - Win32 Release Unicode DLL Monolithic"
# Name "mod_wxbindaui - Win32 Release Unicode DLL Multilib"
# Name "mod_wxbindaui - Win32 Release Unicode Monolithic"
# Name "mod_wxbindaui - Win32 Release Unicode Multilib"
# Name "mod_wxbindaui - Win32 Release DLL Monolithic"
# Name "mod_wxbindaui - Win32 Release DLL Multilib"
# Name "mod_wxbindaui - Win32 Release Monolithic"
# Name "mod_wxbindaui - Win32 Release Multilib"
# Name "mod_wxbindaui - Win32 Debug Unicode DLL Monolithic"
# Name "mod_wxbindaui - Win32 Debug Unicode DLL Multilib"
# Name "mod_wxbindaui - Win32 Debug Unicode Monolithic"
# Name "mod_wxbindaui - Win32 Debug Unicode Multilib"
# Name "mod_wxbindaui - Win32 Debug DLL Monolithic"
# Name "mod_wxbindaui - Win32 Debug DLL Multilib"
# Name "mod_wxbindaui - Win32 Debug Monolithic"
# Name "mod_wxbindaui - Win32 Debug Multilib"
# Begin Group "WXBINDAUI sources"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\wxbind\src\dummy.cpp
# ADD BASE CPP /Yc"wx/wxprec.h"
# ADD CPP /Yc"wx/wxprec.h"
# End Source File
# Begin Source File

SOURCE=..\..\wxbind\src\wxaui_bind.cpp
# End Source File
# End Group
# Begin Group "WXBINDAUI headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\wxbind\include\wxaui_bind.h
# End Source File
# End Group
# End Target
# End Project

