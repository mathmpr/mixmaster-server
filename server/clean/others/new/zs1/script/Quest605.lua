function NPC_QUEST_1581(cnum,reqNumber) --[2011.10.09.한글날 EVENT : 한글날 퀴즈이벤트] 아줌마


-- 사용 switch number 702 ~ 708
-- 702 이벤트 시작 / 703 퀴즈 카운트 / 704 퀴즈 완료 및 수집 퀘스트 수락 / 705 할배 보상 받음(끝)
-- 사용 quest number 217
-- 217 수집 퀘스트('한글 두루마리')

req=reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 702) < 1 then --시작을 안했을 시
			return 2,0, "어서오렴, 믹스마스터 히어로 중 한 명이로구나? 혹시 10월 9일이 무슨 날인지 알고있니?",10,"[한글날]이요!"
		else
			if GetSwitchCount(cnum, 704) < 1 then -- 퀴즈 풀다가 그만둔 경우
				SetSwitchCount(cnum, 707, 1) -- 다시 푼 놈 꼬리표
				return 3,0, "아직 퀴즈를 풀지 않았구나? 퀴즈를 풀어야만 다음 테스트를 진행할 수 있단다.",11,"[퀴즈시작]",221,"[종료]"
			elseif GetSwitchCount(cnum, 704) == 0 then
				return 1,0, "'아주머니는 바쁘신 듯 하다'"

			else	 -- 퀴즈 완료 시
				if GetSwitchCount(cnum, 703) == 0 then
					return 1,0, "'아주머니는 바쁘신 듯 하다'"
				else
					return 1,0, "'아주머니는 바쁘신 듯 하다'@@두루마리 "..GetSwitchCount(cnum,706).."개를 모아서@점잖은 어르신에게 가져다주자!"
				end
			end
		end

	elseif req == 10 then
		return 2,0, "그래, 잘 알고 있구나.@저번 추석 퀴즈와 같은 간단한 지식은 알고 있겠지만,@한글날에 관한 지식은 또 얼마나@되는지 궁금하구나~@어때, 도전해 보겠니?",11,"도전!"

