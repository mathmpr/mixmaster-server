function NPC_QUEST_1197(cnum, reqNumber)

req = reqNumber
CriTime = 86400


	if req == 1 then
		if GetChanelName(cnum) == "IMBC" then
			return 1,0,"안녕! iMBC에서 믹스마스터의 세계로 들어왔구나?@저기 'iMBC이벤봇'을 찾아가봐!@좋은 것을 준다고 하던데?"
		else
			return 2,0,"안녕! 어느새 따스한 봄 날이 되었지? 귀여운 아기헨치들도 바깥에 나가고 싶어서 안달이야! 귀여운 아기 헨치를 데리고 봄나들이 어떠니?!",5,"의외로 강한[아기 헨치랑 놀아주기]"
		end

	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		end

		if GetSwitchCount(cnum, 663) < 1 then -- 처음 마크를 받을 시
			return 2,0,"강력 파워 업! [믹마 마크]!@[믹마 마크]는 엄청난 효과가 있어!@히어로, 헨치 경험치 습득량 2배@아이템 드랍율 2배@헨치 드랍율 2배@히어로, 헨치 공격력 2배@히어로, 헨치 공격속도 2배@정말 엄청나지?",3,"응"
		else -- 두 번째 이 후 지급을 받을 시
			return 2,0,"[믹마 마크]를 받은 뒤로 하루(24시간)가 지난 뒤 오면 내가 또 줄게! 벌써 하루(24시간)가 지났어?!",4,"응"
		end

	elseif req == 3 then
		SetSwitchCurTime(cnum, 664)	-- 마크 받을 시 시간 저장
		AddItemCount(cnum, 8691, 1) -- [믹마 마크] 지급
		SetSwitchCount(cnum, 663, 1) -- 첫 지급 스위치 기록
		return 1,0,"자 여기[믹마 마크]야!@@하루(24시간)가 지나고 나에게 또 오면 또 줄게!@[믹마 마크]는 내가 줄 때 부터 시간이 흐르니까 바로 사용하도록 해~! 알겠지?"


	elseif req == 4 then
		if GetCurrentTime () - GetSwitchTime(cnum, 664) > CriTime then -- 현재 시간에서 이 전 아이템 받은 시간의 차가 설정 시간 보다 많은 지 검사. 즉, 아이템을 받은지 24시간이 지났나 검사.
			AddItemCount(cnum, 8691, 1) -- [믹마 마크] 지급
			SetSwitchCurTime(cnum, 664)	-- 마크 받을 시 시간 저장
			return 1,0,"정~말!? 벌써 하루가 지났네?@자~여기 [믹마 마크]를 줄게!@@내일 이 시간에 또 오면 또 [믹마 마크]를 줄게! 내일 또 와~!",9999,"응~! 고마워~!"

		else
			RemainTime = CriTime - (GetCurrentTime () - GetSwitchTime(cnum, 664)) -- 아이템을 받기 전까지 남은 시간 계산 후 Result에 기록.
			Hour = RemainTime / 3600
			Min = (RemainTime % 3600) / 60
			Second = (RemainTime % 3600) % 60
			return 1,0,"아직 하루(24시간)가 지나지 않았네? 다시 아이템을 받으려면 앞으로@@["..math.floor(Hour).."시간 "..math.floor(Min).."분 "..math.floor(Second).."초]가 지난 뒤 다시 와~! 그럼 [믹마 마크]를 또 줄게~!",9999,"응"
		end

	elseif req == 5 then
		if GetSwitchCount(cnum, 665) < 2 then -- 퀘스트를 진행중인지 체크
			return 2,0,"내가 기르는 귀여운 아기 헨치들이@이제 슬슬 밸러의 손에 길들여질 때가 된 것 같아!@아기 헨치들도 봄 나들이를 하고 싶어하는 것 같고말야!@네가 아기 헨치랑 놀아주지 않을래?@내가 선물도 줄게~!",6,"응~! 좋아!"
		else -- 퀘스트 진행중
						HireHench = GetSwitchCount(cnum, 665)
      if GetHench(cnum, 0, HireHench, 1) > 0 then
				return 2,0,"이렇게 데리고 오면 안돼~!@인벤토리에 코어가 된 상태로 데려와 줄래?",9999,"응! 인벤토리에 넣어서 올게!"      
			end	

			if GetHench(cnum, 1, HireHench, 1) < 1 then
				return 2,0,"내가 준 아기 헨치는 어디로 간거야? 설마 3시간이 지나서 없어진 것은 아니겠지?",8,"미안..없어졌어"
			else
						
				if GetHenchDur(cnum, 1, GetSwitchCount(cnum, 665)) < 1800 then
				  if GetSwitchCount(cnum, 665) >= 900 and GetSwitchCount(cnum, 665) <= 908 then
					return 2,0,"고마워~! [아기 가루곤]이 매우 즐거웠던 것 같은데?",9,"응! 그렇지?!"
				  elseif GetSwitchCount(cnum, 665) >= 909 and GetSwitchCount(cnum, 665) <= 917 then
					return 2,0,"고마워~! [아기 닌자걸]이 매우 즐거웠던 것 같은데?",9,"응! 그렇지?!"
				  elseif GetSwitchCount(cnum, 665) >= 918 and GetSwitchCount(cnum, 665) <= 926 then
					return 2,0,"고마워~! [아기 윈드걸]이 매우 즐거웠던 것 같은데?",9,"응! 그렇지?!"
				  elseif GetSwitchCount(cnum, 665) >= 927 and GetSwitchCount(cnum, 665) <= 935 then
					return 2,0,"고마워~! [아기 칼린엔젤]이 매우 즐거웠던 것 같은데?",9,"응! 그렇지?!"
				  elseif GetSwitchCount(cnum, 665) >= 943 and GetSwitchCount(cnum, 665) <= 951 then
					return 2,0,"고마워~! [아기 집게마왕]이 매우 즐거웠던 것 같은데?",9,"응! 그렇지?!"
				  elseif GetSwitchCount(cnum, 665) >= 952 and GetSwitchCount(cnum, 665) <= 960 then
					return 2,0,"고마워~! [아기 레드리프]가 매우 즐거웠던 것 같은데?",9,"응! 그렇지?!"
				  elseif GetSwitchCount(cnum, 665) >= 961 and GetSwitchCount(cnum, 665) <= 969 then
					return 2,0,"고마워~! [아기 민트멀]이 매우 즐거웠던 것 같은데?",9,"응! 그렇지?!"
				  elseif GetSwitchCount(cnum, 665) >= 970 and GetSwitchCount(cnum, 665) <= 978 then
					return 2,0,"고마워~! [아기 고철리카]가 매우 즐거웠던 것 같은데?",9,"응! 그렇지?!"
				  end

				else
				  if GetSwitchCount(cnum, 665) >= 900 and GetSwitchCount(cnum, 665) <= 908 then
					return 2,0,"[아기 가루곤]이 더 놀아달라고 하는데? 내구도가 30분 미만으로 내려갈 때까지만 좀 더 놀아주고 다시 올래?",10,"응! 알겠어!"
				  elseif GetSwitchCount(cnum, 665) >= 909 and GetSwitchCount(cnum, 665) <= 917 then
					return 2,0,"[아기 닌자걸]이 더 놀아달라고 하는데? 내구도가 30분 미만으로 내려갈 때까지만 좀 더 놀아주고 다시 올래?",10,"응! 알겠어!"
				  elseif GetSwitchCount(cnum, 665) >= 918 and GetSwitchCount(cnum, 665) <= 926 then
					return 2,0,"[아기 윈드걸]이 더 놀아달라고 하는데? 내구도가 30분 미만으로 내려갈 때까지만 좀 더 놀아주고 다시 올래?",10,"응! 알겠어!"
				  elseif GetSwitchCount(cnum, 665) >= 927 and GetSwitchCount(cnum, 665) <= 935 then
					return 2,0,"[아기 칼린엔젤]이 더 놀아달라고 하는데? 내구도가 30분 미만으로 내려갈 때까지만 좀 더 놀아주고 다시 올래?",10,"응! 알겠어!"
				  elseif GetSwitchCount(cnum, 665) >= 943 and GetSwitchCount(cnum, 665) <= 951 then
					return 2,0,"[아기 집게마왕]이 더 놀아달라고 하는데? 내구도가 30분 미만으로 내려갈 때까지만 좀 더 놀아주고 다시 올래?",10,"응! 알겠어!"
				  elseif GetSwitchCount(cnum, 665) >= 952 and GetSwitchCount(cnum, 665) <= 960 then
					return 2,0,"[아기 레드리프]가 더 놀아달라고 하는데? 내구도가 30분 미만으로 내려갈 때까지만 좀 더 놀아주고 다시 올래?",10,"응! 알겠어!"
				  elseif GetSwitchCount(cnum, 665) >= 961 and GetSwitchCount(cnum, 665) <= 969 then
					return 2,0,"[아기 민트멀]이 더 놀아달라고 하는데? 내구도가 30분 미만으로 내려갈 때까지만 좀 더 놀아주고 다시 올래?",10,"응! 알겠어!"
				  elseif GetSwitchCount(cnum, 665) >= 970 and GetSwitchCount(cnum, 665) <= 978 then
					return 2,0,"[아기 고철리카]가 더 놀아달라고 하는데? 내구도가 30분 미만으로 내려갈 때까지만 좀 더 놀아주고 다시 올래?",10,"응! 알겠어!"
				  end
				end
			end
		end

	elseif req == 8 then
    SetSwitchCount(cnum, 665, 1) -- 퀘스트 실패 및 스위치 초기화
		return 2,0,"...아기 헨치가 없어지다니.....@너무 슬퍼....지금은 이야기하기 힘들어..@조금 있다가 다시 와줄래?",9999,"응. 미안해"

	elseif req == 9 then
    if GetRemainPocket(cnum) < 1 then
      return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
    end
		
		AddHench(cnum, GetSwitchCount(cnum, 665), -1) -- 대여해준 헨치 제거
		AddItemCount(cnum, 8692, 1) -- 보상 아이템 [깜찍한 선물상자] 지급
		SetSwitchCount(cnum, 665, 1) -- 퀘스트 완료 및 스위치 초기화
		return 2,0,"자~여기![깜찍한 선물상자] 를 줄게~! 고마워~! 또 아기 헨치를 돌봐줄 수 있다면 언제든지 다시 와~!",9999,"응! 고마워!"


	elseif req == 6 then
		return 2,0,"고마워~! 하나! 아기 헨치와 놀아줄 때 주의해야 할 것이 있어!@아기 헨치들은 아직 면역력이 없어서@3시간마다 나에게 데려와줘야 해~!@아기 헨치와 충분히 놀아주고~@@아기 헨치의 내구도가 30분 미만이@되었을 때 나에게 데려와 줘야해~!@알겠지?",7,"응~! 알았어!"

	elseif req == 7 then
		Race = SetRandom(cnum, 0, 7)
		Lv = GetHeroLv(cnum)

		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리가 부족하여 헨치를 받을 수 없습니다. 헨치 인벤토리를 1칸 이상 비워야 헨치를 받을 수 있습니다."
		end

