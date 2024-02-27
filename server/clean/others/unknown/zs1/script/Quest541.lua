function NPC_QUEST_742(cnum, reqNumber)

req = reqNumber
	if req == 1 then
		return 2,0,"나는 PC맨이라고 하지! 뭐라고!?@PC맨이란건 처음 들어본다고? 흠...그렇다면 내 소개를 하지!@나는 게임버스PC방에서 접속한 밸러들에게 엄청난 혜택을 주고 있지...하하하!@자네 혹시 게임버스PC방에서 접속했나?",2,"네..맞아요!",3,"아닌데요"

	elseif req == 2 then
		if isPcbangIp(cnum) == true then
			if GetRemainPocket(cnum) > 0 then
				if GetItemCount(cnum, 8495, 0) < 1 then
					AddItemCount(cnum, 8495, 1)
					return 2,0,"아! 내가 못 알아봤군!@좋아! 내가 캐릭터 / 헨치 경험치 1.5배와 이동속도를 2배 해 줄 프리미엄 뭉게구름을 주지! 무려 10시간이나 사용할 수 있지만 혹시 다쓰면 다시 오라구!!",12,"네~!"
				else
					return 1,0,"이미 프리미엄 뭉게구름을 가지고 있잖아~! 2개 있어도 2배 효과가 나는건 아니야~없어지면 다시 오라구!!"
				end
			else
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			end
		else
			return 1,0,"아쉽지만 자넨 게임버스PC방이 아니군..게임버스PC방인가 다시 한번 확인해 봐!"
		end


	elseif req == 3 then
		return 1,0,"그렇다면 나중에 게임버스PC방에 가게 되면 나를 찾아와~! 내가 캐릭터 / 헨치 경험치 1.5배와 이동속도를 2배 해 줄 프리미엄 뭉게구름을 줄테니까!",12,"네!"


	elseif req == 12 then
		return 0
	end

end


function NPC_QUEST_743(cnum, reqNumber) -- iMBC이벤봇

