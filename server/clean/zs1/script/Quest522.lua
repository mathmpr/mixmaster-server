function NPC_QUEST_343(cnum,reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 445) < 1 then

			if GetSwitchCount(cnum, 444) < 1 then

				if GetSwitchCount(cnum, 443) < 1 then

					if GetSwitchCount(cnum, 442) < 1 then

						if GetSwitchCount(cnum, 441) < 1 then

							if GetSwitchCount(cnum, 440) < 1 then
								return 3,0,"이거 참..큰일이구만 이번 크리스마스에도 세상 모든 어린이들에게 선물을 주어야 하는데..... 나의 루돌프가 많이 허약해서 선물을 싣고 달릴 수가 없다네.. 자네가 우리 루돌프를 튼튼하게 키워 줄 텐가? 내 그럼 멋진 선물을 주겠네!",2,"네, 제가 키워드리겠습니다.",4,"관심 없습니다."
							else
								return 2,0,"오오..자네 왔는가? 어서 우리 루돌프를 보여주게 벌써 레벨 15가 되었는가? 그렇다면 선물을 주겠네~!",3,"아기 루돌프를 보여준다."
							end

						else
							return 2,0,"오오..자네 왔는가? 어서 우리 루돌프를 보여주게 벌써 레벨 30이 되었는가? 그렇다면 선물을 주겠네~!",5,"꼬마 루돌프를 보여준다. "
						end

					else
						return 2,0,"오오..자네 왔는가? 어서 우리 루돌프를 보여주게 벌써 레벨 45가 되었는가? 그렇다면 선물을 주겠네~!",6,"튼튼 루돌프를 보여준다."
					end

				else
					return 2,0,"오오..자네 왔는가? 어서 우리 루돌프를 보여주게 벌써 레벨 60이 되었는가? 그렇다면 선물을 주겠네~!",7,"덩치 루돌프를 보여준다."
				end

			else
				return 2,0,"오오..자네 왔는가? 어서 우리 루돌프를 보여주게 벌써 레벨 80이 되었는가? 그렇다면 좋은 선물을 주겠네~!",8,"슈퍼 루돌프를 보여준다. "
			end

		else
			return 1,0,"메~리~크리스마스~! 자네 덕분에 루돌프가 아주 튼튼해졌구만~! 자네가 루돌프를 아껴주니 정말 고맙네~! 앞으로도 잘 부탁하네~! 메~리~크리스마스~!"
		end


	elseif req == 2 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"아니..자네 헨치 인벤토리 창이 가득 찼구만…루돌프를 넣을 공간이 없으니 헨치 인벤토리 창을 1칸 이상 비우고 다시 와주게~!"
		else
		AddSwitchCount(cnum, 440, 1)
		AddHenchAndState(cnum, 562, 0)
			return 1,0,"고맙네. 나도 나이가 들어서 헨치를 키우기 힘들구만.@여기 루돌프를 데려가게.@루돌프의 레벨을 15까지만 키워오면 된다네.@그럼 부탁하네.@메리크리스마스~!"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"아이템 인벤토리가 부족하네 인벤토리를 1칸 이상 비우고 선물을 받아가게나~!"
		elseif GetHench(cnum, 1, 562, 15) > 0 or GetHench(cnum, 0, 562, 15) > 0 then
			AddSwitchCount(cnum, 441, 1)
			AddHench(cnum, 562 ,-1)
			AddHenchAndState(cnum, 563, 0)
			AddItemCount(cnum, 8243, 1)
			return 2,0,"어디보자…조금 튼튼해졌구만 고맙네~! 여기 선물 받게나~! 지금도 조금은 튼튼하지만 썰매를 끌기에는 무리인 듯 하네. 더 튼튼하게 레벨 30까지 키워볼 생각은 없나? 보다 더 좋은 선물을 주겠네.",9,"더 강하게 키워오겠습니다."
		else
			return 2,0,"어디..보자…어이쿠…이 정도로 루돌프가 썰매를 끌 수 있겠는가? 안되네..더욱 훈련을 시켜주게. 아직은 너무 허약하네 레벨 15까지 키워서 다시 오게. 그럼 부탁하겠네.",9,"네, 조금만 기다려주세요."
		end

	elseif req == 4 then
		return 0

	elseif req == 5 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"아이템 인벤토리가 부족하네 인벤토리를 1칸 이상 비우고 선물을 받아가게나~!"
		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"아니..자네 헨치 인벤토리 창이 가득 찼구만…루돌프를 넣을 공간이 없으니 헨치 인벤토리 창을 1칸 이상 비우고 다시 와주게~!"
	    elseif GetHench(cnum, 1, 563, 30) > 0 or GetHench(cnum, 0, 563, 30) > 0 then
			AddSwitchCount(cnum, 442, 1)
			AddHench(cnum, 563 ,-1)
			AddHenchAndState(cnum, 564, 0)
			AddItemCount(cnum, 8244, 1)
			return 2,0,"어디보자…꽤나 튼튼해졌구만 고맙네~! 여기 선물 받게나~! 지금도 꽤나 튼튼하지만 썰매에 선물을 싣고 달릴 수 있도록 레벨 45까지 키워볼 생각은 없나? 보다 더 좋은 선물을 주겠네.",9,"더 강하게 키워오겠습니다."
		else
			return 2,0,"어이쿠…이 정도로 루돌프가 선물을 싣고 썰매를 끌 수 있겠는가? 더욱 훈련을 시켜주게. 아직은 너무 허약하네 레벨 30까지 키워서 다시 오게. 그럼 부탁하겠네.",9,"네, 조금만 기다려주세요."
		end

	elseif req == 6 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"아이템 인벤토리가 부족하네 인벤토리를 1칸 이상 비우고 선물을 받아가게나~!"
		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"아니..자네 헨치 인벤토리 창이 가득 찼구만…루돌프를 넣을 공간이 없으니 헨치 인벤토리 창을 1칸 이상 비우고 다시 와주게~!"
		elseif GetHench(cnum, 1, 564, 45) > 0 or GetHench(cnum, 0, 564, 45) > 0 then
			AddSwitchCount(cnum, 443, 1)
			AddHench(cnum, 564 ,-1)
			AddHenchAndState(cnum, 565, 0)
			AddItemCount(cnum, 8245, 1)
			return 2,0,"어디보자…조금 튼튼해졌구만 고맙네~! 여기 선물 받게나~! 지금도 조금은 튼튼하지만 썰매를 끌기에는 무리인 듯 하네. 더 튼튼하게 레벨 60까지 키워볼 생각은 없나? 보다 더 좋은 선물을 주겠네.",9,"더 강하게 키워오겠습니다."
		else
			return 2,0,"어디..보자…어이쿠…이 정도로 루돌프가 많은 선물을 싣고 썰매를 끌 수 있겠는가? 더욱 훈련을 시켜주게. 아직은 너무 허약하네 레벨 45까지 키워서 다시 오게. 그럼 부탁하겠네.",9,"네, 조금만 기다려주세요."
		end


	elseif req == 7 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"아이템 인벤토리가 부족하네 인벤토리를 1칸 이상 비우고 선물을 받아가게나~!"
		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"아니..자네 헨치 인벤토리 창이 가득 찼구만…루돌프를 넣을 공간이 없으니 헨치 인벤토리 창을 1칸 이상 비우고 다시 와주게~!"
		elseif GetHench(cnum, 1, 565, 60) > 0 or GetHench(cnum, 0, 565, 60) > 0 then
			AddSwitchCount(cnum, 444, 1)
			AddHench(cnum, 565 ,-1)
			AddHenchAndState(cnum, 566, 0)
			AddItemCount(cnum, 8246, 1)
			return 2,0,"고맙네~! 여기 선물 받게나~! 지금도 훌륭하지만 루돌프가 많은 선물을 싣고도 썰매를 쌩쌩~ 끌 수 있도록 레벨 80까지 키워볼 생각은 없나? 보다 더 좋은 선물을 주겠네.",9,"더 강하게 키워오겠습니다."
		else
			return 2,0,"어디..보자…어이쿠…이 정도로 루돌프가 많은 선물을 싣고도 썰매를 쌩쌩~ 끌 수 있겠는가? 아직은 힘들어 보이네 더욱 훈련을 시켜주게. 레벨 60까지 키워서 다시 오게. 그럼 부탁하겠네.",9,"네, 조금만 기다려주세요."
		end

	elseif req == 8 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"아이템 인벤토리가 부족하네 인벤토리를 2칸 이상 비우고 선물을 받아가게나~!"
		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"아니..자네 헨치 인벤토리 창이 가득 찼구만…루돌프를 넣을 공간이 없으니 헨치 인벤토리 창을 1칸 이상 비우고 다시 와주게~!"
		elseif GetHench(cnum, 1, 566, 80) > 0 or GetHench(cnum, 0, 566, 80) > 0 then
			AddSwitchCount(cnum, 445, 1)
			AddHench(cnum, 566 ,-1)
			AddHenchAndState(cnum, 567, 0)
			AddItemCount(cnum, 8247, 1)

			Type = GetHeroType(cnum)

			if Type == 0 then
				AddItemCount(cnum, 1230, 1)
			elseif Type == 1 then
				AddItemCount(cnum, 1231, 1)
			elseif Type == 2 then
				AddItemCount(cnum, 1232, 1)
			elseif Type == 3 then
				AddItemCount(cnum, 1233, 1)
			else
				return 0
			end

			return 2,0,"자네 정말 헨치를 키우는데 훌륭한 재능을 가지고 있구만~! 정말 이게 루돌프란 말인가? 정말 훌륭하네. 이제는 루돌프가 자네를 더 따르는 것 같으니 앞으로 자네가 잘 보살펴 주게나. 루돌프가 이렇게 건강한 것만 봐도 나는 정말 기분이 좋네. 특별히 내 산타옷과 선물도 주겠네. 정말 고맙네. 메리크리스마스~!",4,"네 고맙습니다. 메리크리스마스~!"
		else
			return 2,0,"어디..보자…어이쿠…이 정도로 루돌프가 많은 선물을 싣고도 썰매를 쌩쌩~ 끌 수 있겠는가? 아직은 힘들어 보이네 더욱 훈련을 시켜주게. 레벨 80까지 키워서 다시 오게. 그럼 부탁하겠네.",9,"네, 조금만 기다려주세요."
		end

	elseif req == 9 then
		return 1,0,"허허~고맙네~루돌프의 멋진 모습을 기대하겠네~ @메~리~크리스마스~!"

	else
		return 1,0,"오류"

	end
end
