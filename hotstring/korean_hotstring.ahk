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


#Hotstring R0 C B0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 오타 수정
:?*:rhkslf::	;
	HS_K("rhksfl",2)	
	return
:?*:rhskfl::	;고나리 → 관리
	HS_K("rhksfl",3)	
	return
:*:EO:: 	; 떄 → 때
	HS_K("Eo")	
	return
:: eo:: 	; 대 → Eo
	HS_K("Eo ", 2)	
	return
:: eo,:: 	; 대 → Eo
	HS_K("Eo, ", 3)	
	return
:*:rkfgh:: 	; 갈호 → 괄호
	HS_K("rhkfgh",  2)	
	return
:*:dm s::	; 으 ㄴ → 은
	Set_Only_Korean("dm s", "dms ",3)	
	return
:*:dm f::	; 으 ㄹ → 을
	HS_K("dmf ",  3)	
	return
:*:djn::		; 어ㅜ → 워
	HS_K("dnj",2)	
	return
:*:sm s::	; 느 ㄴ → 는
	Set_Only_Korean("sm s", "sms ",3)	
	return
:*:smek::	; 느다 → 는다
	HS_K("smsek",2)	
	return
:*:rjtmds::	; 거승ㄴ → 것은 
	HS_K("rjtdms",2)	
return
:*:wjryd::	; 저굥 → 적용
	HS_K(" wjrdyd",2)	
return
:?*:tkfak::	; 살마 → 사람
	HS_K("tkfka",2)	
	return
:?*:asj::	; ㅁ나 → 만
	HS_K("aks",2)	
	return
:*:asnwp::	; ㅁ누제 → 문제
	HS_K("answp",3)	
	return
:?*:tmqlsek::	; 스빈다 → 습니다
	HS_K("tmqslek",3)	
	return
:?*:dm f::	; 으 ㄹ → 을 
	HS_K("dmf ",3)	
	return
:?*:dsm ::	; ㅇ느 → 은
	HS_K("dms ",3)	
	return
:?*:dqlsl::	; ㅇ비니 → 입니
	HS_K("dlqsl", 3)	
	return
:*:ehqlsl::	; 도비니 → 됩니
	HS_K("ehlqsl",3)	
	return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Shift 생략
:?*:rkdy/::		; 가요/ → 가요?
	HS_K("Rkdy?", 3)		
	return	
:?*:dy/::		; 요/ → 요?
	HS_K("dy?", 2)		
	return	
:?*:wy/::		; 죠/ → 죠?
	HS_K("wy?", 2)		
	return	
:?*:rk/::		; 가/ → 까?
	HS_K("Rk?", 2)		
	return
	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; ㄱ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:rkrk::		;가가 → 가까
	HS_K("rkRk", 2)		
	return	
;::rkwl::		;가지
;	HS_K("rkwl ", 3)		
;	return		
;:?:rkwl::		;가지 → 까지
;	HS_K("Rkwl ", 3)		
;	return	
:*?:rkfrma::		; 갈금 → 깔끔
	HS_K("RkfRma", 2)		
	return	
:*?:rktt::		;갓ㅅ → 갔ㅅ
	HS_K("rkTt", 2)		
	return	
:*?:rkte::		;갓ㄷ → 갔ㄷ
	HS_K("rkTe", 2)		
	return	
:*?:ridnend::		; 갸우둥 → 갸우뚱
	HS_K("ridnEnd", 3)		
	return	
:?*:rotlr::		;개식 → 개씩
	HS_K("roTlr", 2)		
	return	
:?*:roeke::		;개닫 → 깨닫
	HS_K("Roeke", 2)		
	return	
:?*:roekf::		;개달 → 깨달
	HS_K("Roekf", 2)		
	return	
:?*:rodncl::		;개우치 → 깨우치
	HS_K("Rodncl", 3)		
	return	
:?*:roxm::		;개트 → 깨트
	HS_K("Roxm", 2)		
	return	
:?*:rkatks::		;감산 → 감싼
	HS_K("rkaTks", 2)		
	return	
:?*:rkatkt::		;감삿 → 감쌋
	HS_K("rkaTkt", 2)		
	return	
:*:rmx::		;긑 → 끝
	HS_K("Rmx")		
	return	
:?*:rpfid::		;게량 → 계량
	HS_K("rPfid", 2)		
	return	
:?*:rptn::		;게수 → 계수
	HS_K("rPtn", 2)		
	return	
:?*:rpdir::		;게약 → 계약
	HS_K("rPdir", 2)		
	return	
:*:rpduf::		;게열 → 계열
	HS_K("rPduf", 2)		
	return	
:?*:rpcmd::		;게층 → 계층
	HS_K("rPcmd", 2)		
	return	
:?*:rpwjd::		;게정 → 계정
	HS_K("rPwjd", 2)		
	return	
