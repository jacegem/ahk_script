#ifWinActive ahk_exe XMind.exe

; tab 또는 enter 를 누르면, 입력 모드로 변경한다.
TAB::Send {TAB}{SPACE}
ENTER::Send {ENTER}{SPACE}

#IfWinActive