function NPC_QUEST_270(cnum,reqNumber) -- 炔陛货狼 厚剐(棵凋)--庆福技官 涝备
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1004) < 1 then
			return 2,0,"金梳子？噢，对不起，它只能用于人类，不能用于树。但是我会告诉你如何清楚树的记忆，在此之前你必须得为我做一件事情。很久以前马吉利塔的国王巧布养了一只叫“艾瑞”的鸟，这只鸟很神奇，当有怪物入侵时它就会发出警报的声音，它挽救了许多无辜的生命，我们都以它为自豪。", 2, "好吧，请继续"
		else
			if GetSwitchCount(cnum, 13) < 1 then
				return 2,0,"你找到了艾瑞的雕像了吗？", 13, "是的"
			else
				return 1,0,"清除生命之树的记忆还需要找席拉获得三种眼泪结晶，到贝赫鲁(X:75 Y:60)找席拉"
			end
		end
	 elseif req == 2 then
		return 2,0,"最后，被怪物们知道了，把它变成了一尊黄金鸟雕像，抓住黑尔斯波入口的莫诺阿伊就能得到雕像黄金鸟雕像", 12, "哦，真遗憾，我会帮你的"
	 elseif req == 12 then
		StartQuest(cnum, 5)
		AddSwitchCount(cnum, 1004, 1) 
		return 1,0,"我会等着你的，多谢"
	 elseif req == 13 then
		if GetSwitchCount(cnum,12) == 0 then
			return 1,0,"*** 在继续任务之前，需要到鲁狄斯南部找艾娃（X：96，Y：191）"
		end
		if GetSwitchCount(cnum,13) > 0 then
			return 1,0,"哦！真棒！这是艾瑞的雕像，非常感谢您，这是给你的礼物[FP:5点]"
		end
		
		if GetItemCount(cnum,363,0) == 0 then
			return 1,0,"黄金鸟雕像找到了吗？"
		end
		--AddHeroFreePoint(cnum,5)  -- 橇府器牢飘 5痢 眠啊
		AddSwitchCount(cnum,13,1) -- 炔陛货 炼阿惑
		EndQuest(cnum, 5)
		return 1,0,"哦！很漂亮的雕像，栩栩如生，跟真的一样。我很高兴，它离开了邪恶的怪物。清除生命之树的记忆还需要贝赫鲁席拉(X:75 Y:60)的三种眼泪结晶"
	end
	return 0
 end