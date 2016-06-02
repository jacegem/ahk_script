;SetTitleMatchMode, RegEx
#ifWinActive Excel
;<<Hot String>>

;<<Short Cut>>

+Enter::Send !{ENTER}
~+Space::Send +{Space}
CapsLock & [::Send ^{Pgup}
CapsLock & ]::Send ^{Pgdn}
CapsLock  & 2::Send {F2}

+WheelUp::ComObjActive("Excel.Application").ActiveWindow.SmallScroll(0,0,0,3)  ; Scroll left. 
+WheelDown::ComObjActive("Excel.Application").ActiveWindow.SmallScroll(0,0,3)  ; Scroll right.

;; $ 표시를 하여서 다시 호출되는 것을 방지한다. 
$F1::
Set_Absolutely_English("o{ENTER}")
return

$F3::
Set_Absolutely_English("x{RIGHT}")
return

$F9::Send ^y


#IfWinActive




