#ifWinActive ahk_exe WINWORD.EXE
;<<Hot String>>

;<<Short Cut>>
F1::Send {PgUp}
F3::Send {PgDn}

;+WheelDown::ComObjActive("PowerPoint.Application").ActiveWindow.SmallScroll(0,0,0,3)
;+WheelUp::ComObjActive("PowerPoint.Application").ActiveWindow.SmallScroll(0,0,3,0)

#ifWinActive

