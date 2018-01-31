;;;;;<--------------------------------------------- AHK ½ºÅ©¸³Æ® ³»¿ë --------------------------------------------->

IME_CHECK(WinTitle)
{
    WinGet,hWnd_abs,ID,%WinTitle%
    Return Send_ImeControl(ImmGetDefaultIMEWnd(hWnd_abs),0x005,"")
}

Send_ImeControl(DefaultIMEWnd, wParam, lParam)
{
    DetectSave := A_DetectHiddenWindows       
    DetectHiddenWindows,ON                           

     SendMessage 0x283, wParam,lParam,,ahk_id %DefaultIMEWnd%
    if (DetectSave <> A_DetectHiddenWindows)
        DetectHiddenWindows,%DetectSave%
    return ErrorLevel
}

ImmGetDefaultIMEWnd(hWnd_abs)
{
    return DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd_abs, Uint)
}

!vk15sc1F2::Set_Absolutely_Korean()                ; I want Alt-[Eng/Han] key to be "Absolutely Hangul(Korean)" mode key. I hate toggling :(

Set_Absolutely_Korean()
{
    ret := IME_CHECK("A")
    if %ret% = 0                ; 0 means IME is in English mode now.
    {
        Send, {vk15sc138}       ; Turn IME into Hangul(Korean) mode.
    }
}


^vk15sc1F2::Set_Absolutely_English2()                    ; I want Ctrl-[Eng/Han] key to be "Absolutely English" mode key. I hate toggling :(

Set_Absolutely_English2()
{
    ret := IME_CHECK("A")
    if %ret% <> 0               ; 1 means IME is in Hangul(Korean) mode now.
    {
        Send, {vk15sc138}       ; Turn IME into English mode.
    }
}

Set_Absolutely_English(param = "")
{
    ret := IME_CHECK("A")
    if %ret% <> 0               ; 1 means IME is in Hangul(Korean) mode now.
    {
        Send, {vk15sc138}       ; Turn IME into English mode.
    }

    Send, %param%

    if %ret% <> 0               ; 1 means IME is in Hangul(Korean) mode now.
    {
        Send, {vk15sc138}       ; Turn IME into English mode.
    }    
}

SetEnglish()
{
    ret := IME_CHECK("A")
    if %ret% <> 0               ; 1 means IME is in Hangul(Korean) mode now.
    {
        Send, {vk15sc138}       ; Turn IME into English mode.
    }
    return ret
}

SetRestore(ret)
{
    if ret <> 0
    {
        Send, {vk15sc138}
    }
}