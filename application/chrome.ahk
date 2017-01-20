#ifWinActive ahk_exe chrome.exe
;<<Hot String>>


CapsLock & r::	
	clipSaved := Clipboard
	text := "http://121.160.17.170/redmine/projects/istd_issue"
	Clipboard := text
	ClipWait 2
	Send ^l
	Send ^v		
	Sleep, 100
	Send {Enter}
	clipboard := clipSaved
	clipSaved = 
	return

;<<Short Cut>>
;CapsLock & Space::Send ^{Space}
CapsLock & [::Send +^{tab}
CapsLock & ]::Send ^{tab}
CapsLock & \::Send ^w
CapsLock & F1::Send {F1}
CapsLock & F2::Send {F2}
CapsLock & F4::Send {F4}
CapsLock & F5::Send {F5}
CapsLock & F11::Send {F11}

CapsLock & t::Send, +!t

;; not use cause I use chrome extension Vimium
;;F1::Send ^+{TAB}		; Prev Tab
F2::Send {F2}			; 
F4::Send ^!{PgUp}		; Full Screen
F5::Send ^{F5}			; Refresh		; 
;F11::Send +{F11}		; Toggel Hacker Vision

F6::Send {Volume_Mute}  ; Mute/unmute the master volume.
F7::Send {Volume_Down 5}  ; Raise the master volume by 1 interval (typically 5%).
;F8::Send {Volume_Up 5}  ; Lower the master volume by 3 intervals.




;^b::Send !b

/*#ifWinActive, Project
^s::Send !s
#ifWinActive*/

/*
::h:: 		; dokuwiki header
	Send {^}{Space 2}
return
::s::		; dokuwiki row span
	Send |{: 3}|{Space}	
	return
::c::|		; dokuwiki column
::n::\\		; dokuwiki newline
*/

/*
$[::
; 복사대상이 있는지 확인한다. 
	bak = %clipboard%
	Clipboard =
	SetKeyDelay, 40 ; could be set at the top of the script instead.
	Send, {ctrl down}{c down}{c up}{ctrl up}
	ClipWait, 0.1
	if ErrorLevel
	{
	    SendInput {[}
	    SendInput {]}
	    SendInput {LEFT}
	}
	else{
	    Send {DELETE}
	    ;Send  {[ 2}
	    Send  {[}
	    Send ^v
                 Sleep 50
	    ;Send {] 2}		
	    Send {]}		
	}		
	Clipboard := bak
	SetKeyDelay, 0
return 
*/

/*$8::
; 복사대상이 있는지 확인한다. 
	bak = %clipboard%
	Clipboard =
	SetKeyDelay, 40 ; could be set at the top of the script instead.
	Send, {ctrl down}{c down}{c up}{ctrl up}
	ClipWait, 0.1
	if ErrorLevel
	{   
	    SendInput {8}
	}else{
	    Send {DELETE}
	    Send  {* 2}             
        Send ^v
        Sleep 50
	    Send {* 2}	
	}
	Clipboard := bak
	SetKeyDelay, 0	
return */

$`::
; 복사대상이 있는지 확인한다. 
	bak = %clipboard%
	Clipboard =
	SetKeyDelay, 40 ; could be set at the top of the script instead.
	Send, {ctrl down}{c down}{c up}{ctrl up}
	ClipWait, 0.1
	if ErrorLevel
	{   
	    SendInput {``}
	}else{
	    Send {DELETE}
	    Send  {``}             
        Send ^v
        Sleep 50
	    Send {``}	
	}
	Clipboard := bak
	SetKeyDelay, 0	
	return

#ifWinActive

