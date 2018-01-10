#ifWinActive ahk_exe Typora.exe

F6::Send ^k

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; REVEAL JS 사용을 위한 HOTSTRING
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:--::
	Send ---->
	Send {ENTER}
	return
:*:/bg::
	Set_Absolutely_English("bg-zoom slide slow ----")		
	return
:*:/nw::
	Set_Absolutely_English("<nowiki></nowiki>")	
	Send {LEFT 9}
	return
:*:/wf::
	Set_Absolutely_English("<WRAP footer></WRAP>")	
	Send {LEFT 7}
	return
:*:/wl::
	Set_Absolutely_English("<WRAP lo></WRAP>")		
	Send {LEFT 7}
	return
:*:/ff::
	Set_Absolutely_English("<fragment></fragment>")	
	Send {LEFT 11}
	return
:*:/fl::
	Set_Absolutely_English("<fragment-list></fragment-list>")	
	Send {LEFT 16}
	return
:*:/fu::
	Set_Absolutely_English("<fragment-block fade-up></fragment-block>")	
	Send {LEFT 17}
	return
:*:/fd::
	Set_Absolutely_English("<fragment-block fade-down></fragment-block>")	
	Send {LEFT 17}
	return
:*:/fg::
	Set_Absolutely_English("<fragment-block grow></fragment-block>")	
	Send {LEFT 17}
	return
:*:/fs::
	Set_Absolutely_English("<fragment-block shrink></fragment-block>")	
	Send {LEFT 17}
	return
:*:/fr::
	Set_Absolutely_English("<fragment highlight-red></fragment>")	
	Send {LEFT 11}
	return
:*:/fg::
	Set_Absolutely_English("<fragment highlight-green></fragment>")	
	Send {LEFT 11}
	return
:*:/fb::
	Set_Absolutely_English("<fragment highlight-blue></fragment>")	
	Send {LEFT 11}
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
:*:``py::       ;		
	deleteLine()	
	Set_Absolutely_English("``````python")
	Send {ENTER}				
    return
:*:``js::       ;		
	deleteLine()	
	Set_Absolutely_English("``````javascript")
	Send {ENTER}				
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
:*:``xm::       ;	
	deleteLine()
	Set_Absolutely_English("``````xml")		
	Send {ENTER}		
    return
:*:``cs::       ;	
	deleteLine()
	Set_Absolutely_English("``````css")		
	Send {ENTER}		
    return

sendEnter(){
	Sleep, 100
	Send {BS 5}
	Send {ENTER}	
}

#Hotstring, b r
::#2::#
::#3::##
::#4::###
::#5::####
::#6::#####

#ifWinActive

