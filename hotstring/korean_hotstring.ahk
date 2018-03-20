;변경 기록
;2014.06.13 한글 핫스트링 추가.
;2014.07.14 Set_Only_Korean() 함수 적용
;2014.07.18 한글이 2자 이상일 경우에 지워지는 길이가 다르므로, 길이값을 파라미터로 전달,  B0 옵션 추가.

; * : 마지막 트리거 키가 없어도 변환된다. (트리거 키 : ends char := 엔터, 스페이스, 탭 등등등..)
; ? : 앞에 문자가 있어도 핫스트링이 발동한다. (없으면, 공백 혹은 시작일 경우에만 발동됨)


#Hotstring B
;;;;;;;;;;;;; 키보드 고장으로 임시 2016.04.07
;:?*:pp::p
;:?*:yy::y
;:?*:uu::u
	;typeOnce()
	;return

/*
typeOnce(){
	timeOut := 10
	t := A_TimeSincePriorHotkey	
	if (A_PriorHotkey = A_ThisHotkey && t < timeOut)
	{
		;DebugMessage("duplicated")
	}
	else{
		key := SubStr(A_ThisHotkey, startPos+2)  
		Send %key%
	}
}
*/



; 영문,한글 --> 영어 HS_AE  // ai --> AI  all to english
; 영어 --> 영어 HS_EE
; 한글 --> 영어 HS_KKE
; 영문 --> 한글 HS_EK  // SMS --> 는  
; 한글 --> 한글 HS_KKK  // 었습니다. 


; kk,?*,rhkslf,rhksfl,2   ;; 관리
; kk,?*,djtt,djTt,2       ;; 었ㅅ



#Hotstring R0 C B0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 오타 수정
:?*:rhkslf::	;
	HS_KK("rhksfl",2)	
	return
:?*:rhskfl::	;고나리 → 관리
	HS_KK("rhksfl",3)	
	return
:*:EO:: 	; 떄 → 때
	HS_KK("Eo",1)	
	return
:: eo:: 	; 대 → Eo
	HS_KK("Eo ", 2)	
	return
:: eo,:: 	; 대 → Eo
	HS_KK("Eo, ", 3)	
	return
:*:rkfgh:: 	; 갈호 → 괄호
	HS_KK("rhkfgh",  2)	
	return
:*:dm s::	; 으 ㄴ → 은
	HS_KK("dms ",3)	
	return
:*:dm f::	; 으 ㄹ → 을
	HS_KK("dmf ",  3)	
	return
:*:djn::		; 어ㅜ → 워
	HS_KK("dnj",2)	
	return
:*:sm s::	; 느 ㄴ → 는
	HS_KK("sms ",3)	
	return
:*:smek::	; 느다 → 는다
	HS_KK("smsek",2)	
	return
:*:rjtmds::	; 거승ㄴ → 것은 
	HS_KK("rjtdms",2)	
return
:*:wjryd::	; 저굥 → 적용
	HS_KK(" wjrdyd",2)	
return
:?*:tkfak::	; 살마 → 사람
	HS_KK("tkfka",2)	
	return
:?*:asj::	; ㅁ나 → 만
	HS_KK("aks",2)	
	return
:*:asnwp::	; ㅁ누제 → 문제
	HS_KK("answp",3)	
	return
:?*:tmqlsek::	; 스빈다 → 습니다
	HS_KK("tmqslek",3)	
	return
:?*:dm f::	; 으 ㄹ → 을 
	HS_KK("dmf ",3)	
	return
:?*:dsm ::	; ㅇ느 → 은
	HS_KK("dms ",3)	
	return
:?*:dqlsl::	; ㅇ비니 → 입니
	HS_KK("dlqsl", 3)	
	return
:*:ehqlsl::	; 도비니 → 됩니
	HS_KK("ehlqsl",3)	
	return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Shift 생략
:?*:rkdy/::		; 가요/ → 가요?
	HS_KK("Rkdy?", 3)		
	return	
:?*:dy/::		; 요/ → 요?
	HS_KK("dy?", 2)		
	return	
:?*:wy/::		; 죠/ → 죠?
	HS_KK("wy?", 2)		
	return	
:?*:rk/::		; 가/ → 까?
	HS_KK("Rk?", 2)		
	return
	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; ㄱ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:rkrk::		;가가 → 가까
	HS_KK("rkRk", 2)		
	return	
:*:rkrp::		;가게 → 가계
	HS_KK("rkrP", 2)		
	return	
;::rkwl::		;가지
;	HS_KK("rkwl ", 3)		
;	return		
;:?:rkwl::		;가지 → 까지
;	HS_KK("Rkwl ", 3)		
;	return	
:*?:rkfrma::		; 갈금 → 깔끔
	HS_KK("RkfRma", 2)		
	return	
:*?:rktt::		;갓ㅅ → 갔ㅅ
	HS_KK("rkTt", 2)		
	return	
:*?:rkte::		;갓ㄷ → 갔ㄷ
	HS_KK("rkTe", 2)		
	return	
:*?:ridnend::		; 갸우둥 → 갸우뚱
	HS_KK("ridnEnd", 3)		
	return	
