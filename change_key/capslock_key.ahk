;CapsLock::
SetCapslockState, Alwaysoff
;return



CapsLock::SetCapslockState, AlwaysOff
CapsLock & Space::send, {vk15sc138}
CapsLock & LButton::Send !^{LEFT}
CapsLock & RButton::Send !^{RIGHT}

global xDiff := 0
global yDiff := 0 

moveMouse(x, y){
	GetKeyState, state, Alt
	if (state != "D") {
		return False
	}	    

	diff := 5
	default := 10
	timeOut := 500
	speed := 0
	
	t := A_TimeSincePriorHotkey
	if (A_PriorHotkey = A_ThisHotkey &&  t < timeOut){
		xDiff += x * diff
		yDiff += y * diff		
	}else{
		xDiff := 0
		yDiff := 0 
		if (x = 0)
			yDiff := y * default			
		if (y = 0)
			xDiff := x * default			
	}

	if !xDiff		
		xDiff := 0
	if !yDiff		
		yDiff := 0

	MouseMove, %xDiff%, %yDiff% , %speed% , R	
	return true
}

capslock & i::
	if (moveMouse(0, -1)){	
	}
	else	    
		Send {Blind}{up}	
	return

capslock & k::
	if (moveMouse(0, 1)) {		
	}else	    
		Send {Blind}{down}
	return

capslock & j::
	if (moveMouse(-1, 0)) {	     
	}else	   
		Send {Blind}{left}
	return
	

capslock & l::
	if (moveMouse(1, 0)) {	     
	}else	    
		Send {Blind}{right}
	return
	

capslock & u::
	if (moveMouse(-1, -1)) {	     
	}else
		Send {Blind}{backspace}
	return

capslock & o::
	if (moveMouse(1, -1)) {	     
	}else
		Send {Blind}{delete}
	return

capslock & ,::
	if (moveMouse(0, 1)) {		
	}else	    
		Send {Blind}{PgDn}
	return

capslock & m::
	if (moveMouse(-1,1)) {	     
	}else
		Send {Blind}{PgUp}
	return

capslock & .::
	if (moveMouse(1,1)) {	     
	}else
		;MouseClick, right
	return



capslock & h::
	GetKeyState, state, Alt
	if (state = "D") {
		Send {AltUp}
		MouseClick, left
	}else{
		Send {Blind}{home}
	}
	return 

capslock & `;::
	GetKeyState, state, Alt
	if (state = "D") {
    Send {AltUp}
		MouseClick, right
	}else{
		Send {Blind}{end}
	}
	return 


capslock & n::Send {Blind}{Wheelup}



;capslock & n::Send {Blind}{WheelUp 1}
;capslock & m::Send {Blind}{WheelDown 1}
capslock & '::Send {Blind}{WheelUp}
capslock & /::Send {Blind}{WheelDown}
capslock & PgUp::Send {Blind}{WheelUp 1}
capslock & PgDn::Send {Blind}{WheelDown 1}


capslock & a::Send ^a
capslock & b::Send ^b
capslock & q::Send {Blind}{backspace}
capslock & s::Send ^s
capslock & d::Send ^d
capslock & f::Send ^f
capslock & g::Send ^g
capslock & w::Send #{TAB}
capslock & e::Send {Blind}{delete}
capslock & r::Send {Blind}{Enter}
capslock & p::Send {AppsKey}

;capslock & t::Send ^t
capslock & t::
	EnvGet, dropbox, dropbox
	Run %dropbox%\Programs\Windows\Portable\totalcmd\totalcmd.exe
return

capslock & z::Send ^z
capslock & x::Send ^x
capslock & c::Send ^c
capslock & v::Send ^v
capslock & [::Send ^[
capslock & ]::Send ^]


capslock & 1::Send {F1}
capslock & 2::Send {F2}
capslock & 3::Send {F3}
capslock & 4::Send {F4}
capslock & 5::Send {F5}
capslock & 6::Send {F6}
capslock & 7::Send {F7}
capslock & 8::Send {*}
capslock & 9::Send (){Left}
capslock & 0::Send )
capslock & -::Send {F11}
capslock & =::Send {F12}


;capslock & -::send, {Volume_Down 3}
;capslock & =::send, {Volume_Up 3}
;capslock & 0::send, {Volume_Mute}


capslock & delete::MouseClick, right
capslock & end::MouseClick, left
CapsLock & \::Send {|}
CapsLock & Esc::Run, taskmgr,, 


Capslock & y::SetCapsLockState, AlwaysOn

; Window Lock
;+^CapsLock::Run, rundll32.exe user32.dll`, LockWorkStation ,,,
;#CapsLock::Run, rundll32.exe user32.dll`, LockWorkStation ,,,



Capslock & F10::
	MouseClick, Left
	Send {HOME}
	Send +{END}
	Send {DELETE}
	Send {Enter}
	return