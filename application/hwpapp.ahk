;SetTitleMatchMode, RegEx
#ifWinActive ahk_class HwpApp : 8.0
+^v::
	Send ^!v ;	선택하여 붙여넣기
	Send {Down 2}
	Send {Enter}
	return

F1::Send {Up}
F2::Send {Down}

#ifWinActive