------------------------------------------------------------------------퀴즈 시작 !!---------------------------------------------------------------------------

	elseif req == 11 then --퀴즈시작 1번
		SetSwitchCount(cnum,702,1) -- 퀴즈 풀이 시작
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 '한글날'의 월, 일은 무엇일까?",47,"7월 9일",47,"8월 9일",47,"9월 9일",130,"10월 9일"

	elseif req == 130 then --4번 정답
		SetSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 한글날은 매년 '10월 9일'이란다.한글날은 세종대왕님께서 한문을 어려워 하는 백성들을 위해 한글을 만들고 반포한 업적, 그리고 한글을 널리 알리기 위해 정한 날이란다.",13,"[다음]"
	elseif req == 47 then --1,2,3번 오답
		return 2,0, "아이쿠, 한글날은 매년 '10월 9일'이란다.한글날은 세종대왕이 한문을 어려워 하는 백성들을 위해 한글을 만들고 반포한 업적, 그리고 한글을 널리 알리기 위해 정한 날이란다.@@정답은 4번!",13,"[다음]"



	elseif req == 13 then --2번
		SetSwitchCount(cnum,702,2)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 한글날과 관련 없는 사람은 누구일까?",48,"세종대왕",48,"한글학회",131,"죠브박사",48,"조선어학회"
	elseif req == 131 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 죠브박사님은..일단 사람 외모가 아닌데..?(중얼)",14,"[다음]"
	elseif req == 48 then
		return 2,0, "아이쿠, 세종대왕이 한글을 창시하고, 이에 한글학회(조선어학회)가 반포를 하였지. 그들의 노력덕분에 한글이 탄생하게 되었지~하지만 관련 없는 사람을 골라야 하니, @@정답은 3번!",14,"[다음]"


	elseif req == 14 then--3번
		SetSwitchCount(cnum,702,3)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 맨 처음으로 한글날 기념식을 했을 때 사용된 명칭은 무엇일까?",49,"훈민정음의 날",132,"가갸날",49,"한글의 날",49,"세종대왕의 날"
	elseif req == 132 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 이번 문제는 조금 어려웠겠구나. 세종대왕의 훈민정음 반포 480주년을 맞이하여 기념식을 거행했을 때, 제 1회 '가갸날'로 정하였단다.",15,"[다음]"
	elseif req == 49 then
		return 2,0, "아이쿠, 이번 문제는 조금 어려웠겠구나. '가갸날'이라고 한단다. 참, '훈민정음의 날', '한글의 날', '세종대왕의 날' 이란건 없단다.@@정답은 2번!",15,"[다음]"


	elseif req == 15 then--4번
		SetSwitchCount(cnum,702,4)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ '잉어'를 뜻하는 순 한글은 무엇일까?",50,"림배",133,"리어",50,"잉어",50,"금붕어"
	elseif req == 133 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 잉어를 뜻하는 말은 바로 '리어'란다~ 발음이 비슷하지?",16,"[다음]"
	elseif req == 50 then
		return 2,0, "아이쿠, 잉어를 뜻하는 말은 바로 '리어'란다~ 덧붙여서 '림배' 는 '앞'이란 뜻으로 사용된단다.@@정답은 2번!",16,"[다음]"


	elseif req == 16 then--5번
		SetSwitchCount(cnum,702,5)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ '치떨리다' 라는 단어의 알맞은 뜻은 무엇일까?",51,"매우 당황스럽다",51,"얄밉다",134,"분하고 화가 나서 몹시 떨리다",51,"흥이난다"
	elseif req == 134 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 일상생활에서 '치가떨리다' 라는 말은 많이 들어봤을거야. 몹시 화가나서 떨리는것을 '치떨리다' 라고 표현해~", 17,"[다음]"
	elseif req == 51 then
		return 2,0, "아이쿠, @'치가떨리다' 라는 말과 같은 말로, 몹시 화가 나서 떨린다는것을 의미하지. @@정답은 3번!",17,"[다음]"


	elseif req == 17 then--6번
		SetSwitchCount(cnum,702,6)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 올바르게 고친 단어는 무엇일까?",52,"깡충깡충 -> 깡총깡총",52,"날짜 -> 날자",135,"강남콩 -> 강낭콩",52,"낙지볶음 -> 낚지볶음"
	elseif req == 135 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 강남콩이 아니고 강낭콩이지~",18,"[다음]"
	elseif req == 52 then
		return 2,0, "어이쿠! @'깡충깡충 -> 깡총깡총', @'날자 -> 날짜', @'낚지볶음 -> 낙지볶음' 이란다. 일상생활에서 자주 쓰이니 @헷갈리지 않도록 주의하렴.@@정답은 3번!",18,"[다음]"


	elseif req == 18 then --7번
		SetSwitchCount(cnum,702,7)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 올바르게 고친 단어는 무엇일까?",136,"호르라기 -> 호루라기",53,"힘겹다 -> 힘겨웁다",53,"파일 -> 화일",53,"치과 -> 칫과"
	elseif req == 136 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 체육시간에 사용하는 호루라기란다~",19,"[다음]"
	elseif req == 53 then
		return 2,0, "아이쿠! @'힘겨웁다 -> 힘겹다', '화일 -> 파일', '칫과 -> 치과' 이란다.일상생활에서 자주 쓰이니 @헷갈리지 않도록 주의하렴.@@정답은 1번!",19,"[다음]"


	elseif req == 19 then--8번
		SetSwitchCount(cnum,702,8)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 고친 단어가 올바르지 않은 것은 무엇일까?",54,"꼬깔 -> 고깔",54,"끔직히 -> 끔찍이",54,"기차길 -> 기찻길",137,"가든지 -> 가던지"
	elseif req == 137 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! '든지,던지'는 자주 헷갈리는 부분 중 하나인데, '던지'는 지난 일(과거)이고, '든지'는 선택의 뜻으로 쓰인단다.",20,"[다음]"
	elseif req == 54 then
		return 2,0, "아이쿠! @ 고깔, 끔찍이, 기찻길, 전부 다 맞는 단어란다.@@정답은 4번!",20,"[다음]"


	elseif req == 20 then--9번
		SetSwitchCount(cnum,702,9)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 고친 단어가 올바르지 않은 것은 무엇일까?",138,"백분율 -> 백분률",55,"빛갈 -> 빛깔",55,"뻐꾹이 -> 뻐꾸기",55,"실증 -> 싫증"
	elseif req == 138 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 백분률이 아니고 백분율이라고 한단다. 모음과 'ㄴ' 받침뒤에 오는 ~렬,~률은 ~열,~율로 적는단다. 좀 어렵지?",21,"[다음]"
	elseif req == 55 then
		return 2,0, "아이쿠! 빛깔, 뻐꾸기, 싫증 전부 다 맞는 단어란다.@@정답은 1번!",21,"[다음]"



	elseif req == 21 then--10번
		SetSwitchCount(cnum,702,10)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 고친 단어가 올바르지 않은 것은 무엇일까?",56,"할려고 -> 하려고",56,"하니바람 -> 하늬바람",139,"습니다 -> 읍니다",56,"햇님 -> 해님"
	elseif req == 139 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! '읍니다'는 옛날에 쓰였던 문법이란다. 요즘은 '습니다'로 사용하지.",22,"[다음]"
	elseif req == 56 then
		return 2,0, "어이쿠! 하려고, 하늬바람, 해님 전부 다 맞는 단어란다. '하늬바람'은 주로 서쪽에서 부는 바람을 일컫지.@@정답은 3번!",22,"[다음]"


	elseif req == 22 then--11번
		SetSwitchCount(cnum,702,11)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 순우리말이 아닌 것은 무엇일까?",57,"방망이",57,"배젊다",57,"아련하다",140,"간지난다"
	elseif req == 140 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! '간지난다'는 일본어란다. 우리말로는 '예쁘다', '멋지다' 라는 단어로 대체해서 쓰는편이 좋단다.",23,"[다음]"
	elseif req == 57 then
		return 2,0, "어이쿠! 방망이, 배젊다, 아련하다 전부 순우리말이란다. '배젊다'는 '나이가 아주 젊다' 라는 뜻이란다. @@정답은 4번!",23,"[다음]"


	elseif req == 23 then--12번
		SetSwitchCount(cnum,702,12)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 표기가 알맞은 단어는 무엇일까?",58,"비율",58,"백분율",141,"합격율",58,"경쟁률"
	elseif req == 141 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 아까전에 예습했었지? 모음과 ㄴ 받침뒤에 오는 ~렬,~률은 ~열,~율로 적는단다. 좀 어렵지?",24,"[다음]"
	elseif req == 58 then
		return 2,0, "아이쿠! 아까전에 예습했었지?  '비율'은 모음으로 끝나기 때문에 률 -> 율로 사용되며, '백분율'은 ㄴ 받침이기 때문에 역시 률 -> 율로 사용된단다. '경쟁률'은 모음도, ㄴ 받침도 아닌 그 외이기 때문에 률 -> 율 사용이 불가능해서 '률'로 표시된거란다. 즉, '합격율'도 마찬가지로 모음이나 ㄴ 받침으로 끝나지 않기 때문에 '합격률'이 되어야 한다는사실! @@정답은 3번!",24,"[다음]"


	elseif req == 24 then--13번
		SetSwitchCount(cnum,702,13)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 '미리내'의 올바른 뜻은 무엇일까?",59,"미리미리",142,"은하수",59,"민낯",59,"믿음직하다"
	elseif req == 142 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 많이 들어봤을법 한데, '미리내'는 은하수를 의미한단다~ 예쁘지?",25,"[다음]"
	elseif req == 59 then
		return 2,0, "아이쿠! '미리내'는 은하수를 의미한단다~  @@정답은 2번!",25,"[다음]"

	elseif req == 25 then--14번
		SetSwitchCount(cnum,702,14)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 한글날이 해당되는 '국경일'의 올바른 의미는 무엇일까?",60,"산타할아버지께서 오신 날",60,"예수님 탄생일",60,"파찌가 정한 날",143,"국가적인 경사 축하"
	elseif req == 143 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! '국경일'이란 '국가적인 경사를 축하하기 위한 날' 이야. 한글날도 국경일에 포함되지. 한글반포를 축하해야지~",26,"[다음]"
	elseif req == 60 then
		return 2,0, "아이쿠! 좀 어렵지? '국경일'이란 '국가적인 경사를 축하하기 위한 날' 이란다. 파찌가 정한날은..알고 있으면 이 아줌마도 알려주렴. @@정답은 4번!",26,"[다음]"


	elseif req == 26 then--15번
		SetSwitchCount(cnum,702,15)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 바겐세일의 순화된 어휘중 올바른 것은 무엇일까?",61,"떨이",144,"싸게 팔기",61,"1+1",61,"비싸게 팔기"
	elseif req == 144 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 마트나 백화점에서 '바겐세일' 많이 들어봤지? '싸게 파는것' 을 의미해. ",27,"[다음]"
	elseif req == 61 then
		return 2,0, "아이쿠! 바겐세일은 '싸게 팔기' 를 의미해. '떨이'는 순화된 어휘가 아니지~  @@정답은 2번!",27,"[다음]"

	elseif req == 27 then--16번
		SetSwitchCount(cnum,702,16)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 순화된 어휘로 알맞는 것은 무엇일까?",145,"서명",62,"싱글",62,"스트로우",62,"스커트"
	elseif req == 145 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! '서명'의 비 순화된 언어로는 '싸인' 이 있지~ 그 외 '싱글', '스트로우', '스커트'는 전부 외래어구~",28,"[다음]"
	elseif req == 62 then
		return 2,0, "아이쿠! 좀 어렵지? '서명'을 제외한 '싱글', '스트로우', '스커트'는 전부 외래어지.  @@정답은 1번!",28,"[다음]"


	elseif req == 28 then--17번
		SetSwitchCount(cnum,702,17)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 순화된 어휘로 알맞는 것은 무엇일까? ",146,"생선회",63,"바캉스",63,"사시미",63,"바케스"
	elseif req == 146 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! '생선회'는 사시미의 순화된 어휘지~",29,"[다음]"
	elseif req == 63 then
		return 2,0, "아이쿠! '사시미'는 생선회의 잘못된 어휘 표현이란다. 바캉스나 바케스도 전부 외래어지. @@정답은 1번!",29,"[다음]"


	elseif req == 29 then--18번
		SetSwitchCount(cnum,702,18)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 다음 중 어휘가 올바르게 쓰인것은 무엇일까? ",147,"옷을 다리다",64,"산 넘어에 있는 마을",64,"학생에게 수학을 가리키다",64,"빠른 거름"
	elseif req == 147 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 옷은 '다리는'거니까~",30,"[다음]"
	elseif req == 64 then
		return 2,0, "아이쿠! '산 넘어에 있는 마을' -> '산 너머', '수학을 가리키다' -> '가르치다', '빠른 거름' -> '빠른 걸음' 이란다. @@정답은 1번!",30,"[다음]"

	elseif req == 30 then--19번
		SetSwitchCount(cnum,702,19)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번 문제@@ 쉬는 타임! 한글은 어느나라 언어일까? ",65,"독일",148,"대한민국",65,"일본",65,"가나"
	elseif req == 148 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! 이정도야 눈감고도 맞춰줘야겠지?",31,"[다음]"
	elseif req == 65 then
		return 2,0, "아이쿠! 당연히 '대한민국'이지, 설마 독일, 일본, 가나 중 하나라고 생각한거니? @@정답은 2번!",31,"[다음]"

	elseif req == 31 then--20번
		SetSwitchCount(cnum,702,20)
		return 5,0, "["..GetSwitchCount(cnum,702).."]번! 마지막 문제!@@ 다음 중 표기가 올바르지 않은 단어는 무엇일까? ",66,"짜장면",66,"택견",66,"간지럽히다",149,"휴계실"
	elseif req == 149 then
		AddSwitchCount(cnum,703,1)
		return 2,0, "그렇지! '휴계실'이 아니라 '휴게실' 이라고 쓰인단다.",32,"[결과확인]"
	elseif req == 66 then
		return 2,0, "아이쿠! '휴계실'이 아니라 '휴게실' 이라고 쓰인단다. @@정답은 4번!",32,"[결과확인]"

