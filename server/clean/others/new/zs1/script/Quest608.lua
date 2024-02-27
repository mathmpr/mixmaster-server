function NPC_QUEST_1594(cnum, reqNumber) --[2011할로윈이벤트]마녀NPC ,사탕불리기(랜덤).--

--사탕불리기의 경우 랜덤으로 진행되며 실패할 경우 선택한 개수의 사탕을 모두 회수해가도록 설정--





req = reqNumber

if req == 1 then

	return 6,0, "라라라~ @★☆해피해피 할로윈데이~!☆★@@ 할로윈데이는 마녀나 악마들에게도 축제날이랍니다~ 무슨일로 오셨나요?",9,"할로윈데이?",93,"수집이벤트가 있다고 들었습니다.",88,"사탕을 2배로 불려주세요~",12,"호박과자를 드리려구요~",11,"사탕을 주세요~"


elseif req == 88 then
	return 5,0, "가지고 계신 사탕을 2배로 불려드리겠습니다~ @단, 저는 수습마녀이기 때문에 '실패'도 할 수 있다는것 명심하세요! @'불리실 사탕의 개수를 선택'해주세요! @(선택한 개수의 사탕을 걸고 2배로 불려드립니다. 실패 시 '건 사탕의 개수 모두를 잃게 됩니다.')",881,"10개",882,"50개",883,"100개",884,"1000개"

elseif req == 881 then --사탕불리기 10


	if GetRemainPocket(cnum) < 1 then
	return 1,0, "우선 인벤토리부터 비우고 오세요~ @기다릴게요☆"

	else

		if GetItemCount(cnum, 8835,0) < 10 then
		return 1,0, "이런, 사탕 개수가 부족해요~"

		else --갯수가 맞을 경우

			random = SetRandom(cnum,0,10)
				if random < 8 then --1,2,3,4,5,6,7
				AddItemCount(cnum, 8835, 10)
				return 1,0, "얍~! @성공했어요! @축하드려요~ 20개로 불어났네요!@@@@@'할로윈 사탕 10개가 20개로 늘어났습니다.'"

				else --8~10
				AddItemCount(cnum, 8835, -10)
				return 1,0, "얍~! @이런..실패했네요.. @미안해요.. @@@@@'할로윈 사탕 10개가 소멸되었습니다.'"
				end
		end
	end


elseif req == 882 then --사탕불리기 50개
	if GetRemainPocket(cnum) < 1 then
	return 1,0, "우선 인벤토리부터 비우고 오세요~ 기다릴게요☆"

	else
		if GetItemCount(cnum, 8835,0) < 50 then
		return 1,0, "이런, 사탕 개수가 부족해요~"

		else --갯수가 맞을 경우

			random = SetRandom(cnum,0,10)
				if random < 6 then --1,2,3,4,5
				AddItemCount(cnum, 8835, 50)
				return 1,0, "얍~! @성공했어요! @축하드려요~ 100개로 불어났네요!@@@@@'할로윈 사탕 50개가 100개로 늘어났습니다.'"

				else --6~10
				AddItemCount(cnum, 8835, -50)
				return 1,0, "얍~! @이런..실패했네요.. @미안해요.. @@@@@'할로윈 사탕 50개가 소멸되었습니다.'"
				end
		end
	end


elseif req == 883 then --사탕불리기 100개
	if GetRemainPocket(cnum) < 1 then
	return 1,0, "우선 인벤토리부터 비우고 오세요~ 기다릴게요☆"
	else

		if GetItemCount(cnum, 8835,0) < 100 then
		return 1,0, "이런, 사탕 개수가 부족해요~"

		else --갯수가 맞을 경우

			random = SetRandom(cnum,0,10)
				if random < 5 then --1,2,3
				AddItemCount(cnum, 8835, 100)
				return 1,0, "얍~! @성공했어요! @축하드려요~ @200개로 불어났네요!@@@@@'할로윈 사탕 100개가 200개로 늘어났습니다.'"

				else --4~10
				AddItemCount(cnum, 8835, -100)
				return 1,0, "얍~! @이런..실패했네요.. @미안해요.. @@@@@'할로윈 사탕 100개가 소멸되었습니다.'"
				end
		end
	end


elseif req == 884 then --사탕불리기 1000개
	if GetRemainPocket(cnum) < 1 then
	return 1,0, "우선 인벤토리부터 비우고 오세요~ 기다릴게요☆"

	else

		if GetItemCount(cnum, 8835,0) < 1000 then
		return 1,0, "이런, 사탕 개수가 부족해요~"

		else --갯수가 맞을 경우

			random = SetRandom(cnum,0,10)
				if random < 3 then --1,2
				AddItemCount(cnum, 8835, 1000)
				return 1,0, "얍~! @성공했어요! @축하드려요~ 2000개로 불어났네요!@@@@@'할로윈 사탕 1000개가 2000개로 늘어났습니다.'"

				else --3~10
				AddItemCount(cnum, 8835, -1000)
				return 1,0, "얍~! @이런..실패했네요.. @미안해요.. @@@@@'할로윈 사탕 1000개가 소멸되었습니다.'"
				end
		end
	end