:?*:rpghlr::		;게획 → 계획
	HS_K("rPghlr", 2)		
	return	
:?*:rpthr::		;게속 → 계속
	HS_K("rPthr", 2)
	return
:?*:rptks::		;게산 → 계산
	HS_K("rPtks", 2)
	return
:?*:rptls::		;게신 → 계신
	HS_K("rPtls", 2)
	return
:?*:rptlq::		;게십 → 계십
	HS_K("rPtlq", 2)
	return
:?*:rptlf::		;게실 → 계실
	HS_K("rPtlf", 2)
	return
:?*:rpwhk::		;게좌 → 계좌
	HS_K("rPwhk", 2)		
	return	
:?*:rptr::		;겟ㄱ → 겠ㄱ
	HS_K("rpTr", 2)		
	return	
:?*:rpts::		;겟ㄴ → 겠ㄴ
	HS_K("rpTs", 2)		
	return	
:?*:rptd::		;겟ㅇ → 겠ㅇ
	HS_K("rpTd", 2)		
	return	
:?*:rpte::		;겟ㄷ → 겠ㄷ
	HS_K("rpTe", 2)		
	return
:?*:rptt::		;겟ㅅ → 겠ㅅ
	HS_K("rpTt", 2)		
	return	
:?*:rptw::		;겟ㅈ → 겠ㅈ
	HS_K("rpTw", 2)		
	return	
:?*:rute::		;겻ㄷ → 겼ㄷ
	HS_K("ruTe", 2)		
	return	
:?*:rutt::		;겻ㅅ → 겼ㅅ
	HS_K("ruTt", 2)		
	return	
:?*:rutd::		;겻ㅇ → 겼ㅇ
	HS_K("ruTd", 2)		
	return	
:?*:rudrp::		; 경게 → 경계
	HS_K("rudrP", 2)		
	return	
:?*:rhflvy::			; 고리표 → 꼬리표
	HS_K("Rhflvy",3)		
	return
::rhr::			; 곡 → 꼭
	HS_K("Rhr ",1+1)		
	return
;:?*:rna::		;굼 → 꿈
;	HS_K("Rna", 1)		
;	return	
:*:rnarn::		; 굼구 → 꿈꾸
	HS_K("RnaRn", 2)		
	return	
:*:rnau::		;구며 → 꾸며
	HS_K("Rnau", 2)		
	return	
:?*:rhksrp::		;관게 → 관계
	HS_K("rhksrP", 2)		
	return	
:?*:rhksfp::		;관레 → 관례
	HS_K("rhksfP", 2)		
	return	
:*:rurrh::		;격고 → 겪고
	HS_K("ruRrh", 2)		
	return	
:?*:rnwnsgl::		;구준히 → 꾸준히
	HS_K("Rnwnsgl", 3)		
	return		
:*:rmawlr::		;금직 → 끔찍
	HS_K("RmaWlr",2)		
	return	
:?*:rmfdj::		;글어 → 끌어
	HS_K("Rmfdj",2)		
	return	
:*:rmsrl::		; 근기 → 끈기
	HS_K("Rmsrl", 2)		
	return	
:*:rmsg::		;귾 → 끊
	HS_K("Rmsg",1)		
	return	
:*:rmfg::		;긇 → 끓
	HS_K("Rmfg",1)		
	return	
:*:rmg::		;긓 → 끓
	HS_K("Rmfg",1)		
	return	
:?*:rlrp::		; 기게→ 기계
	HS_K("rlrP",2)		
	return	
:?*:rlqm::		; 기브→ 기쁘
	HS_K("rlQm",2)		
	return	
:?*:rlwnsrp::		;기준게 → 기준계
	HS_K("rlwnsrP",3)		
	return	
:?:rlfl::		;기리 → 끼리
	HS_K("Rlfl ",2+1)		
	return
:*:rlcl::		; 기치 → 끼치
	HS_K("Rlcl", 2)		
	return
:*:rlrjdl::		;기거이 → 기꺼이
	HS_K("rlRjdl",3)		
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; ㄴ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:skqms::		;나븐 → 나쁜
	HS_K("skQms",2)		
	return
:*:skqkt::		;나밧 → 나빳
	HS_K("skQkt",2)		
	return
:*:skfwk::		;날자 → 날짜
	HS_K("skfWk",2)		
	return
:*:skftl::		;날시 → 날씨
	HS_K("skfTl",2)		
	return
:*:sktt::		; 낫ㅅ → 났ㅅ
	HS_K("skTt",2)		
	return
:?*:sote::		;냇ㄷ → 냈ㄷ
	HS_K("soTe",2)		
	return	
:?*:sott::		;냇ㅅ → 냈ㅅ
	HS_K("soTt",2)		
	return	
