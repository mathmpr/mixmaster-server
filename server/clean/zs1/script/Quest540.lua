function NPC_QUEST_744(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 511) < 1 then
			return 2,0,"무더운 여름이 또 찾아왔네요!!@제가 비록 수습 요리사지만 삼계탕 정도는 쉽게 만들 수 있습니다.@여러분에게 삼계탕을 대접드리고 싶어서 왔습니다!@혹시..삼계탕을 모르는건 아니죠?",2,"삼계탕..알아요!"
		else
			if GetSwitchCount(cnum, 512) < 1 then
				if GetItemCount(cnum, 8489, 0) > 4 and GetItemCount(cnum, 8490, 0) > 4 and GetItemCount(cnum, 8491, 0) > 4 then
					return 2,0,"좋아요!! 재료를 다 구해오셨군요!@잠시만 기다려보세요!@레시피를 우선 다시 확인하고...!",52,"어떻게 잘 됐나요?"
				else
					return 2,0,"밸러님! 아직 재료가 모자르네요~@[인삼 5개]@[찹쌀 5개]@[닭고기 5개]@이렇게 재료를 모아오세요~",42,"네~다시 올게요~!"
				end
			else
				return 2,0,"밸러님 또 삼계탕을 만들어 드릴까요?",42,"네 한번더!!"
			end

		end

	elseif req == 2 then
		return 2,0,"역시 알고 계시군요!@여름날 보양식으로는 최고죠!@저는 삼계탕을 맛있게 만들 수 있어요! 밸러님도 삼계탕 드셔보실래요?",12,"네~!"

	elseif req == 12 then
		return 2,0,"드시고 싶으실 줄 알았어요!!@음..그럼 어디..레시피를 좀 보고....@@[인삼 5개]@[찹쌀 5개]@[닭고기 5개]@@이렇게 삼계탕 재료를 모아오시면@제가 한번 열심히 만들어 볼게요!!",22,"재료는 어디서 구하나요?"

	elseif req == 22 then
		return 2,0,"아마도..@@[인삼]과[찹쌀]은 식물 몬스터@[닭고기]는 새 몬스터에게서@@구할 수 있을거에요!!@그럼 삼계탕 재료를 구해오세요!",32,"네~구해올게요~!"

	elseif req == 32 then
		StartQuest(cnum, 181)
		SetSwitchCount(cnum, 511, 1)

	elseif req == 42 then
		SetSwitchCount(cnum, 512, 0)
		return 2,0,"좋아요!@[인삼]과[찹쌀]은 식물 몬스터,@[닭고기]는 새 몬스터에게서@나오는거 잊지 않았죠?",32,"네~구해올게요!~"

	elseif req == 52 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[삼계탕]을 넣을 공간이 부족합니다."

		else
			random = SetRandom(cnum, 1, 100)

			if random >= 1 and random <= 60 then	-- 원기회복 삼계탕 60%
				EndQuest(cnum, 181)
				AddItemCount(cnum, 8489, -5)
				AddItemCount(cnum, 8490, -5)
				AddItemCount(cnum, 8491, -5)
				AddItemCount(cnum, 8492, 1)
				SetSwitchCount(cnum, 512, 1)
				return 1,0,"삼계탕을 만드는데 성공했습니다!@맛있게 드세요!!"

			elseif  random >= 61 and random <= 90 then   -- 힘이불끈 삼계탕 30%
				EndQuest(cnum, 181)
				AddItemCount(cnum, 8489, -5)
				AddItemCount(cnum, 8490, -5)
				AddItemCount(cnum, 8491, -5)
				AddItemCount(cnum, 8493, 1)
				SetSwitchCount(cnum, 512, 1)
				return 1,0,"맛있는 삼계탕을 만드는데 성공했습니다!@맛있게 드세요!!"

			elseif  random >= 91 and random <= 100 then	-- 힘이펄펄 삼계탕 10%
				EndQuest(cnum, 181)
				AddItemCount(cnum, 8489, -5)
				AddItemCount(cnum, 8490, -5)
				AddItemCount(cnum, 8491, -5)
				AddItemCount(cnum, 8494, 1)
				SetSwitchCount(cnum, 512, 1)
				return 1,0,"이야~!정말 제가 봐도 훌륭한 삼계탕을 만드는데 성공했습니다!@맛있게 드세요!!"
			else
				return 0
			end

		end

	else
		return 0

	end
end
