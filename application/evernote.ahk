#ifWinActive ahk_class ENMainFrame
;<<Hot String>>

;<<Short Cut>>
;CapsLock & Space::Send ^{Space}
CapsLock & [::Send !{Left}
CapsLock & ]::Send !{Right}
CapsLock & '::Send ^{Space}
CapsLock & |::Send ^1	

CapsLock & 1::
	createTable(1, 1)	
	return
CapsLock & 2::	
	createTable(2)	
	return
CapsLock & 3::	
	createTable(3)	
	return
CapsLock & 4::	
	createTable(4)	
	return
CapsLock & 5::	
	createTable(5)	
	return

^l::Send ^t



createTable(colCnt, rowCnt = ""){
	Send +!o
	Send t
	WinWaitActive, ahk_class #32770, , 2
	if ErrorLevel
		return
	
	if rowCnt
		Send %rowCnt%

	Send {tab}
	Send %colCnt%
	Send {ENTER}
}

+Space::Send ^{Space}


#Hotstring R B
:*:re;::return;
:*:br;::break;
:?: e:: =
:?: ee:: ==
:?: een:: == null
:?: eee:: === 
:?: nee:: !== 
::ne::!= 
:?: m:: -
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
:*:////::
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


;:*:n`;::null;
;;:*:r`;::return;

:?*:=d::
Send {=}dovelet{SPACE}
Send ^v{ENTER 2}
Send {=}cut{UP}
return

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
^j::Send ^+h
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

