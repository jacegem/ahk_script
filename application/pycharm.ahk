SetTitleMatchMode, RegEx
#ifWinActive PyCharm
;<<Hot String>>

; run debug
Capslock & 2::Send +{F6}
F4::Send +{F9}
F5::Send ^+{F10}
;F9::Send +{F9}
;+F9::Send {F9}
F10::Send ^+{F10}
+F10::Send {F10}

#Hotstring R B
:*:re;::return;
:*:br;::break;
;:: e:: =
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

#HotString B
:*:///::
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
:*:/**::
Send /**  **/{Left 4}
return


$F12::Send ^{ENTER}


#ifWinActive

