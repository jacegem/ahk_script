;SetTitleMatchMode, RegEx
#ifWinActive ahk_class CabinetWClass
;;;;;;;;;;;;;;;;;;;;;;;;;Hot String

;;;;;;;;;;;;;;;;;;;;;;;;;Short Cut
/*
$+F4::F4
$F4::
	file := Explorer_GetSelected()		
	if (file = "" || file = "ERROR") {
		Send {F4}
		return
	}
	file = `"%file%`"
	MsgBox %file%
	Run, %P_SUBLIME% %file%
return
*/

$+F4::F4
$F4::
	file := Explorer_GetSelected()
	if (file = "" || file = "ERROR") {
		Send {F5}
		return
	}
	Run, notepad++.exe %file%, F:\Program Files (x86)\Notepad++
return



$+F6::F6
$F6::
	file := Explorer_GetSelected()
	if (file = "" || file = "ERROR") {
		Send F6
		return
	}
	
	Run, PowerCmd.exe /P %file%, F:\Program Files (x86)\PowerCmd
return

#IfWinActive
