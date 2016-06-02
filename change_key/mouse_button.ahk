;윈도우 왼쪽 클릭으로 복사할 문장을 드래그 해서 우클릭 하면 복사합니다.
;~LButton & RButton::
;Send {CTRLDOWN}c{CTRLUP}
;ClipWait
;return

;; relocate windows by WinSplit Application
~LButton & 1::Send ^!{LEFT}
~LButton & 2::Send ^!{RIGHT}
~LButton & f::Send ^!{Pgup}
;;~LButton & w::Send ^!{UP}
;;~LButton & x::Send ^!{DOWN}


;; Send other Key
~LButton & r::Send {ENTER}
~LButton & q::Send {backspace}
~LButton & e::Send {DELETE}
~LButton & c::Send ^c
~LButton & v::Send ^v
~LButton & m::Send ^m
~LButton & d::Send ^d

