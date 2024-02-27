function NPC_QUEST_756(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"[인벤토리]가 모자랍니다. 최소한 3칸 이상 [인벤토리]가 비워져 있어야 합니다."
		else
			if GetSwitchCount(cnum, 521) > 0 then
				if GetSwitchCount(cnum, 528) < 1 then
					return 2,0,"한번은 물에 젖은 듯 하지만 지금은 햇볕에 바짝 말랐다.",2,"줍는다"
				else
					return 1,0,"이미 바짝마른 나뭇가지가 있기 때문에 필요없다. 바짝마른 나뭇가지를 아르젬에게 가져다 주자!"
				end
			else	
				return 1,0,"평범한 나뭇가지이다."
			end
		end				

	elseif req == 2 then
		SetSwitchCount(cnum, 528, 1)
		AddItemCount(cnum, 8502, 1)
		return 1,0,"[바짝마른 나뭇가지]를 습득하였다."

	end


end	

function NPC_QUEST_768(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"[인벤토리]가 모자랍니다. 최소한 3칸 이상 [인벤토리]가 비워져 있어야 합니다."
		else
			if GetSwitchCount(cnum, 521) > 0 then
				if GetSwitchCount(cnum, 528) < 1 then
					return 2,0,"한번은 물에 젖은 듯 하지만 지금은 햇볕에 바짝 말랐다.",2,"줍는다"
				else
					return 1,0,"이미 바짝마른 나뭇가지가 있기 때문에 필요없다. 바짝마른 나뭇가지를 아르젬에게 가져다 주자!"
				end
			else	
				return 1,0,"평범한 나뭇가지이다."
			end
		end				

	elseif req == 2 then
		SetSwitchCount(cnum, 528, 1)
		AddItemCount(cnum, 8502, 1)
		return 1,0,"[바짝마른 나뭇가지]를 습득하였다."

	end

end

function NPC_QUEST_780(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"[인벤토리]가 모자랍니다. 최소한 3칸 이상 [인벤토리]가 비워져 있어야 합니다."
		else
			if GetSwitchCount(cnum, 521) > 0 then
				if GetSwitchCount(cnum, 528) < 1 then
					return 2,0,"한번은 물에 젖은 듯 하지만 지금은 햇볕에 바짝 말랐다.",2,"줍는다"
				else
					return 1,0,"이미 바짝마른 나뭇가지가 있기 때문에 필요없다. 바짝마른 나뭇가지를 아르젬에게 가져다 주자!"
				end
			else	
				return 1,0,"평범한 나뭇가지이다."
			end
		end				

	elseif req == 2 then
		SetSwitchCount(cnum, 528, 1)
		AddItemCount(cnum, 8502, 1)
		return 1,0,"[바짝마른 나뭇가지]를 습득하였다."

	end
end

function NPC_QUEST_792(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"[인벤토리]가 모자랍니다. 최소한 3칸 이상 [인벤토리]가 비워져 있어야 합니다."
		else
			if GetSwitchCount(cnum, 521) > 0 then
				if GetSwitchCount(cnum, 528) < 1 then
					return 2,0,"한번은 물에 젖은 듯 하지만 지금은 햇볕에 바짝 말랐다.",2,"줍는다"
				else
					return 1,0,"이미 바짝마른 나뭇가지가 있기 때문에 필요없다. 바짝마른 나뭇가지를 아르젬에게 가져다 주자!"
				end
			else	
				return 1,0,"평범한 나뭇가지이다."
			end
		end				

	elseif req == 2 then
		SetSwitchCount(cnum, 528, 1)
		AddItemCount(cnum, 8502, 1)
		return 1,0,"[바짝마른 나뭇가지]를 습득하였다."

	end

end

-----------------------------------------------------------------------


function NPC_QUEST_745(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end


function NPC_QUEST_746(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end

function NPC_QUEST_747(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end

function NPC_QUEST_748(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end

function NPC_QUEST_749(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end

function NPC_QUEST_750(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end

function NPC_QUEST_751(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end


function NPC_QUEST_752(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end

function NPC_QUEST_753(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end

function NPC_QUEST_754(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."

	end
end

function NPC_QUEST_755(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."

	end
end

--------------------------------------------------------------------------------------------------------------------
function NPC_QUEST_757(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."

	end
end

function NPC_QUEST_758(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_759(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_760(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_761(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_762(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_763(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_764(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_765(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_766(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_767(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_769(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_770(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_771(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_772(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_773(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_774(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_775(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_776(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_777(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_778(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_779(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_781(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_782(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_783(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_784(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_785(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_786(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_787(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_788(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_789(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_790(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end
function NPC_QUEST_791(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"물에 젖은 평범한 나뭇가지이다."
	end
end

--------------------------------------------------------------------------------------------------------
function NPC_QUEST_793(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_794(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_795(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_796(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_797(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_798(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_799(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_800(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_801(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_802(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_803(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_804(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_805(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_806(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_807(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_808(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_809(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_810(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_811(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_812(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_813(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_814(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_815(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_816(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_817(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_818(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_819(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_820(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_821(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_822(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_823(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_824(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_825(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_826(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_827(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_828(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_829(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_830(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_831(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_832(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_833(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_834(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_835(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_836(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_837(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_838(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_839(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end
function NPC_QUEST_840(cnum,reqNumber) -- 믹마무인랜드 나뭇가지

req = reqNumber

	if req == 1 then
		return 1,0,"살펴 볼 필요가 없을 것 같다."
	end
end


