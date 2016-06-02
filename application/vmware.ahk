SetTitleMatchMode, 2
#IfWinActive, VMware
    
    
;CapsLock::
SetCapslockState, Alwaysoff
;return

CapsLock::SetCapslockState, AlwaysOff

CapsLock & Space::send, {vk15sc138}

capslock & i::Send {Blind}{up}
capslock & k::Send {Blind}{down}
capslock & j::Send {Blind}{left}
capslock & l::Send {Blind}{right}

capslock & h::Send {Blind}{home}
capslock & `;::Send {Blind}{end}

capslock & u::Send {Blind}{backspace}
capslock & o::Send {Blind}{delete}
;capslock & n::Send {Blind}{PgUp}
capslock & n::Send {Blind}{WheelUp 1}
;capslock & m::Send {Blind}{PgDn}
capslock & m::Send {Blind}{WheelDown 1}
capslock & ,::MouseClick, left
capslock & .::MouseClick, right
capslock & PgUp::Send {Blind}{WheelUp 1}
capslock & PgDn::Send {Blind}{WheelDown 1}


capslock & a::Send ^a
capslock & b::Send ^b
capslock & q::Send {Blind}{backspace}
capslock & s::Send ^s
capslock & d::Send ^d
capslock & f::Send ^f
capslock & g::Send !+^r
capslock & w::Send ^w
capslock & e::Send {Blind}{delete}
capslock & r::Send {Blind}{Enter}
capslock & p::Send {=}
capslock & t::Send ^t
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

capslock & left:: MouseMove, -10 , 0, 100 , R
capslock & right:: MouseMove, 10 , 0, 100 , R
capslock & up:: MouseMove, 0 , -10, 100 , R
capslock & down:: MouseMove, 0 , 10, 100 , R
capslock & end::MouseClick, left



CapsLock & \::Send {|}
CapsLock & Esc::Run, taskmgr,, 


Capslock & y::SetCapsLockState, AlwaysOn

; Window Lock
+^CapsLock::Run, rundll32.exe user32.dll`, LockWorkStation ,,,
#CapsLock::Run, rundll32.exe user32.dll`, LockWorkStation ,,,


CapsLock & F5::Suspend

#IfWinActive