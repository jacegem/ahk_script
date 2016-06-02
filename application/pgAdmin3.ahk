#ifWinActive ahk_exe pgAdmin3.exe
;<<Hot String>>

CapsLock & [::Send +^{tab}
CapsLock & ]::Send ^{tab}
CapsLock & \::Send ^w
CapsLock & Enter::Send ^{ENTER}
^Enter::Send {F5}			;; run script


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
:*:select a::SELECT *
:*:saf::SELECT * FROM 
;::'::''
;::"::""

;;;;;;;;;;;; CHANGE TO TABLE NAME
:*:/req::AMRM_EXPORT_REQUEST
:*:/log::ACOM_CONN_LOG
:*:/stat::ACOM_CONN_STAT
:*:/ognz::ACOM_CONN_OGNZ
:*:/sys::ACOM_CONN_SYS


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

