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
	Send {ENTER}			
	;sendEnter()	
    return
:*:``ja::       ;		
	deleteLine()	
	Set_Absolutely_English("``````java")	
	Send {ENTER}			
    return
:*:``sq::       ;		
	deleteLine()	
	Set_Absolutely_English("``````sql")	
	Send {ENTER}			
    return
:*:``ht::       ;	
	deleteLine()
	Set_Absolutely_English("``````html")		
	Send {ENTER}		
    return
:*:``sh::       ;	
	deleteLine()
	Set_Absolutely_English("``````sh")		
	Send {ENTER}		
    return

sendEnter(){
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

