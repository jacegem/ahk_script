#ifWinActive ahk_exe Boostnote.exe

;; 새로운 노트 만들기
F1::	
	Send ^n
	Send {Enter}
	Sleep 200
	Send {#}
	SendEnglish(" TITLE")
	Send +^{LEFT}
	return
;; 노트 휴지통으로 이동
F4::Send ^{DEL}
F8::      ;	
	ClipSaved := ClipboardAll   ; Save the entire clipboard to a variable of your choice.
	; ... here make temporary use of the clipboard, such as for pasting Unicode text via Transform Unicode ...
	clipboard = ; Empty the clipboard
	Send, ^c
	ClipWait, 2
	if (!ErrorLevel || clipboard)
	{	
		state := isKorean()
		if state 
		{
			Send {vk15sc138}  
		}

		Send {* 2}		
		Send %clipboard% 		
		Send {* 2}
		;len := StrLen(clipboard)
		;MsgBox, clipboard = %clipboard%, %len%		
		if state 
		{
			Send {vk15sc138}  
		}
	}else{
		Send *
	}
	
	Clipboard := ClipSaved   ; Restore the original clipboard. Note the use of Clipboard (not ClipboardAll).
	ClipSaved =   ; Free the memory in case the clipboard was very large.
	return

:*:===::
    ; 영문으로 변경
    result := SetEnglish()
    SendInput `
(
---
title:
date: %A_YYYY%.%A_MM%.%A_DD%
tags:[]
categories:    
---
)
    SetRestore(result)
    Send {up 4}
    Send {End}
    Send {Space}
    return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; REVEAL JS 사용을 위한 HOTSTRING
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

:*:``--::
	Send ---->
	Send {ENTER}
	return
:*:/bg::    
	tag = bg-zoom slide slow ----
	Set_Absolutely_English(tag)		
	return
:*:/nw::
	; tag = <nowiki></nowiki>
	Set_Absolutely_English(tag)
    ; moveCursor(9)
	; moveCursor(tag)
    ; Send {ENTER 2}
    tag = <nowiki></nowiki>
    Set_Absolutely_English(tag)
    moveCursor(tag)
	return
:*:/wf::
    tag = <WRAP footer></WRAP>
	Set_Absolutely_English(tag)	
	moveCursor(tag)
	return
:*:/wl::
    tag = <WRAP lo></WRAP>
	Set_Absolutely_English(tag)		
	moveCursor(tag)
	return
:*:/ff::
	tag = <fragment></fragment>
	Set_Absolutely_English(tag)	
	moveCursor(tag)
	return
:*:/fl::
	tag = <fragment-list></fragment-list>
	Set_Absolutely_English(tag)	
	moveCursor(tag)
	return
:*:/fu::
	tag = <fragment-block fade-up></fragment-block>
	Set_Absolutely_English(tag)	
	moveCursor(tag)
	return
:*:/fd::
	tag = <fragment-block fade-down></fragment-block>
	Set_Absolutely_English(tag)	
	moveCursor(tag)
	return
:*:/fg::
	tag = <fragment-block grow></fragment-block>
	Set_Absolutely_English(tag)	
	moveCursor(tag)
	return
:*:/fs::
	tag = <fragment-block shrink></fragment-block>
	Set_Absolutely_English(tag)	
	moveCursor(tag)
	return
:*:/fr::
	tag = <fragment highlight-red></fragment>
	Set_Absolutely_English(tag)	
	moveCursor(tag)
	return
:*:/fg::
	tag = <fragment highlight-green></fragment>
	Set_Absolutely_English(tag)	
	moveCursor(tag)
	return
:*:/fb::
	tag = <fragment highlight-blue></fragment>
	Set_Absolutely_English(tag)	
	moveCursor(tag)
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


moveCursor(tag)
{
    StringGetPos, pos, tag, </
    totalLength := StrLen(tag)
    leftCnt := totalLength - pos
    Send {LEFT %leftCnt%}
    Send {Enter 2}
    Send {Up}
}


#Hotstring R B
:*:-=::->
:*:--=::--> 
:*:string:String
:*:re;::return;
:*:br;::break;
:?: e:: =
:?: ee:: ==
:?: eee:: ===
:?: een:: == null
::ne::!= 
;:?: m:: -
:?: p:: +
:?: t:: *
:?: lt:: <
:?: le:: <=
:?: gt:: >
:?: ge:: >=
:?: oo:: ||
:?: aa:: &&


:*:====::=====================================================================
#IfWinActive