:*:sptwo::		; 냇재 → 냇째
	HS_K("sptWo",2)		
	return	
:?*:suts::		; 녓ㄴ → 녔ㄴ
	HS_K("suTs",2)		
	return	
:?*:sute::		;녓ㄷ → 녔ㄷ
	HS_K("suTe",2)		
	return	
:?*:snrp::		;누게 → 누계
	HS_K("snrP",2)		
	return	
:?*:smru::		;느겨 → 느껴
	HS_K("smRu",2)		
	return

:?*:smrl::		;느기 → 느끼
	HS_K("smRl",2)		
	return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㄷ                                
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:ekfk::		;다라 → 따라
	HS_K("Ekfk",2)		
	return
:?*:ekfh::		;다로 → 따로
	HS_K("Ekfh",2)		
	return
:?*:ekfmaus::		;다르면 → 따르면
	HS_K("Ekfmaus",3)		
	return
:?*:ekfmsms::		;다르는 → 따르는
	HS_K("Ekfmsms",3)		
	return
:*:ektj::		; 다서 → 따서
	HS_K("Ektj",2)		
	return
:*:ektjtwo::		; 다섯재 → 다섯째
	HS_K("ektjtWo",3)		
	return
::ekr::		; 닥 →  딱
	HS_K("Ekr ", 2)		
	return
:?*:eksrp::		;단게 → 단계
	HS_K("eksrP",2)		
	return
:?*:ekfadmsrhf::		;닮은골 → 닮은꼴
	HS_K("ekfadmsRhf",3)		
	return
::eo::		;대 → 때
	HS_K("Eo ",2)		
	return
:*:eodlek::		;대이다 → 때이다
	HS_K("Eodlek", 3)		
	return	
:*:eodp::		;대에 → 때에
	HS_K("Eodp",2)		
	return	
:?*:eorkwl::		;대가지 → 때까지
	HS_K("EoRkwl",3)		
	return
:?*:eosms::		;대는 → 때는
	HS_K("Eosms",2)		
	return
:?*:eoakek::		;대마다 → 때마다
	HS_K("Eoakek",3)		
	return
:?*:eosk::		;대나 → 때나
	HS_K("Eosk",2)		
	return
:?*:eofhs::		;대론 → 때론
	HS_K("Eofhs", 2)		
	return
:?*:eoeofh::		;대대로 → 때때로
	HS_K("EoEofh",3)		
	return
:?*:eoansd::		;대문ㅇ → 때문ㅇ
	HS_K("Eoansd",3)		
	return
:?*:ejsk::		;더나 → 떠나
	HS_K("Ejsk",2)		
	return
:?*:ejfdjem::		;덜어드 → 떨어뜨
	HS_K("EjfdjEm",3)		
	return
:*:ejfdj::		;덜어 → 떨어
	HS_K("Ejfdj",2)		
	return
:*:ehsms::		;도는 → 또는
	HS_K("Ehsms",2)		
	return	
::eh::		;도 → 또
	HS_K("Eh ",2)		
	return	
:*:ehgks::		;도한 → 또한
	HS_K("Ehgks",2)		
	return	
:?*:ehrrkx::		; 독같 → 똑같
	HS_K("Ehrrkx",2)		
	return	
:?*:enrp::		; 두게 → 두께
	HS_K("enRp",2)		
	return	
:?*:enrj::		; 두거 → 두꺼
	HS_K("enRj",2)		
	return	
:?*:enfg::		; 둟 → 뚫
	HS_K("Enfg", 1)		
	return	
:?*:enfwo::		;둘재 → 둘째
	HS_K("enfWo",2)		
	return	
:?*:enldj::		;뒤어 → 뛰어
	HS_K("Enldj", 2)		
	return
:*:ehrehr::		;독독 → 똑똑
	HS_K("EhrEhr",2)		
	return	
:?*:ehlssm::		; 된느 → 되는
	HS_K("ehlsms",2)		
	return	
:*:ehlfrk::		;될가 → 될까
	HS_K("ehlfRk",2)		
	return	
:*:ehotd::		; 됏ㅇ → 됐ㅇ
	HS_K("ehoTd",2)		
	return
:*:emtdlek::		;듯이다 → 뜻이다
	HS_K("Emtdlek",3)		
	return	
:?*:emtgksek::		;듯한다 → 뜻한다
	HS_K("Emtgksek",3)		
	return	
:?*:emtgksms::		;듯하는 → 뜻하는
	HS_K("Emtgksms",3)		
	return	
:?*:eml::		; 듸 → 띄
	HS_K("Eml",1)		
	return
:*:emtd::		; 듯ㅇ → 뜻ㅇ
	HS_K("Emtd", 2)		
	return
