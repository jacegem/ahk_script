;^#m::Run, http://localhost/mt
^#d::Run, http://localhost/

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AutoHotKey 'ܳd ԜàŰ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#a::
Msgbox,4,, Do you really want to reload this script?
ifMsgBox, Yes, Reload
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Favorite folders.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2014.10.17 ׂ
#`::
	EnvGet, dropbox, dropbox
	Run %dropbox%\Script\AutoHotKey
	return
#1::Run F:\1.Project\2014_WAVUS\2014.06_부동산_일원화
#2::Run \\192.168.200.220 				;; ōӝ؁ и/ƺԵ
#3::Run \\10.47.4.201				;; Шd ¼Э
;#0::Run F:\5.Cloud\Dropbox\Script\AutoHotKey


;#RButton::Send !#{RIGHT}
;#LButton::Send !#{LEFT}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; run sublime text
#b::	
	path = %P_SUBLIME%
	RunActivateOrSwitch(path)	
return

/*
; run chrome
#c:: 
	RunCmd("PowerCmd\PowerCmd.exe")	
	return
*/
#z::
	MsgBox "####"
return

/*
; run search everything
#s::	
	path = %A_ProgramFiles%\Google\Chrome\Application\chrome.exe	
	RunActivateOrSwitch(path)	
	;path = %ENV_PROGRAMFILES_X86%\Everything\Everything.exe
return*/

; run firefox
#f::
	path = %ENV_PROGRAMFILES_X86%\Mozilla Firefox\firefox.exe
	RunActivateOrSwitch(path)	
return

; Search highlighted term in Google
#g::
{
	bak = %clipboard%
	Send, ^c
	Run, http://www.google.com/search?q=%Clipboard%
	clipboard = %bak%
}
Return

; run EverNote
#n::
	path = "%ENV_PROGRAMFILES_X86%\Evernote\Evernote\Evernote.exe"

	if (isHome){
		path = "C:\Users\Administrator\AppData\Local\Apps\Evernote\Evernote\Evernote.exe"
	}
	
	RunActivateOrSwitch(path)	
	;TrayTip, ahk hotkey, run Evernote
return

; run wunderlist
#w::
	path = "%ENV_PROGRAMFILES_X86%\Wunderlist\WunderlistApp.exe"
	RunActivateOrSwitch(path)	
return

; run excel
#x::
	;path = C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Excel 2013
	path = %ENV_PROGRAMFILES_X86%\Microsoft Office\Office15\Excel.exe
	RunActivateOrSwitch(path)	
return

#5::
	;path := Explorer_GetPath()
	;all := Explorer_GetAll()
	sel := Explorer_GetSelected()
	;MsgBox % path
	;MsgBox % all
	MsgBox % sel
return


