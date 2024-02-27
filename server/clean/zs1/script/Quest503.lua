function NPC_QUEST_631(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 380) < 1 then
			return 2,0,"묻지도않고 따지지도않고 보상해드립니다.",2,"보상품 받기"

		else
			return 1,0,"이미 점검 보상 아이템을 지급 받으셨습니다."


		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 빈 공간이 없어 보상품을 지급해 드릴 수 없습니다. 1칸 이상 빈 공간을 만들어 오세요"

		else
			AddSwitchCount(cnum, 380, 1)
			AddItemCount(cnum, 8179, 1)
		end


	else
		return 0

	end
end



function NPC_QUEST_632(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 380) < 1 then
			return 2,0,"묻지도않고 따지지도않고 보상해드립니다.",2,"보상품 받기"

		else
			return 1,0,"이미 점검 보상 아이템을 지급 받으셨습니다."


		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 빈 공간이 없어 보상품을 지급해 드릴 수 없습니다. 1칸 이상 빈 공간을 만들어 오세요"

		else
			AddSwitchCount(cnum, 380, 1)
			AddItemCount(cnum, 8179, 1)
		end


	else
		return 0

	end
end



function NPC_QUEST_633(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 380) < 1 then
			return 2,0,"묻지도않고 따지지도않고 보상해드립니다.",2,"보상품 받기"

		else
			return 1,0,"이미 점검 보상 아이템을 지급 받으셨습니다."


		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 빈 공간이 없어 보상품을 지급해 드릴 수 없습니다. 1칸 이상 빈 공간을 만들어 오세요"

		else
			AddSwitchCount(cnum, 380, 1)
			AddItemCount(cnum, 8179, 1)
		end


	else
		return 0

	end
end



function NPC_QUEST_634(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 380) < 1 then
			return 2,0,"묻지도않고 따지지도않고 보상해드립니다.",2,"보상품 받기"

		else
			return 1,0,"이미 점검 보상 아이템을 지급 받으셨습니다."


		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 빈 공간이 없어 보상품을 지급해 드릴 수 없습니다. 1칸 이상 빈 공간을 만들어 오세요"

		else
			AddSwitchCount(cnum, 380, 1)
			AddItemCount(cnum, 8179, 1)
		end


	else
		return 0

	end
end



function NPC_QUEST_635(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 380) < 1 then
			return 2,0,"묻지도않고 따지지도않고 보상해드립니다.",2,"보상품 받기"

		else
			return 1,0,"이미 점검 보상 아이템을 지급 받으셨습니다."


		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 빈 공간이 없어 보상품을 지급해 드릴 수 없습니다. 1칸 이상 빈 공간을 만들어 오세요"

		else
			AddSwitchCount(cnum, 380, 1)
			AddItemCount(cnum, 8179, 1)
		end


	else
		return 0

	end
end




function NPC_QUEST_636(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 380) < 1 then
			return 2,0,"묻지도않고 따지지도않고 보상해드립니다.",2,"보상품 받기"

		else
			return 1,0,"이미 점검 보상 아이템을 지급 받으셨습니다."


		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 빈 공간이 없어 보상품을 지급해 드릴 수 없습니다. 1칸 이상 빈 공간을 만들어 오세요"

		else
			AddSwitchCount(cnum, 380, 1)
			AddItemCount(cnum, 8179, 1)
		end


	else
		return 0

	end
end