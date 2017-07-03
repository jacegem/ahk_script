#ifWinActive ahk_exe XMind.exe

global input_state := False

; tab 또는 enter 를 누르면, 입력 모드로 변경한다.
TAB::
    changeState()
    return     
ENTER::
    changeState()
    return     

changeState(){    
    Send {%A_ThisHotkey%}    
    if (input_state != 1){        
        Send {F2}       
    }
    input_state := !input_state        
}

#IfWinActive