req = reqNumber
CriTime = 86400 -- 하루 24시간


	if req == 1 then
		if GetChanelName(cnum) == "IMBC" then
    		return 2,0,"안녕! 난 imbc를 통해 믹스마스터의@세계로 입장한 너희들에게 아주 아주@큰~혜택을 주고 있어!@마음 설레는 신학기가 되었잖아?@설레는 마음을 진정시키라고!@내가 너를 위해서 여러가지 좋은 것들을 준비했어!@매 주 마다 다른 것을 준비했으니 기대해도 좋아!",100,"의외로 강한[아기 헨치랑 놀아주기]"-- ,7777,"[프리미엄 존 입장권(7)] 받기",8888,"[마스터 헨치] 받기",5555,"[랜덤선물상자] 받기"
		else
    		return 1,0,"안녕! 난 imbc를 통해 믹스마스터의@세계로 입장한 밸러에게@혜택을 주고 있어~!"
		end

	elseif req == 2 then -- [imbc 프리미엄 구름] 지급
		if GetRemainPocket(cnum) > 0 then
				if GetItemCount(cnum, 8652, 0) < 1 and GetItemCount(cnum, 8690, 0) < 1 then
					AddItemCount(cnum, 8690, 1)
					return 2,0,"자~여기!!@[iMBC 프리미엄 구름]은 엄청난 효과가 있어! 히어로, 헨치 획득 경험치 2배, 아이템 드랍율 2배, 코어 드랍율 2배!@게다가 이동속도까지 2배가 된다고!!@10시간이나 사용할 수 있지만 혹시나@다 쓰면 다시 와~! 또 줄게!",13,"응~!"
				else
					return 1,0,"[iMBC 프리미엄 구름]을 이미 가지고@있네? 2개를 있어도 2배 효과가@나는 건 아니니까 욕심 안내도 돼~!@다 써서 없어지면 다시 와~! 또 줄게!"
				end

		else
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		end

	elseif req == 3 then
    if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		end

		if GetSwitchCount(cnum, 663) < 1 then -- 처음 마크를 받을 시
			return 2,0,"강력 파워 업! [믹마 마크]!@[믹마 마크]는 엄청난 효과가 있어!@히어로, 헨치 경험치 습득량 2배@아이템 드랍율 2배@헨치 드랍율 2배@히어로, 헨치 공격력 2배@히어로, 헨치 공격속도 2배@정말 엄청나지?",4,"응"
		else -- 두 번째 이 후 지급을 받을 시
			return 2,0,"[믹마 마크]를 받은 뒤로 하루(24시간)가 지난 뒤 오면 내가 또 줄게! 벌써 하루(24시간)가 지났어?!",5,"응"
		end


	elseif req == 4 then
		SetSwitchCurTime(cnum, 664)	-- 마크 받을 시 시간 저장
		AddItemCount(cnum, 8691, 1) -- [믹마 마크] 지급
		SetSwitchCount(cnum, 663, 1) -- 첫 지급 스위치 기록
		return 1,0,"자 여기[믹마 마크]야!@@하루(24시간)가 지나고 나에게 또 오면 또 줄게!@[믹마 마크]는 내가 줄 때 부터 시간이 흐르니까 바로 사용하도록 해~! 알겠지?"


	elseif req == 5 then
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


	elseif req == 100 then
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
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 901, 0)
				SetSwitchCount(cnum, 665, 901) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 902, 0)
				SetSwitchCount(cnum, 665, 902) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 903, 0)
				SetSwitchCount(cnum, 665, 903) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 904, 0)
				SetSwitchCount(cnum, 665, 904) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 905, 0)
				SetSwitchCount(cnum, 665, 905) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 906, 0)
				SetSwitchCount(cnum, 665, 906) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 907, 0)
				SetSwitchCount(cnum, 665, 907) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",9999,"응~!"

			else
				AddHenchAndState(cnum, 908, 0)
				SetSwitchCount(cnum, 665, 908) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 가루곤]이 놀고 싶어하는데?@여기 [아기 가루곤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 가루곤]을 데려와 줘~!",9999,"응~!"

			end
	-------------------------------------------------- [아기 가루곤] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 닌자걸] 시작 --------------------------------------------------------------
		elseif Race == 1 then

			if Lv < 25 then
				AddHenchAndState(cnum, 909, 0)
				SetSwitchCount(cnum, 665, 909) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 910, 0)
				SetSwitchCount(cnum, 665, 910) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 911, 0)
				SetSwitchCount(cnum, 665, 911) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 912, 0)
				SetSwitchCount(cnum, 665, 912) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 913, 0)
				SetSwitchCount(cnum, 665, 913) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 914, 0)
				SetSwitchCount(cnum, 665, 914) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 915, 0)
				SetSwitchCount(cnum, 665, 915) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 916, 0)
				SetSwitchCount(cnum, 665, 916) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",9999,"응~!"

			else
				AddHenchAndState(cnum, 917, 0)
				SetSwitchCount(cnum, 665, 917) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 닌자걸]이 놀고 싶어하는데?@여기 [아기 닌자걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 닌자걸]을 데려와 줘~!",9999,"응~!"

			end
	-------------------------------------------------- [아기 닌자걸] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 윈드걸] 시작 --------------------------------------------------------------
		elseif Race == 2 then

			if Lv < 25 then
				AddHenchAndState(cnum, 918, 0)
				SetSwitchCount(cnum, 665, 918) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 919, 0)
				SetSwitchCount(cnum, 665, 919) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 920, 0)
				SetSwitchCount(cnum, 665, 920) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 921, 0)
				SetSwitchCount(cnum, 665, 921) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 922, 0)
				SetSwitchCount(cnum, 665, 922) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 923, 0)
				SetSwitchCount(cnum, 665, 923) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 924, 0)
				SetSwitchCount(cnum, 665, 924) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 925, 0)
				SetSwitchCount(cnum, 665, 925) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",9999,"응~!"

			else
				AddHenchAndState(cnum, 926, 0)
				SetSwitchCount(cnum, 665, 926) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 윈드걸]이 놀고 싶어하는데?@여기 [아기 윈드걸]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 윈드걸]을 데려와 줘~!",9999,"응~!"

			end
	-------------------------------------------------- [아기 윈드걸] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 칼린엔젤] 시작 --------------------------------------------------------------
		elseif Race == 3 then

			if Lv < 25 then
				AddHenchAndState(cnum, 927, 0)
				SetSwitchCount(cnum, 665, 927) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 928, 0)
				SetSwitchCount(cnum, 665, 928) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 929, 0)
				SetSwitchCount(cnum, 665, 929) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 930, 0)
				SetSwitchCount(cnum, 665, 930) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 931, 0)
				SetSwitchCount(cnum, 665, 931) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 932, 0)
				SetSwitchCount(cnum, 665, 932) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 933, 0)
				SetSwitchCount(cnum, 665, 933) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 934, 0)
				SetSwitchCount(cnum, 665, 934) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",9999,"응~!"

			else
				AddHenchAndState(cnum, 935, 0)
				SetSwitchCount(cnum, 665, 935) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 칼린엔젤]이 놀고 싶어하는데?@여기 [아기 칼린엔젤]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 칼린엔젤]을 데려와 줘~!",9999,"응~!"

			end
	-------------------------------------------------- [아기 칼린엔젤] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 집게마왕] 시작 --------------------------------------------------------------
		elseif Race == 4 then

			if Lv < 25 then
				AddHenchAndState(cnum, 943, 0)
				SetSwitchCount(cnum, 665, 943) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 944, 0)
				SetSwitchCount(cnum, 665, 944) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 945, 0)
				SetSwitchCount(cnum, 665, 945) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 946, 0)
				SetSwitchCount(cnum, 665, 946) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 947, 0)
				SetSwitchCount(cnum, 665, 947) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 948, 0)
				SetSwitchCount(cnum, 665, 948) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 949, 0)
				SetSwitchCount(cnum, 665, 949) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 950, 0)
				SetSwitchCount(cnum, 665, 950) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",9999,"응~!"

			else
				AddHenchAndState(cnum, 951, 0)
				SetSwitchCount(cnum, 665, 951) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 집게마왕]이 놀고 싶어하는데?@여기 [아기 집게마왕]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 집게마왕]을 데려와 줘~!",9999,"응~!"

			end
	-------------------------------------------------- [아기 집게마왕] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 레드리프] 시작 --------------------------------------------------------------
		elseif Race == 5 then

			if Lv < 25 then
				AddHenchAndState(cnum, 952, 0)
				SetSwitchCount(cnum, 665, 952) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 953, 0)
				SetSwitchCount(cnum, 665, 953) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 954, 0)
				SetSwitchCount(cnum, 665, 954) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 955, 0)
				SetSwitchCount(cnum, 665, 955) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 956, 0)
				SetSwitchCount(cnum, 665, 956) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 957, 0)
				SetSwitchCount(cnum, 665, 957) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 958, 0)
				SetSwitchCount(cnum, 665, 958) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 959, 0)
				SetSwitchCount(cnum, 665, 959) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",9999,"응~!"

			else
				AddHenchAndState(cnum, 960, 0)
				SetSwitchCount(cnum, 665, 960) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 레드리프]가 놀고 싶어하는데?@여기 [아기 레드리프]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 레드리프]를 데려와 줘~!",9999,"응~!"

			end
	-------------------------------------------------- [아기 레드리프] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 민트멀] 시작 --------------------------------------------------------------
		elseif Race == 6 then

			if Lv < 25 then
				AddHenchAndState(cnum, 961, 0)
				SetSwitchCount(cnum, 665, 961) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 962, 0)
				SetSwitchCount(cnum, 665, 962) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 963, 0)
				SetSwitchCount(cnum, 665, 963) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 964, 0)
				SetSwitchCount(cnum, 665, 964) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 965, 0)
				SetSwitchCount(cnum, 665, 965) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 966, 0)
				SetSwitchCount(cnum, 665, 966) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 967, 0)
				SetSwitchCount(cnum, 665, 967) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",9999,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 968, 0)
				SetSwitchCount(cnum, 665, 968) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",9999,"응~!"

			else
				AddHenchAndState(cnum, 969, 0)
				SetSwitchCount(cnum, 665, 969) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 민트멀]이 놀고 싶어하는데?@여기 [아기 민트멀]을 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 민트멀]을 데려와 줘~!",9999,"응~!"

			end
	-------------------------------------------------- [아기 민트멀] 끝 --------------------------------------------------------------
	-------------------------------------------------- [아기 고철리카] 시작 --------------------------------------------------------------
		elseif Race == 7 then

			if Lv < 25 then
				AddHenchAndState(cnum, 970, 0)
				SetSwitchCount(cnum, 665, 970) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 46 then
				AddHenchAndState(cnum, 971, 0)
				SetSwitchCount(cnum, 665, 971) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 66 then
				AddHenchAndState(cnum, 972, 0)
				SetSwitchCount(cnum, 665, 972) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 86 then
				AddHenchAndState(cnum, 973, 0)
				SetSwitchCount(cnum, 665, 973) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 106 then
				AddHenchAndState(cnum, 974, 0)
				SetSwitchCount(cnum, 665, 974) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 126 then
				AddHenchAndState(cnum, 975, 0)
				SetSwitchCount(cnum, 665, 975) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 146 then
				AddHenchAndState(cnum, 976, 0)
				SetSwitchCount(cnum, 665, 976) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",9999,"응~!"

			elseif Lv < 166 then
				AddHenchAndState(cnum, 977, 0)
				SetSwitchCount(cnum, 665, 977) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",9999,"응~!"

			else
				AddHenchAndState(cnum, 978, 0)
				SetSwitchCount(cnum, 665, 978) -- 지급 헨치 idx 기록
				return 2,0,"자~어디보자~지금 [아기 고철리카]가 놀고 싶어하는데?@여기 [아기 고철리카]를 데려갈래?@충분히 놀아주고 내구도가 30분 미만이 남았을 때 [아기 고철리카]를 데려와 줘~!",9999,"응~!"

			end
	-------------------------------------------------- [아기 고철리카] 끝 --------------------------------------------------------------
		end




	elseif req == 9999 then
		return 0
	end







