function NPC_QUEST_1577(cnum, reqNumber) -- iMBC이벤봇(2011. 8. 2) /8월 iMBC 단독 이벤트 기획서(여름방학 기념! iMBC 회원님께 마스터 헨치 교환권을 쏩니다!!)

req = reqNumber


	if req == 1 then

		if GetSwitchCount(cnum, 681) > 4 then
	    	return 1,0,"안녕! 마스터 헨치는 잘 받아서@키우고 있니? 혹시 아직까지@마스터 헨치를 받지 못했다면@@마지리타의@[헨치관리인][X:150 Y:40]을 찾아가봐!"
	  end


-------------------------------------------------------------- 퀘스트 진행 중 재 대화 시
		if GetSwitchCount(cnum, 681) == 1 then
			return 2,0,"어서와! 돌아왔구나?@@[오래된 용뼈] 30개@[작은 머리뿔] 20개@[큰 머리뿔] 10개@@구해왔니?@참고로, 위 아이템들은 드래곤 계열@몬스터들을 잡다보면 얻을 수 있어!",60,"응!",100,"아니 아직!"
		elseif  GetSwitchCount(cnum, 681) == 2 then
			return 2,0,"어서와! 돌아왔구나?@@[새의 부리] 30개@[노란 새털] 20개@[빛나는 새털] 10개@@구해왔니?@참고로, 위 아이템들은 새 계열 몬스터들을 잡다보면 얻을 수 있어!",60,"응!",100,"아니 아직!"
		elseif  GetSwitchCount(cnum, 681) == 3 then
			return 2,0,"어서와! 돌아왔구나?@@[짐승의 털] 30개@[낡은 가죽] 20개@[온전한 가죽] 10개@@구해왔니?@참고로, 위 아이템들은 짐승 계열 몬스터들을 잡다보면 얻을 수 있어!",60,"응!",100,"아니 아직!"
		elseif  GetSwitchCount(cnum, 681) == 4 then
			return 2,0,"어서와! 돌아왔구나?@@[고철 조각] 30개@[나사 조각] 20개@[나사 한줌] 10개@@구해왔니?@참고로, 위 아이템들은 메탈 계열 몬스터들을 잡다보면 얻을 수 있어!",60,"응!",100,"아니 아직!"
		end
-------------------------------------------------------------- 퀘스트 진행 중 재 대화 시


-------------------------------------------------------------- 첫 대화 시
		if GetChanelName(cnum) == "IMBC" then
			return 3,0,"안녕! 난 imbc를 통해 믹스마스터의@세계로 입장한 너희들에게 [마스터 헨치]를 가질 수 있는 기회를 주려고해! 아이템 몇 가지만 구해오면 [마스터 헨치 교환권]을 줄게!@@어때? 해보지 않을래?",2,"응!",100,"아니 나중에 할게!"
		else
			return 1,0,"안녕! 난 imbc를 통해 믹스마스터의@세계로 입장한 밸러에게@혜택을 주고 있어~!"
		end
-------------------------------------------------------------- 첫 대화 시

-------------------------------------------------------------- 퀘스트 수락 거부 시
		elseif req == 100 then
			return 1,0,"그럼 나중에 다시 와~! [마스터 헨치]를 얻을 수 있는 좋은 기회니까!"
-------------------------------------------------------------- 퀘스트 수락 거부 시



-------------------------------------------------------------- 마스터 헨치 종류 선택
		elseif req == 2 then -- [마스터 헨치 종류 선택]
			return 5,0,"응! 좋아! 우선 가지고 싶은 마스터 헨치의 종류부터 먼저 골라볼래?",10,"[치치][드래곤 계열]",20,"[앵앵][새 계열]",30,"[미르][짐승 계열]",40,"[니놈][메탈 계열]"
-------------------------------------------------------------- 마스터 헨치 종류 선택