:*:emedj::		; 듣어 → 뜯어
	HS_K("Emedj", 2)		
	return


	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;   ㄹ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:fktt::		; 랏ㅅ → 랐ㅅ
	HS_K("fkTt",2)		
	return	
;:?*:fote::		;랫ㄷ → 랬ㄷ
;	HS_K("foTe",2)		
;	return	
:?*:fotw::		;랫ㅈ → 랬ㅈ
	HS_K("foTw", 2)		
	return	
:?*:fjte::		; 럿ㄷ → 렀ㄷ
	HS_K("fjTe", 2)		
	return	
:?*:fute::		; 렷ㄷ → 렸ㄷ
	HS_K("fuTe", 2)		
	return	
:?*:futt::		; 렷ㅅ → 렷ㅅ
	HS_K("fuTt",2)		
	return	
:?*:futw::		; 렷ㅈ → 렷ㅈ
	HS_K("fuTw",2)		
	return	
:?*:futd::		; 렷ㅇ → 렷ㅇ
	HS_K("fuTd",2)		
	return	
:?*:fnjte::		; 뤗ㄷ → 뤘ㄷ
	HS_K("fnjTe", 2)		
	return	
:?*:fhttj::		;로ㅅ서 → 로써
	HS_K("fhTj",2)		
	return	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;   ㅁ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:akekdg::		; 마당ㅎ → 마땅ㅎ
	HS_K("akEkdg", 3)		
	return	
:*:akftma::		; 말슴 → 말씀
	HS_K("akfTma", 2)		
	return	
:?*:akwekrem::		;맞닥드 → 맞닥뜨
	HS_K("akwekrEm",3)		
	return	
:?*:ajfwjd::		; 멀정 → 멀쩡
	HS_K("ajfWjd", 2)		
	return	
:?*:anrd::		; 묵ㅇ → 묶ㅇ
	HS_K("anRd", 2)		
	return	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅂ                               
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:qxnj::      	; ㅂ퉈 → 부터
	HS_K("qnxj",2)	
	return
:?*:qkrn::      	; 바구 → 바꾸
	HS_K("qkRn",2)	
	return
:?*:qkwu::      	; 바져 → 빠져
	HS_K("Qkwu",2)	
	return
:*:qkfma::      	; 바름 → 빠름
	HS_K("Qkfma",2)	
	return
:?*:qkwlrp::      	; 바지게 → 빠지게
	HS_K("Qkwlrp",3)	
	return
:?*:qkwlwl::      	; 바지지 → 빠지지
	HS_K("Qkwlwl",3)	
	return
:?*:qkrdp::      	; 박에 → 밖에
	HS_K("qkRdp",2)	
	return
:*:qkffl::      	; 발리 → 빨리
	HS_K("Qkffl",2)	
	return
:*:qkffk::      	; 발라 → 빨라
	HS_K("Qkffk",2)	
	return
:*:qkfms::      	; 바른 → 빠른
	HS_K("Qkfms",2)	
	return
:*:qowkd::      	; 배장 → 배짱
	HS_K("qoWkd",2)	
	return
:?*:qorqorgk::      	; 백백하 → 빽빽하
	HS_K("QorQorgk",3)	
	return
:*:qjsqjs::      	; 번번 → 뻔뻔
	HS_K("QjsQjs",2)	
	return
:?*:qjstlr::      	; 번식 → 번씩
	HS_K("qjsTlr",2)	
	return
:?*:qjswo::      	; 번재 → 번째
	HS_K("qjsWo",2)	
	return
:?*:qjfut::      	; 버렷 → 버렸
	HS_K("qjfuT",2)	
	return
:?*:qjafp::      	; 범레 → 범례
	HS_K("qjafP",2)	
	return
:?*:queo::      	; 벼대 → 뼈대
	HS_K("Queo",2)	
	return
:?*:qhqrh::      	; 봅고 → 뽑고
	HS_K("Qhqrh",2)	
	return
:?*:qhqdk::      	; 봅아 → 뽑아
	HS_K("Qhqdk",2)	
	return
:?*:qhktt::      	; 봣ㅅ → 봤ㅅ
	HS_K("qhkTt",2)	
	return
:?*:qhktd::      	; 봣ㅇ → 봤ㅇ
	HS_K("qhkTd",2)	
	return
:?*:qhktw::      	; 봣ㅈ → 봤ㅈ
	HS_K("qhkTw", 2)	
	return
:?*:qhktr::      	; 봣ㄱ → 봤ㄱ
	HS_K("qhkTr", 2)	
	return
:?*:qnflcl::      	; 부리치 → 뿌리치
	HS_K("Qnflcl",3)	
	return
:?*:qnemt::      	; 부듯 → 뿌듯
	HS_K("Qnemt", 2)	
	return
:?*:qnsld::      	; 부닝 → 분이
	HS_K("qnsdl", 2)	
	return