-------------------------------------------------------------------------채점~~~~~~~
	elseif req == 32 then--채점을 해볼까 +_+?
	if GetSwitchCount(cnum, 707) < 1 then
		if GetSwitchCount(cnum,703) == 0 then
				AddItemCount(cnum,8594,1) -- 보상
				SetSwitchCount(cnum,704,1) -- 퀴즈 완료
				return 1,0, "세상에, 하나도 맞추질 못하다니! 이게 어찌된거니?........아쉽지만 어쩔 수 없구나. 수고 많았다. 작지만 퀴즈를 풀어준것에 대한 보상이란다. @@[알록두껍이 메가폰]을 한복 아주머니에게서 받았다."
		elseif GetSwitchCount(cnum,703) > 0 then
				return 2,0, "수고 많았다. 정답 개수는 총 20 문제 중 ["..GetSwitchCount(cnum,703).."]개 이구나!",100,"[다음]"
		end
	else
		if GetSwitchCount(cnum,703) == 1 then
				AddItemCount(cnum,8594,1) -- 보상
				SetSwitchCount(cnum,704,1) -- 퀴즈 완료
				return 1,0, "세상에, 하나도 맞추질 못하다니! 이게 어찌된거니?........아쉽지만 어쩔 수 없구나. 수고 많았다. 작지만 퀴즈를 풀어준것에 대한 보상이란다. @@[알록두껍이 메가폰]을 한복 아주머니에게서 받았다."
		elseif GetSwitchCount(cnum,703) > 1 then
		ans = GetSwitchCount(cnum,703) -1
				return 2,0, "수고 많았다. 정답 개수는 총 20 문제 중 ["..ans.."] 개 이구나!",100,"[다음]"
		end
	end
