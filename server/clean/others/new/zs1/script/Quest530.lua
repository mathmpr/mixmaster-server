function NPC_QUEST_350(cnum, reqNumber)


	req = reqNumber
	Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 709) < 1 then
   		return 2,0,"안녕!? 안녕!?@@[오로라월드] 창립 30주년을 기념으로@[오로라 30주년] 기념마크를 주고있어!@마크를 사용해서 [오로라 30주년]을 같이 축하해줄래?",2,"[오로라30주년 기념 마크]받기"
   	else
			return 1,0,"이미 아이템을 받았었구나? 안타깝지만 한 번 밖에 줄 수가 없어!"
		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			SetSwitchCount(cnum, 709, 1)
			AddItemCount(cnum, 8833, 1)
			return 1,0,"자~여기! 마크를 사용해서@[오로라 30주년]을 같이 축하해 줘~!"
		end
	end
end
