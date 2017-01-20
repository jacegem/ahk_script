;SetTitleMatchMode, RegEx
;#ifWinActive ahk_exe LiClipse.exe
#if, WinActive("ahk_exe LiClipse.exe") || WinActive("ahk_exe eclipse.exe")
;<<Hot String>>

;<<Short Cut>>
^/:: Send ^+/
^+/:: Send ^+|
~LButton & F1:: Send {F11}
~LButton & F2:: Send ^{F11}

;CapsLock & Space::Send ^{Space}
CapsLock & [::Send !{Left}
CapsLock & ]::Send !{Right}
CapsLock & 3::Send ^/
CapsLock & '::Send ^{Space}
CapsLock & |::Send ^1	
CapsLock & 1::Send ^1


;Windows Key
#c::Send ^!c		; SVN Commit
#u::Send ^!u		; SVN Update


+Space::Send ^{Space}

;^y::Send +^y ; Eclipse Comment ShortKey
^j::Send +!{j} ; Eclipse Comment ShortKey
!j::Send +!j ; Eclipse Comment ShortKey


#Hotstring R B
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

;::'::''
;::"::""

#HotString B
:*://-::
	Send //////////////////////////////////////////////////////////// {ENTER}
	Return
:*://=::
Send, //=============================================================================== {ENTER}
Send, // {ENTER}
Send, //=============================================================================== {UP}
Return
:*:<==::
Send, <{!}--================================================================ -->{ENTER}
Send, <{!}---->{ENTER}
Send, <{!}--================================================================ -->
Send, {END}{BS 11}{UP}{LEFT 3}
Return
:*:<1::
Send, <{!}--
Return
:*:/***::
Send /**  **/{Left 4}
return

:*://t::
Set_Absolutely_English("//TODO : ")
return

;:*:n`;::null;
;;:*:r`;::return;

/*
:?*:=d::
Send {=}dovelet{SPACE}
Send ^v{ENTER 2}
Send {=}cut{UP}
return
*/
/*
; disable, cuz too Slow Reaction,
/::
clipText := ClipboardAll
GetText(selectedText)

if (InStr(clipText, selectedText))
{
    Send /
}
else{
    ;MsgBox, %clipText% : %selectedText%
    Send ^/
}
return
*/

; Function Keys
$F1::
if (fnOn = true) {
 	Send {Blind}{Left}
} else { 
 	Send {Blind}^1
} 
return

$F2::
if (fnOn = true) {
 	Send {Blind}{UP}
} else { 
	clipBefore = %Clipboard%
	Send ^c
	searchText = %Clipboard%
	FoundPosJava := RegExMatch(searchText, "\w+\.java$")
	FoundPosXml := RegExMatch(searchText, "\w+\.xml$")
	if (FoundPosJava != 0)
	{
		Send +!r		
	}
	else if (FoundPosXml != 0){
		Send {F2}
	}
	else {
		Send {F2}
		;Send {Blind}^2
	 	;Send {r}
	}
 	
} 
return

$F3::
if (fnOn = true) {
 	Send {Blind}{Down}
} else { 
 	Send {Blind}{F3}
} 
return

; $F4::
; ; 클립보드에 있는 내용이 ID
; ; 선택된 내용이 텍스트
; ; 해당 내용을 지우고, Label태그를 입력한다. 
; Set_Absolutely_English2()
; inputId = %clipboard%
; clipboard =
; Send ^c
; ClipWait, 1
; labelText = %clipboard%
; Send {del}
; printText = <label for=`"%inputId%`">%labelText%
; Send %printText%
; return

F9::Send ^{F8}   ; Change Perspective
F11::Send ^+y
$F12::Send ^{F11}


#if

