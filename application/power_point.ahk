#ifWinActive ahk_class PPTFrameClass
;<<Hot String>>

;<<Short Cut>>
F1::Send {UP}
F3::Send {DOWN}

+WheelDown::ComObjActive("PowerPoint.Application").ActiveWindow.SmallScroll(0,0,0,3)
+WheelUp::ComObjActive("PowerPoint.Application").ActiveWindow.SmallScroll(0,0,3,0)

#ifWinActive

