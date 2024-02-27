 function NPC_QUEST_319(cnum,reqNumber) -- NPC且府(墨坷胶 钮宏)-费傅 内绢令 鞘靛
	local req, id1, count1

	id1 = 367

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1006) < 1 then
			return 2,0,"我知道你想要什么东西，你想得到席拉的朱黄色眼泪结晶，但是只有一种方式使他流泪，那就是她的全家福。可惜早已经丢失了.", 2, "全家福的信息"
		else
			if GetSwitchCount(cnum, 16) < 1 then
				return 2,0,"你带来了精灵的手套了吗？", 3, "是的"
			else
				return 1,0,"你现在需要到贝赫鲁南部去找高登(X:199 Y:122)"			
			end
		end	
	 elseif req == 2 then
		if GetSwitchCount(cnum,15) == 0 then
			return 1,0,"你应该到贝赫鲁找席拉(X:75 Y:60)"
		end
		return 2,0,"卡奥斯宝盒是一个神奇的宝盒，它能帮你找到丢失的任何东西，但是如果你需要我的宝盒的话你必须用精灵的手套来跟我交换，抓住罗林克斯的恶灵就能得到精灵的手套", 12, "我会找到精灵的手套的"
	 elseif req == 12 then
		StartQuest(cnum, 7)
		AddSwitchCount(cnum, 1006, 1)
		return 1,0,"要得到精灵的手套，必须打败恶灵"
	 elseif req == 3 then
		count1 = GetItemCount(cnum,id1,0)
		if GetSwitchCount(cnum,16) > 0 then
			return 1,0,"我没有卡奥斯宝盒"
		end
		if GetSwitchCount(cnum,15) == 0 then
			return 1,0,"*** 继续任务之前, 你应该到贝赫鲁(X:75 Y:60)找席拉"
		end
		if GetItemCount(cnum,367,0) == 0 then -- 夸沥狼 厘癌(367)
			return 1,0,"我没有看到精灵的手套~"
		end
		AddSwitchCount(cnum,16,1)
		AddItemCount(cnum,id1,-count1) --夸沥狼 厘癌
		AddItemCount(cnum,366,1) --墨坷胶 钮宏
		EndQuest(cnum, 7)
		return 1,0,"你带来了精灵手套，我给你卡奥斯宝盒。你如果想知道其他消息，需要贝到赫鲁南部去找高登(X:199 Y:122)"
	end
	return 0
end