:*:qnsaks::      	; 분만 → 뿐만
	HS_K("Qnsaks",2)	
	return
;::qns::      	; 분 → 뿐
;	HS_K("Qns ",2)	
;	return
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅅ                              
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; '사항' 과 같은 단허에서 샇 이 입력되므로 각각 처리한다. 2016.04.07 
:*:tkgr::		; 샇ㄱ → 쌓ㄱ
	HS_K("Tkgr", 2)		
	return
:*:tkgd::		;샇ㅇ → 쌓ㅇ
	HS_K("Tkgd", 2)		
	return
:*:tkgs::		;샇ㄴ → 쌓ㄴ
	HS_K("Tkgs", 2)		
	return
:?*:tkfp::		;사레 → 사례
	HS_K("tkfP",2)		
	return
:?*:todxorp::		; 생태게 → 생태계
	HS_K("todxorP",3)		
	return
:*:tmrl::		;스기 → 쓰기
	HS_K("Tmrl",2)		
	return
:*:tmrh::		;스고 → 쓰고
	HS_K("Tmrh",2)		
	return
:*:tjdi::		;서야 → 써야
	HS_K("Tjdi",2)		
	return
:*:tmdl::		;스이 → 쓰이
	HS_K("Tmdl",2)		
	return
;:*:tjfk::		;서라 → 써라
;	HS_K("Tjfk",2)		
;	return
:*:tjtsms::		;섯는 → 썼는
	HS_K("TjTsms",2)		
	return
:?*:tutt::		; 셧ㅅ → 셨ㅅ
	HS_K("tuTt",2)		
	return
:?*:tptwo::		; 셋재 → 셋째
	HS_K("tptWo",2)		
	return
:?*:tprp::		;세게 → 세계
	HS_K("tprP",2)		
	return
:?*:tprp::		;세게 → 세계
	HS_K("tprpppptprP",2)		
	return
:?*:tjfrp::		;설게 → 설계
	HS_K("tjfrP",2)		
	return
:*:tmrp::		;스게 → 쓰게
	HS_K("Tmrp",2)		
	return
:*:tmsms::		;스는 → 쓰는
	HS_K("Tmsms",2)		
	return
:*:tmwl::		;스지 → 쓰지
	HS_K("Tmwl",2)		
	return
:*:tmfprl::		;스레기 → 쓰레기
	HS_K("Tmfprl", 3)		
	return
:?*:tmqslrk::		;습니가 → 습니까
	HS_K("tmqslRk",3)		
	return
::tmf::		;슬 → 쓸
	HS_K("Tmf ",2)		
	return
:*:tmfah::		;슬모 → 쓸모
	HS_K("Tmfah",2)		
	return
:*:tjtek::		;섯다 → 썼다
	HS_K("TjTek",2)		
	return
:?*:tlzut::		;시켯 → 시켰
	HS_K("tlzuT",2)		
	return
:?*:tlrp::		;시게 → 시계
	HS_K("tlrP",2)
	return
:?*:tlrmf::		;시글 → 시끌
	HS_K("tlRmf",2)
	return
:?*:tlqslrk/::		; 십니가/ → 십니까?
	HS_K("tlqslRk?",4)
	return
:?*:tml::		; 싀 → 씌
	HS_K("Tml", 1)
	return

	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅇ                               
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:dkdp::      	; 아에 → 아예
	HS_K("dkdP",2)
	return
:?*:dktr::      	; 앗ㄱ → 았ㄱ
	HS_K("dkTr",2)	
	return
:?*:dkts::      	; 앗ㄴ → 았ㄴ
	HS_K("dkTs",2)	
	return
:?*:dkte::      	; 앗ㄷ → 았ㄷ
	HS_K("dkTe",2)	
	return
:?*:dktt::      	; 앗ㅅ → 았ㅅ
	HS_K("dkTt",2)	
	return
:?*:dktd::      	; 앗ㅇ → 았ㅇ
	HS_K("dkTd",2)	
	return
:?*:dktw::      	; 앗ㅈ → 았ㅈ
	HS_K("dkTw",2)	
	return
:*:dorl::   		; 애기 → 얘기
	HS_K("dOrl",2)
	return
:*:dotjt::   		; 애섯 → 애썼
	HS_K("doTjT",2)
	return		
:*:djro::		; 어개 → 어깨
	HS_K("djRo", 2)	
	return
:*:djejs::		; 어던 → 어떤
	HS_K("djEjs", 2)	
	return
:?*:djejg::		;어덯 → 어떻
	HS_K("djEjg", 2)		
	return
:*:djejg::      	; 어덯 → 어떻
	HS_K("djEjg",2)	
	return
:*:djwot::      	; 어잿 → 어쨌
	HS_K("djWoT",2)	
	return
:?*:dusrp::      	; 연게 → 연계
	HS_K("dusrP",2)	
	return
