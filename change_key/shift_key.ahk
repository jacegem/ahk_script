;;;;;;;;;; Shift Key Change ;;;;;;;;;;;;;;;

; Change Eng to Kor, Both Side
+Space::send, {vk15sc138}

+SC15D::
	Run, rundll32.exe user32.dll`, LockWorkStation ,,,
	;Send {SC15D UP}
	return
+VK19SC1F1::
	Run, rundll32.exe user32.dll`, LockWorkStation ,,,
	;Send {VK19SC1F1 UP}
	return



; Delete Line
+BackSpace::
	Send {END}
	Send +{HOME 2}
	Send, ^c
	Send {DELETE}
	Send {BS}
Return