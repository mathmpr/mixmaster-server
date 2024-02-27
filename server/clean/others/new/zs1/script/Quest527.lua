function NPC_QUEST_718(cnum, reqNumber)

req = reqNumber
herolv = GetHeroLv(cnum)
name = GetHeroName(cnum)
randomA = SetRandom(cnum, 1,100) -- 계열 
randomB = SetRandom(cnum, 1,100) -- 종류

	if req == 1 then
		if GetSwitchCount(cnum, 456) < 1 then --> 퀘스트를 완료한 적이 없는지 검사
			if GetSwitchCount(cnum, 450) < 1 then --> 퀘스트를 진행 중인지 
				return 2,0,"흐음...자네 예~전에 나를 본적이 있지 않은가? 낯이 익은데..자네 이름이....뭐였더라...?",18,""..name.."입니다~"	
			else
				if GetSwitchCount(cnum, 451) > 0 then --> 40레벨 이하 퀘스트 진행 시에
					return 2,0,"자네!! 돌아왔군~! 자~자~얼른 헨치를 이리주게 내가 말한 헨치들은 모두 모아왔겠지?",3,"네~모아왔습니다~"
				elseif GetSwitchCount(cnum, 452) > 0 then --> 41레벨 이상 60레벨 이하 퀘스트 진행 시에
					return 2,0,"자네!! 돌아왔군~! 자~자~얼른 헨치를 이리주게 내가 말한 헨치들은 모두 모아왔겠지?",4,"네~모아왔습니다~"
				elseif GetSwitchCount(cnum, 453) > 0 then --> 61레벨 이상 80레벨 이하 퀘스트 진행 시에
					return 2,0,"자네!! 돌아왔군~! 자~자~얼른 헨치를 이리주게 내가 말한 헨치들은 모두 모아왔겠지?",5,"네~모아왔습니다~"
				elseif GetSwitchCount(cnum, 454) > 0 then --> 81레벨 이상 100레벨 이상 퀘스트 진행 시에
					return 2,0,"자네!! 돌아왔군~! 자~자~얼른 헨치를 이리주게 내가 말한 헨치들은 모두 모아왔겠지?",6,"네~모아왔습니다~"
				elseif GetSwitchCount(cnum, 455) > 0 then --> 101레벨 이상 퀘스트 진행 시에
					return 2,0,"자네!! 돌아왔군~! 자~자~얼른 헨치를 이리주게 내가 말한 헨치들은 모두 모아왔겠지?",7,"네~모아왔습니다~"
				else
					return 0
				end
			end
		else
			if GetSwitchCount(cnum, 450) < 1 then --> 퀘스트를 진행 중인지 
				return 2,0,"자네 또 내 연구에 한번 도움을 주려고 왔나? 이 연구는 마지리타 왕국의 발전을 위한 매우 베리 스페셜한 고결한 연구라구~ 자네는 마지리타 왕국의 발전에 이바지 할 수 있는 기회를 얻는 멋진 기회를 얻은거라구 한번 더 연구에 동참하겠지?",2,"네~당연하죠~"
			else
				if GetSwitchCount(cnum, 451) > 0 then --> 40레벨 이하 퀘스트 진행 시에
					return 2,0,"밸러 "..name.." 돌아왔군~! 자~얼른 헨치를 이리주라구~내가 말한 헨치들을 모아왔나?.",3,"네~모아왔습니다~"
				elseif GetSwitchCount(cnum, 452) > 0 then --> 41레벨 이상 60레벨 이하 퀘스트 진행 시에
					return 2,0,"밸러 "..name.." 돌아왔군~! 자~얼른 헨치를 이리주라구~내가 말한 헨치들을 모아왔나?.",4,"네~모아왔습니다~"
				elseif GetSwitchCount(cnum, 453) > 0 then --> 61레벨 이상 80레벨 이하 퀘스트 진행 시에
					return 2,0,"밸러 "..name.." 돌아왔군~! 자~얼른 헨치를 이리주라구~내가 말한 헨치들을 모아왔나?.",5,"네~모아왔습니다~"
				elseif GetSwitchCount(cnum, 454) > 0 then --> 81레벨 이상 100레벨 이상 퀘스트 진행 시에
					return 2,0,"밸러 "..name.." 돌아왔군~! 자~얼른 헨치를 이리주라구~내가 말한 헨치들을 모아왔나?.",6,"네~모아왔습니다~"
				elseif GetSwitchCount(cnum, 455) > 0 then --> 101레벨 이상 퀘스트 진행 시에
					return 2,0,"밸러 "..name.." 돌아왔군~! 자~얼른 헨치를 이리주라구~내가 말한 헨치들을 모아왔나?.",7,"네~모아왔습니다~"
				else
					return 0
				end
			end
		end				


			
	elseif req == 18 then
		return 2,0,"아하! "..name.."! 반갑네~내 양 옆의 멋진 헨치들이 보이는가? 어때? 좀 멋지지 않은가?",19,"네! 정말 멋진데요~?"	


	elseif req == 19 then
		return 2,0,"이 죠브박사님께서 마지리타 왕국의 번영을 위해서 끊임없이 연구를 하고, 또 거듭하여 드디어 스페~셜!! 헨치 믹스법을 개발 해 냈지 하하!!@"..name.."~혹시 관심 있나? 자~자~뭐 어렵지 않아 헨치 몇 마리만 데려와 달라는 거니까 긴장하지 말라구~! 이미 연구는 완성 단계에 돌입했으니까~내 연구에 동참 해 볼 텐가?",2,"네! 연구에 참여하고 싶습니다~"


	elseif req == 2 then --> 퀘스트 수락 1/2
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			return 2,0,"자네는 아직 41레벨도 안되는 초보 밸러니..해드래곤, 요티, 델코이 이렇게 3마리 헨치를 가지고 오면 이 죠브박사님께서 발견한 스페셜 믹스법으로 멋진 놈으로 하나 만들어 주지 어떤가! 도전하겠나?@@요구헨치:해드래곤,요티,델코이",8,"네~물론이죠."
		elseif herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			return 2,0,"자네는 아직 61레벨도 안된 경험이 부족한 밸러니..배틀드래곤, 호랑둥이, 터틀비틀 이렇게 3마리 헨치를 가지고 오면 이 죠브박사님께서 발견한 스페셜 믹스법으로 멋진 놈으로 하나 만들어 주지 어떤가! 도전하겠나?@@요구헨치:배틀드래곤,호랑둥이,터틀비틀",9,"네~물론이죠."
		elseif herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			return 2,0,"자네는 아직 81레벨도 안된 숙련이 덜 된 밸러니..로얄배틀, 라이노바, 더스티모스 이렇게 3마리 헨치를 가지고 오면 이 죠브박사님께서 발견한 스페셜 믹스법으로 멋진 놈으로 하나 만들어 주지 어떤가! 도전하겠나?@@요구헨치:로얄배틀,라이노바,더스티모스",10,"네~물론이죠."
		elseif herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			return 2,0,"자네는 꽤나 숙련이 된 밸러니..그린테일, 하퍼슨, 더스티모스 이렇게 3마리 헨치를 가지고 오면 이 죠브박사님께서 발견한 스페셜 믹스법으로 멋진 놈으로 하나 만들어 주지 어떤가! 도전하겠나?@@요구헨치:그린테일,하퍼슨,더스티모스",11,"네~물론이죠."
		else
			return 2,0,"오호~ 보아하니 자네는 배태랑 밸러군..실버란샤, 요티, 더스티모스 이렇게 3마리 헨치를 가지고 오면 이 죠브박사님께서 발견한 스페셜 믹스법으로 멋진 놈으로 하나 만들어 주지 어떤가! 도전하겠나?@@요구헨치:실버란샤,요티,더스티모스",12,"네~물론이죠."
		end


	elseif req == 3 then --> 퀘스트를 수락하고 헨치들을 모아 왔을 때(레벨 40 이하) -- 배틀 상태 검사 생략
		if GetHench(cnum,1,33,1) > 0 and GetHench(cnum,1,223,1) > 0 and GetHench(cnum,1,231,1) > 0 then --> 모두 다 모아왔나 검사(인벤)
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",13,"네~알겠습니다~"
		elseif GetHench(cnum,1,33,1) > 0 and GetHench(cnum,1,223,1) > 0 and GetHench(cnum,1,500,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",13,"네~알겠습니다~"
		elseif GetHench(cnum,1,33,1) > 0 and GetHench(cnum,1,499,1) > 0 and GetHench(cnum,1,231,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",13,"네~알겠습니다~"
		elseif GetHench(cnum,1,33,1) > 0 and GetHench(cnum,1,499,1) > 0 and GetHench(cnum,1,500,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",13,"네~알겠습니다~"
		else
			return 1,0,"어이~초보 밸러"..name.."~헨치 인벤토리를 잘 살펴보게~혹시 헨치 슬롯에 헨치를 장착한 것 아닌가? 내가 가져오라던 해드래곤, 요티, 델코이 헨치가 확실히 있는가?~ 확인 해 보라구~@@요구헨치:해드래곤,요티,델코이"
		end

	elseif req == 4 then --> 퀘스트를 수락하고 헨치들을 모아 왔을 때 (레벨 60 이하) -- 배틀 상태 검사 생략
		if GetHench(cnum,1,41,1) > 0 and GetHench(cnum,1,105,1) > 0 and GetHench(cnum,1,173,1) > 0 then --> 모두 다 모아왔나 검사
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",14,"네~알겠습니다~"
		elseif GetHench(cnum,1,41,1) > 0 and GetHench(cnum,1,105,1) > 0 and GetHench(cnum,1,440,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",14,"네~알겠습니다~"
		elseif GetHench(cnum,1,41,1) > 0 and GetHench(cnum,1,105,1) > 0 and GetHench(cnum,1,511,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",14,"네~알겠습니다~"
		elseif GetHench(cnum,1,436,1) > 0 and GetHench(cnum,1,105,1) > 0 and GetHench(cnum,1,173,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",14,"네~알겠습니다~"
		elseif GetHench(cnum,1,436,1) > 0 and GetHench(cnum,1,105,1) > 0 and GetHench(cnum,1,440,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",14,"네~알겠습니다~"
		elseif GetHench(cnum,1,436,1) > 0 and GetHench(cnum,1,105,1) > 0 and GetHench(cnum,1,511,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",14,"네~알겠습니다~"
		else
			return 1,0,"어이 "..name.."~아직 경험이 부족해서 그런가? 헨치 인벤토리를 잘 살펴보게~혹시 헨치 슬롯에 헨치를 장착한 것 아닌가? 내가 가져오라던 배틀드래곤, 호랑둥이, 터틀비틀 헨치가 확실히 있는가?~확인 해 보라구~@@요구헨치:배틀드래곤,호랑둥이,터틀비틀"
		end

	elseif req == 5 then --> 퀘스트를 수락하고 헨치들을 모아 왔을 때 (레벨 80 이하) -- 배틀 상태 검사 생략 
		if GetHench(cnum,1,266,1) > 0 and GetHench(cnum,1,109,1) > 0 and GetHench(cnum,1,333,1) > 0 then --> 모두 다 모아왔나 검사
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",15,"네~알겠습니다~"
		elseif GetHench(cnum,1,266,1) > 0 and GetHench(cnum,1,109,1) > 0 and GetHench(cnum,1,514,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",15,"네~알겠습니다~"
		elseif GetHench(cnum,1,394,1) > 0 and GetHench(cnum,1,109,1) > 0 and GetHench(cnum,1,333,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",15,"네~알겠습니다~"
		elseif GetHench(cnum,1,394,1) > 0 and GetHench(cnum,1,109,1) > 0 and GetHench(cnum,1,514,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",15,"네~알겠습니다~"
		else
			return 1,0,"어이 "..name.."~아직 숙련이 덜 된게 사실인가보군. 헨치 인벤토리를 잘 살펴보게~혹시 헨치 슬롯에 헨치를 장착한 것 아닌가? 내가 가져오라던 로얄배틀, 라이노바, 더스티모스 헨치가 확실히 있는가?~확인 해 보라구~@@요구헨치:로얄배틀,라이노바,더스티모스"
		end

	elseif req == 6 then --> 퀘스트를 수락하고 헨치들을 모아 왔을 때 (레벨 100 이하) -- 배틀 상태 검사 생략
		if GetHench(cnum,1,45,1) > 0 and GetHench(cnum,1,229,1) > 0 and GetHench(cnum,1,333,1) > 0 then --> 모두 다 모아왔나 검사
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",16,"네~알겠습니다~"
		elseif GetHench(cnum,1,45,1) > 0 and GetHench(cnum,1,229,1) > 0 and GetHench(cnum,1,514,1) > 0 then 
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",16,"네~알겠습니다~"
		elseif GetHench(cnum,1,438,1) > 0 and GetHench(cnum,1,229,1) > 0 and GetHench(cnum,1,333,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",16,"네~알겠습니다~"
		elseif GetHench(cnum,1,438,1) > 0 and GetHench(cnum,1,229,1) > 0 and GetHench(cnum,1,514,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",16,"네~알겠습니다~"
		else
			return 1,0,""..name.."~자네 숙련된 밸러가 아니었나? 헨치 인벤토리를 잘 살펴보게~혹시 헨치 슬롯에 헨치를 장착한 것 아닌가? 내가 가져오라던 그린테일, 하퍼슨, 더스티모스 헨치가 확실히 있는가?~확인 해 보라구~@@요구헨치:그린테일,하퍼슨,더스티모스"
		end

	elseif req == 7 then --> 퀘스트를 수락하고 헨치들을 모아 왔을 때  (레벨 101 이상) -- 배틀 상태 검사 생략
		if GetHench(cnum,1,207,1) > 0 and GetHench(cnum,1,223,1) > 0 and GetHench(cnum,1,333,1) > 0 then --> 모두 다 모아왔나 검사
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",17,"네~알겠습니다~"
		elseif GetHench(cnum,1,207,1) > 0 and GetHench(cnum,1,223,1) > 0 and GetHench(cnum,1,514,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",17,"네~알겠습니다~"
		elseif GetHench(cnum,1,207,1) > 0 and GetHench(cnum,1,499,1) > 0 and GetHench(cnum,1,333,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",17,"네~알겠습니다~"
		elseif GetHench(cnum,1,207,1) > 0 and GetHench(cnum,1,499,1) > 0 and GetHench(cnum,1,514,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",17,"네~알겠습니다~"
		elseif GetHench(cnum,1,442,1) > 0 and GetHench(cnum,1,223,1) > 0 and GetHench(cnum,1,333,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",17,"네~알겠습니다~"
		elseif GetHench(cnum,1,442,1) > 0 and GetHench(cnum,1,223,1) > 0 and GetHench(cnum,1,514,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",17,"네~알겠습니다~"
		elseif GetHench(cnum,1,442,1) > 0 and GetHench(cnum,1,499,1) > 0 and GetHench(cnum,1,333,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",17,"네~알겠습니다~"
		elseif GetHench(cnum,1,442,1) > 0 and GetHench(cnum,1,499,1) > 0 and GetHench(cnum,1,514,1) > 0 then
			return 2,0,"좋아~ 틀림없이 다 모아왔군! 역시 내가 자네를 잘 봤구만~그럼 이제 이 죠브박사님의 스페셜 믹스법으로 믹스를 시작!..위험할지 모르니 조금 물러나 있으라구~",17,"네~알겠습니다~"
		else
			return 1,0,"자네는 배태랑 밸러 "..name.."~가 아니었나? 헨치 인벤토리를 잘 살펴보게~혹시 헨치 슬롯에 헨치를 장착한 것 아닌가? 내가 가져오라던 실버란샤, 요티, 더스티모스 헨치가 확실히 있는가?~확인 해 보라구~@@요구헨치:실버란샤,요티,더스티모스"
		end

	elseif req == 8 then --> 퀘스트 수락 레벨 40 이하
		AddSwitchCount(cnum, 450,1) --> 퀘스트 수락		
		AddSwitchCount(cnum, 451,1) --> 레벨 40 이하 체크 start
		return 1,0,"오~~옷!! 그럼 이 죠브박사님께서는 더욱 완벽한 믹스공식을 만들기 위해 연구에 돌입한다!! "..name.."~얼~른 헨치를 가져오라구!! 내가 아주 멋진 놈으로 만들어 줄테니까~!!"

	elseif req == 9 then --> 퀘스트 수락 레벨 41 이상 60 이하
		AddSwitchCount(cnum, 450,1) --> 퀘스트 수락		
		AddSwitchCount(cnum, 452,1) --> 레벨 41 이상 60 이하 체크 start
		return 1,0,"오~~옷!! 그럼 이 죠브박사님께서는 더욱 완벽한 믹스공식을 만들기 위해 연구에 돌입한다!! "..name.."~얼~른 헨치를 가져오라구!! 내가 아주 멋진 놈으로 만들어 줄테니까~!!"

	elseif req == 10 then --> 퀘스트 수락 레벨 61 이상 80 이하
		AddSwitchCount(cnum, 450,1) --> 퀘스트 수락		
		AddSwitchCount(cnum, 453,1) --> 레벨 61 이상 80 이하 체크 start
		return 1,0,"오~~옷!! 그럼 이 죠브박사님께서는 더욱 완벽한 믹스공식을 만들기 위해 연구에 돌입한다!! "..name.."~얼~른 헨치를 가져오라구!! 내가 아주 멋진 놈으로 만들어 줄테니까~!!"

	elseif req == 11 then --> 퀘스트 수락 레벨 81 이상 100 이하
		AddSwitchCount(cnum, 450,1) --> 퀘스트 수락		
		AddSwitchCount(cnum, 454,1) --> 레벨 81 이상 100 이하 체크 start
		return 1,0,"오~~옷!! 그럼 이 죠브박사님께서는 더욱 완벽한 믹스공식을 만들기 위해 연구에 돌입한다!! "..name.."~얼~른 헨치를 가져오라구!! 내가 아주 멋진 놈으로 만들어 줄테니까~!!"

	elseif req == 12 then --> 퀘스트 수락 레벨 101 이상
		AddSwitchCount(cnum, 450,1) --> 퀘스트 수락		
		AddSwitchCount(cnum, 455,1) --> 레벨 101 이상 체크 start
		return 1,0,"오~~옷!! 그럼 이 죠브박사님께서는 더욱 완벽한 믹스공식을 만들기 위해 연구에 돌입한다!! "..name.."~얼~른 헨치를 가져오라구!! 내가 아주 멋진 놈으로 만들어 줄테니까~!!"

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	elseif req == 13 then --> 레벨 40 이하 보상
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"자네! 초보 밸러 티를 내는 겐가? 헨치 인벤토리가 가득찼구만! 헨치 인벤토리를 조금 비우고 오지 않으면 이 놀라운 헨치를 자네에게 줄 수가 없지 않은가? 냉큼 비우고 오라구~"
		else
			if GetHench(cnum,1,223,1) > 0 and GetHench(cnum,1,499,1) > 0 then
				return 1,0,"요티를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 요티만 가져오라구~"
			elseif GetHench(cnum,1,231,1) > 0 and GetHench(cnum,1,500,1) > 0 then
				return 1,0,"델코이를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 델코이만 가져오라구~"
			elseif GetHench(cnum,1,33,1) > 1 then
				return 1,0,"해드래곤을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 해드래곤만 가져오라구~"
			elseif GetHench(cnum,1,223,1) > 1 or GetHench(cnum,1,499,1) > 1 then
				return 1,0,"요티를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 요티만 가져오라구~"
			elseif GetHench(cnum,1,231,1) > 1 or GetHench(cnum,1,500,1) > 1 then
				return 1,0,"요티를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 요티만 가져오라구~"
			else
				AddHench(cnum, 33,-1)
				AddHench(cnum, 223,-1)
				AddHench(cnum, 499,-1) 
				AddHench(cnum, 231,-1)
				AddHench(cnum, 500,-1)
				AddSwitchCount(cnum, 450, -1) --> 퀘스트 수락 제거
				AddSwitchCount(cnum, 451, -1) --> 퀘스트 수락 제거
				AddSwitchCount(cnum, 456,1) --> 퀘스트 완료

				if randomA < 21 then --> 드래곤 계열
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 628, 0)
						return 1,0,"아니!! 자네 놀라지 말라구..정말 희한한 헨치가 나왔어..백호가 탄생했다구! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나..무척 강해보이는 헨치인데?..근데 얼마 못 살 것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워보라구~!!"
			 		elseif randomB > 2 and randomB < 6 then --> 변이테일
						AddHenchAndState(cnum, 583, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 테일이 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
			 		elseif randomB > 5 and randomB < 15 then --> 뉴블루테일
						AddHenchAndState(cnum, 578, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
			 		elseif randomB > 14 and randomB < 35 then --> 블루테일
						AddHenchAndState(cnum, 573, 0)
						return 1,0,"오호! 그린테일이 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
			 		elseif randomB > 34 and randomB < 65 then --> 뉴그린테일
						AddHenchAndState(cnum, 568, 0)
						return 1,0,"그린테일이랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석인데?..여기 있네~!! 잘 키워보라구~"
			 		elseif randomB > 64 then --> 그린테일
						AddHenchAndState(cnum, 45, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 45, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

		 		elseif randomA > 20 and randomA < 50 then --> 짐승 계
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 628, 0)
						return 1,0,"아니!! 자네 놀라지 말게나..정말 희한한 헨치가 나왔네~.백호가 탄생했네! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나보군..무척 강해보이는 헨치인데?..근데 얼마 못 살것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워써보게~!!"
			 		elseif randomB > 2 and randomB < 6 then --> 변이요티
						AddHenchAndState(cnum, 603, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 요티가 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
		 			elseif randomB > 5 and randomB < 15 then --> 뉴블루요티
						AddHenchAndState(cnum, 598, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
	 				elseif randomB > 14 and randomB < 35 then --> 블루요티
						AddHenchAndState(cnum, 593, 0)
						return 1,0,"오호! 요티가 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
		 			elseif randomB > 34 and randomB < 65 then --> 뉴요티
						AddHenchAndState(cnum, 588, 0)
						return 1,0,"요티랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석이 나왔군..여기 있네~!! 잘 키워보라구~"
			 		elseif randomB > 64 then --> 요티
						AddHenchAndState(cnum, 223, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 223, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

				elseif randomA > 49 then --> 곤충 계
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 628, 0)
						return 1,0,"아니!! 자네 놀라지 말게나..정말 희한한 헨치가 나왔네~.백호가 탄생했네! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나보군..무척 강해보이는 헨치인데?..근데 얼마 못 살것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워써보게~!!"
		 			elseif randomB > 2 and randomB < 6 then --> 변이하퍼슨
						AddHenchAndState(cnum, 623, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 하퍼슨이 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
			 		elseif randomB > 5 and randomB < 15 then --> 뉴블루하퍼슨
						AddHenchAndState(cnum, 618, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
			 		elseif randomB > 14 and randomB < 35 then --> 블루하퍼슨
						AddHenchAndState(cnum, 613, 0)
						return 1,0,"오호! 하퍼슨이 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
			 		elseif randomB > 34 and randomB < 65 then --> 뉴하퍼슨
						AddHenchAndState(cnum, 608, 0)
						return 1,0,"하퍼슨이랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석이 나왔군..여기 있네~!! 잘 키워보라구"
			 		elseif randomB > 64 then --> 하퍼슨
						AddHenchAndState(cnum, 229, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 229, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

				else
					return 0
				end
			end
		end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	elseif req == 14 then --> 레벨 60 이하 보상
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"자네 헨치 인벤토리가 가득찼구만! 헨치 인벤토리 좀 비우고 오게~"
		else
			if GetHench(cnum,1,41,1) > 0 and GetHench(cnum,1,436,1) > 0 then
				return 1,0,"배틀드래곤을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 배틀드래곤만 가져오라구~"
			elseif GetHench(cnum,1,173,1) > 0 and GetHench(cnum,1,440,1) > 0 then
				return 1,0,"터틀비틀을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 터틀비틀만 가져오라구~"
			elseif GetHench(cnum,1,173,1) > 0 and GetHench(cnum,1,511,1) > 0 then
				return 1,0,"터틀비틀을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 터틀비틀만 가져오라구~"
			elseif GetHench(cnum,1,440,1) > 0 and GetHench(cnum,1,511,1) > 0 then
				return 1,0,"터틀비틀을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 터틀비틀만 가져오라구~"
			elseif GetHench(cnum,1,41,1) > 1 or GetHench(cnum,1,436,1) > 1 then
				return 1,0,"배틀드래곤을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 배틀드래곤만 가져오라구~"
			elseif GetHench(cnum,1,105,1) > 1 then
				return 1,0,"호랑둥이를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 호랑둥이만 가져오라구~"
			elseif GetHench(cnum,1,173,1) > 1 or GetHench(cnum,1,440,1) > 1 or GetHench(cnum,1,511,1) > 1 then
				return 1,0,"터틀비틀을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 터틀비틀만 가져오라구~"
			else
				AddHench(cnum, 41, -1)
				AddHench(cnum, 436, -1)
				AddHench(cnum, 105, -1)
				AddHench(cnum, 173, -1)
				AddHench(cnum, 440, -1)
				AddHench(cnum, 511, -1)
				AddSwitchCount(cnum, 450, -1) --> 퀘스트 수락 제거
				AddSwitchCount(cnum, 452, -1) --> 퀘스트 수락 제거
				AddSwitchCount(cnum, 456,1) --> 퀘스트 완료
		
				if randomA < 21 then --> 드래곤 계열
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 629, 0)
						return 1,0,"아니!! 자네 놀라지 말라구..정말 희한한 헨치가 나왔어..백호가 탄생했다구! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나..무척 강해보이는 헨치인데?..근데 얼마 못 살 것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워보라구~!!"
			 		elseif randomB > 2 and randomB < 6 then --> 변이테일
						AddHenchAndState(cnum, 584, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 테일이 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
			 		elseif randomB > 5 and randomB < 15 then --> 뉴블루테일
						AddHenchAndState(cnum, 579, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
			 		elseif randomB > 14 and randomB < 35 then --> 블루테일
						AddHenchAndState(cnum, 574, 0)
						return 1,0,"오호! 그린테일이 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
			 		elseif randomB > 34 and randomB < 65 then --> 뉴그린테일
						AddHenchAndState(cnum, 569, 0)
						return 1,0,"그린테일이랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석인데?..여기 있네~!! 잘 키워보라구~"
			 		elseif randomB > 64 then --> 그린테일
						AddHenchAndState(cnum, 45, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 45, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

		 		elseif randomA > 20 and randomA < 50 then --> 짐승 계
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 629, 0)
						return 1,0,"아니!! 자네 놀라지 말게나..정말 희한한 헨치가 나왔네~.백호가 탄생했네! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나보군..무척 강해보이는 헨치인데?..근데 얼마 못 살것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워써보게~!!"
			 		elseif randomB > 2 and randomB < 6 then --> 변이요티
						AddHenchAndState(cnum, 604, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 요티가 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
		 			elseif randomB > 5 and randomB < 15 then --> 뉴블루요티
						AddHenchAndState(cnum, 599, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
	 				elseif randomB > 14 and randomB < 35 then --> 블루요티
						AddHenchAndState(cnum, 594, 0)
						return 1,0,"오호! 요티가 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
		 			elseif randomB > 34 and randomB < 65 then --> 뉴요티
						AddHenchAndState(cnum, 589, 0)
						return 1,0,"요티랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석이 나왔군..여기 있네~!! 잘 키워보라구~"
			 		elseif randomB > 64 then --> 요티
						AddHenchAndState(cnum, 223, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 223, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

				elseif randomA > 49 then --> 곤충 계
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 629, 0)
						return 1,0,"아니!! 자네 놀라지 말게나..정말 희한한 헨치가 나왔네~.백호가 탄생했네! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나보군..무척 강해보이는 헨치인데?..근데 얼마 못 살것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워써보게~!!"
		 			elseif randomB > 2 and randomB < 6 then --> 변이하퍼슨
						AddHenchAndState(cnum, 624, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 하퍼슨이 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
			 		elseif randomB > 5 and randomB < 15 then --> 뉴블루하퍼슨
						AddHenchAndState(cnum, 619, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
			 		elseif randomB > 14 and randomB < 35 then --> 블루하퍼슨
						AddHenchAndState(cnum, 614, 0)
						return 1,0,"오호! 하퍼슨이 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
			 		elseif randomB > 34 and randomB < 65 then --> 뉴하퍼슨
						AddHenchAndState(cnum, 609, 0)
						return 1,0,"하퍼슨이랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석이 나왔군..여기 있네~!! 잘 키워보라구"
			 		elseif randomB > 64 then --> 하퍼슨
						AddHenchAndState(cnum, 229, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 229, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

				else
					return 0
				end
			end
		end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 15 then --> 레벨 80 이하 보상
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"자네 헨치 인벤토리가 가득찼구만! 헨치 인벤토리 좀 비우고 오게~"
		else
			if GetHench(cnum,1,266,1) > 0 and GetHench(cnum,1,394,1) > 0 then
				return 1,0,"로얄배틀을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 로얄배틀만 가져오라구~"
			elseif GetHench(cnum,1,333,1) > 0 and GetHench(cnum,1,514,1) > 0 then
				return 1,0,"더스티모스를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 더스티모스만 가져오라구~"
			elseif GetHench(cnum,1,266,1) > 1 or GetHench(cnum,1,394,1) > 1 then
				return 1,0,"로얄배틀을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 로얄배틀만 가져오라구~"
			elseif GetHench(cnum,1,109,1) > 1 then
				return 1,0,"라이노바를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 라이노바만 가져오라구~"
			elseif GetHench(cnum,1,333,1) > 1 or GetHench(cnum,1,514,1) > 1 then
				return 1,0,"더스티모스를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 더스티모스만 가져오라구~"
			else
				AddHench(cnum, 266, -1)
				AddHench(cnum, 394, -1)
				AddHench(cnum, 109, -1)
				AddHench(cnum, 333, -1)
				AddHench(cnum, 514, -1)
				AddSwitchCount(cnum, 450, -1) --> 퀘스트 수락 제거
				AddSwitchCount(cnum, 453, -1) --> 퀘스트 수락 제거
				AddSwitchCount(cnum, 456,1) --> 퀘스트 완료
	
				if randomA < 21 then --> 드래곤 계열
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 630, 0)
						return 1,0,"아니!! 자네 놀라지 말라구..정말 희한한 헨치가 나왔어..백호가 탄생했다구! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나..무척 강해보이는 헨치인데?..근데 얼마 못 살 것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워보라구~!!"
			 		elseif randomB > 2 and randomB < 6 then --> 변이테일
						AddHenchAndState(cnum, 585, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 테일이 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
			 		elseif randomB > 5 and randomB < 15 then --> 뉴블루테일
						AddHenchAndState(cnum, 580, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
			 		elseif randomB > 14 and randomB < 35 then --> 블루테일
						AddHenchAndState(cnum, 575, 0)
						return 1,0,"오호! 그린테일이 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
			 		elseif randomB > 34 and randomB < 65 then --> 뉴그린테일
						AddHenchAndState(cnum, 570, 0)
						return 1,0,"그린테일이랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석인데?..여기 있네~!! 잘 키워보라구~"
			 		elseif randomB > 64 then --> 그린테일
						AddHenchAndState(cnum, 45, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 45, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

		 		elseif randomA > 20 and randomA < 50 then --> 짐승 계
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 630, 0)
						return 1,0,"아니!! 자네 놀라지 말라구..정말 희한한 헨치가 나왔어..백호가 탄생했다구! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나..무척 강해보이는 헨치인데?..근데 얼마 못 살 것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워보라구~!!"
			 		elseif randomB > 2 and randomB < 6 then --> 변이요티
						AddHenchAndState(cnum, 605, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 요티가 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
		 			elseif randomB > 5 and randomB < 15 then --> 뉴블루요티
						AddHenchAndState(cnum, 600, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
	 				elseif randomB > 14 and randomB < 35 then --> 블루요티
						AddHenchAndState(cnum, 595, 0)
						return 1,0,"오호! 요티가 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
		 			elseif randomB > 34 and randomB < 65 then --> 뉴요티
						AddHenchAndState(cnum, 590, 0)
						return 1,0,"요티랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석이 나왔군..여기 있네~!! 잘 키워보라구~"
			 		elseif randomB > 64 then --> 요티
						AddHenchAndState(cnum, 499, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 499, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

				elseif randomA > 49 then --> 곤충 계
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 630, 0)
						return 1,0,"아니!! 자네 놀라지 말게나..정말 희한한 헨치가 나왔네~.백호가 탄생했네! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나보군..무척 강해보이는 헨치인데?..근데 얼마 못 살것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워써보게~!!"
		 			elseif randomB > 2 and randomB < 6 then --> 변이하퍼슨
						AddHenchAndState(cnum, 625, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 하퍼슨이 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
			 		elseif randomB > 5 and randomB < 15 then --> 뉴블루하퍼슨
						AddHenchAndState(cnum, 620, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
			 		elseif randomB > 14 and randomB < 35 then --> 블루하퍼슨
						AddHenchAndState(cnum, 615, 0)
						return 1,0,"오호! 하퍼슨이 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
			 		elseif randomB > 34 and randomB < 65 then --> 뉴하퍼슨
						AddHenchAndState(cnum, 610, 0)
						return 1,0,"하퍼슨이랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석이 나왔군..여기 있네~!! 잘 키워보라구"
			 		elseif randomB > 64 then --> 하퍼슨
						AddHenchAndState(cnum, 229, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 229, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

				else
					return 0
				end
			end
		end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 16 then --> 레벨 100 이하 보상
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"자네 헨치 인벤토리가 가득찼구만! 헨치 인벤토리 좀 비우고 오게~"
		else
			if GetHench(cnum,1,45,1) > 0 and GetHench(cnum,1,438,1) > 0 then
				return 1,0,"그린테일을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 그린테일만 가져오라구~"
			elseif GetHench(cnum,1,333,1) > 0 and GetHench(cnum,1,514,1) > 0 then
				return 1,0,"더스티모스를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 더스티모스만 가져오라구~"
			elseif GetHench(cnum,1,45,1) > 1 or GetHench(cnum,1,438,1) > 1 then
				return 1,0,"그린테일을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 그린테일만 가져오라구~"
			elseif GetHench(cnum,1,229,1) > 1 then
				return 1,0,"하퍼슨을 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 하퍼슨만 가져오라구~"
			elseif GetHench(cnum,1,333,1) > 1 or GetHench(cnum,1,514,1) > 1 then
				return 1,0,"더스티모스를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 더스티모스만 가져오라구~"
			else
				AddHench(cnum, 45, -1)
				AddHench(cnum, 438, -1)
				AddHench(cnum, 229, -1)
				AddHench(cnum, 333, -1)
				AddHench(cnum, 514, -1)
				AddSwitchCount(cnum, 450, -1) --> 퀘스트 수락 제거
				AddSwitchCount(cnum, 454, -1) --> 퀘스트 수락 제거
				AddSwitchCount(cnum, 456,1) --> 퀘스트 완료
				
				if randomA < 21 then --> 드래곤 계열
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 631, 0)
						return 1,0,"아니!! 자네 놀라지 말라구..정말 희한한 헨치가 나왔어..백호가 탄생했다구! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나..무척 강해보이는 헨치인데?..근데 얼마 못 살 것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워보라구~!!"
			 		elseif randomB > 2 and randomB < 6 then --> 변이테일
						AddHenchAndState(cnum, 586, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 테일이 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
			 		elseif randomB > 5 and randomB < 15 then --> 뉴블루테일
						AddHenchAndState(cnum, 581, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
			 		elseif randomB > 14 and randomB < 35 then --> 블루테일
						AddHenchAndState(cnum, 576, 0)
						return 1,0,"오호! 그린테일이 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
			 		elseif randomB > 34 and randomB < 65 then --> 뉴그린테일
						AddHenchAndState(cnum, 571, 0)
						return 1,0,"그린테일이랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석인데?..여기 있네~!! 잘 키워보라구~"
			 		elseif randomB > 64 then --> 그린테일
						AddHenchAndState(cnum, 45, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 45, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

		 		elseif randomA > 20 and randomA < 50 then --> 짐승 계
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 631, 0)
						return 1,0,"아니!! 자네 놀라지 말게나..정말 희한한 헨치가 나왔네~.백호가 탄생했네! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나보군..무척 강해보이는 헨치인데?..근데 얼마 못 살것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워써보게~!!"
			 		elseif randomB > 2 and randomB < 6 then --> 변이요티
						AddHenchAndState(cnum, 606, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 요티가 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
		 			elseif randomB > 5 and randomB < 15 then --> 뉴블루요티
						AddHenchAndState(cnum, 601, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
	 				elseif randomB > 14 and randomB < 35 then --> 블루요티
						AddHenchAndState(cnum, 596, 0)
						return 1,0,"오호! 요티가 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
		 			elseif randomB > 34 and randomB < 65 then --> 뉴요티
						AddHenchAndState(cnum, 591, 0)
						return 1,0,"요티랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석이 나왔군..여기 있네~!! 잘 키워보라구~"
			 		elseif randomB > 64 then --> 요티
						AddHenchAndState(cnum, 499, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 499, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

				elseif randomA > 49 then --> 곤충 계
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 631, 0)
						return 1,0,"아니!! 자네 놀라지 말게나..정말 희한한 헨치가 나왔네~.백호가 탄생했네! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나보군..무척 강해보이는 헨치인데?..근데 얼마 못 살것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워써보게~!!"
		 			elseif randomB > 2 and randomB < 6 then --> 변이하퍼슨
						AddHenchAndState(cnum, 626, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 하퍼슨이 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
			 		elseif randomB > 5 and randomB < 15 then --> 뉴블루하퍼슨
						AddHenchAndState(cnum, 621, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
			 		elseif randomB > 14 and randomB < 35 then --> 블루하퍼슨
						AddHenchAndState(cnum, 616, 0)
						return 1,0,"오호! 하퍼슨이 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
			 		elseif randomB > 34 and randomB < 65 then --> 뉴하퍼슨
						AddHenchAndState(cnum, 611, 0)
						return 1,0,"하퍼슨이랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석이 나왔군..여기 있네~!! 잘 키워보라구"
			 		elseif randomB > 64 then --> 하퍼슨
						AddHenchAndState(cnum, 229, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 229, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

				else
					return 0
				end
			end
		end


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 17 then --> 레벨 100 이상 보상
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"자네 헨치 인벤토리가 가득찼구만! 헨치 인벤토리 좀 비우고 오게~"
		else
			if GetHench(cnum,1,207,1) > 0 and GetHench(cnum,1,442,1) > 0 then
				return 1,0,"실버란샤를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 실버란샤만 가져오라구~"
			elseif GetHench(cnum,1,223,1) > 0 and GetHench(cnum,1,499,1) > 0 then
				return 1,0,"요티를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 요티만 가져오라구~"
			elseif GetHench(cnum,1,333,1) > 0 and GetHench(cnum,1,514,1) > 0 then
				return 1,0,"더스티모스를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰일 한 마리의 더스티모스만 가져오라구~"
			elseif GetHench(cnum,1,207,1) > 1 or GetHench(cnum,1,442,1) > 1 then
				return 1,0,"실버란샤를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 실버란샤만 가져오라구~"
			elseif GetHench(cnum,1,223,1) > 1 or GetHench(cnum,1,499,1) > 1 then
				return 1,0,"요티를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 요티만 가져오라구~"
			elseif GetHench(cnum,1,333,1) > 1 or GetHench(cnum,1,514,1) > 1 then
				return 1,0,"더스티모스를 몇 마리를 가지고 있는게야? 다른 건 창고에 넣어두고 이 고결한 연구에 쓰여질 한 마리의 더스티모스만 가져오라구~"
			else
				AddHench(cnum, 207, -1)
				AddHench(cnum, 442, -1)
				AddHench(cnum, 223, -1)
				AddHench(cnum, 499, -1)
				AddHench(cnum, 333, -1)
				AddHench(cnum, 514, -1)
				AddSwitchCount(cnum, 450, -1) --> 퀘스트 수락 제거
				AddSwitchCount(cnum, 455, -1) --> 퀘스트 수락 제거
				AddSwitchCount(cnum, 456,1) --> 퀘스트 완료

		
				if randomA < 21 then --> 드래곤 계열
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 632, 0)
						return 1,0,"아니!! 자네 놀라지 말라구..정말 희한한 헨치가 나왔어..백호가 탄생했다구! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나..무척 강해보이는 헨치인데?..근데 얼마 못 살 것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워보라구~!!"
			 		elseif randomB > 2 and randomB < 6 then --> 변이테일
						AddHenchAndState(cnum, 587, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 테일이 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
			 		elseif randomB > 5 and randomB < 15 then --> 뉴블루테일
						AddHenchAndState(cnum, 582, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
			 		elseif randomB > 14 and randomB < 35 then --> 블루테일
						AddHenchAndState(cnum, 577, 0)
						return 1,0,"오호! 그린테일이 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
			 		elseif randomB > 34 and randomB < 65 then --> 뉴그린테일
						AddHenchAndState(cnum, 572, 0)
						return 1,0,"그린테일이랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석인데?..여기 있네~!! 잘 키워보라구~"
			 		elseif randomB > 64 then --> 그린테일
						AddHenchAndState(cnum, 45, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 45, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

		 		elseif randomA > 20 and randomA < 50 then --> 짐승 계
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 632, 0)
						return 1,0,"아니!! 자네 놀라지 말게나..정말 희한한 헨치가 나왔네~.백호가 탄생했네! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나보군..무척 강해보이는 헨치인데?..근데 얼마 못 살것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워써보게~!!"
			 		elseif randomB > 2 and randomB < 6 then --> 변이요티
						AddHenchAndState(cnum, 607, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 요티가 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
		 			elseif randomB > 5 and randomB < 15 then --> 뉴블루요티
						AddHenchAndState(cnum, 602, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
	 				elseif randomB > 14 and randomB < 35 then --> 블루요티
						AddHenchAndState(cnum, 597, 0)
						return 1,0,"오호! 요티가 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
		 			elseif randomB > 34 and randomB < 65 then --> 뉴요티
						AddHenchAndState(cnum, 592, 0)
						return 1,0,"요티랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석이 나왔군..여기 있네~!! 잘 키워보라구~"
			 		elseif randomB > 64 then --> 요티
						AddHenchAndState(cnum, 499, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 499, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

				elseif randomA > 49 then --> 곤충 계
					if randomB < 3 then --> 백호
						AddHenchAndState(cnum, 632, 0)
						return 1,0,"아니!! 자네 놀라지 말게나..정말 희한한 헨치가 나왔네~.백호가 탄생했네! 백호가 왜 나왔는지는 의문인데..올 해가 백호의 해라더니 백호의 기운이 작용했나보군..무척 강해보이는 헨치인데?..근데 얼마 못 살것 같은 느낌이 드는군 너무 많은 기를 한번에 방출하고 있는 느낌이야..어쨌든...잘 키워써보게~!!"
		 			elseif randomB > 2 and randomB < 6 then --> 변이하퍼슨
						AddHenchAndState(cnum, 627, 0)
						return 1,0,"오~놀라워! 이번 믹스는 대성공! 정말 멋진 하퍼슨이 나왔어..이런 놈은 잘 안나오는데 말야..내 연구에 바쳐 볼 생각은 없나? 아니지..그러기엔 이 죠브박사의 체면이 서질 않아..약속은 약속이니...여기 있다구~!! 잘 키워보라구~!!"				
			 		elseif randomB > 5 and randomB < 15 then --> 뉴블루하퍼슨
						AddHenchAndState(cnum, 622, 0)
						return 1,0,"오호! 성공! 이 놈은 꽤나 튼튼해 보이는 녀석인데? 쓸만하겠는걸? 여기 있네~!! 꽤나 성질이 급해보이는 녀석이니 잘 길들여 보라구~"
			 		elseif randomB > 14 and randomB < 35 then --> 블루하퍼슨
						AddHenchAndState(cnum, 617, 0)
						return 1,0,"오호! 하퍼슨이 퍼런 물이 들어나왔구만..여기 있네~!! 잘 쓰라구~"
			 		elseif randomB > 34 and randomB < 65 then --> 뉴하퍼슨
						AddHenchAndState(cnum, 612, 0)
						return 1,0,"하퍼슨이랑 비슷하지만..뭔가 다른 기운이 느껴지는 녀석이 나왔군..여기 있네~!! 잘 키워보라구"
			 		elseif randomB > 64 then --> 하퍼슨
						AddHenchAndState(cnum, 229, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					else
						AddHenchAndState(cnum, 229, 0)
						return 1,0,"아..이런 믹스가 실패했어...미안하네 아직 실험이 완성단계가 아니라서..하하...이 놈이라도 가져가라구~!!"
					end

				else
					return 0
				end
			end
		end

	else
		return 0
	end

end