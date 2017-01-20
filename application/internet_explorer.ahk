;SetTitleMatchMode, RegEx
#ifWinActive ahk_class IEFrame
;<<Hot String>>

;<<Short Cut>>
F1::Send ^!{LEFT}
F2::Send ^!{RIGHT}

F3::
	timer := 100

	imgSearch(x, y, ".\img\main1.png", timer)
	MouseClick Left, x+10, y+10
	Sleep 100	

	imgSearch(x, y, ".\img\password.png", timer)
	MouseClick Left, x+90, y+10
	Send kras
	Sleep 100

	Send {Enter}	
	MouseMove 100, 100

	imgSearch(x, y, ".\img\menu1.png", timer)
	MouseClick Left, x+10, y+10
	Sleep 400

	imgSearch(x, y, ".\img\menu2.png", timer)
	MouseClick Left, x+10, y+10
	Sleep 400

	imgSearch(x, y, ".\img\menu3.png", timer)
	MouseClick Left, x+10, y+10
	Sleep 400

	return


F4::
	;SetKeyDelay, 100
	Send ^o
	Sleep 200
	clipboard = http://10.47.4.39:8085/mltm
	Send ^v
	Send {Enter}
	

	timer := 15000
	Global bEnd = false
	
	imgSearch(x, y, ".\img\hang.png", timer)

	;SendInput kras

	MouseClick Left, x+10, y+10
	Sleep 200
	;MouseClick Left, x+100, y+100

	Send {TAB 3}
	Send kras
	Send {TAB}
	Send {ENTER}

	imgSearch(x, y, ".\img\menu1.png", timer)
	MouseClick Left, x+10, y+10
	Sleep 200

	imgSearch(x, y, ".\img\menu2.png", timer)
	MouseClick Left, x+10, y+10
	Sleep 200

	imgSearch(x, y, ".\img\menu3.png", timer)
	MouseClick Left, x+10, y+10
	Sleep 200

	return

imgSearch(ByRef x, ByRef y, path, timer){
	SetTimer, EndScipt, %timer%
	Loop
	{
	ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %path%
	;MsgBox % FoundX . FoundY
		If (Errorlevel = 0) {
		   break
		}
		if bEnd
		   break
	}
	SetTimer, EndScipt, off
}


EndScipt:
	SetTimer, EndScipt, off
	bEnd = true
return

F5::Send ^{F5}

#ifWinActive