--[[	elseif req == 7777 then -- [프리미엄 존 입장권(7)] 지급
		if GetRemainPocket(cnum) > 0 then
			if GetSwitchCount(cnum, 613) < 1 then
				SetSwitchCount(cnum, 613, 1)
				AddItemCount(cnum, 8641, 1)
				return 1,0,"자~여기!!@[프리미엄 존 입장권(7)]이야!@어서 프리미엄 존에 가봐!!@여기 마지리타에서 미래 탐험대를@찾아봐~! 그 친구가 프리미엄 존으로 보내 줄거야!"
			else
				return 1,0,"이미 한번 [프리미엄 존 입장권(7)]을 받았구나?@안타깝게도 [프리미엄 존 입장권(7)]은 한 번밖에 줄 수가 없어! 미안해~!"
			end

		else
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		end

	elseif req == 5555 then -- [마스터 헨치] 교환권
		if GetRemainPocket(cnum) > 0 then
			if GetSwitchCount(cnum, 614) < 1 then
				return 5,0,"마스터 헨치는 총 4종류가 있어!@@드래곤 계열의 [치치]@새 계열의 [앵앵]@짐승 계열의 [미르]@메탈 계열의 [니놈]@@넌 어떤 마스터 헨치를 가지고 싶어?",5,"[치치]",6,"[앵앵]",7,"[미르]",8,"[니놈]"
			else
				return 1,0,"이미 한번 [마스터 헨치] 중의 한 마리를 받았었구나?@안타깝게도 [마스터 헨치 교환권]은@한 번밖에 줄 수가 없어! 미안해~!"
			end

		else
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		end

	elseif req == 5 then -- [치치]
		return 6,0,"[치치]를 선택했구나?@받을 [치치]의 레벨을 선택하렴~!@단! 현재 너의 레벨보다 [치치]의 레벨이 15이상 더 높다면 데리고 다닐 수가 없으니 주의해야 해!@@자~그럼 골라보렴!",51,"[LV 40]",52,"[LV 60]",53,"[LV 80]",54,"[LV 100]",55,"[LV 120]"

	elseif req == 51 then -- [치치]
		AddItemCount(cnum, 8516, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [치치 교환권(lv 40)]이야!@이걸 가지고 마지리타에 있는@헨치 관리인에게 가면 치치를 받을 수 있을거야!"

	elseif req == 52 then -- [치치]
		AddItemCount(cnum, 8517, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [치치 교환권(lv 60)]이야!@이걸 가지고 마지리타에 있는@헨치 관리인에게 가면 치치를 받을 수 있을거야!"

	elseif req == 53 then -- [치치]
		AddItemCount(cnum, 8518, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [치치 교환권(lv 80)]이야!@이걸 가지고 마지리타에 있는@헨치 관리인에게 가면 치치를 받을 수 있을거야!"

	elseif req == 54 then -- [치치]
		AddItemCount(cnum, 8519, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [치치 교환권(lv 100)]이야!@이걸 가지고 마지리타에 있는@헨치 관리인에게 가면 치치를 받을 수 있을거야!"

	elseif req == 55 then -- [치치]
		AddItemCount(cnum, 8520, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [치치 교환권(lv 120)]이야!@이걸 가지고 마지리타에 있는@헨치 관리인에게 가면 치치를 받을 수 있을거야!"



	elseif req == 6 then -- [앵앵]
		return 6,0,"[앵앵]을 선택했구나?@그럼 받고 싶은 [앵앵]의 레벨을 선택하렴~!@단! 현재 너의 레벨보다 [앵앵]의 레벨이 15이상 더 높다면 데리고 다닐 수가 없으니 주의해야 해! 자~그럼 골라보렴!",61,"[LV 40]",62,"[LV 60]",63,"[LV 80]",64,"[LV 100]",65,"[LV 120]"

	elseif req == 61 then -- [앵앵]
		AddItemCount(cnum, 8521, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [앵앵 교환권(lv 40)]이야!@이걸 가지고 마지리타에 있는@헨치 교환원에게 가면 앵앵을 받을 수 있을거야!"

	elseif req == 62 then -- [앵앵]
		AddItemCount(cnum, 8522, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [앵앵 교환권(lv 60)]이야!@이걸 가지고 마지리타에 있는@헨치 교환원에게 가면 앵앵을 받을 수 있을거야!"

	elseif req == 63 then -- [앵앵]
		AddItemCount(cnum, 8523, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [앵앵 교환권(lv 80)]이야!@이걸 가지고 마지리타에 있는@헨치 교환원에게 가면 앵앵을 받을 수 있을거야!"

	elseif req == 64 then -- [앵앵]
		AddItemCount(cnum, 8524, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [앵앵 교환권(lv 100)]이야!@이걸 가지고 마지리타에 있는@헨치 교환원에게 가면 앵앵을 받을 수 있을거야!"

	elseif req == 65 then -- [앵앵]
		AddItemCount(cnum, 8525, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [앵앵 교환권(lv 120)]이야!@이걸 가지고 마지리타에 있는@헨치 교환원에게 가면 앵앵을 받을 수 있을거야!"



	elseif req == 7 then -- [미르]
		return 6,0,"[미르]를 선택했구나?@그럼 받고 싶은 [미르]의 레벨을 선택하렴~!@단! 현재 너의 레벨보다 [미르]의 레벨이 15이상 더 높다면 데리고 다닐 수가 없으니 주의해야 해! 자~그럼 골라보렴!",71,"[LV 40]",72,"[LV 60]",73,"[LV 80]",74,"[LV 100]",75,"[LV 120]"

	elseif req == 71 then -- [미르]
		AddItemCount(cnum, 8526, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [미르 교환권(lv 40)]이야!@이걸 가지고 마지리타에 있는@헨치 교환원에게 가면 미르를 받을 수 있을거야!"

	elseif req == 72 then -- [미르]
		AddItemCount(cnum, 8527, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [미르 교환권(lv 60)]이야!@이걸 가지고 마지리타에 있는@헨치 교환원에게 가면 미르를 받을 수 있을거야!"

	elseif req == 73 then -- [미르]
		AddItemCount(cnum, 8528, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [미르 교환권(lv 80)]이야!@이걸 가지고 마지리타에 있는@헨치 교환원에게 가면 미르를 받을 수 있을거야!"

	elseif req == 74 then -- [미르]
		AddItemCount(cnum, 8529, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [미르 교환권(lv 100)]이야!@이걸 가지고 마지리타에 있는@헨치 교환원에게 가면 미르를 받을 수 있을거야!"

	elseif req == 75 then -- [미르]
		AddItemCount(cnum, 8530, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [미르 교환권(lv 120)]이야!@이걸 가지고 마지리타에 있는@헨치 교환원에게 가면 미르를 받을 수 있을거야!"


	elseif req == 8 then -- [니놈]
		return 6,0,"[니놈]를 선택했구나?@그럼 받고 싶은 [니놈]의 레벨을 선택하렴~!@단! 현재 너의 레벨보다 [니놈]의 레벨이 15이상 더 높다면 데리고 다닐 수가 없으니 주의해야 해! 자~그럼 골라보렴!",81,"[LV 40]",82,"[LV 60]",83,"[LV 80]",84,"[LV 100]",85,"[LV 120]"

	elseif req == 81 then -- [니놈]
		AddItemCount(cnum, 8531, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [니놈 교환권(lv 40)]이야! 이걸 가지고 마지리타에 있는 헨치 교환원에게 가면 니놈을 받을 수 있을거야!"

	elseif req == 82 then -- [니놈]
		AddItemCount(cnum, 8532, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [니놈 교환권(lv 60)]이야! 이걸 가지고 마지리타에 있는 헨치 교환원에게 가면 니놈을 받을 수 있을거야!"

	elseif req == 83 then -- [니놈]
		AddItemCount(cnum, 8533, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [니놈 교환권(lv 80)]이야! 이걸 가지고 마지리타에 있는 헨치 교환원에게 가면 니놈을 받을 수 있을거야!"

	elseif req == 84 then -- [니놈]
		AddItemCount(cnum, 8534, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [니놈 교환권(lv 100)]이야! 이걸 가지고 마지리타에 있는 헨치 교환원에게 가면 니놈을 받을 수 있을거야!"

	elseif req == 85 then -- [니놈]
		AddItemCount(cnum, 8535, 1)
		SetSwitchCount(cnum, 614, 1)
		return 1,0,"자~여기! [니놈 교환권(lv 120)]이야! 이걸 가지고 마지리타에 있는 헨치 교환원에게 가면 니놈을 받을 수 있을거야!"




	elseif req == 8888 then -- 선물상자 퀘스트
		if GetSwitchCount(cnum, 615) < 1 then
			return 2,0,"[랜덤선물상자]를 받고 싶구나?!@그냥 줄 수는 없어! 귀중한 거니까~!@대신 내 부탁을 들어주면~~@[랜덤선물상자] 1개를 줄게~!@어때? 들어볼래?",10,"그래 좋아!"
		else
			return 2,0,"내가 부탁한 것들은 가져왔어?@@[오래된 용뼈] / [악마의 손톱]@[짐승의 털] / [새의 부리]@[썩은 나무조각] / [알수없는 조각]@[고철 조각] / [벌레 껍질]@@각 10개씩 이렇게 가져왔어?",14,"응!"
		end

	elseif req == 10 then
		return 2,0,"믹스마스터의 세계엔 8개 계열의@몬스터가 있는 것을 알고 있지?@드래곤, 악마, 짐승, 새@식물, 미스터리, 메탈, 곤충@이렇게 말야!",11,"응!"

	elseif req == 11 then
		return 2,0,"난 그들의 유품을 가지고 싶어!@드래곤 [오래된 용뼈] / 악마 [악마의 손톱] / 미스터리 [알수없는 조각] / 새 [새의 부리] / 식물 [썩은 나무조각] / 짐승 [짐승의 털] / 메탈 [고철 조각] / 곤충 [벌레 껍질]@@이 것들 각 각 10개씩 모아와줘~!",12,"10개씩? 알았어!!"

	elseif req == 12 then
		SetSwitchCount(cnum, 615, 1)
		return 1,0,"마지리타 마을 주변의@마지리타 북부나 동부에 사는@드라코, 데빌코, 비스코, 버드코, 버그코, 플라코, 미스코, 메타코처럼 비교적 약한 몬스터에게서도 아이템들을 구할 수 있으니까@참고해~그럼 기다릴게!",13,"응!"

	elseif req == 13 then
		return 0


	elseif req == 14 then
		if GetRemainPocket(cnum) > 0 then
				if GetItemCount(cnum, 480, 0) < 10 or
        GetItemCount(cnum, 496, 0) < 10 or
        GetItemCount(cnum, 499, 0) < 10 or
        GetItemCount(cnum, 489, 0) < 10 or
        GetItemCount(cnum, 420, 0) < 10 or
        GetItemCount(cnum, 493, 0) < 10 or
        GetItemCount(cnum, 486, 0) < 10 or
        GetItemCount(cnum, 483, 0) < 10 then

        return 1,0,"잘 살펴봐~! 아직 내가 원하는 아이템@10개씩 모아오지 못 했는걸?@[오래된 용뼈] / [악마의 손톱] / [짐승의 털] / [새의 부리] / [썩은 나무조각] / [알수없는 조각] / [고철 조각] / [벌레 껍질] 각 10개씩 모두 있나 확인해봐~!",15,"어디서 구하나요?"

      else
        AddItemCount(cnum, 8653, 1)
        SetSwitchCount(cnum, 615, 0)
        AddItemCount(cnum, 480, -10)
        AddItemCount(cnum, 496, -10)
        AddItemCount(cnum, 499, -10)
        AddItemCount(cnum, 489, -10)
        AddItemCount(cnum, 493, -10)
        AddItemCount(cnum, 486, -10)
        AddItemCount(cnum, 483, -10)
        AddItemCount(cnum, 420, -10)

        return 1,0,"너 대단하구나!?@생각보다 빨리 모아왔는데?@자~여기 [랜덤선물상자]야!@좋은 아이템을 얻길 바라~!",13,"응! 고마워!"
      end
    else
    	return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
    end


		elseif req == 15 then
      return 1,0,"일반적으로 레벨 50 이하의 몬스터들에게서 구할 수 있어! 마지리타 마을 밖에 마지리타 북부나 동부에 사는 드라코, 데빌코, 비스코, 버드코, 버그코, 플라코, 미스코, 메타코 비교적 약한 몬스터에게서도 아이템들을 구할 수 있어!",13,"응!"
	end ]]--

end
