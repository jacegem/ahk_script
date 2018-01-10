#ifWinActive ahk_exe atom.exe

CapsLock & f::
    If GetKeyState("Shift", "P") 
        Send ^!f
    Else 
        Send, ^f
    return

#Hotstring R B
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
:*:=9::            
    SendRaw `= () => {}    
    Send {LEFT}{ENTER}
    return
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

#ifWinActive