:?*:dutr::      	; 엿ㄱ → 였ㄱ
	HS_K("duTr",2)	
	return
:?*:duts::      	; 엿ㄴ → 였ㄴ
	HS_K("duTs",2)	
	return
:?*:dute::      	; 엿ㄷ → 였ㄷ
	HS_K("duTe",2)	
	return
::dp::   		; 에 → 예
	HS_K("dP ", 1+1)
	return	
:*:dp,::   		; 에, → 예,
	HS_K("dP,", 2)
	return		
:?*:dprk::   		; 에가 → 예가
	HS_K("dPrk",2)
	return		
:*:dpsms::   		; 에는 → 예는
	HS_K("dPsms", 2)
	return		
:*:dpdhk::   		; 에와 → 예와
	HS_K("dPdhk", 2)
	return		
:?*:dpdlek::   		; 에이다 → 예이다
	HS_K("dPdlek",3)
	return		
:?*:dpemf::   		; 에들 → 예들
	HS_K("dPemf",2)
	return		
:?*:dpdp::   		; 에에 → 예에
	HS_K("dPdp",2)
	return		
:?*:dpdhl::   		; 에외 → 예외
	HS_K("dPdhl",2)
	return		
:?*:dpfh::   		; 에로 → 예로
	HS_K("dPfh",2)
	return	
:?*:dpfmf::   		; 에를 → 예를
	HS_K("dPfmf",2)
	return	
:*:dptkd::      	; 에상 → 예상
	HS_K("dPtkd",2)	
	return	
:*:dptks::      	; 에산 → 예산
	HS_K("dPtks",2)	
	return	
:*:dpwjs::      	; 에전 → 예전
	HS_K("dPwjs",2)	
	return
:*:dpwjd::      	; 에정 → 예정
	HS_K("dPwjd",2)	
	return
:*:dpwp::      	; 에제 → 예제
	HS_K("dPwp",2)	
	return
:*:dpcmr::      	; 에측 → 예측
	HS_K("dPcmr",2)	
	return	
:*:dpqkd::      	; 에방 → 예방
	HS_K("dPqkd",2)	
	return	
:*:dpql::      	; 에비 → 예비
	HS_K("dPql",2)	
	return	
:*:dptskf::      	; 엣날 → 옛날
	HS_K("dPtskf", 2)	
	return	
:?*:dhfmswhr::      	; 오른족 → 오른쪽
	HS_K("dhfmsWhr", 3)	
	return
:?*:dhktd::      	; 왓ㅇ → 왔ㅇ
	HS_K("dhkTd", 2)	
	return
:?*:dhkts::      	; 왓ㄴ → 왔ㄴ
	HS_K("dhkTs", 2)	
	return
:?*:dhkte::      	; 왓ㄷ → 왔ㄷ
	HS_K("dhkTe", 2)	
	return
:?*:dhlswhr::      	; 왼족 → 왼쪽
	HS_K("dhlsWhr",2)	
	return	
:?*:dnslrk::      	; 우니가 → 우니까
	HS_K("dnslRk",3)	
	return	
:?*:dnjfwo::      	; 월재 → 월째
	HS_K("dnjfWo",2)	
	return	
:?*:dnjte::      	; 웟ㄷ → 웠ㄷ
	HS_K("dnjTe",2)	
	return	
:?*:dnjtt::      	; 웟ㅅ → 웠ㅅ
	HS_K("dnjTt",2)	
	return	
:?*:dnjtw::      	; 웟ㅈ → 웠ㅈ
	HS_K("dnjTw",2)	
	return	
;;; ''엇''에 대한 예외를 등록한다. ;;;
:?*:andjtd::		; 무엇ㅇ → 무엇ㅇ
	HS_K("andjtd",3)	
	return
:?*:djtj::		; 어서 → 어서
	HS_K("djtj",2)
	return
:?*:djqrp::		; 업게 → 업계
	HS_K("djqrP",2)
	return
:?*:djtr::		; 엇ㄱ → 었ㄱ
	HS_K("djTr",2)	
	return
:?*:djts::		; 엇ㄴ → 었ㄴ
	HS_K("djTs",2)	
	return
:?*:djte::		; 엇ㄷ → 었ㄷ
	HS_K("djTe",2)	
	return
:?*:djtt::		; 엇ㅅ → 었ㅅ
	HS_K("djTt",2)	
	return
:?*:djtd::		; 엇ㅇ → 었ㅇ
	HS_K("djTd",2)	
	return
:?*:djtw::		; 엇ㅈ → 었ㅈ
	HS_K("djTw",2)	
	return
:?*:dutd::		; 엿ㅇ → 였ㅇ
	HS_K("duTd",2)	
	return
:*:dydfp::		; 용레 → 용례
	HS_K("dydfP",2)	
	return
