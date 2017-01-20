#ifWinActive ahk_exe devenv.exe

^/::Send ^k^c	 	; 주석 달기
^+/::Send ^k^u		; 주석 해지
F1::Send ^.
F2::Send ^r^r


;<<Hot String>>
:*:re;::return;
:*:br;::break;
:?: e:: =
:?: ee:: ==
:?: ne:: {!}=
:?: m:: -
:?: p:: {+}
:?: t:: *
:?: lt:: <
:?: le:: <=
:?: gt:: >
:?: ge:: >=
:?: oo:: ||
:?: aa:: &&


;:*:#in::#include ""
:?*:..::->
;:?*C:pp::{+}{+}
:*:printf::printf("");{Left 3}
:*:prf::printf("");{Left 3}

;<<Short Cut>>
+Space::send, ^{space}
;  F1::
;  	Send, ^km
;  	Sleep 1000
;  	Send, {F12}
;  	return
F8::Send, ^{F5}
;`;::send, {END};

+^C::Send, +!C
+^R::Send, +!R

;;;;;;;;;;;; ��Ŭ���� ����Ű ����
;  ^d::
;  		Send ^+l
;  	return

	^!up::
		Save := Clipboard
		Send ^c^v{up}
		Sleep, 100
		Clipboard := Save
	return

	^!down::
		Save := Clipboard
		Send ^c^v
		Sleep, 100
		Clipboard := Save
	return

	!up::
		Save := Clipboard
		Send ^l{up}^v{up}
		Sleep, 100
		Clipboard := Save
	return

	!down::
		Save := Clipboard
		Send {down}^l{up}^v
		Sleep, 100
		Clipboard :=Save
	return

	^up::
		Send !{up}
	return

	^down::
		Send !{down}
	return
#IfWinActive