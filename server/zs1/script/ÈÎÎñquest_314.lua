 function NPC_QUEST_314(cnum,reqNumber) --NPC 版厚捍 橇饭雕(抛捞赣令 鞘靛)
	local req = reqNumber

	if req == 1 then
		
		if GetSwitchCount(cnum,20) == 0 then
			return 1,0,"芝士堡遗址去找村长老奶奶(X：150 Y：95)吧"
		end
		return 2,0,"我一直在等你，我知道你没有太多的时间。黄金玻璃瓶子是丢失在远古森林非常珍贵的瓶子，", 2, "带我去找"
	elseif req == 2 then
		if GetItemCount(cnum,375,0) == 0 then --付过狼 芭匡
			return 1,0,"去远古森林必须要有魔法的镜子，芝士堡遗址去找村长老奶奶，她会知道些什么"
		end
		MoveZone(cnum,246,101) --苞芭狼 剑(246)
		end
	return 0
end

 function NPC_QUEST_315(cnum,reqNumber) -- NPC 抗攫磊 橇饭雕(苞芭狼 剑)
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 21) < 1 then
			if GetSwitchCount(cnum, 1012) < 1 then
				return 2,0,"这里的某个怪物身上就有黄金玻璃瓶子，可能是白虎", 12, "我知道了"
			else
				return 2,0,"如果你只站在这里，你什么也得不到", 3, "我一定要得到黄金玻璃瓶子"
			end
		else
			return 3,0,"现在已经有了眼泪结晶，但是还需要一个树之精灵", 4, "树之精灵？", 5, "传送至 贝赫鲁"
		end
	elseif req == 12 then
		StartQuest(cnum, 12)
		AddSwitchCount(cnum, 1012, 1)
		return 1,0,"如果你有黄金玻璃瓶子，我会提供一些有价值的东西"
	elseif req == 2 then
		MoveZone(cnum,67,253)
	elseif req == 3 then
		if GetItemCount(cnum,378,0) == 0 then -- 炔陛 蜡府捍(378)
			return 1,0,"我没有看到黄金玻璃瓶，请再检查一下"
		end
		if GetSwitchCount(cnum,21) > 0 then
			return 1,0,"请保存好树之精灵，祝你好运"
		end
		--AddHeroFreePoint(cnum,5) -- 橇府器牢飘 5痢 眠啊
		AddSwitchCount(cnum,21,1) -- 炔陛 蜡府捍狼 switch 蔼
		EndQuest(cnum, 12)
		return 1,0,"哇，恭喜！这是给你的5点属性点"
	elseif req == 4 then
		return 1,0,"到命运的沙漠岔道找泰利安(X:120 Y:110)，他有一种特殊的树--树之精灵，可配合结晶使树繁殖"
	elseif req == 5 then	
		MoveZone(cnum, 60 ,254)
		
	end
	return 0
end