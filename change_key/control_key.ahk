
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