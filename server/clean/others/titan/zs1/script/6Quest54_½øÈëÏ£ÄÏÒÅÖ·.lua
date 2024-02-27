function NPC_QUEST_300(cnum,reqNumber) ---

req = reqNumber
Lv = GetHeroLv(cnum)

if req == 1 then
	return 2,0,"oh~",2,"[传送至希南遗址入口]"

	elseif req == 2 then
    if Lv > 49 and Lv < 199 then --> 八荤
      MoveZone(cnum,116,254)
        else --> 酒匆版快
      return 1,0,"等级不能低于LV.50"
		end
	end
	end


function NPC_QUEST_271(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 215 ) < 1 then
			return 2,0,"咦？你想要什么？我现在很忙，没有时间跟你这样的孩子玩，离开我的视线",2,"你知道友谊的信物吗？"
    elseif GetSwitchCount(cnum, 215 ) == 2 then
			return 2,0,"你又是来这里拿友谊的信物的吗？",3,"是的"
		else
			return 4,0,"你找到了所有的碎片了吗？",32,"是的，找到了.",33,"没有",34,"任务信息"
		end
	elseif req == 2 then
		return 2,0,"你怎么知道的？我的朋友卡勒尼给我的一份礼物。我不能给你，但如果你真的需要它，你一定要帮我",12,"什么？"

  elseif req == 3 then
		if GetItemCount(cnum, 4363, 0) < 1 then
			return 2,0,"我给你友谊的信物，如果你收集10个迷之碎片和20个神秘碎片。怎么样？你想试试吗？",22,"一定"
		else
			return 1,0,"你有了，下次再来吧"
		end
	elseif req == 12 then
		return 2,0,"你可以到象牙海岸、伊斯凯森林、寂静废墟猎杀怪物获得他们掉落的迷之碎片10个和神秘碎片20个",22,"好的，我会的。"
	elseif req == 22 then
		EndQuest(cnum, 167)
		SetSwitchCount(cnum, 215, 1)
		StartQuest(cnum, 166)	
	elseif req == 32 then
		if GetItemCount(cnum, 4361, 0) < 10 and GetItemCount(cnum, 4362, 0) < 20 then
			return 1,0,"你确定你带回来所有的碎片了？"
		else		
			EndQuest(cnum, 166)
			StartQuest(cnum, 167)
			SetSwitchCount(cnum, 215, 2)
			AddItemCount(cnum, 4361, -10)
			AddItemCount(cnum, 4362, -20)
			AddItemCount(cnum, 4363, 1)	
			return 1,0,"嗯，你找到它们了。 OK，这是给你的友谊的信物。这个东西它有时限，24小时之后便会消失。如果你需要的可以再回来找我"
		end
	elseif req == 34 then
		return 1,0,"你可以到象牙海岸、伊斯凯森林、寂静废墟猎杀怪物获得他们掉落的迷之碎片10个和神秘碎片20个."
	else
		return 0
	end
end