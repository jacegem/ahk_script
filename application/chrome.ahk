#ifWinActive ahk_exe chrome.exe
;<<Hot String>>

; Paper 에서 comment 단축키
!m::Send ^!m

; CapsLock & r::	
; 	clipSaved := Clipboard
; 	text := "http://121.160.17.170/redmine/projects/istd_issue"
; 	Clipboard := text
; 	ClipWait 2
; 	Send ^l
; 	Send ^v		
; 	Sleep, 100
; 	Send {Enter}
; 	clipboard := clipSaved
; 	clipSaved = 
; 	return

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

;F6::Send {Volume_Mute}  ; Mute/unmute the master volume.
F6::Send ^c
F7::MsgBox, 'F7'
;F7::Send {Volume_Down 5}  ; Raise the master volume by 1 interval (typically 5%).
;F8::Send {Volume_Up 5}  ; Lower the master volume by 3 intervals.
; F8::      ;	
; 	ClipSaved := ClipboardAll   ; Save the entire clipboard to a variable of your choice.
; 	; ... here make temporary use of the clipboard, such as for pasting Unicode text via Transform Unicode ...
; 	clipboard = ; Empty the clipboard
; 	Send, ^c
; 	ClipWait, 2
; 	if (!ErrorLevel || clipboard)
; 	{	
; 		state := isKorean()
; 		if state 
; 		{
; 			Send {vk15sc138}  
; 		}

; 		Send {* 2}		
; 		Send %clipboard% 		
; 		Send {* 2}
; 		;len := StrLen(clipboard)
; 		;MsgBox, clipboard = %clipboard%, %len%		
; 		if state 
; 		{
; 			Send {vk15sc138}  
; 		}
; 	}else{
; 		Send *
; 	}
	
; 	Clipboard := ClipSaved   ; Restore the original clipboard. Note the use of Clipboard (not ClipboardAll).
; 	ClipSaved =   ; Free the memory in case the clipboard was very large.
; 	return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; REVEAL JS 사용을 위한 HOTSTRING
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; :*:----::
; 	Send ---->
; 	Send {ENTER}
; 	return
:*:/bg::
	Set_Absolutely_English("bg-zoom slide slow ----")		
	return
:*:/nw::
	Set_Absolutely_English("<nowiki></nowiki>")	
	Send {LEFT 9}
	return
:*:/wf::
	Set_Absolutely_English("<WRAP footer></WRAP>")	
	Send {LEFT 7}
	return
:*:/wl::
	Set_Absolutely_English("<WRAP lo></WRAP>")		
	Send {LEFT 7}
	return
:*:/ff::
	Set_Absolutely_English("<fragment></fragment>")	
	Send {LEFT 11}
	return
:*:/fl::
	Set_Absolutely_English("<fragment-list></fragment-list>")	
	Send {LEFT 16}
	return
:*:/fu::
	Set_Absolutely_English("<fragment-block fade-up></fragment-block>")	
	Send {LEFT 17}
	return
:*:/fd::
	Set_Absolutely_English("<fragment-block fade-down></fragment-block>")	
	Send {LEFT 17}
	return
:*:/fg::
	Set_Absolutely_English("<fragment-block grow></fragment-block>")	
	Send {LEFT 17}
	return
:*:/fs::
	Set_Absolutely_English("<fragment-block shrink></fragment-block>")	
	Send {LEFT 17}
	return
:*:/fr::
	Set_Absolutely_English("<fragment highlight-red></fragment>")	
	Send {LEFT 11}
	return
:*:/fg::
	Set_Absolutely_English("<fragment highlight-green></fragment>")	
	Send {LEFT 11}
	return
:*:/fb::
	Set_Absolutely_English("<fragment highlight-blue></fragment>")	
	Send {LEFT 11}
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

:*:/tod::    
    Set_Absolutely_English("<todo></todo>")
    Send {Left 7}
    return

:*:/tmd::    
    Set_Absolutely_English("<todo @jiyong></todo>")
    Send {Left 7}
    return

:*:/tmt::
    Date := A_Now
    Date += 1, Days
    FormatTime, nDate, %Date%, yyyy-MM-dd    
    text = <todo @jiyong due:%nDate%></todo>
    Set_Absolutely_English(text)
    Send {Left 7}
    return

:*:/tmw::
    Date := A_Now
    Date += 7, Days
    FormatTime, nDate, %Date%, yyyy-MM-dd    
    text = <todo @jiyong due:%nDate%></todo>
    Set_Absolutely_English(text)
    Send {Left 7}
    return

:*:/tmm::
    Date := A_Now
    Date += 30, Days
    FormatTime, nDate, %Date%, yyyy-MM-dd    
    text = <todo @jiyong due:%nDate%></todo>
    Set_Absolutely_English(text)
    Send {Left 7}
    return


:*:/tot::
    Date := A_Now
    Date += 1, Days
    FormatTime, nDate, %Date%, yyyy-MM-dd    
    text = <todo due:%nDate%></todo>
    Set_Absolutely_English(text)
    Send {Left 7}
    return

:*:/tow::
    Date := A_Now
    Date += 7, Days
    FormatTime, nDate, %Date%, yyyy-MM-dd    
    text = <todo due:%nDate%></todo>
    Set_Absolutely_English(text)
    Send {Left 7}
    return

:*:/tom::
    Date := A_Now
    Date += 30, Days
    FormatTime, nDate, %Date%, yyyy-MM-dd    
    text = <todo due:%nDate%></todo>
    Set_Absolutely_English(text)
    Send {Left 7}
    return




^F10::
	Send |
	Send {END}
	Send |
	Send ^{Left}
	Send |
	Send {HOME}
	Send {Down}
	return



#ifWinActive

