#SingleInstance force
#InstallKeybdHook
#Persistent
;#HotkeyInterval,100
#MaxHotkeysPerInterval 10000
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay, ?1
SetTitleMatchMode, 2 ; Makes matching the titles easier
Process, Priority, , H

;; ¿¡·¯¸Þ½ÃÁö ¹«½Ã ¿É¼Ç 
;; µð¹ö±ëÀÏ °æ¿ì¿¡´Â true·Î ¼±¾ðÇØ¼­ »ç¿ë
ComObjError(false)

;lib
#include .\lib\Explorer.ahk

; common
#include .\common\variables.ahk
#include .\common\functions.ahk

; Util
#include .\util\util_vars.ahk

; Dynamic HotString
#include .\hotstring\dynamic_hotstring.ahk
#include .\util\Hotstring.ahk

; Scrolling
#include .\util\Absolutely_Kor_Eng.ahk
#include .\util\Accelerated Scrolling 1.3.ahk

; For Applications
#include .\application\visual_studio.ahk
#include .\application\visual_basic.ahk
#include .\application\sublime_text.ahk
#include .\application\eclipse.ahk
#include .\application\android_studio.ahk
#include .\application\staruml.ahk
#include .\application\toad.ahk
#include .\application\pgAdmin3.ahk
#include .\application\final fantasy.ahk
#include .\application\xshell.ahk
#include .\application\excel.ahk
#include .\application\explorer.ahk
#include .\application\adt.ahk
#include .\application\notepad++.ahk
#include .\application\evernote.ahk
#include .\application\chrome.ahk
;#include .\application\ahk_class SWT_Window0.ahk
#include .\application\power_point.ahk
#include .\application\word.ahk
#include .\application\firefox.ahk
#include .\application\foxitReader.ahk
#include .\application\internet_explorer.ahk
#include .\application\ahk_studio.ahk
#include .\application\hwpapp.ahk
#include .\application\mono_develop.ahk
#include .\application\haroopad.ahk
#include .\application\visual_studio_code.ahk
#include .\application\pycharm.ahk
#include .\application\typora.ahk

;  한글에서 정상적으로 작동하지 않으므로, 아래 내용은 제외하도록 처리합니다. 
;#ifWinNotActive ahk_exe Hwp.exe
    ; HotString
    #include .\hotstring\english_hotstring.ahk
    #include .\hotstring\english_dictionary.ahk
    #include .\hotstring\korean_hotstring.ahk
    #include .\hotstring\symbol_hotstring.ahk
    #include .\hotstring\auto_correct.ahk
    #include .\hotstring\eng_to_kor.ahk
;#ifWinActive

; Change Key
#Include .\change_key\shift_key.ahk
#Include .\change_key\control_key.ahk
#include .\change_key\capslock_key.ahk
#include .\change_key\alternate_mode.ahk
#include .\change_key\window_key.ahk
#include .\change_key\alt_key.ahk
#include .\change_key\mouse_button.ahk
#include .\change_key\hanja_key.ahk
#include .\change_key\AppsKeys.ahk
#include .\change_key\function_key.ahk





;Shared Script



; make the scroll lock key (ScrLk) toggle all hotkeys.
$ScrollLock::Suspend




; Launch Total commander instead of explorer
;#e::Run, TOTALCMD.EXE, %A_ScriptDir%\..\..\Programs\Windows\Portable\totalcmd,,
; For Project
;#include .\project\2013_ºÎµ¿»êÀÏ¿øÈ­.ahk


;^SC15D:: ; Replace 159 with your key's value.
;MsgBox, %A_ThisHotKey% was pressed.
;return

;;#w::Run, FreeCommander.exe, C:\Program Files (x86)\FreeCommander XE,,
;<^<!l::Run, rundll32.exe user32.dll`, LockWorkStation ,,,



/*MsgBox, % "OS Type: " . A_OSType . "`nOS Version: " . A_OSVersion . "`nPointer Size: " . A_PtrSize
   . "`nAdmin: " . (If (A_IsAdmin == 1)?"Yes":"No") . "`n64 Bit OS: "
   . (If (InStr(A_ProgramFiles, "x86") > 0)?"Yes":"No") . "`nAHK Version: " . A_AhkVersion
   . "`nAHK Path: " . A_AhkPath
ExitApp
*/