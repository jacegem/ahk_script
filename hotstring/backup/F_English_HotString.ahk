#include  .\hotstring\DynamicHotstrings.ahk

;hotstrings("now#", "%A_Now%")
;;hotstrings("(B|b)tw", "%$1%y the way", 5)
;hotstrings("(B|b)tw", "HAY{!!} %$1%y the way", 1)
hotstrings("hello", "hello2", 1)
;hotstrings("(\d+)\/(\d+)%", "percent") ; try 4/50%

/*
;; 파일읽기
FileRead, Contents, .\Address List.txt
if not ErrorLevel  ; Successfully loaded.
{
    Sort, Contents
    FileDelete, C:\Address List (alphabetical).txt
    FileAppend, %Contents%, C:\Address List (alphabetical).txt
    Contents =  ; Free the memory.
	MsgBox "BB"
}else{
	
	Contents := "FAILEDDD!!!"
	Hotkey, 123, Send "2"
}


testFunc(){	
	Msgbox  "TESTing"


123 hello2 hello hㅗ디ㅣㅐ2 hellhelloㅗ디ㅣㅐ2  123helloㅗ디ㅣㅐ2
123 HAY by the way
123 HAY by the way
ㅗ디ㅣㅐ
now#
btw 
0%
123 htw
123 HAY
123
now# 
by the way 
by the way
d/d 
by the way
123 by the way
123 by the way
123 by the way
123 by the way 123 BTW 123 HAYby the way
123 by the way now3 o now# 
by the way
btw 
by the way
}*/