function NPC_QUEST_862(cnum,reqNumber) -- 소름오싹뱌암동굴 퇴장 아르젬

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 527) < 1 then
			return 2,0,"자! 자! 보물을 가져와! 온전하게 그대로 가져와! 내..내...가! 가고 싶지만!! 부탁해!!?",2,"네~!"
		else 
			return 3,0,"나가려구? 어서 나가자! 뱌암이 득실득실 해! 우아악!",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 527, 1)

	elseif req == 3 then

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 196, 101)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 197, 101)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 198, 101)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 199, 101)
		end
	end
end

function NPC_QUEST_863(cnum,reqNumber) -- 소름오싹뱌암동굴 퇴장 아르젬

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 527) < 1 then
			return 2,0,"자! 자! 보물을 가져와! 온전하게 그대로 가져와! 내..내...가! 가고 싶지만!! 부탁해!!?",2,"네~!"
		else 
			return 3,0,"나가려구? 어서 나가자! 뱌암이 득실득실 해! 우아악!",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 527, 1)

	elseif req == 3 then

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 196, 101)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 197, 101)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 198, 101)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 199, 101)
		end
	end
end

function NPC_QUEST_864(cnum,reqNumber) -- 소름오싹뱌암동굴 퇴장 아르젬

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 527) < 1 then
			return 2,0,"자! 자! 보물을 가져와! 온전하게 그대로 가져와! 내..내...가! 가고 싶지만!! 부탁해!!?",2,"네~!"
		else 
			return 3,0,"나가려구? 어서 나가자! 뱌암이 득실득실 해! 우아악!",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 527, 1)

	elseif req == 3 then

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 196, 101)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 197, 101)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 198, 101)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 199, 101)
		end
	end
end

function NPC_QUEST_865(cnum,reqNumber) -- 소름오싹뱌암동굴 퇴장 아르젬

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 527) < 1 then
			return 2,0,"자! 자! 보물을 가져와! 온전하게 그대로 가져와! 내..내...가! 가고 싶지만!! 부탁해!!?",2,"네~!"
		else 
			return 3,0,"나가려구? 어서 나가자! 뱌암이 득실득실 해! 우아악!",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 527, 1)

	elseif req == 3 then

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 196, 101)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 197, 101)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 198, 101)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 199, 101)
		end
	end
end