:?*:rotlr::		;개식 → 개씩
	HS_KK("roTlr", 2)		
	return	
:?*:roeke::		;개닫 → 깨닫
	HS_KK("Roeke", 2)		
	return	
:?*:roekf::		;개달 → 깨달
	HS_KK("Roekf", 2)		
	return	
:?*:rodncl::		;개우치 → 깨우치
	HS_KK("Rodncl", 3)		
	return	
:?*:roxm::		;개트 → 깨트
	HS_KK("Roxm", 2)		
	return	
:?*:rkatks::		;감산 → 감싼
	HS_KK("rkaTks", 2)		
	return	
:?*:rkatkt::		;감삿 → 감쌋
	HS_KK("rkaTkt", 2)		
	return	
:*:rmx::		;긑 → 끝
	HS_KK("Rmx", 1)		
	return	
:?*:rprmq::		; 게급 → 계급
	HS_KK("rPrmq", 2)		
	return	
:?*:rpfid::		;게량 → 계량
	HS_KK("rPfid", 2)		
	return	
:?*:rptn::		;게수 → 계수
	HS_KK("rPtn", 2)		
	return	
:?*:rpdir::		;게약 → 계약
	HS_KK("rPdir", 2)		
	return	
:*:rpduf::		;게열 → 계열
	HS_KK("rPduf", 2)		
	return	
:?*:rpcmd::		;게층 → 계층
	HS_KK("rPcmd", 2)		
	return	
:?*:rpwjd::		;게정 → 계정
	HS_KK("rPwjd", 2)		
	return	
:?*:rpghlr::		;게획 → 계획
	HS_KK("rPghlr", 2)		
	return	
:?*:rpthr::		;게속 → 계속
	HS_KK("rPthr", 2)
	return
:?*:rptks::		;게산 → 계산
	HS_KK("rPtks", 2)
	return
:?*:rptls::		;게신 → 계신
	HS_KK("rPtls", 2)
	return
:?*:rptlq::		;게십 → 계십
	HS_KK("rPtlq", 2)
	return
:?*:rptlf::		;게실 → 계실
	HS_KK("rPtlf", 2)
	return
:?*:rpwhk::		;게좌 → 계좌
	HS_KK("rPwhk", 2)		
	return	
:?*:rptr::		;겟ㄱ → 겠ㄱ
	HS_KK("rpTr", 2)		
	return	
:?*:rpts::		;겟ㄴ → 겠ㄴ
	HS_KK("rpTs", 2)		
	return	
:?*:rptd::		;겟ㅇ → 겠ㅇ
	HS_KK("rpTd", 2)		
	return	
:?*:rpte::		;겟ㄷ → 겠ㄷ
	HS_KK("rpTe", 2)		
	return
:?*:rptt::		;겟ㅅ → 겠ㅅ
	HS_KK("rpTt", 2)		
	return	
:?*:rptw::		;겟ㅈ → 겠ㅈ
	HS_KK("rpTw", 2)		
	return	
:?*:rute::		;겻ㄷ → 겼ㄷ
	HS_KK("ruTe", 2)		
	return	
:?*:rutt::		;겻ㅅ → 겼ㅅ
	HS_KK("ruTt", 2)		
	return	
:?*:rutd::		;겻ㅇ → 겼ㅇ
	HS_KK("ruTd", 2)		
	return	
:?*:rudrp::		; 경게 → 경계
	HS_KK("rudrP", 2)		
	return	
:?*:rhflvy::			; 고리표 → 꼬리표
	HS_KK("Rhflvy",3)		
	return
::rhr::			; 곡 → 꼭
	HS_KK("Rhr ",1+1)		
	return
;:?*:rna::		;굼 → 꿈
;	HS_KK("Rna", 1)		
;	return	
:*:rnarn::		; 굼구 → 꿈꾸
	HS_KK("RnaRn", 2)		
	return	
; :*:rnau::		;구며 → 꾸며
; 	HS_KK("Rnau", 2)		
; 	return	
:?*:rhksrp::		;관게 → 관계
	HS_KK("rhksrP", 2)		
	return	
:?*:rhksfp::		;관레 → 관례
	HS_KK("rhksfP", 2)		
	return	
:*:rurrh::		;격고 → 겪고
	HS_KK("ruRrh", 2)		
	return	
:?*:rnwnsgl::		;구준히 → 꾸준히
	HS_KK("Rnwnsgl", 3)		
	return		
:*:rmawlr::		;금직 → 끔찍
	HS_KK("RmaWlr",2)		
	return	
:?*:rmfdj::		;글어 → 끌어
	HS_KK("Rmfdj",2)		
	return	
:*:rmsrl::		; 근기 → 끈기
	HS_KK("Rmsrl", 2)		
	return	
:*:rmsg::		;귾 → 끊
	HS_KK("Rmsg",1)		
	return	
:*:rmfg::		;긇 → 끓
	HS_KK("Rmfg",1)		
	return	
:*:rmg::		;긓 → 끓
	HS_KK("Rmfg",1)		
	return	
