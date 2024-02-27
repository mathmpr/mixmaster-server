function NPC_QUEST_210(cnum,reqNumber)

local req, id1, id2, id3,count1,count2,count3
local req = reqNumber
local resultmsg,name1,name2,name3
id1=354
id2=355
id3=356
name1="声音的起源"
name2="声音的传播"
name3="声音的消失"


count1 = GetItemCount(cnum,354,0)

if count1 == 0 then
	resultmsg = name1
end

count2 = GetItemCount(cnum,355,0)

if count2 == 0 then
	if resultmsg == nil then
		resultmsg = name2
	else
		resultmsg = resultmsg..","..name2
	end
end

count3 = GetItemCount(cnum, 356,0)

if count3 == 0 then
	if resultmsg == nil then
		resultmsg = name3
	else
		resultmsg = resultmsg..","..name3
	end
end

	if req == 1 then
		if GetSwitchCount(cnum, 1000) < 1 then
        return 2, 0, "怪物们通过生命之树的能量使它们的种族日益壮大，如果我们不去阻止那后果将不堪设想，你们谁能解决这个问题吗？", 2, "我来帮你！"
		else
			if GetSwitchCount(cnum, 7) < 1 then
          return 2, 0, "你必须收集全所有的珠子，如果你忘记了该做的任务，可以点击右下角“任务”按钮查看", 12, "好的"
			else
            return 1, 0, "你已经找到所有的珠子，现在去找米格瑞塔东海岸的生命之树 (X: 125, Y:87)。"
			end
		end
	 elseif req == 2 then
      return 2, 0, "别开玩笑了，就你？好吧，我给你讲个故事，很久以前我在旅行的时候偶然发现了一本名叫《成长的秘密》的书。当我在阅读这本书的时候，我发现了一个惊人的秘密。。。", 3, "什么秘密？"
	 elseif req == 3 then
      return 2, 0, "一直以来怪物们都在用自己特殊的方法精心的养育生命之树，而借助生命之树的能量，任何受伤的怪物只要回到生命之树周围都能很快的复原，并且还会变的更加强大。", 4, "哇！太可怕了！"
	 elseif req == 4 then
      return 2, 0, "没错! 如果我们不阻止怪物种族日益壮大，那么我们将会被怪物消灭。所以我们需要跟生命之树对话，要求它终止帮助怪物。你能帮我吗？", 5, "我会帮你的！"
	 elseif req == 5 then
      return 2, 0, "这么勇敢？那好吧。但是要和生命之树对话，我们必须要得有几样东西哦，否则它不会搭理你的。你需要收集3颗珠子，当你收集到了再来找我，我会告诉你下面怎么做。", 6, "好的，我现在就去"
	 elseif req == 6 then
		StartQuest(cnum, 1)
		AddSwitchCount(cnum, 1000, 1)
      return 1, 0, "太好了，我忘了说了，你抓住马吉利塔北部的天使蜜蜂、刺球、尖甲虫的话就能得到需要的3颗珠子"
 	 elseif req == 12 then
		if resultmsg ~= nil then
        return 1, 0, "你有没有物品 " .. resultmsg .. ""
		else
			if GetSwitchCount(cnum, 7) < 1 then
				AddSwitchCount(cnum, 7, 1)
				AddSwitchCount(cnum, 8, 1)
				--AddMoney(cnum, 3000)
				EndQuest(cnum, 1)
			end
        return 1, 0, "天哪，你太棒了！你已经收集了所有的珠子。许多人都不能做到这一点。现在，我终于可以相信你了。去米格瑞塔东海岸找生命之树 (X: 125, Y:87)吧。有了三颗珠子，你就可以和它对话了。作为对你不信任的歉意，我给你3000GP作为补偿"
		end
	 else
		return 0
	end
end