elseif req == 9 then
	return 3,0, "할로윈 데이란, @간단하게 말하자면 호박모양의 가면을 쓰거나 유령, 악마 등으로 분장을 하고 이웃에게 사탕이나 과자를 얻어오는 축제랍니다.@참, 말이 나와서 하는 얘긴데 히어로씨도 한번 사탕 수집에 도전해보시겠어요?",90,"쉬워보이는데요?",91,"어떻게 얻나요?"

elseif req == 90 then
	return 3,0, "음..사탕 개수에 따라 보상이 다르기 때문에 선택하기에 따라 난이도가 다르답니다. @히어로씨가 가지고 계신 사탕 개수 내에서만 선택해 주시기 바랍니다~ ",93,"네! 도전!"
	,92,"어려울 것 같네요."

elseif req == 91 then
	return 1,0, "주변을 잘 살펴보시면 사탕을 얻을 방법이 많이 있답니다. @마을 사람들에게 한 번 물어보세요~ 참! (소근소근) 저도 드린답니다."

elseif req == 93 then
	if GetRemainPocket(cnum) < 1 then
	return 1,0, "우선 인벤토리부터 비우고 오세요~ 기다릴게요☆"

	elseif GetSwitchCount(cnum, 716) < 1 then
		return 5,0, "<사탕 수집 이벤트!> 100개 : 헨치 부활 스크롤 (3) 1set @ 500개 : 캐릭터 부활 스크롤 (3) 1set  또는 리턴 스크롤 (3) 1set 중 1개(선택) @ 1,000개 : (할로윈) 변신갑옷 9개중 1개(선택)@ 5,555개 : 불끈알사탕(2시간) 1개@@개수는 아래와 같습니다. @히어로씨가 가지고  있는 사탕의 개수로 도전하세요~",94,"100개",95,"500개",96,"1000개",97,"5,555개"
	else
		return 4,0, "개수는 아래와 같습니다. @히어로씨가 가지고  있는 사탕의 개수로 도전하세요~",94,"100개",95,"500개",96,"1000개"

	end

elseif req == 92 then
	return 1,0, "100개도 없나요? 에구구.. 아쉽지만 어쩔 수 없죠..."

elseif req == 94 then
	if GetItemCount(cnum, 8835,0) < 100 then
	return 1,0, "사탕 개수가 부족해요~ 더 모아오세요☆"
	else
	AddItemCount(cnum, 8835, -100)
	AddItemCount(cnum, 8751, 3) --헨치 부활 3개 1set
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'헨치 부활 스크롤(체험용) 3개를 획득하였습니다.'"
	end

elseif req == 95 then
	if GetItemCount(cnum, 8835,0) < 500 then
	return 1,0, "사탕 개수가 부족해요~ 더 모아오세요☆"
	else

	return 3,0, "받으실 보상 한 개를 선택해주세요.",98,"리턴 스크롤(체험용) 3개",99,"캐릭터 부활 스크롤(체험용) 3개"

	end
elseif req == 96 then
	if GetItemCount(cnum, 8835,0) < 1000 then
	return 1,0, "사탕 개수가 부족해요~ 더 모아오세요☆"
	else

	return 10,0, "받으실 보상 한 개를 선택해주세요.",100,"잭오랜턴 변신갑옷",101,"메롱니 변신갑옷",102,"마수리 변신갑옷",103,"피로스티 변신갑옷",104,"닥터캘빈 변신갑옷",105,"스컬위저 변신갑옷",106,"몽걀 변신갑옷",107,"아그작데빌 변신갑옷",108,"블러디랜턴 변신갑옷"
	end
elseif req == 97 then
	if GetItemCount(cnum, 8835,0) < 5555 then
	return 1,0, "사탕 개수가 부족해요~ 더 모아오세요☆"
	else

	SetSwitchCount(cnum, 716, 1)
	AddItemCount(cnum, 8835, -5555)
	AddItemCount(cnum, 8858, 1) --힘이불끈물약 1개
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'불끈알사탕 1개(2시간)을 획득하였습니다.'"
	end


elseif req == 98 then


	AddItemCount(cnum, 8835, -500) --리턴, 캐릭부활 스크롤3개씩 1set, 택1
	AddItemCount(cnum, 8756, 3)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'리턴 스크롤 3개를 획득하였습니다.'"

elseif req == 99 then

	AddItemCount(cnum, 8835, -500) --리턴, 캐릭부활 스크롤3개씩 1set, 택1
	AddItemCount(cnum, 8752, 3)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'캐릭터 부활 스크롤 3개를 획득하였습니다.'"



elseif req == 10 then --사탕은 어떻게 모으나요? 보상 안받고 사탕불리기 1회 이상 실행후
	if GetItemCount(cnum, 8835,0) < 30 then --사탕이 30개 미만인 유저에게만 1개씩 제공
	AddItemCount(cnum, 8835, 1)
	return 1,0, "할로윈 데이에 맞게 변장을 해서 마을 사람들에게 말을 걸어보는것은 어떨까요? @몬스터도 한 번 잡아보시구요~(이건 서비스~)"
	else
	return 1,0, "할로윈 데이에 맞게 변장을 해서 마을 사람들에게 말을 걸어보는것은 어떨까요? @몬스터도 한 번 잡아보시구요~"
	end