------------------------------------------------------------------------퀴즈 종료 !!---------------------------------------------------------------------------

	elseif req == 100 then-- 퀴즈 목적 설명 (스토리)
				return 2,0, "이 테스트를 한 이유는, '점잖은 어르신'께서 수집하고 계시는 '한글 두루마리'를 대신 모아 줄 히어로를 찾기 위해서 진행한거란다.",101,"'한글 두루마리'요?"
	elseif req == 101 then
				return 2,0, "'한글 두루마리' 란, 겉보기에는 일반 스크롤과 다를 바 없지만 자세히 보면 신비로운 힘이 느껴지는 물건이란다.",102,"모으는 목적이 뭔가요?"
	elseif req == 102 then
				return 2,0, "점잖은 어르신께서 말씀하시길, 최근들어 그 신비로운 힘이 몬스터에게서 느껴진다면서, 몬스터가 흉악해진것과 관련있을 것 같아 모으신다고 하시는구나.",103,"그렇군요.."
	elseif req == 103 then
				return 3,0, "그래서 어르신께서 믿을만한 히어로를 찾아 그 일을 도와달라고 말씀하셨지. 그 테스트가 바로 이 퀴즈였단다. 어때, 도와줄 수 있겠니?",110,"네! 당연하죠!",105,"못 하겠어요.."

	elseif req == 110 then --스위치 706에 각 3개,5개,7개 갯수부여

		StartQuest(cnum,219)

		if GetSwitchCount(cnum, 707) < 1 then
			if GetSwitchCount(cnum,703) >= 18 then -- 아주머니 보상 부분
				SetSwitchCount(cnum,706,3) -- 3개 수집 요구
				SetSwitchCount(cnum,704,1) -- 퀴즈 완료
				AddItemCount(cnum,8654,GetSwitchCount(cnum,703))
				return 2,0, "고맙구나. 그럼 마지리타 근처에 있는 '점잖은 어르신'을 찾아가보렴. 참, 두루마리는 몬스터를 잡으면 얻을 수 있을거야. '3 개'를 모아 가렴."

			elseif GetSwitchCount(cnum,703) >=10 and GetSwitchCount(cnum,703) <= 17 then
				AddItemCount(cnum,8654,GetSwitchCount(cnum,703))
				SetSwitchCount(cnum,704,1) -- 퀴즈 완료
				SetSwitchCount(cnum,706,5) -- 5개 수집 요구
					return 2,0, "고맙구나. 그럼 마지리타 근처에 있는 '점잖은 어르신'을 찾아가보렴. 참, 두루마리는 몬스터를 잡으면 얻을 수 있을거야. '5 개'를 모아 가렴."

			elseif GetSwitchCount(cnum,703) >=1 and GetSwitchCount(cnum,703) <=9 then
				AddItemCount(cnum,8654,GetSwitchCount(cnum,703))
				SetSwitchCount(cnum,704,1) -- 퀴즈 완료
				SetSwitchCount(cnum,706,7) -- 7개 수집 요구
					return 2,0, "고맙구나. 그럼 마지리타 근처에 있는 '점잖은 어르신'을 찾아가보렴. 참, 두루마리는 몬스터를 잡으면 얻을 수 있을거야. '7 개'를 모아 가렴."
			end
		else
			if GetSwitchCount(cnum,703) >= 19 then -- 아주머니 보상 부분
				SetSwitchCount(cnum,706,3) -- 3개 수집 요구
				SetSwitchCount(cnum,704,1) -- 퀴즈 완료
				AddItemCount(cnum,8654,ans)
				return 2,0, "고맙구나. 그럼 마지리타 근처에 있는 '점잖은 어르신'을 찾아가보렴. 참, 두루마리는 몬스터를 잡으면 얻을 수 있을거야. '3 개'를 모아 가렴."

			elseif GetSwitchCount(cnum,703) >=11 and GetSwitchCount(cnum,703) <= 18 then
				AddItemCount(cnum,8654,ans)
				SetSwitchCount(cnum,704,1) -- 퀴즈 완료
				SetSwitchCount(cnum,706,5) -- 5개 수집 요구
					return 2,0, "고맙구나. 그럼 마지리타 근처에 있는 '점잖은 어르신'을 찾아가보렴. 참, 두루마리는 몬스터를 잡으면 얻을 수 있을거야. '5 개'를 모아 가렴."

			elseif GetSwitchCount(cnum,703) >=2 and GetSwitchCount(cnum,703) <=10 then
				AddItemCount(cnum,8654,ans)
				SetSwitchCount(cnum,704,1) -- 퀴즈 완료
				SetSwitchCount(cnum,706,7) -- 7개 수집 요구
					return 2,0, "고맙구나. 그럼 마지리타 근처에 있는 '점잖은 어르신'을 찾아가보렴. 참, 두루마리는 몬스터를 잡으면 얻을 수 있을거야. '7 개'를 모아 가렴."
			end
		end
	end
