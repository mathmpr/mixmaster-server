function NPC_QUEST_221(cnum, reqNumber)

local resultmsg, itemname1, itemname2, itemname3, id1, id2, id3, count1, count2, count3

itemname1 = "巧夫的爱情"
itemname2 = "巧夫的智慧"
itemname3 = "巧夫的勇气"

id1 = 171
id2 = 172
id3 = 173

count1 = GetItemCount(cnum, id1,0)
count2 = GetItemCount(cnum, id2,0)
count3 = GetItemCount(cnum, id3,0)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1013) < 1 then
			return 2,0,"",2,"我一定要得到它！"
		else
			return 2,0,"你找了需要的东西了吗？", 12, "是的"
		end
	elseif req == 2 then
		AddSwitchCount(cnum, 1013, 1)
		StartQuest(cnum, 101)
		return 1,0,"怪物要突破封印了，快点！"
	elseif req == 12 then
		if GetSwitchCount(cnum, 2) > 0 then
			return 1,0,"我很抱歉，但是这是唯一的机会是，虽然很危险。"
		else
			if count1 <= 0 then
				return 1,0,"你有没有"..itemname1..""
			elseif count2 <= 0 then
				return 1,0,"你有没有"..itemname2..""
			elseif count3 <= 0 then
				return 1,0,"你有没有"..itemname3..""
			else
				AddItemCount(cnum, id1, -count1)
				AddItemCount(cnum, id2, -count2)
				AddItemCount(cnum, id3, -count3)
				MoveZone(cnum, 69, 101)
				EndQuest(cnum, 101)
				return 0
			end
		end
	end
end


function NPC_QUEST_222(cnum, reqNumber)

local resultmsg, itemname1, itemname2, itemname3, id1, id2, id3, count1, count2, count3

itemname1 = "巧夫的爱情"
itemname2 = "巧夫的智慧"
itemname3 = "巧夫的勇气"

id1 = 171
id2 = 172
id3 = 173

count1 = GetItemCount(cnum, id1,0)
count2 = GetItemCount(cnum, id2,0)
count3 = GetItemCount(cnum, id3,0)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1013) < 1 then
			return 2,0,"",2,"我一定要得到它！"
		else
			return 2,0,"你明白了吗？", 12, "是的"
		end
	elseif req == 2 then
		AddSwitchCount(cnum, 1013, 1)
		StartQuest(cnum, 101)
		return 1,0,"怪物要突破封印了，快点！"
	elseif req == 12 then
		if GetSwitchCount(cnum, 2) > 0 then
			return 1,0,"我很抱歉，但是这是唯一的机会是，虽然很危险。"
		else
			if count1 <= 0 then
				return 1,0,"你有没有"..itemname1..""
			elseif count2 <= 0 then
				return 1,0,"你有没有"..itemname2..""
			elseif count3 <= 0 then
				return 1,0,"你有没有"..itemname3..""
			else
				AddItemCount(cnum, id1, -count1)
				AddItemCount(cnum, id2, -count2)
				AddItemCount(cnum, id3, -count3)
				MoveZone(cnum, 69, 101)
				EndQuest(cnum, 101)
				return 0
			end
		end
	end
end