-------------------------------------------------------------- 선택한 마스터 헨치 종류에 따라 퀘스트 정보 제공 및 퀘스트 수락 제의
		elseif req == 10 then -- [드래곤 계열[치치] 선택]
				return 3,0,"드래곤 계열의 [치치]를 선택했구나! 좋아! 그럼 모아와야하는 아이템은@[오래된 용뼈] 30개@[작은 머리뿔] 20개@[큰 머리뿔] 10개@@드래곤 계열 몬스터를 잡다보면 구할 수 있을거야! 그러면 위 아이템들을 구해서 다시 와줄래?",11,"응! 알았어!",100,"미안 나중에 할게!"
		elseif req == 20 then -- [새 계열[앵앵] 선택]
				return 3,0,"새 계열의 [앵앵]을 선택했구나! 좋아! 그럼 모아와야하는 아이템은@[새의 부리] 30개@[노란 새털] 20개@[빛나는 새털] 10개@@새 계열 몬스터를 잡다보면 구할 수 있을거야! 그러면 위 아이템들을 구해서 다시 와줄래?",21,"응! 알았어!",100,"미안 나중에 할게!"
		elseif req == 30 then -- [짐승 계열[미르] 선택]
				return 3,0,"짐승 계열의 [미르]를 선택했구나! 좋아! 그럼 모아와야하는 아이템은@[짐승의 털] 30개@[낡은 가죽] 20개@[온전한 가죽] 10개@@짐승 계열 몬스터를 잡다보면 구할 수 있을거야! 그러면 위 아이템들을 구해서 다시 와줄래?",31,"응! 알았어!",100,"미안 나중에 할게!"
		elseif req == 40 then -- [메탈 계열[니놈] 선택]
				return 3,0,"메탈 계열의 [니놈]을 선택했구나! 좋아! 그럼 모아와야하는 아이템은@[고철 조각] 30개@[나사 조각] 20개@[나사 한줌] 10개@@메탈 계열 몬스터를 잡다보면 구할 수 있을거야! 그러면 위 아이템들을 구해서 다시 와줄래?",41,"응! 알았어!",100,"미안 나중에 할게!"
				-------------------------------------------------------------- 선택한 마스터 헨치 종류에 따라 퀘스트 정보 제공 및 퀘스트 수락 제의


-------------------------------------------------------------- 퀘스트 수령
		elseif req == 11 then -- [드래곤 계열[치치] 선택]
			SetSwitchCount(cnum, 681, 1)
				return 1,0,"응! 기다릴게!"
		elseif req == 21 then -- [새 계열[앵앵] 선택]
			SetSwitchCount(cnum, 681, 2)
				return 1,0,"응! 기다릴게!"
		elseif req == 31 then -- [짐승 계열[미르] 선택]
			SetSwitchCount(cnum, 681, 3)
				return 1,0,"응! 기다릴게!"
		elseif req == 41 then -- [메탈 계열[니놈] 선택]
			SetSwitchCount(cnum, 681, 4)
				return 1,0,"응! 기다릴게!"
-------------------------------------------------------------- 퀘스트 수령