:?*:rlrp::		; 기게→ 기계
	HS_KK("rlrP",2)		
	return	
:?*:rlqm::		; 기브→ 기쁘
	HS_KK("rlQm",2)		
	return	
:?*:rlwnsrp::		;기준게 → 기준계
	HS_KK("rlwnsrP",3)		
	return	
:?:rlfl::		;기리 → 끼리
	HS_KK("Rlfl ",2+1)		
	return
:*:rlcl::		; 기치 → 끼치
	HS_KK("Rlcl", 2)		
	return
:*:rlrjdl::		;기거이 → 기꺼이
	HS_KK("rlRjdl",3)		
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; ㄴ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:skqms::		;나븐 → 나쁜
	HS_KK("skQms",2)		
	return
:*:skqkt::		;나밧 → 나빳
	HS_KK("skQkt",2)		
	return
:*:skfwk::		;날자 → 날짜
	HS_KK("skfWk",2)		
	return
:*:skftl::		;날시 → 날씨
	HS_KK("skfTl",2)		
	return
:*:sktt::		; 낫ㅅ → 났ㅅ
	HS_KK("skTt",2)		
	return
:?*:sote::		;냇ㄷ → 냈ㄷ
	HS_KK("soTe",2)		
	return	
:?*:sott::		;냇ㅅ → 냈ㅅ
	HS_KK("soTt",2)		
	return	
:*:sptwo::		; 냇재 → 냇째
	HS_KK("sptWo",2)		
	return	
:?*:suts::		; 녓ㄴ → 녔ㄴ
	HS_KK("suTs",2)		
	return	
:?*:sute::		;녓ㄷ → 녔ㄷ
	HS_KK("suTe",2)		
	return	
:?*:snrp::		;누게 → 누계
	HS_KK("snrP",2)		
	return	
:?*:smru::		;느겨 → 느껴
	HS_KK("smRu",2)		
	return

:?*:smrl::		;느기 → 느끼
	HS_KK("smRl",2)		
	return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㄷ                                
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:ekfk::		;다라 → 따라
	HS_KK("Ekfk",2)		
	return
:?*:ekfh::		;다로 → 따로
	HS_KK("Ekfh",2)		
	return
:?*:ekfmaus::		;다르면 → 따르면
	HS_KK("Ekfmaus",3)		
	return
:?*:ekfmsms::		;다르는 → 따르는
	HS_KK("Ekfmsms",3)		
	return
:*:ektj::		; 다서 → 따서
	HS_KK("Ektj",2)		
	return
:*:ektjtwo::		; 다섯재 → 다섯째
	HS_KK("ektjtWo",3)		
	return
::ekr::		; 닥 →  딱
	HS_KK("Ekr ", 2)		
	return
:?*:eksrp::		;단게 → 단계
	HS_KK("eksrP",2)		
	return
:?*:ekfadmsrhf::		;닮은골 → 닮은꼴
	HS_KK("ekfadmsRhf",3)		
	return
::eo::		;대 → 때
	HS_KK("Eo ",2)		
	return
:*:eodlek::		;대이다 → 때이다
	HS_KK("Eodlek", 3)		
	return	
:*:eodp::		;대에 → 때에
	HS_KK("Eodp",2)		
	return	
:?*:eorkwl::		;대가지 → 때까지
	HS_KK("EoRkwl",3)		
	return
:?*:eosms::		;대는 → 때는
	HS_KK("Eosms",2)		
	return
:?*:eoakek::		;대마다 → 때마다
	HS_KK("Eoakek",3)		
	return
:?*:eosk::		;대나 → 때나
	HS_KK("Eosk",2)		
	return
:?*:eofhs::		;대론 → 때론
	HS_KK("Eofhs", 2)		
	return
:?*:eoeofh::		;대대로 → 때때로
	HS_KK("EoEofh",3)		
	return
:?*:eoansd::		;대문ㅇ → 때문ㅇ
	HS_KK("Eoansd",3)		
	return
:?*:ejsk::		;더나 → 떠나
	HS_KK("Ejsk",2)		
	return
:?*:ejfdjem::		;덜어드 → 떨어뜨
	HS_KK("EjfdjEm",3)		
	return
:*:ejfdj::		;덜어 → 떨어
	HS_KK("Ejfdj",2)		
	return
:*:ehsms::		;도는 → 또는
	HS_KK("Ehsms",2)		
	return	
:: eh::		;도 → 또
	HS_KK(" Eh ",3)		
	return	
:*:ehgks::		;도한 → 또한
	HS_KK("Ehgks",2)		
	return	
:?*:ehrrkx::		; 독같 → 똑같
	HS_KK("Ehrrkx",2)		
	return	
:?*:enrp::		; 두게 → 두께
	HS_KK("enRp",2)		
	return	
:?*:enrj::		; 두거 → 두꺼
	HS_KK("enRj",2)		
	return	
:?*:enfg::		; 둟 → 뚫
	HS_KK("Enfg", 1)		
	return	
:?*:enfwo::		;둘재 → 둘째
	HS_KK("enfWo",2)		
	return	
