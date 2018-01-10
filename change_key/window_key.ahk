;^#m::Run, http://localhost/mt
^#d::Run, http://localhost/

+#Up::WinMaximize, A  ; Assign a hotkey to maximize the active window.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AutoHotKey 'ܳd ԜàŰ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#a::
Msgbox,4,, Do you really want to reload this script?
ifMsgBox, Yes, Reload
return


#c::
	path = "C:\Program Files (x86)\Microsoft VS Code\Code.exe"
	RunActivateOrSwitch(path)
	return

; run EverNote
; #n::
; 	;  path = "%ENV_PROGRAMFILES_X86%\Evernote\Evernote\Evernote.exe"

; 	;  if (isHome){
; 	;  	path = "C:\Users\Administrator\AppData\Local\Apps\Evernote\Evernote\Evernote.exe"
; 	;  }
	
; 	;  RunActivateOrSwitch(path)	
; 	;TrayTip, ahk hotkey, run Evernote
; 	path = "C:\Program Files (x86)\Evernote\Evernote\Evernote.exe"
; 	RunActivateOrSwitch(path)
; 	return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Favorite folders.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2014.10.17 ׂ
#`::
	EnvGet, dropbox, dropbox
	Run %dropbox%\Script\AutoHotKey
	return
#1::
	url = http://localhost:9898/web/stat/statView.do
	runExplorer(url)
	return
#2::
	url = http://localhost:9898/mobile/login/LoginView.do
	runExplorer(url)
	return
#3::
	url = http://localhost:10002/
	runExplorer(url)
	return

runExplorer(url){
	WB := ComObjCreate("InternetExplorer.Application")
	WB.Visible := True
	WB.Navigate(url)	
	return
}



;#2::Run \\192.168.200.220 				;; ōӝ؁ и/ƺԵ
;#3::Run \\10.47.4.201				;; Шd ¼Э
;#0::Run F:\5.Cloud\Dropbox\Script\AutoHotKey


;#RButton::Send !#{RIGHT}
;#LButton::Send !#{LEFT}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; run sublime text
#b::
	path = "C:\Users\d\AppData\Local\boost\app-0.8.11\Boostnote.exe"
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


