SendEnglish(content)
{
    ret := IME_CHECK("A")
    if %ret% != 0                ; 0 means IME is in English mode now.
    {
		Send, {vk15sc138}   
    }
    
	Send %content%

	if %ret% != 0                ; 0 means IME is in English mode now.
    {
		Send, {vk15sc138}   
    }    
}

SendKorean(content)
{
    ret := IME_CHECK("A")
    if %ret% = 0                ; 0 means IME is in English mode now.
    {
		Send, {vk15sc138}   
    }
    
	Send %content%

	if %ret% = 0                ; 0 means IME is in English mode now.
    {
		Send, {vk15sc138}   
    }    
}

isEnglish()
{
	ret := IME_CHECK("A")
    	if %ret% = 0                ; 0 means IME is in English mode now.
    	{
    		return true
    	}
	return false
}

isKorean()
{
	ret := IME_CHECK("A")
    	if %ret% != 0                ; 0 means IME is in English mode now.
    	{
    		return true
    	}
	return false
}

HS_KK(hot_str, del_kor){
    if isEnglish()
        return

    Send {vk15sc138 2}   
    Send {BS %del_kor%}
    ;Sleep 100
    Send %hot_str%
}

;; 영문을 한글로 변경
HS_EK()
{
        hotkey := SubStr(A_ThisHotkey, 4)	
        length := Strlen(hotkey)
        length += 1

        if isEnglish()
        {
                Send {BS %length%}
                Send {vk15sc138}   
                Send %hotkey%{SPACE}
        }
        return
}

;; 영문, 한글 을 영문으로 변경
HS_AE(english :="", del_kor := "", del_eng := "") {
    isKorean := isKorean()

    if isKorean {
        Send {BS %del_kor%}
    } else {
        Send {BS %del_eng%}
    }

    if isKorean {
        Send {vk15sc138}
    }

    SendRaw %english%

    if isKorean {
        Send {vk15sc138}
    }               
}

;; 영문을 영문으로 변경
HS_EE(hot_str := "", del_kor := "", del_eng := "") {
    state := isKorean()
    if state 
        return
    HS_AE(hot_str, del_kor, del_eng)
}

;; 한글을 영문으로 변경
HS_KE(english := "", del_kor := "") {         
    if isEnglish()
        return

    StringGetPos, startPos, A_ThisHotkey, :, l2		; Left Second
    if !english {            
        english := SubStr(A_ThisHotkey, startPos+2)
        del_kor := StrLen(english) 
    }

    if (english is number) {
        del_kor := english            
        english := SubStr(A_ThisHotkey, startPos+2)    
    }

    if (startPos = 1) {
        engWordCount := engWordCount + 1
        del_kor := del_kor + 1  
        english := english . " "
    }            

    HS_AE(english, del_kor)
}