elseif req == 100 then

	AddItemCount(cnum, 8835, -1000)
	AddItemCount(cnum, 8849, 1)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'(할로윈)잭오랜턴 변신갑옷을 획득하였습니다.'"

elseif req == 101 then

	AddItemCount(cnum, 8835, -1000)
	AddItemCount(cnum, 8850, 1)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'(할로윈)메롱니 변신갑옷을 획득하였습니다.'"
elseif req == 102 then

	AddItemCount(cnum, 8835, -1000)
	AddItemCount(cnum, 8851, 1)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'(할로윈)마수리 변신갑옷을 획득하였습니다.'"
elseif req == 103 then

	AddItemCount(cnum, 8835, -1000)
	AddItemCount(cnum, 8852, 1)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'(할로윈)피로스티 변신갑옷을 획득하였습니다.'"
elseif req == 104 then

	AddItemCount(cnum, 8835, -1000)
	AddItemCount(cnum, 8853, 1)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'(할로윈)닥터캘빈?변신갑옷을 획득하였습니다.'"

elseif req == 105 then

	AddItemCount(cnum, 8835, -1000)
	AddItemCount(cnum, 8854, 1)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'(할로윈)스컬위저 변신갑옷을 획득하였습니다.'"

elseif req == 106 then

	AddItemCount(cnum, 8835, -1000)
	AddItemCount(cnum, 8855, 1)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'(할로윈)몽걀 변신갑옷을 획득하였습니다.'"

elseif req == 107 then

	AddItemCount(cnum, 8835, -1000)
	AddItemCount(cnum, 8856, 1)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'(할로윈)아그작데빌 변신갑옷을 획득하였습니다.'"

elseif req == 108 then

	AddItemCount(cnum, 8835, -1000)
	AddItemCount(cnum, 8857, 1)
	return 1,0, "수고했어요~ 여기 보상이랍니다.★@@@@@'(할로윈)블러디랜턴 변신갑옷을 획득하였습니다.'"


elseif req == 11 then

	if GetSwitchCount(cnum, 713) < 1 then
		if GetItemCount(cnum, 8835, 0) < 30 then
		AddItemCount(cnum, 8835, 1)
			return 1,0, "스스로 모아야 하지만.. @하나라면 괜찮겠죠. 그럼, 해피 할로윈데이~☆"

		else
			return 1,0, "앗, 더 이상은 줄 수 없어요! @대신, 힌트를 드리자면 다른 분들께도 말을 걸어보세요."
		end

	else
		if GetSwitchCount(cnum, 719) == 7 then
			return 1,0, "앗, 더 이상은 줄 수 없어요! @대신, 힌트를 드리자면 다른 분들께도 말을 걸어보세요."
		else
		AddSwitchCount(cnum, 719,1) --사탕을 받음
		AddItemCount(cnum, 8835, 5)
			return 1,0, "(두리번 두리번) 원래는 주면 안되지만! @특별히 드리도록 할게요. 해피 할로윈데이~☆"
		end
	end


	--[[if GetItemCount(cnum, 8835,0) < 30 then
		if GetSwitchCount(cnum, 713) == 1 then --호박과자를 준 유저들
			if GetSwitchCount(cnum, 719) == 7 then --사탕을 7번 받은 유저들
				return 1,0, "앗, 더 이상은 줄 수 없어요! 대신, 힌트를 드리자면 다른 분들께도 말을 걸어보세요."

			else
			AddSwitchCount(cnum, 719,1) --사탕을 받음
			AddItemCount(cnum,8835,5)
			return 1,0, "(두리번 두리번) 원래는 주면 안되지만! 특별히 드리도록 할게요. 해피 할로윈데이~☆"
			end

		else
		AddItemcount(cnum,8835,1)
		return 1,0, "스스로 모아야 하지만.. 하나라면 괜찮겠죠. 그럼, 해피 할로윈데이~☆"
		end

	else
			return 1,0, "앗, 더 이상은 줄 수 없어요! 대신, 힌트를 드리자면 다른 분들께도 말을 걸어보세요."
	end--]]



elseif req == 12 then
	if GetSwitchCount(cnum, 713) == 1 then
		return 1,0, "그때 주신 호박과자, 정말 맛있게 잘 먹었답니다. 고마워요~☆"
	else

	if GetItemCount(cnum, 8836, 0) >= 1 then
	SetSwitchCount(cnum, 713,1)
	AddItemCount(cnum, 8836, -1)
	AddItemCount(cnum, 8835,20) --마녀의 호박과자 보답 8858!
	return 1,0, "제게요? 이것은 '호박 과자'가 아닌가요? @주신다니.. 고마워요~ 맛있게 먹을게요★@@@@@'할로윈 사탕 20개를 획득하였습니다.'"

	else --8836 < 1 then
	return 1,0, "응? 선물이 어디에 있나요?"
	end
	end

end

end








