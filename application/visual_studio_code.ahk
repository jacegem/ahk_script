SetTitleMatchMode, RegEx
#ifWinActive ahk_exe Code.exe

::ls::dir
^`::Send +^``
^d::Send ^+k
!^l::Send +!f ;; code formatting 
F4::Send +^b
;^+f::Send !F

;;; 기존 코드들 

;<<Short Cut>>
;^+f::Send !+f
;!+f::Send ^+f


;CapsLock & Space::Send ^{Space}
CapsLock & [::Send !{Left}
CapsLock & ]::Send !{Right}
CapsLock & '::Send ^{Space}
CapsLock & |::Send ^1	
CapsLock & 1::Send ^1

+Space::Send ^{Space}


; :*:{::{

#Hotstring R B
:*:re;::return;
:*:br;::break;
:?: e:: =
:?: ee:: ==
:?: een:: == null
::ne::!= 
:?: m:: -
:?: p:: +
:?: t:: *
:?: lt:: <
:?: le:: <=
:?: gt:: >
:?: ge:: >=
:?: oo:: ||
:?: aa:: &&

;::'::''
;::"::""

GetOutput(){
    global insertType
    GuiControlGet, Edit
    if (insertType = 1)
        output = (%Edit%) => ` 
    else if (insertType = 2)
        output = (%Edit%) => {
    else if (insertType = 3)
        output = (%Edit%) => ({
    return output
}

ParamChanged:
    GuiControlGet, Edit
    output := GetOutput()
    GuiControl,,Result,%output%    
    return

GuiEscape:
    Gui, Destroy
    return

GuiClose:
    Gui, Destroy
    return

ParamEnter:    
    Gui submit
    output := GetOutput()
    SendRaw %output%    
    Gui, Destroy
    return

ShowInsertGui(){
    output :=
    Gui, New    
    Gui, Add, Edit, w300 vEdit gParamChanged
    Gui, Add, Edit, w300 vResult ReadOnly
    Gui, Add, Button, Default gParamEnter, OK    
    Gui, Show
}

ColorGuiGuiEscape:
{
	;MsgBox escape pressed
	Gui, ColorGui:Destroy
	return
}

CapsLock & 0::
    insertType := 1
    ShowInsertGui()    
    return
CapsLock & -::
    insertType := 2
    ShowInsertGui()
    return
CapsLock & =::
    insertType := 3
    ShowInsertGui()
    return

#HotString B
:*:/ed::
    Send export default `
    return
:*:/ce::
    SendRaw `
(
class  extends Component {
render(){
return
}
)
    Send {Left}{Enter}
    Send {Up 4}
    Send {RIGHT 2}
    return

:*:=-::
    Send `=`>
    return
:*:-=::
    Send `=`> {{}
    return
:*:////::
    Send //////////////////////////////////////////////////////////// {ENTER}
    Return
:*://=::
    Send, //=============================================================================== {ENTER}
    Send, // {ENTER}
    Send, //=============================================================================== {UP}
    Return
:*:<==::
    Send, <{!}--================================================================ -->{ENTER}
    Send, <{!}---->{ENTER}
    Send, <{!}--================================================================ -->
    Send, {END}{BS 11}{UP}{LEFT 3}
    Return
:*:<1::
    Send, <{!}--
    Return
:*:/***::
    Send /**  **/{Left 4}
    return

; :*://t::
; Set_Absolutely_English("//TODO : ")
; return

/*
; disable, cuz too Slow Reaction,
/::
clipText := ClipboardAll
GetText(selectedText)

if (InStr(clipText, selectedText))
{
    Send /
}
else{
    ;MsgBox, %clipText% : %selectedText%
    Send ^/
}
return
*/


#ifWinActive