:?*:dutt::		; 엿ㅅ → 였ㅅ
	HS_K("duTt",2)	
	return
:?*:dlrmsms::	; 이그는 → 이끄는
	HS_K("dlRmsms",3)	
	return
:?*:dlrms::	; 이근 → 이끈
	HS_K("dlRms",2)	
	return
:?*:dlslrk::	; 이니가 → 이니까
	HS_K("dlslRk",3)	
	return
:?*:dltkd::		; 이상
	HS_K("dltkd",2)	
	return
:?*:dlqlsek::		; 이빈다 → 입니다
	HS_K("dlqslek", 3)	
	return
:?*:dlwhr::		; 이족 → 이쪽
	HS_K("dlWhr", 2)	
	return
::dleo::		; 이대 → 이때
	HS_K("dlEo ",2+1)	
	return
:?*:dlfrk?::		; 일가? → 일까?
	HS_K("dlfRk?", 3)	
	return
:*:dlarp::		; 임게 → 임계
	HS_K("dlarP",2)	
	return
:?*:dltr::		; 잇ㄱ → 있ㄱ
	HS_K("dlTr",2)	
	return
:?*:dlts::		; 잇ㄴ → 있ㄴ
	HS_K("dlTs",2)	
	return
:?*:dlte::		; 잇ㄷ → 있ㄷ
	HS_K("dlTe",2)	
	return
:?*:dltd::		; 잇ㅇ → 있ㅇ
	HS_K("dlTd",2)	
	return
:?*:dltt::		; 잇ㅅ → 있ㅅ
	HS_K("dlTt",2)	
	return
:?*:dltw::		; 잇ㅈ → 있ㅈ
	HS_K("dlTw",2)	
	return
:?*:dmslrk::		; 으니가 → 으니까
	HS_K("dmslRk",3)	
	return
:?*:dmfrk::		; 을가 → 을까
	HS_K("dmfRk",2)	
	return
:?*:dmfeo::		; 을대 → 을때
	HS_K("dmfEo",2)	
	return
:?*:dmfhtj::		; 으로서 → 으로써
	HS_K("dmfhTj",3)	
	return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅈ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:wkfq::		;잛 → 짧
	HS_K("Wkfq")		
	return
:*:wkfq::		;잛 → 짧
	HS_K("Wkfq")		
	return
:*:wkrdmf::		; 작을 → 짝을
	HS_K("Wkrdmf",2)		
	return
:*:wkrtn::		; 작수 → 짝수
	HS_K("Wkrtn",2)		
	return
:*:wkso::		;자내 → 짜내
	HS_K("Wkso",2)		
	return
:?*:wkfakr::		;잘막 → 짤막
	HS_K("Wkfakr",2)
	return
:?*:wkarks::		; 잠간 → 잠깐
	HS_K("wkaRks", 2)
	return	
;:?:wo::		;재 → 째
;	HS_K("Wo ",1+1)		
;	return
:?*:woqkfms::		;재바른 → 재빠른
	HS_K("woQkfms",3)
	return
:?*:woqkffl::		;재발리 → 재빨리
	HS_K("woQkffl",3)
	return	
:?*:whrmatlr::		; 조금식 → 조금씩 
	HS_K("whrmaTlr",3)
	return
:*:whkvyrp::		; 좌표게 → 좌표계
	HS_K("whkvyrP",3)
	return
:?*:whrdp::		;족에 → 쪽에
	HS_K("Whrdp",2)
	return
:?*:wnwo::		; 주재 → 주째
	HS_K("wnWo",2)
	return
:?: wnr:: 			; 죽 → 쭉
	HS_K("Wnr ", 2)	
	return
:?*:wnjtr:: 			; 줫ㄱ → 줬ㄱ
	HS_K("wnjTr", 2)	
	return
:?*:wutr:: 			; 졋ㄱ → 졌ㄱ
	HS_K("wuTr", 2)	
	return
:?*:wute:: 			; 졋ㄷ → 졌ㄷ
	HS_K("wuTe", 2)	
	return
:?*:wutt:: 			; 졋ㅅ → 졌ㅅ
	HS_K("wuTt", 2)	
	return
:?*:wutd:: 			; 졋ㅇ → 졌ㅇ
	HS_K("wuTd", 2)	
	return
:?*:wlswk::		;진자 → 진짜
	HS_K("wlsWk",2)
	return
:?*:wlgp::		;지헤 → 지혜
	HS_K("wlgP",2)
	return	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅊ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:cjtwo::		;첫재 → 첫째
	HS_K("cjtWo",2)		
	return
:?*:cutr::		;쳣ㄱ → 쳤ㄱ
	HS_K("cuTr",2)		
	return
:?*:cutt::		;쳣ㅅ → 쳤ㅅ
	HS_K("cuTt",2)		
	return
