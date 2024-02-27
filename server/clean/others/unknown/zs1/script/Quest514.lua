function NPC_QUEST_689(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 413) < 1 then 
			return 2,0,"5월 4일 ~ 6일 발생한@접속 문제에 대한 보상입니다.@시간충전 모래시계(4일) 아이템과@프리미엄 마크(4시간) 아이템을@드립니다.@인벤토리 공간을 반드시 비워둔 후@받으시기 바랍니다.",2,"네!"

		else
			return 1,0,"보상 아이템이 이미 지급되었습니다."


		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 빈 공간이 부족합니다. 2칸 이상 여유 공간이 필요합니다."


		elseif GetSwitchCount(cnum, 413) > 0 then
			return 1,0,"보상 아이템이 이미 지급되었습니다." 


		else
			AddItemCount(cnum, 156, 1)
			AddItemCount(cnum, 157, 1)
			AddSwitchCount(cnum, 413, 1)

		end

	else
		return 0


	end
end
		