-------------------------------------------------- [아기 가루곤] 시작 --------------------------------------------------------------
		if Race == 0 then

			if Lv < 25 then
				AddHenchAndState(cnum, 900, 0)
				SetSwitchCount(cnum, 665, 900) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 901, 0)
				SetSwitchCount(cnum, 665, 901) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 902, 0)
				SetSwitchCount(cnum, 665, 902) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 903, 0)
				SetSwitchCount(cnum, 665, 903) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 904, 0)
				SetSwitchCount(cnum, 665, 904) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 905, 0)
				SetSwitchCount(cnum, 665, 905) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 906, 0)
				SetSwitchCount(cnum, 665, 906) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 907, 0)
				SetSwitchCount(cnum, 665, 907) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",100,"응~!"

			else
				AddHenchAndState(cnum, 908, 0)
				SetSwitchCount(cnum, 665, 908) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",100,"응~!"

			end
	-------------------------------------------------- [아기 가루곤] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 닌자걸] 시작 --------------------------------------------------------------
		elseif Race == 1 then

			if Lv < 25 then
				AddHenchAndState(cnum, 909, 0)
				SetSwitchCount(cnum, 665, 909) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 910, 0)
				SetSwitchCount(cnum, 665, 910) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 911, 0)
				SetSwitchCount(cnum, 665, 911) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 912, 0)
				SetSwitchCount(cnum, 665, 912) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 913, 0)
				SetSwitchCount(cnum, 665, 913) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 914, 0)
				SetSwitchCount(cnum, 665, 914) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 915, 0)
				SetSwitchCount(cnum, 665, 915) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 916, 0)
				SetSwitchCount(cnum, 665, 916) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",100,"응~!"

			else
				AddHenchAndState(cnum, 917, 0)
				SetSwitchCount(cnum, 665, 917) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",100,"응~!"

			end
	-------------------------------------------------- [아기 닌자걸] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 윈드걸] 시작 --------------------------------------------------------------
		elseif Race == 2 then

			if Lv < 25 then
				AddHenchAndState(cnum, 918, 0)
				SetSwitchCount(cnum, 665, 918) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 919, 0)
				SetSwitchCount(cnum, 665, 919) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 920, 0)
				SetSwitchCount(cnum, 665, 920) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 921, 0)
				SetSwitchCount(cnum, 665, 921) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 922, 0)
				SetSwitchCount(cnum, 665, 922) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 923, 0)
				SetSwitchCount(cnum, 665, 923) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 924, 0)
				SetSwitchCount(cnum, 665, 924) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",100,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 925, 0)
				SetSwitchCount(cnum, 665, 925) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",100,"응~!"

			else
				AddHenchAndState(cnum, 926, 0)
				SetSwitchCount(cnum, 665, 926) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",100,"응~!"

			end
	-------------------------------------------------- [아기 윈드걸] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 칼린엔젤] 시작 --------------------------------------------------------------
		elseif Race == 3 then

			if Lv < 25 then
				AddHenchAndState(cnum, 927, 0)
				SetSwitchCount(cnum, 665, 927) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 928, 0)
				SetSwitchCount(cnum, 665, 928) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 929, 0)
				SetSwitchCount(cnum, 665, 929) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 930, 0)
				SetSwitchCount(cnum, 665, 930) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 931, 0)
				SetSwitchCount(cnum, 665, 931) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 932, 0)
				SetSwitchCount(cnum, 665, 932) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 933, 0)
				SetSwitchCount(cnum, 665, 933) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",100,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 934, 0)
				SetSwitchCount(cnum, 665, 934) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",100,"응~!"

			else
				AddHenchAndState(cnum, 935, 0)
				SetSwitchCount(cnum, 665, 935) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",100,"응~!"

			end
	-------------------------------------------------- [아기 칼린엔젤] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 집게마왕] 시작 --------------------------------------------------------------
		elseif Race == 4 then

			if Lv < 25 then
				AddHenchAndState(cnum, 943, 0)
				SetSwitchCount(cnum, 665, 943) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",100,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 944, 0)
				SetSwitchCount(cnum, 665, 944) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",100,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 945, 0)
				SetSwitchCount(cnum, 665, 945) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",100,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 946, 0)
				SetSwitchCount(cnum, 665, 946) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",100,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 947, 0)
				SetSwitchCount(cnum, 665, 947) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",100,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 948, 0)
				SetSwitchCount(cnum, 665, 948) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",100,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 949, 0)
				SetSwitchCount(cnum, 665, 949) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",100,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 950, 0)
				SetSwitchCount(cnum, 665, 950) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",100,"응~!"

			else
				AddHenchAndState(cnum, 951, 0)
				SetSwitchCount(cnum, 665, 951) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",100,"응~!"

			end
	-------------------------------------------------- [아기 집게마왕] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 레드리프] 시작 --------------------------------------------------------------
		elseif Race == 5 then

			if Lv < 25 then
				AddHenchAndState(cnum, 952, 0)
				SetSwitchCount(cnum, 665, 952) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",100,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 953, 0)
				SetSwitchCount(cnum, 665, 953) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",100,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 954, 0)
				SetSwitchCount(cnum, 665, 954) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",100,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 955, 0)
				SetSwitchCount(cnum, 665, 955) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",100,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 956, 0)
				SetSwitchCount(cnum, 665, 956) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",100,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 957, 0)
				SetSwitchCount(cnum, 665, 957) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",100,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 958, 0)
				SetSwitchCount(cnum, 665, 958) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",100,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 959, 0)
				SetSwitchCount(cnum, 665, 959) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",100,"응~!"

			else
				AddHenchAndState(cnum, 960, 0)
				SetSwitchCount(cnum, 665, 960) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",100,"응~!"

			end
	-------------------------------------------------- [아기 레드리프] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 민트멀] 시작 --------------------------------------------------------------
		elseif Race == 6 then

			if Lv < 25 then
				AddHenchAndState(cnum, 961, 0)
				SetSwitchCount(cnum, 665, 961) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",100,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 962, 0)
				SetSwitchCount(cnum, 665, 962) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",100,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 963, 0)
				SetSwitchCount(cnum, 665, 963) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",100,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 964, 0)
				SetSwitchCount(cnum, 665, 964) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",100,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 965, 0)
				SetSwitchCount(cnum, 665, 965) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",100,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 966, 0)
				SetSwitchCount(cnum, 665, 966) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",100,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 967, 0)
				SetSwitchCount(cnum, 665, 967) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",100,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 968, 0)
				SetSwitchCount(cnum, 665, 968) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",100,"응~!"

			else
				AddHenchAndState(cnum, 969, 0)
				SetSwitchCount(cnum, 665, 969) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",100,"응~!"

			end
	-------------------------------------------------- [아기 민트멀] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 고철리카] 시작 --------------------------------------------------------------
		elseif Race == 7 then

			if Lv < 25 then
				AddHenchAndState(cnum, 970, 0)
				SetSwitchCount(cnum, 665, 970) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",100,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 971, 0)
				SetSwitchCount(cnum, 665, 971) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",100,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 972, 0)
				SetSwitchCount(cnum, 665, 972) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",100,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 973, 0)
				SetSwitchCount(cnum, 665, 973) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",100,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 974, 0)
				SetSwitchCount(cnum, 665, 974) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",100,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 975, 0)
				SetSwitchCount(cnum, 665, 975) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",100,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 976, 0)
				SetSwitchCount(cnum, 665, 976) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",100,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 977, 0)
				SetSwitchCount(cnum, 665, 977) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",100,"응~!"

			else
				AddHenchAndState(cnum, 978, 0)
				SetSwitchCount(cnum, 665, 978) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",100,"응~!"

			end
	-------------------------------------------------- [아기 고철리카] 끝 --------------------------------------------------------------
		end




	elseif req == 9999 then
		return 0
	end

end
