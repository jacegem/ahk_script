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
    if isKorean()
        return

    hotkey := SubStr(A_ThisHotkey, 4)	
    length := Strlen(hotkey)
    length += 1

    Send {BS %length%}
    Send {vk15sc138}   
    Send %hotkey%{SPACE}
}

;; 영문, 한글 을 영문으로 변경
HS_AE(english :="", del_kor := "", del_eng := "") {   
    isKorean := isKorean()

    if isKorean {
        HS_KE(english, del_kor)
    } else {
        HS_EE(english, del_eng)
    }
}

;; 영문을 영문으로 변경
HS_EE(english := "", del_eng := "") {
    if isKorean()    
        return

    StringGetPos, startPos, A_ThisHotkey, :, l2		; Left Second
    if !del_eng {            
        hot_key := SubStr(A_ThisHotkey, startPos+2)
        del_eng := StrLen(hot_key) 
    }

    Send {BS %del_eng%}
    SendRaw %english%
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

    if english is number 
    {
        del_kor := english            
        english := SubStr(A_ThisHotkey, startPos+2)    
    }

    if (startPos = 1) {
        engWordCount := engWordCount + 1
        del_kor := del_kor + 1  
        english := english . " "
    }            

    Send {vk15sc138}        
    Send {BS %del_kor%}    
    SendRaw %english%    	
    Send {vk15sc138}   
}