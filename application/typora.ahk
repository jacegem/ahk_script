#ifWinActive ahk_exe Typora.exe

:*:1[::      ;
	Sendraw ![
	Send {Right}
	Send (
	Send ^v
	Send )
	Sleep, 100
	Send {Delete}
	return

:*:\\::       ;	
	Set_Absolutely_English("<br>")		
    return
:*:``js::       ;		
	deleteLine()	
	Set_Absolutely_English("``````javascript")			
	sendEnter()	
    return
:*:``ht::       ;	
	deleteLine()
	Set_Absolutely_English("``````html")		
	sendEnter()	
    return
:*:``sh::       ;	
	deleteLine()
	Set_Absolutely_English("``````sh")		
	sendEnter()	
    return

sendEnter(){
	Sleep, 100
	Send {BS 2}
	Sleep, 100
	Send {BS}{ENTER}	
}

#Hotstring, b r
::#2::#
::#3::##
::#4::###
::#5::####
::#6::#####

#ifWinActive