:?*:cprp::		;체게 → 체계
	HS_K("cprP",2)		
	return
:?*:chddptks::		; 총에산 → 총예산
	HS_K("chddPtks",2)		
	return
:?*:cmrwlrp::		;측지게 → 측지계
	HS_K("cmrwlrP",3)		
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅌ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:xhdrp::		;통게 → 통계
	HS_K("xhdrP",2)		
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅍ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:?*:vkdltjs::		; 파이선 → 파이썬
	HS_K("vkdlTjs", 3)		
	return	
:*:vprl::		;페기 → 폐기
	HS_K("vPrl",2)		
	return
:*:vpwl::		;페지 → 폐지
	HS_K("vPwl",2)		
	return
:*:vptho::		; 페쇄 → 폐쇄
	HS_K("vPtho",2)		
	return
:*:vlfyd::		; 피룡 → 필요
	HS_K("vlfdy",2)		
	return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  ㅎ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:gksktlr::  		; 하나식 → 하나씩
	HS_K("gkskTlr", 3)		
	return
:?*:gkslrk::  		; 하니가 → 하니까
	HS_K("gkslRk", 3)		
	return
:*:gksrp::  		; 한게 → 한계
	HS_K("gksrP", 2)		
	return
:?*:gkarp::  		; 함게 → 함께
	HS_K("gkaRp", 2)		
	return
:?*:gkfrk::  		; 할가 → 할까
	HS_K("gkfRk", 2)		
	return
::gkf qns::  		; 할 분  → 할 뿐
	HS_K("gkf Qns ", 4)		
	return
:?*:ghkvp::  		; 화페 → 화폐
	HS_K("ghkvP", 2)		
	return
:?*:gotr::  		; 햇ㄱ → 했ㄱ
	HS_K("goTr", 2)		
	return
:?*:gots::  		; 햇ㄴ → 했ㄴ
	HS_K("goTs", 2)		
	return
:?*:gote::  		; 햇ㄷ → 했ㄷ
	HS_K("goTe", 2)		
	return
:?*:gott::  		; 햇ㅅ → 했ㅅ
	HS_K("goTt", 2)		
	return
:?*:gotw::  		; 햇ㅈ → 했ㅈ
	HS_K("goTw", 2)		
	return
:?*:gotd::  		; 햇ㅇ → 했ㅇ
	HS_K("goTd", 2)		
	return
:?*:gotj::  	; 해서 → 해서
	HS_K("gotj", 2)		
	return
;;:?*:got::  		; 햇 → 했
;;	HS_K("goT", 1)		
	return
:?*:gnjftls::  		; 훨신 → 훨씬
	HS_K("gnjfTls", 2)		
	return	
:?*:guts::  		; 혓ㄴ → 혔ㄴ
	HS_K("guTs", 2)		
	return	
:?*:gmaqjr::  		; 흠벅 → 흠뻑
	HS_K("gmaQjr", 2)			
	return	


	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 영문에서 한글 조사 입력시 자동 변경
/*
:?:dms::	; dms → 은
Set_To_Korean("dms ")
return
:?:sms::	; sms → 는
Set_To_Korean("sms ")
return
:?:fmf::	; fmf → 를
Set_To_Korean("fmf ")
return
:?:dl::	; dl → 이
Set_To_Korean("dl ")
return
;:?:rk::	; rk → 가
;Set_To_Korean("rk ")
return
:?:dml::	; dml → 의
Set_To_Korean("dml ")
return
*/

sendK(ANSIChr)
{
	nnnnn:=Asc(SubStr(ANSIChr,1,1))*256+Asc(SubStr(ANSIChr,2,1))
	Send, {ASC %nnnnn%}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Functions 
HS_K(transform, korWordCount := 1)
{
	;MsgBox, %transform% - %korWordCount%
    ret := IME_CHECK("A")
    if %ret% != 0                ; 0 means IME is in English mode now.    
    {
    	;;Send {Left}{Right}
		Send {vk15sc138 2}   
		Send {BS %korWordCount%}
		;Sleep 100
		Send %transform%
    }
}

Set_Only_Korean(original, transform, korWordCount := 1)
{
    engWordCount := StrLen(original)

    ret := IME_CHECK("A")
    if %ret% = 0                ; 0 means IME is in English mode now.
    {
		;Send {BS %engWordCount%}
        ;Send %original%
    }
    else
    {
	Send {Left}{Right}
	Send {BS %korWordCount%}
         Send %transform%
    }
}

Set_To_Korean(transform, korWordCount := 1)
{
	engWordCount := StrLen(transform) - 1

	ret := IME_CHECK("A")
	if %ret% = 0                ; 0 means IME is in English mode now.
	{
		Send {BS %engWordCount%}
		Send, {vk15sc138}   
		Send, %transform%
	}
}

