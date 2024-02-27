function NPC_QUEST_1049(cnum, reqNumber) -- 잭오랜턴(할로윈이벤트)

	req = reqNumber



	if req == 1 then

		if GetSwitchCount(cnum, 570) < 1 then -- 시작 스위치
			return 2,0,"과자를 주지 않으면 장난을 치겠다~! ",10,"과자 없는데요?"

		elseif GetSwitchCount(cnum, 570) == 1 then
			return 2,0,"어때? 즐거웠나? 어서 과자를 내 놓으라고~! 흐히히~",15,"정말 과자 없어요"

		elseif GetSwitchCount(cnum, 571) == 1 and GetSwitchCount(cnum, 572) < 1  then
				return 3,0,"어서와! 내가 말한 호박껍질 50개, 불멸의 양초 50개를 모아왔나? ",25,"네~",30,"아니요"

		elseif GetSwitchCount(cnum, 572) == 1 and GetItemCount(cnum, 8566, 0) > 49 and GetItemCount(cnum, 8567, 0) > 49 then
				return 2,0,"뭐야 왜 또 변신갑옷 재료를 모아가지고 왔어?@좋아 하나더 만들어주지~! 기다려~! ",25,"네~"

		elseif GetSwitchCount(cnum, 572) == 1 then
				return 1,0,"어때? 재미있지? 다른 마을도 가서 사람들을 놀래켜 보라구~!"

		else
			return 1,0,"오류!"

		end


	elseif req == 10 then
			return 2,0,"그럼 장난을 쳐주지~! ",11,"윽!"

	elseif req == 11 then
		SetReturnTimer(cnum, 30, 237)
		AddSwitchCount(cnum, 570, 1)
		MoveZone(cnum, 237,254)



	elseif req == 15 then
		return 2,0,"음...재미없군..너도 나와같이 마을 사람들에게 장난을 쳐보자구@어때? ",20,"좋아요"

	elseif req == 20 then
		SetSwitchCount(cnum, 571, 1)
		AddSwitchCount(cnum, 570, 1)
		return 1,0,"우선 변신갑옷을 만들어야 하니까 할로윈 데이를 맞아 거리를 뛰쳐나온 잭오랜턴, 블러디랜턴, 뉴잭오랜턴을 잡아보라고 그러면 호박껍질, 불멸의 양초를 얻을 수 있지 그 두개를 각각 50개씩 모아오면 내가 변신갑옷을 만들어주지"

	elseif req == 25 then

		if GetItemCount(cnum, 8566, 0) < 50 or GetItemCount(cnum, 8567, 0) < 50 then
			return 1,0,"거짓말 하지마!"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@잭오랜턴 에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			return 2,0,"좋아! 조금만 기다려~!",35,"네"

		end

	elseif req == 30 then
		return 1,0,"시간이 없어! 빨리 장난치러가야지~!"


	elseif req == 35 then

		random = SetRandom(cnum,1,8)

		if random == 1 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8568,1) -- 아그작데빌 변신갑옷
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"여기있어! 자 이제 그걸 입고 마을 사람들에게 장난을 쳐보자구!"


		elseif random == 2 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8569,1) -- 메롱니 변신갑옷
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"여기있어! 자 이제 그걸 입고 마을 사람들에게 장난을 쳐보자구!"

		elseif random == 3 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8570,1) -- 피로스티 변신갑옷
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"여기있어! 자 이제 그걸 입고 마을 사람들에게 장난을 쳐보자구!"

		elseif random == 4 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8571,1) -- 몽걀 변신갑옷
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"여기있어! 자 이제 그걸 입고 마을 사람들에게 장난을 쳐보자구!"

		elseif random == 5 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8572,1) -- 마수리 변신갑옷
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"여기있어! 자 이제 그걸 입고 마을 사람들에게 장난을 쳐보자구!"

		elseif random == 6 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8573,1) -- 스컬위저 변신갑옷
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"여기있어! 자 이제 그걸 입고 마을 사람들에게 장난을 쳐보자구!"

		elseif random == 7 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8574,1) -- 잭오랜턴 변신갑옷
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"여기있어! 자 이제 그걸 입고 마을 사람들에게 장난을 쳐보자구!"

		elseif random == 8 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8575,1) -- 블러디랜턴 변신갑옷
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"여기있어! 자 이제 그걸 입고 마을 사람들에게 장난을 쳐보자구!"


		else
			return 1,0,"오류 2"

		end

	end

end
