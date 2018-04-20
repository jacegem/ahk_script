;  ^r::
;      path = "C:\Program Files (x86)\Evernote\Evernote\Evernote.exe"
;  	RunActivateOrSwitch(path)
;  	return

; +^r::
; 	path = "C:\Program Files (x86)\Microsoft VS Code\Code.exe"
; 	RunActivateOrSwitch(path)
; 	return

^+v::    
    ClipWait 2
    lenMin := 9999
    exceptFirst := false
    loop, parse, clipboard, `n, `r
    {   
        len := StrLen(A_LoopField)
        if len <= 0 
            continue         
        RegExMatch(A_LoopField, "P)^\s+", spaceLen)
        if (a_index == 1 && spaceLen == 0) {
            exceptFirst := true
            continue
        } 
        if (spaceLen < lenMin) 
            lenMin := spaceLen                
    }

    result =
    loop, parse, clipboard, `n, `r
    {
        if (a_index == 1 && exceptFirst == true) {
            result := A_LoopField
            continue            
        } 

        str := SubStr(A_LoopField, lenMin + 1)
        if a_index != 1
            result .= "`n"
        result .=  str
    }
    
    ClipSaved := Clipboard
    Clipboard := result
    ClipWait 2
    Send ^v
    Sleep, 100
    Clipboard := ClipSaved
    ClipSaved =
return

        ;msgbox, A_LoopField
        ;MsgBox % "The length of InputVar is " . StrLen(%A_LoopField%) ; Result: 43
        ;len := StrLen(A_LoopField)
        ;msgbox, strlen : %len%
        ;if len == 0 continue

;  탐색기에서 보고있는 경로로, 명령실행창을 연다.
#IfWinActive ahk_class CabinetWClass ; for use in explorer.
+^r::
ClipSaved := ClipboardAll
Send !d
Sleep 10
Send ^c
Run, cmd /K "cd `"%clipboard%`""
Clipboard := ClipSaved
ClipSaved =
return
#IfWinActive
/*
;;;;;;;;;;;;Clipboard enhancements
; Append to clipboard (cut)
^+x::
    clipboardBefore = %clipboard%
    Send ^x
    ClipWait, 2
    clipboard = %clipboardBefore% %clipboard%

return



; Paste as plain text
^+v::
    ClipSaved := ClipboardAll	; Save the entire clipboard to a variable of your choice.
    clipboard = %clipboard%		; Convert any copied files, HTML, or other formatted text to plain text.
    ClipWait, 2
    Send ^v
    Sleep, 1000
    Clipboard := ClipSaved   ; Restore the original clipboard. Note the use of Clipboard (not ClipboardAll).
    ClipSaved =   ; Free the memory in case the clipboard was very large.
return
*/