end


----------------------------------------------------------------------------------------------------------
function NPC_QUEST_1582(cnum,reqNumber) --[2011.10.09.한글날 EVENT : 한글날 퀴즈이벤트] 할배

req=reqNumber


	if req ==1 then
		if GetSwitchCount(cnum, 704) < 1 then
			return 1,0, "한복 아주머니의 퀴즈를 다 풀고 오게."
		end

		if GetSwitchCount(cnum,705) == 1 then --보상받음
				return 1,0, "오오, 자네는 히어로 아닌가? 도와줘서 고마웠다네. 이런 젊은이들이 많아야 할텐데..허허허."

		elseif GetSwitchCount(cnum,703) == 0 then --0개
				SetSwitchCount(cnum,705,1) -- 할배 보상 완료
				AddItemCount(cnum,8594,1)
				return 1,0, "자네에게 맡기기에는 무리겠구먼. 그래도 도전한 성의를 봐서 작은 보답을 하겠네. @@[알록두껍이 메가폰]을 점잖은 할아버지에게 받았다."

		--상,중,하급 수집 퀘스트
		elseif GetSwitchCount(cnum,706) > 0 then
				return 3,0, "오오, 두루마리를 모아왔나?",222,"네",223,"아니요"
		end



	elseif req == 222 then

		if GetRemainPocket(cnum) < 3 then
			return 1,0, "가방에 공간이 모자라네.. 3칸 비우고 오게나."
		end

	--보상
		if GetSwitchCount(cnum,706) == 3 then
			if GetItemCount(cnum,8832,0) < 3 then
				return 1,0, "응? 한글 두루마리가 부족한데?@한글 두루마리 "..GetSwitchCount(cnum,706).."개를 모아오려무나."
			elseif GetItemCount(cnum,8832,0) > 2 then
					EndQuest(cnum,219)
				return 2,0, "고맙구나. 연구에 많은 도움이 되겠어. 이건 내가 주는 고마움의 표시란다.",233,"[받는다]"
			end

		elseif GetSwitchCount(cnum,706) == 5 then
			if GetItemCount(cnum,8832,0) < 5 then
				return 1,0, "응? 한글 두루마리가 부족한데?@한글 두루마리 "..GetSwitchCount(cnum,706).."개를 모아오려무나."
			elseif GetItemCount(cnum,8832,0) > 4 then
						EndQuest(cnum,219)
				return 2,0, "고맙구나. 연구에 많은 도움이 되겠어. 이건 내가 주는 고마움의 표시란다.",234,"[받는다]"
			end

		elseif GetSwitchCount(cnum,706) == 7 then
			if GetItemCount(cnum,8832,0) < 7 then
				return 1,0, "응? 한글 두루마리가 부족한데?@한글 두루마리 "..GetSwitchCount(cnum,706).."개를 모아오려무나."
			elseif GetItemCount(cnum,8832,0) > 6 then
				EndQuest(cnum,219)
				return 2,0, "고맙구나. 연구에 많은 도움이 되겠어. 이건 내가 주는 고마움의 표시란다.",235,"[받는다]"
			end
		end


	elseif req == 233 then
		SetSwitchCount(cnum,705,1)
		AddItemCount(cnum,8832,-3)
		AddItemCount(cnum,8834,1)
		AddItemCount(cnum,8834,1)
		AddItemCount(cnum,8834,1)
		return 1,0, "[한글 두루마리 3개]를 점잖은 할아버지에게 드렸다.@[어르신의 선물상자]를 점잖은 할아버지에게 받았다."

	elseif req == 234 then
		SetSwitchCount(cnum,705,1)
		AddItemCount(cnum,8832,-5)
		AddItemCount(cnum,8834,1)
		AddItemCount(cnum,8834,1)
		return 1,0, "[한글 두루마리 5개]를 점잖은 할아버지에게 드렸다.@[어르신의 선물상자]를 점잖은 할아버지에게 받았다."

	elseif req == 235 then
		SetSwitchCount(cnum,705,1)
		AddItemCount(cnum,8832,-7)
		AddItemCount(cnum,8834,1)
		return 1,0, "[한글 두루마리 7개]를 점잖은 할아버지에게 드렸다.@[어르신의 선물상자]를 점잖은 할아버지에게 받았다."


	elseif req == 223 then
		return 1,0, "두루마리는 몬스터에게서 얻을 수 있다네..수고좀 해 주게나.."

	end

end