-------------------------------------------------------------- 퀘스트 완료 조건 검사
elseif req == 60 then
		if GetSwitchCount(cnum, 681) == 1 then
			if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
				return 2,0,"잘 살펴볼래? 아직@@[오래된 용뼈] 30개@[작은 머리뿔] 20개@[큰 머리뿔] 10개@@모두 모으지 못했구나?@다시 한번 살펴봐 줄래?",110,"응!"
			else
				return 6,0,"다~모아왔구나! 자 그러면 네가 원하는 [치치]의 레벨을 골라줄래?",12,"[LV 40][치치]",13,"[LV 60][치치]",14,"[LV 80][치치]",15,"[LV 100][치치]",16,"[LV 120][치치]"
			end

		elseif  GetSwitchCount(cnum, 681) == 2 then
			if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
				return 2,0,"잘 살펴볼래? 아직@@[새의 부리] 30개@[노란 새털] 20개@[빛나는 새털] 10개@@모두 모으지 못했구나?@다시 한번 살펴봐 줄래?",110,"응!"
			else
				return 6,0,"다~모아왔구나! 자 그러면 네가 원하는 [앵앵]의 레벨을 골라줄래?",22,"[LV 40][앵앵]",23,"[LV 60][앵앵]",24,"[LV 80][앵앵]",25,"[LV 100][앵앵]",26,"[LV 120][앵앵]"
			end

		elseif  GetSwitchCount(cnum, 681) == 3 then
			if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
				return 2,0,"잘 살펴볼래? 아직@@[짐승의 털] 30개@[낡은 가죽] 20개@[온전한 가죽] 10개@@모두 모으지 못했구나?@다시 한번 살펴봐 줄래?",110,"응!"
			else
				return 6,0,"다~모아왔구나! 자 그러면 네가 원하는 [미르]의 레벨을 골라줄래?",32,"[LV 40][미르]",33,"[LV 60][미르]",34,"[LV 80][미르]",35,"[LV 100][미르]",36,"[LV 120][미르]"
			end

		elseif  GetSwitchCount(cnum, 681) == 4 then
			if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
				return 2,0,"잘 살펴볼래? 아직@@[고철 조각] 30개@[나사 조각] 20개@[나사 한줌] 10개@@모두 모으지 못했구나?@다시 한번 살펴봐 줄래?",110,"응!"
			else
				return 6,0,"다~모아왔구나! 자 그러면 네가 원하는 [니놈]의 레벨을 골라줄래?",42,"[LV 40][니놈]",43,"[LV 60][니놈]",44,"[LV 80][니놈]",45,"[LV 100][니놈]",46,"[LV 120][니놈]"
			end
		end
-------------------------------------------------------------- 퀘스트 완료 조건 검사


