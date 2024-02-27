 function NPC_QUEST_286(cnum,reqNumber) --NPC 锰厘 老窍(眉技官 蜡利瘤)
	local req,id1,id2,count1,count2

	id1 = 376 -- 柄柳 蜡府炼阿
	id2 = 377 -- 橇府硫

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 20) < 1 then
			if GetSwitchCount(cnum, 1011) < 1 then		
				if GetSwitchCount(cnum,19) == 0 then
					return 1,0,"你必须收集到所有的眼泪结晶"
				end
				return 2,0,"你好，年轻人。来找黄金玻璃瓶的？它的确是一个神奇的、宝贵的瓶子", 12, "我怎样才能找到它呢？"
			else
				return 4,0,"你要问我什么？", 2, "更多关于黄金玻璃瓶", 3, "魔法的镜子", 4, "如何得到魔法的镜子"
			end
		else
			return 1,0,"到古德草原找到预言家普莱达(X:180 Y:75)，他会送你过去的"
		end
	elseif req == 12 then
		return 2,0,"黄金玻璃瓶只出现在过去，现在没有。如果你想要的话，需要有魔法的镜子送你到过去。魔法的镜子需要用破碎的玻璃和棱镜组合", 13, "好的"
	elseif req == 13 then
		StartQuest(cnum, 11)
		AddSwitchCount(cnum, 1011, 1)
		return 1,0,"如果你有魔法的镜子的话，你就可以回到过去了。抓住芝士堡遗址的达特凯彬就能得到制作魔法的镜子的材料芝士堡遗址"
	elseif req == 2 then
		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"满足席拉的愿望，就能得到三个眼泪结晶，你就可以得到更多的信息."
		end
		return 1,0,"黄金玻璃瓶只出现在过去，现在没有。如果你想要的话，需要有魔法的镜子送你到过去。"
	elseif req == 3 then
		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"没有眼泪结晶，满足席拉的愿望就可以得到"
		end
		return 1,0,"破碎的玻璃和棱镜就能制造出魔法的镜子，但是不知道村中的哪个神匠能做此事"
	elseif req == 4 then
		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"请到贝赫鲁跟席拉对话"
		end
		if GetSwitchCount(cnum,20) > 0 then
			return 1,0,"请原谅我，我只能为你制造一面魔法的镜子"
		end
		if GetItemCount(cnum,376,0) == 0 then --柄柳 蜡府炼阿(376)
			return 1,0,"你没有碎玻璃片"
		end
		if GetItemCount(cnum,377,0) == 0 then --橇府硫(377)
			return 1,0,"请给我一面棱镜"
		end
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"你的背包空位不够，请整理出一个空位"
		end
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,375,1) -- 付过狼 芭匡(375)
		--AddMoney(cnum,10000) -- 10000GP 眠啊
		AddSwitchCount(cnum,20,1) --付过狼 芭匡 Switch 蔼
		EndQuest(cnum, 11)
		return 1,0,"很好...已经做好了魔法的镜子，我会给你一些钱作为礼物"
	end
	return 0
end