:?*:enldj::		;뒤어 → 뛰어
	HS_KK("Enldj", 2)		
	return
:*:ehrehr::		;독독 → 똑똑
	HS_KK("EhrEhr",2)		
	return	
:?*:ehlssm::		; 된느 → 되는
	HS_KK("ehlsms",2)		
	return	
:*:ehlfrk::		;될가 → 될까
	HS_KK("ehlfRk",2)		
	return	
:*:ehotd::		; 됏ㅇ → 됐ㅇ
	HS_KK("ehoTd",2)		
	return
:*:emtdlek::		;듯이다 → 뜻이다
	HS_KK("Emtdlek",3)		
	return	
:?*:emtgksek::		;듯한다 → 뜻한다
	HS_KK("Emtgksek",3)		
	return	
:?*:emtgksms::		;듯하는 → 뜻하는
	HS_KK("Emtgksms",3)		
	return	
:?*:eml::		; 듸 → 띄
	HS_KK("Eml",1)		
	return
:*:emtd::		; 듯ㅇ → 뜻ㅇ
	HS_KK("Emtd", 2)		
	return
:*:emedj::		; 듣어 → 뜯어
	HS_KK("Emedj", 2)		
	return


	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;   ㄹ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:fktt::		; 랏ㅅ → 랐ㅅ
	HS_KK("fkTt",2)		
	return	
;:?*:fote::		;랫ㄷ → 랬ㄷ
;	HS_KK("foTe",2)		
;	return	
:?*:fotw::		;랫ㅈ → 랬ㅈ
	HS_KK("foTw", 2)		
	return	
:?*:fjte::		; 럿ㄷ → 렀ㄷ
	HS_KK("fjTe", 2)		
	return	
:?*:fute::		; 렷ㄷ → 렸ㄷ
	HS_KK("fuTe", 2)		
	return	
:?*:futt::		; 렷ㅅ → 렷ㅅ
	HS_KK("fuTt",2)		
	return	
:?*:futw::		; 렷ㅈ → 렷ㅈ
	HS_KK("fuTw",2)		
	return	
:?*:futd::		; 렷ㅇ → 렷ㅇ
	HS_KK("fuTd",2)		
	return	
:?*:fnjte::		; 뤗ㄷ → 뤘ㄷ
	HS_KK("fnjTe", 2)		
	return	
:?*:fhttj::		;로ㅅ서 → 로써
	HS_KK("fhTj",2)		
	return	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;   ㅁ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:akekdg::		; 마당ㅎ → 마땅ㅎ
	HS_KK("akEkdg", 3)		
	return	
:*:akftma::		; 말슴 → 말씀
	HS_KK("akfTma", 2)		
	return	
:?*:akwekrem::		;맞닥드 → 맞닥뜨
	HS_KK("akwekrEm",3)		
	return	
:?*:ajfwjd::		; 멀정 → 멀쩡
	HS_KK("ajfWjd", 2)		
	return	
:?*:anrd::		; 묵ㅇ → 묶ㅇ
	HS_KK("anRd", 2)		
	return	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅂ                               
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qxnj::      	; ㅂ퉈 → 부터
	HS_KK("qnxj",2)	
	return
:?*:qkrn::      	; 바구 → 바꾸
	HS_KK("qkRn",2)	
	return
:?*:qkwu::      	; 바져 → 빠져
	HS_KK("Qkwu",2)	
	return
:*:qkfma::      	; 바름 → 빠름
	HS_KK("Qkfma",2)	
	return
:?*:qkwlrp::      	; 바지게 → 빠지게
	HS_KK("Qkwlrp",3)	
	return
:?*:qkwlwl::      	; 바지지 → 빠지지
	HS_KK("Qkwlwl",3)	
	return
:?*:qkrdp::      	; 박에 → 밖에
	HS_KK("qkRdp",2)	
	return
:*:qkffl::      	; 발리 → 빨리
	HS_KK("Qkffl",2)	
	return
:*:qkffk::      	; 발라 → 빨라
	HS_KK("Qkffk",2)	
	return
:*:qkfms::      	; 바른 → 빠른
	HS_KK("Qkfms",2)	
	return
:*:qowkd::      	; 배장 → 배짱
	HS_KK("qoWkd",2)	
	return
:?*:qorqorgk::      	; 백백하 → 빽빽하
	HS_KK("QorQorgk",3)	
	return
:*:qjsqjs::      	; 번번 → 뻔뻔
	HS_KK("QjsQjs",2)	
	return
:?*:qjstlr::      	; 번식 → 번씩
	HS_KK("qjsTlr",2)	
	return
:?*:qjswo::      	; 번재 → 번째
	HS_KK("qjsWo",2)	
	return
:?*:qjfut::      	; 버렷 → 버렸
	HS_KK("qjfuT",2)	
	return
:?*:qjafp::      	; 범레 → 범례
	HS_KK("qjafP",2)	
	return
:?*:queo::      	; 벼대 → 뼈대
	HS_KK("Queo",2)	
	return
:?*:qhqrh::      	; 봅고 → 뽑고
	HS_KK("Qhqrh",2)	
	return
