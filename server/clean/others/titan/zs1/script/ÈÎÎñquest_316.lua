function NPC_QUEST_316(cnum, reqNumber)

req = reqNumber

id1= 174
id2= 175
id3= 176
id4= 177

name1 = "马吉利塔过去的地图"
name2 = "马吉利塔现在的地图"
name3 = "马吉利塔未来的地图"
name4 = "马吉利塔混沌的地图"

targetitem = 170 -- 况橇傅

resultmsg=nil
        count1 = GetItemCount(cnum,id1,0)
        if count1 == 0 then
            resultmsg = name1
        end
        count2 = GetItemCount(cnum,id2,0)
        if count2 == 0 then
            if resultmsg == nil then
                resultmsg = name2
            else
                resultmsg = resultmsg..","..name2
            end
        end
        count3 = GetItemCount(cnum,id3,0)
        if count3 == 0 then
            if resultmsg == nil then
                resultmsg = name3
            else
                resultmsg = resultmsg..","..name3
            end
        end
        count4 = GetItemCount(cnum,id4,0)
        if count4 == 0 then
            if resultmsg == nil then
                resultmsg = name4
            else
                resultmsg = resultmsg..","..name4
            end
        end
	if req == 1 then
		if GetSwitchCount(cnum, 1026) < 1 then
			if GetSwitchCount(cnum, 1014) < 1 then
				return 2,0,"",2,"我会带给你的"
			else
				return 2,0,"你找到了四张地图了吗？", 12, "是的"
			end
		else
			return 3,0,"我会送你到其他城市，你想要去的吗？", 3, "去 马吉利塔", 4, "去 贝赫鲁"
		end
	elseif req == 2 then
		StartQuest(cnum, 102)
		AddSwitchCount(cnum, 1014, 1)				
		return 1,0,"我会等着你的"
	elseif req == 12 then
	        if resultmsg ~= nil then
	        	return 1,0, "你有没有" .. resultmsg
	        end
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		AddItemCount(cnum,targetitem,1)
		AddSwitchCount(cnum, 2, 1)
		AddSwitchCount(cnum, 1026, 1)
		EndQuest(cnum, 102)
		return 1,0,"恭喜！你已经证明了你有能力，你是一个合格的猎人啦。"
    elseif req == 3 then
		if GetItemCount(cnum,targetitem,0) > 0  then 
			--AddSwitchCount(cnum,2,1)
			MoveZone(cnum,57,101)
			return 0
		else
			return 2,0,"你想放弃吗？", 5, "这个任务对我来说是有点困难的。"
		end
    elseif req == 4 then
		if GetItemCount(cnum,targetitem,0) > 0  then 
		--	AddSwitchCount(cnum,2,1)
			MoveZone(cnum,60,101)
			return 0
		else
			return 2,0,"你想放弃吗？", 6, "这个任务对我来说是有点困难的。"
		end
    elseif req == 5 then
		return 2,0,"如果你放弃了，你就不能再回来这里了。真的要放弃吗？", 7, "是的"
    elseif req == 6 then
		return 2,0,"如果你放弃了，你就不能再回来这里了。真的要放弃吗？", 8, "是的"
    elseif req == 7 then
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		AddSwitchCount(cnum,2,1)
		MoveZone(cnum,57,101)
		return 0
    elseif req == 8 then
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		AddSwitchCount(cnum,2,1)
	    MoveZone(cnum,60,101)
		return 0
	end 				
end