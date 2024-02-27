 function NPC_QUEST_259(cnum,reqNumber) -- 浆扼狼 传拱 (海庆福技官)
	local req,id1,id2,id3,id4,count1,count2,count3,count4
	
	id1 = 361 --陛 壶
	id2 = 363 --炔陛货 炼阿惑
	id3 = 365 --浆扼狼 馆瘤
	id4 = 373 --锐噶狼 瘤莆捞
	
	Switch1 = GetSwitchCount(cnum, 1010)
	Switch2 = GetSwitchCount(cnum, 18)
	Switch3 = GetSwitchCount(cnum, 17)
	Switch4 = GetSwitchCount(cnum, 1005)
	Switch5 = GetSwitchCount(cnum, 19)

	local req = reqNumber

	if req == 1 then
		if Switch5 < 1 then
			if Switch1 < 1 then
				if Switch2 < 1 then
					if Switch3 < 1 then
						if Switch4 < 1 then
							return 2,0,"您您想知道如何用金梳子清除树的记忆，是吗？我的三种眼泪结晶可以做到，你需要我的眼泪结晶吗？", 3, "是的"
						else
							if GetSwitchCount(cnum, 15) < 1 then
								return 2,0,"你带来了我丢失的戒指？", 4, "是的"
							else
								return 1,0,"好，现在是第二块结晶了。如果你去罗林克斯平原去找赫理(X：153 Y：93)，他很善于寻找丢失的物品"
							end
						end
					else
						return 2,0,"你还有什么问题吗？", 12, "给你全家福"
					end
				else
					return 1,0,"现在是黄色眼泪结晶了，这个比较困难哦。嗯，也许你应该到欧文草原去找曼皮斯(X：106 Y：82)"
				end
			else
				return 2,0,"你找到了希望的权杖？", 8, "是的"
			end
		else
			if GetSwitchCount(cnum,19) == 0 then
				return 1,0,"你没有收集全三种眼泪结晶，我不能告诉你任何事情"
			end
			if GetItemCount(cnum,364,0) == 0 then  --河篮祸 传拱搬沥(364) 
				return 1,0,"没有红色眼泪结晶"
			end
			if GetItemCount(cnum,370,0) == 0 then  --林炔祸 传拱搬沥(370) 
				return 1,0,"没有朱黄色眼泪结晶"
			end
			if GetItemCount(cnum,374,0) == 0 then  --畴鄂祸 传拱搬沥(374)
				return 1,0,"没有黄色眼泪结晶"
			end
			return 1,0,"你还应该去找一个黄金玻璃瓶，否则眼泪结晶将会失去其神奇的力量。黄金玻璃瓶很珍贵，不大容易找到。你到芝士堡遗址去找村长老奶奶(X：150 Y：95)。她会告诉你相关信息的"
			
		end
	elseif req == 3 then
		if GetSwitchCount(cnum, 13) == 0 then
			return 1,0,"*** 继续任务之前, 你需要到黑尔斯波入口去找奥丁(X：195，Y：76)"
		end
		if GetSwitchCount(cnum, 13) > 0 then
			return 2,0,"我不是一个软弱的人，要得到我的眼泪，必须有什么东西能使我感动流泪。因为怪物的袭击我的一个很珍贵的戒指丢了，如果你能帮我找到它，这足以让我为之感动。抓住芝士堡遗址的牛牛龟就能找到我的戒指", 101, "我去找回来给你"
		end
	elseif req == 101 then
		StartQuest(cnum, 6)
		AddSwitchCount(cnum, 1005, 1)
		return 1,0,"虽然戒指丢了很多年了，但是一想起，我还是有想哭的冲动"	
	elseif req == 4 then
		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		count3 = GetItemCount(cnum,id3,0)
		if GetSwitchCount(cnum, 13) == 0 then
			return 1,0,"你为什么不去找黑尔斯波入口的奥丁"
		end
		if GetSwitchCount(cnum, 15) > 0 then
			return 1,0,"除了红色眼泪结晶，我没有什么给你的了"
		end
		if GetItemCount(cnum,365, 0) == 0 then -- 浆扼狼 馆瘤
			return 1,0,"找到我的戒指了吗？"
		end
		if GetItemCount(cnum, 361, 0) == 0 then -- 陛 壶
			return 1,0,"你的金梳子呢？"
		end
		if GetItemCount(cnum, 363, 0) == 0 then --炔陛货 炼阿惑
			return 1,0,"艾瑞的声音是很出名的。黄金鸟雕像呢？"
		end
		--AddMoney(cnum,5000) 
		AddSwitchCount(cnum,15,1) -- 河篮 传拱搬沥俊 措茄 胶困摹 蔼
		AddItemCount(cnum,id1,-count1) -- 陛 壶(361)
		AddItemCount(cnum,id2,-count2) --炔陛货 炼阿惑(363)
		AddItemCount(cnum,id3,-count3) --浆扼狼 馆瘤(365)
		AddItemCount(cnum,364,1) --河篮 传拱搬沥(364)
		EndQuest(cnum, 6)
		return 1,0,"干的非常好，就是这个戒指，一直是我多年来惦记的。非常感谢，这是红色眼泪结晶，还有给你5000GP的礼物"
	elseif req == 12 then
		if GetSwitchCount(cnum, 17) < 1 then
			return 1,0,"我不知道你为什么会在这里，我要求你去做事情，你为什么不去做呢？"					
		elseif GetItemCount(cnum, 371, 0) < 1 then
			return 1,0,"我不知道你为什么会在这里，我要你帮我找的全家福呢？"		
		else
			--AddMoney(cnum,10000)
			AddItemCount(cnum,370,1) -- 林炔祸 传拱搬沥(370)
			AddItemCount(cnum,371,-1)
			AddSwitchCount(cnum,18,1) -- 林炔祸 传拱搬沥俊 措茄 胶困摹 蔼
			return 1,0,"你找到了我的全家福？这太让我感动了，这虽然让我哭泣，但是我很快乐。拿着这个，这是朱黄色眼泪结晶。谢谢你，虽然钱不是太多，但是还是要给你10000GP"
		end
	elseif req == 8 then
		count4 = GetItemCount(cnum,id4,0)
		if GetSwitchCount(cnum,19) > 0 then
			return 1,0,"你已经得到了黄色眼泪结晶，到芝士堡遗址去找村长老奶奶(X：150 Y：95)"
		end
		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"你先要得到朱黄色眼泪结晶才能继续得到黄色眼泪结晶哦"
		end
		if GetItemCount(cnum,373,0) == 0 then -- 
			return 1,0,"也许你应该到欧文草原去找曼皮斯(X：106 Y：82)"
		end
		AddItemCount(cnum,id4,-count4) -- 
		AddItemCount(cnum,374,1) --
		--AddMoney(cnum,12000)
		AddSwitchCount(cnum,19,1) --
		return 1,0,"哦，我又哭了。我的家庭以前多么和睦啊，真的很怀念。多谢了，我给你12000GP作为礼物。你终于收集全三种眼泪结晶了"
	end
	return 0
end