:?*:qhqdk::      	; 봅아 → 뽑아
	HS_KK("Qhqdk",2)	
	return
:?*:qhktt::      	; 봣ㅅ → 봤ㅅ
	HS_KK("qhkTt",2)	
	return
:?*:qhktd::      	; 봣ㅇ → 봤ㅇ
	HS_KK("qhkTd",2)	
	return
:?*:qhktw::      	; 봣ㅈ → 봤ㅈ
	HS_KK("qhkTw", 2)	
	return
:?*:qhktr::      	; 봣ㄱ → 봤ㄱ
	HS_KK("qhkTr", 2)	
	return
:?*:qnflcl::      	; 부리치 → 뿌리치
	HS_KK("Qnflcl",3)	
	return
:?*:qnemt::      	; 부듯 → 뿌듯
	HS_KK("Qnemt", 2)	
	return
:?*:qnsld::      	; 부닝 → 분이
	HS_KK("qnsdl", 2)	
	return
:*:qnsaks::      	; 분만 → 뿐만
	HS_KK("Qnsaks",2)	
	return
;::qns::      	; 분 → 뿐
;	HS_KK("Qns ",2)	
;	return
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅅ                              
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; '사항' 과 같은 단허에서 샇 이 입력되므로 각각 처리한다. 2016.04.07 
:*:tkgr::		; 샇ㄱ → 쌓ㄱ
	HS_KK("Tkgr", 2)		
	return
:*:tkgd::		;샇ㅇ → 쌓ㅇ
	HS_KK("Tkgd", 2)		
	return
:*:tkgs::		;샇ㄴ → 쌓ㄴ
	HS_KK("Tkgs", 2)		
	return
:?*:tkfp::		;사레 → 사례
	HS_KK("tkfP",2)		
	return
:?*:todxorp::		; 생태게 → 생태계
	HS_KK("todxorP",3)		
	return
:*:tmrl::		;스기 → 쓰기
	HS_KK("Tmrl",2)		
	return
:*:tmrh::		;스고 → 쓰고
	HS_KK("Tmrh",2)		
	return
:*:tjdi::		;서야 → 써야
	HS_KK("Tjdi",2)		
	return
:*:tmdl::		;스이 → 쓰이
	HS_KK("Tmdl",2)		
	return
;:*:tjfk::		;서라 → 써라
;	HS_KK("Tjfk",2)		
;	return
:*:tjtsms::		;섯는 → 썼는
	HS_KK("TjTsms",2)		
	return
:?*:tutt::		; 셧ㅅ → 셨ㅅ
	HS_KK("tuTt",2)		
	return
:?*:tptwo::		; 셋재 → 셋째
	HS_KK("tptWo",2)		
	return
:?*:tprp::		;세게 → 세계
	HS_KK("tprP",2)		
	return
:?*:tprp::		;세게 → 세계
	HS_KK("tprpppptprP",2)		
	return
:?*:tjfrp::		;설게 → 설계
	HS_KK("tjfrP",2)		
	return
:*:tmrp::		;스게 → 쓰게
	HS_KK("Tmrp",2)		
	return
:*:tmsms::		;스는 → 쓰는
	HS_KK("Tmsms",2)		
	return
:*:tmwl::		;스지 → 쓰지
	HS_KK("Tmwl",2)		
	return
:*:tmfprl::		;스레기 → 쓰레기
	HS_KK("Tmfprl", 3)		
	return
:?*:tmqslrk::		;습니가 → 습니까
	HS_KK("tmqslRk",3)		
	return
::tmf::		;슬 → 쓸
	HS_KK("Tmf ",2)		
	return
:*:tmfah::		;슬모 → 쓸모
	HS_KK("Tmfah",2)		
	return
:*:tjtek::		;섯다 → 썼다
	HS_KK("TjTek",2)		
	return
:?*:tlzut::		;시켯 → 시켰
	HS_KK("tlzuT",2)		
	return
:?*:tlrp::		;시게 → 시계
	HS_KK("tlrP",2)
	return
:?*:tlrmf::		;시글 → 시끌
	HS_KK("tlRmf",2)
	return
:?*:tlqslrk/::		; 십니가/ → 십니까?
	HS_KK("tlqslRk?",4)
	return
:?*:tml::		; 싀 → 씌
	HS_KK("Tml", 1)
	return

	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅇ                               
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:dkdp::      	; 아에 → 아예
	HS_KK("dkdP",2)
	return
:?*:dktr::      	; 앗ㄱ → 았ㄱ
	HS_KK("dkTr",2)	
	return
:?*:dkts::      	; 앗ㄴ → 았ㄴ
	HS_KK("dkTs",2)	
	return
:?*:dkte::      	; 앗ㄷ → 았ㄷ
	HS_KK("dkTe",2)	
	return
:?*:dktt::      	; 앗ㅅ → 았ㅅ
	HS_KK("dkTt",2)	
	return
:?*:dktd::      	; 앗ㅇ → 았ㅇ
	HS_KK("dkTd",2)	
	return
