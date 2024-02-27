function NPC_QUEST_266(cnum,reqNumber) -- 玫惑狼 家府(风叼胶 巢何狼 局衬)

local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum ,1003) < 1 then
			return 2,0,"我可以用金梳子创造优美动听的音乐，即便是情绪非常不稳定的人听到我的音乐也会安静下来的", 2, "金梳子？"
		else
			if GetSwitchCount(cnum, 12) < 1 then
				return 2,0,"你带来口琴了？", 13, "是的"
			else
				return 1,0,"到黑尔斯波入口去找奥丁(X：195，Y：76)，他会告诉你如何用金梳子清除记忆"			
			end
 		end
	elseif req == 2 then
		return 2,0,"是占卜师阿娜斯告诉你我在这里的吗？我听到那个消息了，金梳子是可以清除记忆的，但是金梳子对我很重要，我要用来创作音乐。而我知道金梳子有他更大的用处——有利于世界。所以请你给我个口琴用来交换吧", 12, "我会找到一个口琴给你的"
	elseif req == 12 then
		StartQuest(cnum, 4)
		AddSwitchCount(cnum, 1003, 1)
		return 1,0,"我听说憨豆龙有口琴，它的口琴声音是最好的，你只要能打败马吉利塔西海岸的憨豆龙就能得到口琴"
	elseif req == 13 then
		if GetSwitchCount(cnum,11) == 0 then
			return 1,0,"*** 在继续任务之前,你必须到马吉利塔 (X:100,Y:100)找占卜师阿娜斯"
		end
		if GetSwitchCount(cnum,12) > 1 then
			return 1,0,"请给我口琴啊"
		end
		
		if GetItemCount(cnum,362,0) < 1 then
			return 1,0,"我现在还不能给你金梳子，因为你没有带来我要的口琴"
		end
		AddItemCount(cnum,362,-1) -- 窍葛聪墨 昏力	
		AddItemCount(cnum,361, 1) -- 陛 壶 裙垫
		AddSwitchCount(cnum,12,1) -- Switch#10
		--AddMoney(cnum, 3000) -- 3000GP 眠啊
		EndQuest(cnum, 4)
		return 1,0,"哇，这就是那个能产生优美动听音乐的口琴吗？我以前从未见到过。这是我给你的奖励。到黑尔斯波入口去找奥丁，他会告诉你金梳子的用法的"
	end	
	return 0
 end