-------------------------------------------------------------- 퀘스트 완료[치치]
elseif req == 12 then
		if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
			return 2,0,"[오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 480, -30)
			AddItemCount(cnum, 481, -20)
			AddItemCount(cnum, 482, -10)

			AddItemCount(cnum, 8516, 1) -- 치치교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [치치 교환권(LV.40)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 13 then
		if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
			return 2,0,"[오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 480, -30)
			AddItemCount(cnum, 481, -20)
			AddItemCount(cnum, 482, -10)

			AddItemCount(cnum, 8517, 1) -- 치치교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [치치 교환권(LV.60)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 14 then
		if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
			return 2,0,"[오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 480, -30)
			AddItemCount(cnum, 481, -20)
			AddItemCount(cnum, 482, -10)

			AddItemCount(cnum, 8518, 1) -- 치치교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [치치 교환권(LV.80)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 15 then
		if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
			return 2,0,"[오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 480, -30)
			AddItemCount(cnum, 481, -20)
			AddItemCount(cnum, 482, -10)

			AddItemCount(cnum, 8519, 1) -- 치치교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [치치 교환권(LV.100)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 16 then
		if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
			return 2,0,"[오래된 용뼈] 30개, [작은 머리뿔] 20개, [큰 머리뿔] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 480, -30)
			AddItemCount(cnum, 481, -20)
			AddItemCount(cnum, 482, -10)

			AddItemCount(cnum, 8520, 1) -- 치치교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [치치 교환권(LV.120)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end
-------------------------------------------------------------- 퀘스트 완료[치치]


-------------------------------------------------------------- 퀘스트 완료[앵앵]
elseif req == 22 then
		if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
			return 2,0,"[새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 489, -30)
			AddItemCount(cnum, 490, -20)
			AddItemCount(cnum, 491, -10)

			AddItemCount(cnum, 8521, 1) -- 앵앵교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [앵앵 교환권(LV.40)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 23 then
		if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
			return 2,0,"[새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 489, -30)
			AddItemCount(cnum, 490, -20)
			AddItemCount(cnum, 491, -10)

			AddItemCount(cnum, 8522, 1) -- 앵앵교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [앵앵 교환권(LV.60)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 24 then
		if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
			return 2,0,"[새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 489, -30)
			AddItemCount(cnum, 490, -20)
			AddItemCount(cnum, 491, -10)

			AddItemCount(cnum, 8523, 1) -- 앵앵교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [앵앵 교환권(LV.80)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 25 then
		if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
			return 2,0,"[새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 489, -30)
			AddItemCount(cnum, 490, -20)
			AddItemCount(cnum, 491, -10)

			AddItemCount(cnum, 8524, 1) -- 앵앵교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [앵앵 교환권(LV.100)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 26 then
		if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
			return 2,0,"[새의 부리] 30개, [노란 새털] 20개, [빛나는 새털] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 489, -30)
			AddItemCount(cnum, 490, -20)
			AddItemCount(cnum, 491, -10)

			AddItemCount(cnum, 8525, 1) -- 앵앵교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [앵앵 교환권(LV.120)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end
-------------------------------------------------------------- 퀘스트 완료[앵앵]


-------------------------------------------------------------- 퀘스트 완료[미르]
elseif req == 32 then
		if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
			return 2,0,"[짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 499, -30)
			AddItemCount(cnum, 500, -20)
			AddItemCount(cnum, 501, -10)

			AddItemCount(cnum, 8526, 1) -- 미르교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [미르 교환권(LV.40)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 33 then
		if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
			return 2,0,"[짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 499, -30)
			AddItemCount(cnum, 500, -20)
			AddItemCount(cnum, 501, -10)

			AddItemCount(cnum, 8527, 1) -- 미르교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [미르 교환권(LV.60)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 34 then
		if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
			return 2,0,"[짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 499, -30)
			AddItemCount(cnum, 500, -20)
			AddItemCount(cnum, 501, -10)

			AddItemCount(cnum, 8528, 1) -- 미르교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [미르 교환권(LV.80)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 35 then
		if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
			return 2,0,"[짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 499, -30)
			AddItemCount(cnum, 500, -20)
			AddItemCount(cnum, 501, -10)

			AddItemCount(cnum, 8529, 1) -- 미르교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [미르 교환권(LV.100)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 36 then
		if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
			return 2,0,"[짐승의 털] 30개, [낡은 가죽] 20개, [온전한 가죽] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 499, -30)
			AddItemCount(cnum, 500, -20)
			AddItemCount(cnum, 501, -10)

			AddItemCount(cnum, 8530, 1) -- 미르교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [미르 교환권(LV.120)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end
-------------------------------------------------------------- 퀘스트 완료[미르]



-------------------------------------------------------------- 퀘스트 완료[니놈]
elseif req == 42 then
		if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
			return 2,0,"[고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 483, -30)
			AddItemCount(cnum, 484, -20)
			AddItemCount(cnum, 485, -10)

			AddItemCount(cnum, 8531, 1) -- 니놈교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [니놈 교환권(LV.40)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 43 then
		if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
			return 2,0,"[고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 483, -30)
			AddItemCount(cnum, 484, -20)
			AddItemCount(cnum, 485, -10)

			AddItemCount(cnum, 8532, 1) -- 니놈교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [니놈 교환권(LV.60)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 44 then
		if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
			return 2,0,"[고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 483, -30)
			AddItemCount(cnum, 484, -20)
			AddItemCount(cnum, 485, -10)

			AddItemCount(cnum, 8533, 1) -- 니놈교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [니놈 교환권(LV.80)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 45 then
		if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
			return 2,0,"[고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 483, -30)
			AddItemCount(cnum, 484, -20)
			AddItemCount(cnum, 485, -10)

			AddItemCount(cnum, 8534, 1) -- 니놈교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [니놈 교환권(LV.100)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end

elseif req == 46 then
		if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
			return 2,0,"[고철 조각] 30개, [나사 조각] 20개, [나사 한줌] 10개가 어디로 갔니?"
		else
			AddItemCount(cnum, 483, -30)
			AddItemCount(cnum, 484, -20)
			AddItemCount(cnum, 485, -10)

			AddItemCount(cnum, 8535, 1) -- 니놈교환권
			SetSwitchCount(cnum, 681, 5) -- 퀘스트 종료
			return 1,0,"자~! 여기 [니놈 교환권(LV.120)]이야! 이걸 가지고 [헨치 관리인]에게 가봐!@@[헨치 관리인]은@마지리타 [X:150  Y:40]에 있어!"
		end
-------------------------------------------------------------- 퀘스트 완료[니놈]



	end
end
