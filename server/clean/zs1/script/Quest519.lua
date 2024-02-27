function NPC_QUEST_339(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetItemCount(cnum, 68, 0) < 1 and
		 GetItemCount(cnum, 69, 0) < 1 and
		 GetItemCount(cnum, 95, 0) < 1 and
		 GetItemCount(cnum, 96, 0) < 1 and
		 GetItemCount(cnum, 940, 0) < 1 and
		 GetItemCount(cnum, 1316, 0) < 1 and
		 GetItemCount(cnum, 3711, 0) < 1 and
		 GetItemCount(cnum, 8178, 0) < 1 and
		 GetItemCount(cnum, 8226, 0) < 1 and
		 GetItemCount(cnum, 8237, 0) < 1 and
		 GetItemCount(cnum, 8499, 0) < 1 and
		 GetItemCount(cnum, 8582, 0) < 1 and
		 GetItemCount(cnum, 8641, 0) < 1 then

			if GetSwitchCount(cnum, 433) < 1 then
				if GetSwitchCount(cnum, 432) < 1 then
					return 3,0,"아직도 집게마왕과 그의 졸개들은 나의 퍼즐의 정원에서 활개를 치고 있다네. 그대 나를 도와주겠는가?",2,"도와준다.",4,"관심없다."
				else
					return 3,0,"벌써 출입증 4조각을 다 모아 왔는가?",3,"조각 맞추기",7,"퀘스트 정보"
				end

			else
				return 2,0,"아무래도 퍼즐의 정원 출입증 사용시간이 모두 소멸 된 것 같네. 퍼즐의 정원 출입증 조각 4개를 다시 모아온다면 퍼즐의 정원 출입증을 재발부 해주겠네. 퍼즐의 정원 입장 권 조각은 '발칸계곡', '백색광야', '순백의 해안'에서 구할 수 있을 것이네.",3,"조각 맞추기"
			end

		else
			return 2,0,"퍼즐의 정원으로 이동할 텐가?",5,"퍼즐의 정원 입구로 이동한다."
		end

	elseif req == 2 then
		AddSwitchCount(cnum, 432, 1)
		StartQuest(cnum, 180)
		return 1,0,"정말인가? 고맙네! 하지만 퍼즐의 정원에 입장하기 위해서는 퍼즐의 정원 출입증 혹은 프리미엄 존 입장권이 있어야 하네. 퍼즐의 정원 출입증 4 조각을 모아 가져오면 내가 퍼즐의 정원 출입증을 만들어 주겠네. 퍼즐의 정원 입장 권 조각은 '발칸계곡', '백색광야', '순백의 해안'에서 구할 수 있을 것이네."

	elseif req == 3 then
		if GetItemCount(cnum, 8238, 0) < 1 or GetItemCount(cnum, 8239, 0) < 1 or GetItemCount(cnum, 8240, 0) < 1 or GetItemCount(cnum, 8241, 0) < 1 then
			return 1,0,"자네는 출입권 조각 4가지를 아직 다 모으지 않았네. 자네의 한계인가?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리의 여유공간이 부족합니다."

		else
			AddSwitchCount(cnum, 433, 1)
			AddItemCount(cnum, 8238, -1)
			AddItemCount(cnum, 8239, -1)
			AddItemCount(cnum, 8240, -1)
			AddItemCount(cnum, 8241, -1)
			AddItemCount(cnum, 8237, 1)
			EndQuest(cnum, 180)
			return 2,0,"자네는 자격이 충분하네. 여기 퍼즐의 정원 출입증이 있네. 현재 퍼즐의 정원에는 먼저 간 원정대원들이 몬스터와 항쟁 중일 것이네. 그들을 도와 함께 싸우게.",5,"퍼즐의 정원 입구로 이동한다."
		end

	elseif req == 4 then
		return 2,0,"관심없어도 상관없네! 도와주게!",2,"마지못해 도와준다."

	elseif req == 5 then
		MoveZone(cnum, 177, 254)

	elseif req == 6 then
		MoveZone(cnum, 180, 254)

	elseif req == 7 then
		return 1,0,"퍼즐의 정원에 입장하기 위해서는 퍼즐의 정원 출입증 혹은 프리미엄 존 입장권이 있어야 하네. 퍼즐의 정원 입장권 4 조각을 모아 가져오면 내가 퍼즐의 정원 입장권을 만들어 주겠네. 퍼즐의 정원 입장 권 조각은 발칸계곡, 백색광야, 순백의 해안에서 구할 수 있을 것이네."

	else
		return 0
	end

end
