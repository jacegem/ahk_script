SetTitleMatchMode, RegEx
#ifWinActive ahk_exe Code.exe


^d::Send ^+k
$F4::Send {F12}


;;; 기존 코드들 

;<<Short Cut>>
^+f::Send !+f
!+f::Send ^+f


;CapsLock & Space::Send ^{Space}
CapsLock & [::Send !{Left}
CapsLock & ]::Send !{Right}
CapsLock & 3::Send ^/
CapsLock & '::Send ^{Space}
CapsLock & |::Send ^1	
CapsLock & 1::Send ^1

+Space::Send ^{Space}


#Hotstring R B
:*:re;::return;
:*:br;::break;
:?: e:: =
:?: ee:: ==
:?: een:: == null
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

; :*://t::
; Set_Absolutely_English("//TODO : ")
; return

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


#ifWinActive

