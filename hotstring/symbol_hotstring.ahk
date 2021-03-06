; * :  구분자 없이 핫스트링 처리 옵션
; ? :  앞에 공백이 없어도 핫스트링 처리 옵션
#Hotstring EndChars `n `t
#Hotstring, B C

:*:/dks::
	Send {DEL 2}
	Send 안녕하세요. 권지용입니다.
	return
:*:4[::      ;
	SendRaw ${
	Send {DELETE}	
	SendRaw }$		
	Send {LEFT 2}		
	return
:*:1[::      ;
	Send {!}{[}
	Send {Right}
	Send (
	Send ^v
	Send )
	Send {DELETE}
	return

; :*:,,::      ;
; 	Set_Absolutely_English("<-") 
; 	return
:*:?.::      ;
	Set_Absolutely_English("?.png") 
	return
deleteLine(){
	Send {END}
	Send +{HOME}{DEL}
}

markdownCode(lang){
  deleteLine()
	Set_Absolutely_English("``````" + lang)
  Set_Absolutely_English("{ENTER 2}")
  Sleep, 100
  Set_Absolutely_English("``````{UP}")
}

:*:/eq::       ;	
	deleteLine()
	Set_Absolutely_English("\begin{{}equation{}}")
	Set_Absolutely_English("{ENTER 2}\end{{}equation{}}{UP}")	
    return
:*:``ah::       ;	
	deleteLine()
	Set_Absolutely_English("``````autohotkey")
	Set_Absolutely_English("{ENTER 2}``````{UP}")	
    return
:*:``cs::       ;	
	deleteLine()
	Set_Absolutely_English("``````css")
	Set_Absolutely_English("{ENTER 2}``````{UP}")	
    return
:*:``ba::       ;	
	deleteLine()
	Set_Absolutely_English("``````bash")
	Set_Absolutely_English("{ENTER 2}``````{UP}")	
    return
:*:``sh::       
	markdownCode("shell")    
  return
:*:``js::       ;	
	deleteLine()
	Set_Absolutely_English("``````javascript")
	Set_Absolutely_English("{ENTER 2}``````{UP}")	
    return
:*:``py::       ;	
  markdownCode("python")
  return
:*:``md::       ;	
	deleteLine()
	Set_Absolutely_English("``````markdown")
	Set_Absolutely_English("{ENTER 2}")	
  Set_Absolutely_English("``````{UP}")	
  return
:*:``ht::       ;	
	deleteLine()
	Set_Absolutely_English("``````html")
	Set_Absolutely_English("{ENTER 2}``````{UP}")	
  return
:*:``sq::       ;	
	deleteLine()
	Set_Absolutely_English("``````sql")
	Set_Absolutely_English("{ENTER 2}``````{UP}")	
    return
:*:``ja::       
	deleteLine() 
	Set_Absolutely_English("``````java")
	Set_Absolutely_English("{ENTER 2}``````{UP}")	
    return
:*:``jv::       ;
	deleteLine() 
	Set_Absolutely_English("``````java")
	Set_Absolutely_English("{ENTER 2}``````{UP}")	
    return
:*:``xm::       ;
	deleteLine()  
	Set_Absolutely_English("``````xml")
	Set_Absolutely_English("{ENTER 2}``````{UP}")	
	return
; :?*:\\\::
; 	Set_Absolutely_English("<br>")
; 	return
:*:<sj::
	Set_Absolutely_English("<sxh java></sxh>{left 6}")
	return
:*:<sx::
	Set_Absolutely_English("<sxh xml></sxh>{left 6}")
	return

:*:/js::
  deleteLine()  
	Set_Absolutely_English("<code javascript></code>")
  Set_Absolutely_English("{left 7}{ENTER 2}{UP}")	
	return
; :*:/ja::
;   deleteLine()  
; 	Set_Absolutely_English("<code java></code>")
;   Set_Absolutely_English("{left 7}{ENTER 2}{UP}")	
; 	return
:*:/sh::
  deleteLine()  
	Set_Absolutely_English("<code shell></code>")
  Set_Absolutely_English("{left 7}{ENTER 2}{UP}")	
	return
:*:/um::
  deleteLine()  
	Set_Absolutely_English("<uml></uml>")
  Set_Absolutely_English("{left 6}{ENTER 2}{UP}")	
	return
/*:*:<sp::
	Set_Absolutely_English("<sxh cpp></sxh>{left 6}")
	return*/
:*:<sq::
	Set_Absolutely_English("<sxh sql></sxh>{left 6}")
	return
:*:<ss::
	Set_Absolutely_English("<sxh javascript></sxh>{left 6}")
	return
:*:<sh::
	Set_Absolutely_English("<sxh></sxh>{left 6}")
	return

:*:<um::
	Set_Absolutely_English("<uml></uml>{left 6}")
	return

:*:<sc::
	Set_Absolutely_English("<script></script>{left 9}")
	return
:*:<co::
	Set_Absolutely_English("<code></code>{left 7}{Enter 2}{Up}")
	return
:*:<h1::
	Set_Absolutely_English("<h1></h1>{left 5}")
	return
:*:<h2::
	Set_Absolutely_English("<h2></h2>{left 5}")
	return
:*:<h3::
	Set_Absolutely_English("<h3></h3>{left 5}")
	return
:*:<h4::
	Set_Absolutely_English("<h4></h4>{left 5}")
	return
:*:<h5::
	Set_Absolutely_English("<h5></h5>{left 5}")
	return
:*:<h6::
	Set_Absolutely_English("<h6></h6>{left 5}")
	return
:*:<ph::
	Set_Absolutely_English("<pre class='brush:html'></pre>{left 6}{ENTER 2}{UP}")
	return
:*:<py::
	Set_Absolutely_English("<pre class='brush:python'></pre>{left 6}{ENTER 2}{UP}")
	return
:*:<pl::
	Set_Absolutely_English("<pre class='brush:perl'></pre>{left 6}{ENTER 2}{UP}")
	return
:*:<pj::
	Set_Absolutely_English("<pre class='brush:java'></pre>{left 6}{ENTER 2}{UP}")
	return
:*:<de::
	Set_Absolutely_English("<div class='emph'></div>{left 6}{ENTER 2}{UP}")
	return
:*:<js::
	Set_Absolutely_English("<pre class='brush:javascript'></pre>{left 6}{ENTER 2}{UP}")
	return
:*:<db::
	Set_Absolutely_English("<div class='body'></div>{left 6}{ENTER 2}{UP}")
	return
:*:<dd::
	Set_Absolutely_English("<div class='desc'></div>{left 6}{ENTER 2}{UP}")
	return
:*:<dr::
	Set_Absolutely_English("<div class='ref'></div>{left 6}{ENTER 2}{UP}")
	return
:*:<bq::
	Set_Absolutely_English("<blockquote></blockquote>{left 13}{ENTER 2}{UP}")
	return
:*:<br::
	Set_Absolutely_English("<blockquote class='blockquote-reverse'></blockquote>{left 13}{ENTER 2}{UP}")
	return
:*:</br::
	Set_Absolutely_English("</br>{Enter}")
	return
:*:<st::
	Set_Absolutely_English("<style></style>{left 8}")
	return
:*:<ma::
	Set_Absolutely_English("<mark></mark>{left 7}")
	return
:*:<de::
	Set_Absolutely_English("<del></del>{left 6}")
	return
:*:<pl::
	Set_Absolutely_English("<p class='text-left'></p>{left 4}")
	return
:*:<pc::
	Set_Absolutely_English("<p class='text-center'></p>{left 4}")
	return
:*:<pr::
	Set_Absolutely_English("<p class='text-right'></p>{left 4}")
	return
:*:<pp::
	Set_Absolutely_English("<p class='bg-primary'></p>{left 4}")
	return
:*:<ps::
	Set_Absolutely_English("<p class='bg-success'></p>{left 4}")
	return
:*:<pi::
	Set_Absolutely_English("<p class='bg-info'></p>{left 4}")
	return
:*:<pw::
	Set_Absolutely_English("<p class='bg-warning'></p>{left 4}")
	return
:*:<pd::
	Set_Absolutely_English("<p class='bg-danger'></p>{left 4}")
	return
:*:<ul::
	Set_Absolutely_English("<ul>{ENTER}{TAB}<li></li>{ENTER}</ul>{UP}{RIGHT 5}")
	return
:*:<ol::
	Set_Absolutely_English("<ol>{ENTER}{TAB}<li></li>{ENTER}</ol>{UP}{RIGHT 5}")
	return
:*:<kb::
	Set_Absolutely_English("<kbd></kbd>{left 6}")
	return
;;;:*:<ta::
;;;Set_Absolutely_English("<table></table>{left 8}")
;;;return
;:*:<tr::
;Set_Absolutely_English("<tr></tr>{left 5}")
;return
;:*:<td::
;Set_Absolutely_English("<td></td>{left 5}")
;return
; Change Kor To Eng pre-defined Words
;:?*:url::
;Set_Absolutely_English("URL")
;return
/*



/*
`::BackSpace
+`::Send {~}
^`::Send ``
*/

;; markdown 에서 table 작성을 위해 사용
; :?*: `\:: |
; :?*:`\ ::| 
:?*:`\-::|---- 

 
;:?:--9::<--
;:?:-9::<-
;:?:--0::-->
;:?:-0::->

:?*:<->::↔
:?*:--=::→
;:*:-=::→
; :*:-[::- [
:?*:0--::←
:?*:00--::↑
:?*:--==::↓
:?*:0-=::↔
:?*:///.::···        ; Middle Dot
:?*://.::·        ; Middle Dot
:?://l::ℓ
:?://kl::㎘
:*:`;*::※
:*:/mark::※
:*:/lit::ℓ
:*:/inf::∞

:*:%%%::
	Send, %A_YYYY%년 %A_MM%월 %A_DD%일 %A_HOUR%시 %A_MIN%분
	Return
:*:$$::
	Send, %A_YYYY%-%A_MM%-%A_DD%
	Return

:*:!!::
	YY := SubStr(A_YYYY,3,2)
	Send %YY%%A_MM%%A_DD%
	Return
:*:@@::$$
:*:@#::
	Set_Absolutely_English("$$${ENTER 2}$$${UP}")
	return


:?*://uc::˚

:*:`;1::Ⅰ
:*:`;2::Ⅱ
:*:`;3::Ⅲ
:*:`;4::Ⅳ
:*:`;5::Ⅴ
:*:`;6::Ⅵ
:*:`;7::Ⅶ
:*:`;8::Ⅷ
:*:`;9::Ⅸ
:*:`;0::Ⅹ

:*:(1)::①{DELETE}
:*:(2)::②{DELETE}
:*:(3)::③{DELETE}
:*:(4)::④{DELETE}
:*:(5)::⑤{DELETE}
:*:(6)::⑥{DELETE}
:*:(7)::⑦{DELETE}
:*:(8)::⑧{DELETE}
:*:(9)::⑨{DELETE}
:*:(0)::⑩{DELETE}




;~[:: Send ]{Left}
;~':: Send {U+0027}{Left} 
;~":: Send {U+0022}{Left} 
;~`:: Send {``}{Left}

#Hotstring, b r
::#2::##
::#3::###
::#4::####
::#5::#####
::#6::######

#IfWinNotActive, ahk_class XLMAIN
#IfWinNotActive, ahk_class illustrator
#IfWinNotActive, ahk_exe Code.exe
#IfWinNotActive, ahk_exe Boostnote.exe
~[:: Send {]}{Left}
~{:: Send {}}{Left}
~(:: Send ){Left}
#IfWinNotActive