:?*:dktw::      	; 앗ㅈ → 았ㅈ
	HS_KK("dkTw",2)	
	return
:*:dorl::   		; 애기 → 얘기
	HS_KK("dOrl",2)
	return
:*:dotjt::   		; 애섯 → 애썼
	HS_KK("doTjT",2)
	return		
:*:djro::		; 어개 → 어깨
	HS_KK("djRo", 2)	
	return
:*:djejs::		; 어던 → 어떤
	HS_KK("djEjs", 2)	
	return
:?*:djejg::		;어덯 → 어떻
	HS_KK("djEjg", 2)		
	return
:*:djejg::      	; 어덯 → 어떻
	HS_KK("djEjg",2)	
	return
:*:djwot::      	; 어잿 → 어쨌
	HS_KK("djWoT",2)	
	return
:?*:dusrp::      	; 연게 → 연계
	HS_KK("dusrP",2)	
	return
:?*:dutr::      	; 엿ㄱ → 였ㄱ
	HS_KK("duTr",2)	
	return
:?*:duts::      	; 엿ㄴ → 였ㄴ
	HS_KK("duTs",2)	
	return
:?*:dute::      	; 엿ㄷ → 였ㄷ
	HS_KK("duTe",2)	
	return
; ::dp::   		; 에 → 예
; 	HS_KK("dP ", 1+1)
	return	
:*:dp,::   		; 에, → 예,
	HS_KK("dP,", 2)
	return		
:?*:dprk::   		; 에가 → 예가
	HS_KK("dPrk",2)
	return	
:?*:dprma::   		; 에금 → 예금
	HS_KK("dPrma",2)
	return		
;  :*:dpsms::   		; 에는 → 예는
;  	HS_KK("dPsms", 2)
;  	return		
:*:dpdhk::   		; 에와 → 예와
	HS_KK("dPdhk", 2)
	return		
:?*:dpdlek::   		; 에이다 → 예이다
	HS_KK("dPdlek",3)
	return		
:?*:dpemf::   		; 에들 → 예들
	HS_KK("dPemf",2)
	return		
:?*:dpdp::   		; 에에 → 예에
	HS_KK("dPdp",2)
	return		
:?*:dpdhl::   		; 에외 → 예외
	HS_KK("dPdhl",2)
	return		
:?*:dpfh::   		; 에로 → 예로
	HS_KK("dPfh",2)
	return	
:?*:dpfmf::   		; 에를 → 예를
	HS_KK("dPfmf",2)
	return	
:*:dptkd::      	; 에상 → 예상
	HS_KK("dPtkd",2)	
	return	
:*:dptks::      	; 에산 → 예산
	HS_KK("dPtks",2)	
	return	
:*:dpwjs::      	; 에전 → 예전
	HS_KK("dPwjs",2)	
	return
:*:dpwjd::      	; 에정 → 예정
	HS_KK("dPwjd",2)	
	return
:*:dpwp::      	; 에제 → 예제
	HS_KK("dPwp",2)	
	return
:*:dpcmr::      	; 에측 → 예측
	HS_KK("dPcmr",2)	
	return	
:*:dpqkd::      	; 에방 → 예방
	HS_KK("dPqkd",2)	
	return	
:*:dpql::      	; 에비 → 예비
	HS_KK("dPql",2)	
	return	
:*:dptskf::      	; 엣날 → 옛날
	HS_KK("dPtskf", 2)	
	return	
:?*:dhfmswhr::      	; 오른족 → 오른쪽
	HS_KK("dhfmsWhr", 3)	
	return
:?*:dhktd::      	; 왓ㅇ → 왔ㅇ
	HS_KK("dhkTd", 2)	
	return
:?*:dhkts::      	; 왓ㄴ → 왔ㄴ
	HS_KK("dhkTs", 2)	
	return
:?*:dhkte::      	; 왓ㄷ → 왔ㄷ
	HS_KK("dhkTe", 2)	
	return
:?*:dhktt::      	; 왓ㅅ → 왔ㅅ
	HS_KK("dhkTt", 2)	
	return
:?*:dhlswhr::      	; 왼족 → 왼쪽
	HS_KK("dhlsWhr",2)	
	return	
:?*:dnslrk::      	; 우니가 → 우니까
	HS_KK("dnslRk",3)	
	return	
:?*:dnjfwo::      	; 월재 → 월째
	HS_KK("dnjfWo",2)	
	return	
:?*:dnjte::      	; 웟ㄷ → 웠ㄷ
	HS_KK("dnjTe",2)	
	return	
:?*:dnjtt::      	; 웟ㅅ → 웠ㅅ
	HS_KK("dnjTt",2)	
	return	
:?*:dnjtw::      	; 웟ㅈ → 웠ㅈ
	HS_KK("dnjTw",2)	
	return	
;;; ''엇''에 대한 예외를 등록한다. ;;;
:?*:andjtd::		; 무엇ㅇ → 무엇ㅇ
	HS_KK("andjtd",3)	
	return
:?*:djtj::		; 어서 → 어서
	HS_KK("djtj",2)
	return
