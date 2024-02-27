  function NPC_QUEST_262(cnum,reqNumber) -- 痢己贱荤 酒匙胶
	local resultmsg,req,itemname1,itemname2,itemname3,id1,id2,id3,count1,count2,count3
	
	itemname1 ="苹果"
	itemname2 ="梨"
	itemname3 ="葡萄"

	id1=358
	id2=359
	id3=360
	
	req=reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1002) < 1 then
			return 2,0,"你把恢复之叶给生命之树了？也许是命运吧。你这样做是个很大的错误，只会使怪物变的更强大。必须要清除生命之树的记忆才有用", 2, "接下来怎么做？"
		else
			if GetSwitchCount(cnum, 11)< 1 then
				return 2,0,"你带来了所需要的水果吗？", 13, "是的"
			else
				return 1,0,"艾娃在鲁狄斯南部(X：96，Y：191)，他可以帮助你。虽然你的探索道路很漫长。但是你定会成功的"
			end
		end
	 elseif req == 2 then
		return 2,0,"要想知道如何拯救生命之树，必须向马吉利塔的神星“天鹅座”祈祷，而祈祷时必须使用苹果、梨、葡萄作为供品。猎杀马吉利塔西海岸的小丑怪和望远镜晃晃就能得到所需水果", 12, "我立即就去。"
	 elseif req == 12 then
		StartQuest(cnum, 3)
		AddSwitchCount(cnum, 1002, 1)
		return 1,0,"快点，怪物变强了"
	 elseif req == 13 then
		if GetSwitchCount(cnum,10) == 0 then
		return 1,0,"*** 在继续任务之前，需要到米格瑞塔东海岸的找生命之树 (X: 125, Y:87) "
		end
	 
 		if GetSwitchCount(cnum,11) > 0 then
		return 1,0,"请给水果"
		end
		count1 = GetItemCount(cnum,358,0)
		if count1 == 0 then
			resultmsg = itemname1
		end
		count2 = GetItemCount(cnum,359,0)
		if count2 == 0 then
			if resultmsg == nil then
				resultmsg = itemname2
			else
				resultmsg = resultmsg..","..itemname2
			end
		end	
		count3 = GetItemCount(cnum,360,0)
		if count3 == 0 then
			if resultmsg == nil then
				resultmsg = itemname3
			else
				resultmsg = resultmsg..","..itemname3
			end
		end
		if resultmsg~=nil then
			return 1,0,"你没有带来祈祷用的供品" .. resultmsg .. ""
		end
		AddItemCount(cnum,358,-1)
		AddItemCount(cnum,359,-1)
		AddItemCount(cnum,360,-1)
		--AddHeroFreePoint(cnum,5)
		AddSwitchCount(cnum,11,1)
		EndQuest(cnum, 3)
		return 1,0,"由于有了你带来的祈祷用的供品，马吉利塔的神星告诉我，你需要到鲁狄斯南部去找艾娃(X：96，Y：191)，他会告诉你更多的信息。"
	end	
	return 0

end