;Lalt & i::Send {INSERT}

;Lalt & SPACE::Send, #s
;~!SPACE::Send, #s   
; CLIPBOARD TO GOOGLE
; Alt+F1
/*
+!m::SendInput 0
+!,::SendInput 00
+!/::SendInput +
+!j::SendInput 1
+!k::SendInput 2
+!l::SendInput 3
+!`;::SendInput -
+!u::SendInput 4
+!i::SendInput 5
+!o::SendInput 6
+!p::SendInput *
+!7::SendInput 7
+!8::SendInput 8
+!9::SendInput 9
+!0::SendInput /
*/
/*
!F2::
  Var = %Clipboard%
  StringReplace, Var, Var, %A_Space%, +, All
  GoogleSearch = http://www.google.com/search?q=`%22%Var%`%22
  Run, %GoogleSearch%
Return
*/ 