:?*:djqrp::		; 업게 → 업계
	HS_KK("djqrP",2)
	return
:?*:djtr::		; 엇ㄱ → 었ㄱ
	HS_KK("djTr",2)	
	return
:?*:djts::		; 엇ㄴ → 었ㄴ
	HS_KK("djTs",2)	
	return
:?*:djte::		; 엇ㄷ → 었ㄷ
	HS_KK("djTe",2)	
	return
:?*:djtt::		; 엇ㅅ → 었ㅅ
	HS_KK("djTt",2)	
	return
:?*:djtd::		; 엇ㅇ → 었ㅇ
	HS_KK("djTd",2)	
	return
:?*:djtw::		; 엇ㅈ → 었ㅈ
	HS_KK("djTw",2)	
	return
:?*:dutd::		; 엿ㅇ → 였ㅇ
	HS_KK("duTd",2)	
	return
:?*:dutw::		; 엿ㅈ → 였ㅈ
	HS_KK("duTw",2)	
	return
:*:dydfp::		; 용레 → 용례
	HS_KK("dydfP",2)	
	return
:?*:dutt::		; 엿ㅅ → 였ㅅ
	HS_KK("duTt",2)	
	return
:?*:dlrmsms::	; 이그는 → 이끄는
	HS_KK("dlRmsms",3)	
	return
:?*:dlrms::	; 이근 → 이끈
	HS_KK("dlRms",2)	
	return
:?*:dlslrk::	; 이니가 → 이니까
	HS_KK("dlslRk",3)	
	return
:?*:dltkd::		; 이상
	HS_KK("dltkd",2)	
	return
:?*:dlqlsek::		; 이빈다 → 입니다
	HS_KK("dlqslek", 3)	
	return
:?*:dlwhr::		; 이족 → 이쪽
	HS_KK("dlWhr", 2)	
	return
::dleo::		; 이대 → 이때
	HS_KK("dlEo ",2+1)	
	return
:?*:dlfrk?::		; 일가? → 일까?
	HS_KK("dlfRk?", 3)	
	return
:*:dlarp::		; 임게 → 임계
	HS_KK("dlarP",2)	
	return
:?*:dltr::		; 잇ㄱ → 있ㄱ
	HS_KK("dlTr",2)	
	return
:?*:dlts::		; 잇ㄴ → 있ㄴ
	HS_KK("dlTs",2)	
	return
:?*:dlte::		; 잇ㄷ → 있ㄷ
	HS_KK("dlTe",2)	
	return
:?*:dltd::		; 잇ㅇ → 있ㅇ
	HS_KK("dlTd",2)	
	return
:?*:dltt::		; 잇ㅅ → 있ㅅ
	HS_KK("dlTt",2)	
	return
:?*:dltw::		; 잇ㅈ → 있ㅈ
	HS_KK("dlTw",2)	
	return
:?*:dmslrk::		; 으니가 → 으니까
	HS_KK("dmslRk",3)	
	return
:?*:dmfrk::		; 을가 → 을까
	HS_KK("dmfRk",2)	
	return
:?*:dmfeo::		; 을대 → 을때
	HS_KK("dmfEo",2)	
	return
:?*:dmfhtj::		; 으로서 → 으로써
	HS_KK("dmfhTj",3)	
	return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅈ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:wkfq::		;잛 → 짧
	HS_KK("Wkfq", 1)		
	return
:*:wkfq::		;잛 → 짧
	HS_KK("Wkfq", 1)		
	return
:*:wkrdmf::		; 작을 → 짝을
	HS_KK("Wkrdmf",2)		
	return
:*:wkrtn::		; 작수 → 짝수
	HS_KK("Wkrtn",2)		
	return
:*:wkso::		;자내 → 짜내
	HS_KK("Wkso",2)		
	return
:?*:wkfakr::		;잘막 → 짤막
	HS_KK("Wkfakr",2)
	return
:?*:wkarks::		; 잠간 → 잠깐
	HS_KK("wkaRks", 2)
	return	
;:?:wo::		;재 → 째
;	HS_KK("Wo ",1+1)		
;	return
:?*:woqkfms::		;재바른 → 재빠른
	HS_KK("woQkfms",3)
	return
:?*:woqkffl::		;재발리 → 재빨리
	HS_KK("woQkffl",3)
	return	
:?*:whrmatlr::		; 조금식 → 조금씩 
	HS_KK("whrmaTlr",3)
	return
:*:whkvyrp::		; 좌표게 → 좌표계
	HS_KK("whkvyrP",3)
	return
:?*:whrdp::		;족에 → 쪽에
	HS_KK("Whrdp",2)
	return
:?*:wnwo::		; 주재 → 주째
	HS_KK("wnWo",2)
	return
:?: wnr:: 			; 죽 → 쭉
	HS_KK("Wnr ", 2)	
	return
:?*:wnjtr:: 			; 줫ㄱ → 줬ㄱ
	HS_KK("wnjTr", 2)	
	return
:?*:wutr:: 			; 졋ㄱ → 졌ㄱ
	HS_KK("wuTr", 2)	
	return
