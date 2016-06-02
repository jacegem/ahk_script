SetTitleMatchMode, RegEx
#ifWinActive ahk_class gdkWindowToplevel
;<<Hot String>>

;<<Short Cut>>
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

^j::Send +!{j} ; Eclipse Comment ShortKey
!j::Send +!j ; Eclipse Comment ShortKey

#Hotstring R B
:*:string:String
:*:re;::return;
:*:br;::break;
:?: e:: =
:?: ee:: ==
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

$F4::
if (fnOn = true) {
 	Send {Blind}{Enter}
} else { 
 	Send {Blind}{F4}
} 
return

$F12::Send ^{F11}


#ifWinActive

