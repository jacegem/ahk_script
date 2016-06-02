
fnOn == false

~Capslock & TAB::fnOn:=!fnOn
;~Capslock::return


#If fnOn
	;;; function keys
	F1::Send {Left}
	F2::Send {WheelUp 2}
	F3::Send {WheelDown 2}
	F4::Send {Right}

	;;; numbers
	m::Send 0
	j::Send 1
	k::Send 2
	l::Send 3
	u::Send 4
	i::Send 5
	o::Send 6

	;;; cursor keys
	s::Send {Left}
	d::Send {Down}
	f::Send {Right}
	w::Send {DELETE}
	q::Send {BS}
	e::Send {UP}	
	r::Send {Enter}
	c::Send ^c
	v::Send ^v
	x::Send ^x
	z::Send ^z
#If

;=========================
; Number Pad
;=========================
/*
alterOriginal := "mjkluio789"
alterMirrored := "123456789"		

MsgBox, % numOriginal

; Now define all hotkeys
Loop % StrLen(numOriginal)
{
	c1 := SubStr(numOriginal, A_Index, 1)	
	Hotkey Shift & %c1%, DoNumberPad	
}
return

DoNumberPad:	
	StringRight ThisKey, A_ThisHotkey, 1
	i1 := InStr(original, ThisKey)
	MirrorKey := SubStr(numMirrored, i1, 1)

	 Modifiers := ""
	If (GetKeyState("LWin") || GetKeyState("RWin")) {
		Modifiers .= "#"
	}
	If (GetKeyState("Control")) {
		Modifiers .= "^"
	}
	If (GetKeyState("Alt")) {
		Modifiers .= "!"
	}
	If (GetKeyState("Shift") + GetKeyState("CapsLock", "T") = 1) {
		; only add if Shift is held OR CapsLock is on (XOR) (both held down would result in value of 2)
		Modifiers .= "+"
	}

	if (fnOn = true){
		Send %Modifiers%{%MirrorKey%}	
	} else {
		Send %Modifiers%{%ThisKey%}	
	}
	
return
*/



/*
$F1::
MsgBox, % alterOriginal
if (fnOn = true) {
 	Send {Blind}{Left}
} else { 
 	Send {Blind}{F1}
} 
return

$F2::
if (fnOn = true) {
 	Send {Blind}{WheelUp 2}
} else { 
 	Send {Blind}{F2}
} 
return

$F3::
if (fnOn = true) {
 	Send {Blind}{WheelDown 2}
} else { 
 	Send {Blind}{F3}
} 
return

$F4::
if (fnOn = true) {
 	Send {Blind}{Right}
} else { 
 	Send {Blind}{F4}
} 
return
*/



/*
$+j::
if (fnOn = true) {
 	SendRaw 1
} else { 
 	SendRaw J
} 
return

$+k::
if (fnOn = true) {
 	SendRaw 2
} else { 
 	SendRaw K
} 
return

$+l::
if (fnOn = true) {
 	SendRaw 3
} else { 
 	SendRaw L
} 
return

$+u::
if (fnOn = true) {
 	SendRaw 4
} else { 
 	SendRaw U
} 
return

$+i::
if (fnOn = true) {
 	SendRaw 5
} else { 
 	SendRaw I
} 
return

$+o::
if (fnOn = true) {
 	SendRaw 6
} else { 
 	SendRaw O
} 
return

$+7::
if (fnOn = true) {
 	SendRaw 7
} else { 
 	SendRaw &
} 
return

$+8::
if (fnOn = true) {
 	SendRaw 8
} else { 
 	SendRaw *
} 
return

$+9::
if (fnOn = true) {
 	SendRaw 9
} else { 
 	SendRaw (
} 
return

$+0::
if (fnOn = true) {
 	SendRaw 0
} else { 
 	SendRaw )
} 
return

$+p::
if (fnOn = true) {
 	SendRaw +
} else { 
 	SendRaw P
} 
return

$+`;::
if (fnOn = true) {
 	SendRaw *
} else { 
 	SendRaw :
} 
return

*/






/*
Send 0
m::Send 1
,::Send 2
.::Send 3
j::Send 4
k::Send 5
l::Send 6
u::Send 7
i::Send 8
o::Send 9
`;::Send +
'::Send -
p::Send *
*/




/*
$F5::
if (fnOn = true) {
 	Send {Blind}{Enter}
} else { 
 	Send {Blind}{F5}
} 
return


$F6::
if (fnOn = true) {
 	Send {Blind}{PgDn}
} else { 
 	Send {Blind}{F6}
} 
return

$i::
if (fnOn = true) {
 	Send {Blind}{up}
} else { 
 	Send {Blind}i 
} 
return

$k::
if (fnOn = true) {
 	Send {Blind}{down}
} else { 
 	Send {Blind}k 
} 						
return

$j::
if (fnOn = true) {
 	Send {Blind}{left}
} else { 
 	Send {Blind}j 
} 
return

$l:
if (fnOn = true) {
 	Send {Blind}{right}
} else { 
 	Send {Blind}l
} 
return

$u::
if (fnOn = true) {
 	Send {Blind}{backspace}
} else { 
 	Send {Blind}u
} 
return


$o::
if (fnOn = true) {
 	Send {Blind}{delete}
} else { 
 	Send {Blind}o
} 
return

$p::
if (fnOn = true) {
 	Send {Blind}{enter}
} else { 
 	Send {Blind}p
} 
return

$w::
if (fnOn = true) {
 	Send {Blind}{up}
} else { 
 	Send {Blind}w
} 
return

$s::
if (fnOn = true) {
 	Send {Blind}{down}
} else { 
 	Send {Blind}s
} 
return

$a::
if (fnOn = true) {
 	Send {Blind}{left}
} else { 
 	Send {Blind}a
} 
return

$d::
if (fnOn = true) {
 	Send {Blind}{right}
} else { 
 	Send {Blind}d
} 
return

$q::
if (fnOn = true) {
 	Send {Blind}{backspace}
} else { 
 	Send {Blind}q
} 
return

$e::
if (fnOn = true) {
 	Send {Blind}{delete}
} else { 
 	Send {Blind}e
} 
return

$r::
if (fnOn = true) {
 	Send {Blind}{enter}
} else { 
 	Send {Blind}r
} 
return

$x::
if (fnOn = true) {
 	Send {Blind}{PgUp}
} else { 
 	Send {Blind}x
} 
return

$c::
if (fnOn = true) {
 	Send {Blind}{PgDn}
} else { 
 	Send {Blind}c
} 
return


$z::
if (fnOn = true) {
 	Send {Blind}{home}
} else { 
 	Send {Blind}z
} 
return


$v::
if (fnOn = true) {
 	Send {Blind}{end}
} else { 
 	Send {Blind}v
} 
return
*/