:?*:wute:: 			; 졋ㄷ → 졌ㄷ
	HS_KK("wuTe", 2)	
	return
:?*:wutt:: 			; 졋ㅅ → 졌ㅅ
	HS_KK("wuTt", 2)	
	return
:?*:wutd:: 			; 졋ㅇ → 졌ㅇ
	HS_KK("wuTd", 2)	
	return
:?*:wlswk::		;진자 → 진짜
	HS_KK("wlsWk",2)
	return
:?*:wlgp::		;지헤 → 지혜
	HS_KK("wlgP",2)
	return	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅊ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:cjtwo::		;첫재 → 첫째
	HS_KK("cjtWo",2)		
	return
:?*:cutr::		;쳣ㄱ → 쳤ㄱ
	HS_KK("cuTr",2)		
	return
:?*:cutt::		;쳣ㅅ → 쳤ㅅ
	HS_KK("cuTt",2)		
	return
:?*:cprp::		;체게 → 체계
	HS_KK("cprP",2)		
	return
:?*:chddptks::		; 총에산 → 총예산
	HS_KK("chddPtks",2)		
	return
:?*:cmrwlrp::		;측지게 → 측지계
	HS_KK("cmrwlrP",3)		
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅌ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:xhdrp::		;통게 → 통계
	HS_KK("xhdrP",2)		
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅍ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:vkdltjs::		; 파이선 → 파이썬
	HS_KK("vkdlTjs", 3)		
	return	
:*:vprl::		;페기 → 폐기
	HS_KK("vPrl",2)		
	return
:*:vpwl::		;페지 → 폐지
	HS_KK("vPwl",2)		
	return
:*:vptho::		; 페쇄 → 폐쇄
	HS_KK("vPtho",2)		
	return
:*:vlfyd::		; 피룡 → 필요
	HS_KK("vlfdy",2)		
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅎ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:gksktlr::  		; 하나식 → 하나씩
	HS_KK("gkskTlr", 3)		
	return
:?*:gkslrk::  		; 하니가 → 하니까
	HS_KK("gkslRk", 3)		
	return
:*:gksrp::  		; 한게 → 한계
	HS_KK("gksrP", 2)		
	return
:?*:gkarp::  		; 함게 → 함께
	HS_KK("gkaRp", 2)		
	return
:?*:gkfrk::  		; 할가 → 할까
	HS_KK("gkfRk", 2)		
	return
::gkf qns::  		; 할 분  → 할 뿐
	HS_KK("gkf Qns ", 4)		
	return
:?*:ghkvp::  		; 화페 → 화폐
	HS_KK("ghkvP", 2)		
	return
:?*:gotr::  		; 햇ㄱ → 했ㄱ
	HS_KK("goTr", 2)		
	return
:?*:gots::  		; 햇ㄴ → 했ㄴ
	HS_KK("goTs", 2)		
	return
:?*:gote::  		; 햇ㄷ → 했ㄷ
	HS_KK("goTe", 2)		
	return
:?*:gott::  		; 햇ㅅ → 했ㅅ
	HS_KK("goTt", 2)		
	return
:?*:gotw::  		; 햇ㅈ → 했ㅈ
	HS_KK("goTw", 2)		
	return
:?*:gotd::  		; 햇ㅇ → 했ㅇ
	HS_KK("goTd", 2)		
	return
:?*:gotj::  	; 해서 → 해서
	HS_KK("gotj", 2)		
	return
;;:?*:got::  		; 햇 → 했
;;	HS_KK("goT", 1)		
	return
:?*:gnjftls::  		; 훨신 → 훨씬
	HS_KK("gnjfTls", 2)		
	return	
:?*:guts::  		; 혓ㄴ → 혔ㄴ
	HS_KK("guTs", 2)		
	return	
:?*:gmaqjr::  		; 흠벅 → 흠뻑
	HS_KK("gmaQjr", 2)			
	return	




#if, !(WinActive("ahk_exe iexplore.exe") or WinActive("ahk_exe Hwp.exe") or WinActive("ahk_exe ApplicationFrameHost.exe") or WinActive("ahk_exe Quip.exe"))

:?:dms::     ;; ?? ??��
:?:fksms::        ;; ?? ????
;:?:sms::        ;; ?? ????
:?:fmf::        ;; ?? ë¥?
:?:dmf::        ;; ?? ????
:?:dl::     ;; ??  ??
:?:dhk::        ;; ?? ??��
:?:rhk::        ;; ?? ê³?
:?:dml::        ;; ?? ???
:?:dp::     ;; ?? ?
:?:dmfh::   ;; ???? ?¼ë?
:?:dprp::   ;; ???? ?ê²Œ
:?:dptj::       ;; ???? ??œ
:?:fh::     ;; ?? ë¡œ
:?:qnxj::     ;; ��??��
:?:qhek::     ;; 보다
:?:ckarh::     ;; 참고
:?:emfdml::     ;; ?��?��
:?:emd::     ;; ?��
        HS_EK()
        return
;; 겹치?�� ?��문이 ?��?��?��, ?��?�� fork
;;:?:rk::     ;; ??  ê°?��

#if

