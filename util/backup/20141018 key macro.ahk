
;#include %a_scriptdir%\..\lib\Array.ahk
;#include %a_scriptdir%\..\lib\Object.String.ahk
;#include %a_scriptdir%\..\lib\Utils.ahk

/*
	기재하지 않은 핫키 	: print screen, scroll lock, caps lock, num lock, pause
*/



global is_recording
global key_string
global sleep_time

is_recording 	:= false
key_string		:= ""
sleep_time	:= "50"

addKeyString(key)
{
	if(is_recording == true){
		key_string .= "{" . key . "}"
	}
}

sendKeys()
{
	;sendinput, %key_string%
	key_array := key_string.split("}{")
	
	loop % key_array.length()
	{
		current_key := key_array.get(a_index).replace("{", "").replace("}", "")
		sendinput % "{" . current_key . "}" 
		sleep % sleep_time
	}
}

hideNote()
{
	gui, destroy
}


#f1::
	if(is_recording == false)
	{
		is_recording 	:= true
		key_string 		:= ""
		
		Utils.noteTransparent("will start recording")
		Utils.noteTransparent("recording...", "0", "20")
	}
	else
	{
		is_recording := false
		
		hideNote()
		Utils.noteTransparent("recording end", "800", "50")
	}
return










#f2::
	msgbox % key_string
	return

#f3::
	if(key_string != ""){
		sendKeys()
	}else{
		send, {f3}
	}
	return


^#r::
	Utils.noteTransparent("reload key macro script")
	reload
return








~*ctrl::		addKeyString("ctrldown")
~*ctrl up::		addKeyString("ctrlup")
~*alt::			addKeyString("altdown")
~*alt up::		addKeyString("altup")
~*shift::		addKeyString("shiftdown")
~*shift up::	addKeyString("shiftup")
						
				
~*a::			addKeyString("a")	
~*b::			addKeyString("b")
~*c::			addKeyString("c")
~*d::			addKeyString("d")
~*e::			addKeyString("e")
~*f::			addKeyString("f")
~*g::			addKeyString("g")
~*h::			addKeyString("h")
~*i::			addKeyString("i")
~*j::			addKeyString("j")
~*k::			addKeyString("k")
~*l::			addKeyString("l")
~*m::			addKeyString("m")
~*n::			addKeyString("n")
~*o::			addKeyString("o")
~*p::			addKeyString("p")
~*q::			addKeyString("q")
~*r::			addKeyString("r")
~*s::			addKeyString("s")
~*t::			addKeyString("t")
~*u::			addKeyString("u")
~*v::			addKeyString("v")
~*w::			addKeyString("w")
~*x::			addKeyString("x")
~*y::			addKeyString("y")
~*z::			addKeyString("z")
				
				
~*1::			addKeyString("1")
~*2::			addKeyString("2")
~*3::			addKeyString("3")
~*4::			addKeyString("4")
~*5::			addKeyString("5")
~*6::			addKeyString("6")
~*7::			addKeyString("7")
~*8::			addKeyString("8")
~*9::			addKeyString("9")
~*0::			addKeyString("0")
	
				
~*numpad1::		addKeyString("numpad1")
~*numpad2::		addKeyString("numpad2")
~*numpad3::		addKeyString("numpad3")
~*numpad4::		addKeyString("numpad4")
~*numpad5::		addKeyString("numpad5")
~*numpad6::		addKeyString("numpad6")
~*numpad7::		addKeyString("numpad7")
~*numpad8::		addKeyString("numpad8")
~*numpad9::		addKeyString("numpad9")
~*numpad0::		addKeyString("numpad0")
~*numpadmult::	addKeyString("numpadmult")
 
 


~*f1::			addKeyString("f1")
~*f2::			addKeyString("f2")
~*f3::			addKeyString("f3")
~*f4::			addKeyString("f4")
~*f5::			addKeyString("f5")
~*f6::			addKeyString("f6")
~*f7::			addKeyString("f7")
~*f8::			addKeyString("f8")
~*f9::			addKeyString("f9")
~*f10::			addKeyString("f10")
~*f11::			addKeyString("f11")
~*f12::			addKeyString("f12")
			

~*left::		addKeyString("left")
~*right::		addKeyString("right")
~*up::			addKeyString("up")
~*down::		addKeyString("down")
~*insert::		addKeyString("insert")
~*delete::		addKeyString("delete")
~*home::		addKeyString("home")
~*end::			addKeyString("end")
~*pgup::		addKeyString("pgup")
~*pgdn::		addKeyString("pgdn")
~*space::		addKeyString("space")
~*enter::		addKeyString("enter")
~*backspace::	addKeyString("backspace")
~*esc::			addKeyString("esc")
~*tab::			addKeyString("tab")
				

~*,::			addKeyString(",")
~*.::			addKeyString(".")
~*/::			addKeyString("/")
~*`;::			addKeyString(";")
~*'::			addKeyString("'")
~*\::			addKeyString("\")
~*[::			addKeyString("[")
~*]::			addKeyString("]")
~*-::			addKeyString("-")
~*=::			addKeyString("=")
~*`::			addKeyString("``")


