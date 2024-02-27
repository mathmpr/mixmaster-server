function NPC_QUEST_701(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 415) < 1 then
			return 2,0,"너무나도 더운 여름!@완벽한 기력 보충! @삼계탕을 권해드려요~",2,"먹는건가요? 우걱우걱~"


		else
			if GetItemCount(cnum, 8099, 0) < 10 or GetItemCount(cnum, 8214, 0) < 10 or GetItemCount(cnum, 8100, 0) < 10 then 
				return 2,0,"그것만으로는 엄마손 삼계탕을@만들 수 없어요~@[인삼 10개]@[찹쌀 10개]@[닭고기 10개]@이렇게 요리 재료를 모아오세요~@음.. 들리는 소문에 의하면..@[인삼]과[찹쌀]은 식물 몬스터,@[닭고기]는 새 몬스터에게서@나온다고 하던데..",42,"힝~ 넵.."


			else
				return 2,0,"굿~! 이거면 충분하군요.@잠시만 있어봐요~@기력 보충의 시간!",52,"두근두근~"


			end
		end



	elseif req == 2 then
		return 2,0,"호호~ 당근 먹는거지요!@먼저, 제 소개를 드리자면..@삼계탕을 아주 맛깔나게 만드는@삼계탕의 달인이라고나 할까~@자~ 어머니의 손맛!@엄마손 삼계탕을 먹으면@힘이 펄펄! 최고의 컨디션!",12,"저도 먹구싶네여~"


	elseif req == 12 then
		return 2,0,"먹구싶다고요~?@음.. 그렇게 손쉽게 만들 수@있는 음식이 아니에요~ @[인삼 10개]@[찹쌀 10개]@[닭고기 10개]@이렇게 요리 재료를 모아오면@맛깔나는 엄마손 삼계탕을@만들어 드릴께요~",22,"어디서 구하나요?"


	elseif req == 22 then
		return 2,0,"음.. 들리는 소문에 의하면..@[인삼]과[찹쌀]은 식물 몬스터,@[닭고기]는 새 몬스터에게서@나온다고 하던데..@뭐~ 열심히 파이팅!",32,"넵~ 당장 구해오죠~"


	elseif req == 32 then
		AddSwitchCount(cnum, 415, 1)



	elseif req == 52 then
		return 2,0,"자~! 완성이요!@힘이 펄펄! 최고의 컨디션!@[엄마손 삼계탕] 대령이요~@맛있게 드시고, 광렙하세요~ ^^",62,"넵~ 우걱우걱~"


	elseif req == 62 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[엄마손 삼계탕]을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 8099, -10)
			AddItemCount(cnum, 8214, -10)
			AddItemCount(cnum, 8100, -10)
			AddItemCount(cnum, 8215, 1)

		end

	else
		return 0

	end
end


