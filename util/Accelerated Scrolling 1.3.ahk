; Accelerated Scrolling
; V1.3
; By BoffinbraiN

/*
#NoEnv
#NoTrayIcon
#SingleInstance
#MaxHotkeysPerInterval 120


Process, Priority, , H
SendMode Input
*/

; Key bindings


; Show scroll velocity as a tooltip while scrolling. 1 or 0.
tooltips := 0

; The length of a scrolling session.
; Keep scrolling within this time to accumulate boost.
; Default: 500. Recommended between 400 and 1000.
wheelTimeOut := 500

; If you scroll a long distance in one session, apply additional boost factor.
; The higher the value, the longer it takes to activate, and the slower it accumulates.
; Set to zero to disable completely. Default: 30.
boost := 30

; Spamming applications with hundreds of individual scroll events can slow them down.
; This sets the maximum number of scrolls sent per click, i.e. max velocity. Default: 60.
limit := 60

; Runtime variables. Do not modify.
distance := 0
vmax := 1

;#ifWinNotActive ahk_class IEFrame
;#ifWinNotActive ahk_class F13FrameWindow

WheelUp::    Goto Scroll
WheelDown::  Goto Scroll
+#WheelUp::   Suspend
+#WheelDown:: Goto Quit

;#ifWinActive
;#ifWinActive

Scroll:
	/*
	IfWinActive, ahk_class IEFrame
	{			
		if b = false
		{
			MouseClick, %A_ThisHotkey%	
			b = true
			return
		}
		
		b = false
		return		
	}
	*/

	t := A_TimeSincePriorHotkey
	if (A_PriorHotkey = A_ThisHotkey && t < wheelTimeOut)
	{
		; Remember how many times we've scrolled in the current direction
		distance++

		; Calculate acceleration factor using a 1/x curve
		v := (t < 80 && t > 1) ? (250.0 / t) - 1 : 1

		; Apply boost
		if (boost > 1 && distance > boost)
		{
			; Hold onto the highest speed we've achieved during this boost
			if (v > vmax)
				vmax := v
			else
				v := vmax

			v *= distance / boost
		}

		; Validate
		v := (v > 1) ? ((v > limit) ? limit : Floor(v)) : 1

		if (v > 1 && tooltips)
			QuickToolTip("x"v, wheelTimeOut)

	
		MouseClick, %A_ThisHotkey%, , , v
	}
	else
	{
		; Combo broken, so reset session variables
		distance := 0
		vmax := 1

		MouseClick %A_ThisHotkey%
	}
	return

Quit:
	QuickToolTip("Exiting Accelerated Scrolling...", 1000)
	Sleep 1000
	ExitApp

QuickToolTip(text, delay)
{
	ToolTip, %text%
	SetTimer ToolTipOff, %delay%
	return

	ToolTipOff:
	SetTimer ToolTipOff, Off
	ToolTip
	return
}

