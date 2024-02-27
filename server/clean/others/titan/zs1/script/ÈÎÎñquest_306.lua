function NPC_QUEST_306(cnum, reqNumber)

req = reqNumber
	
	if req == 1 then
		if GetSwitchCount(cnum, 61) < 1 then
			if GetSwitchCount(cnum, 60) < 1 then
				return 3,0,"你是谁？你为什么要来到这个偏远的地方？", 2, "我是为了树之精灵", 3, "随便转转"
			elseif GetSwitchCount(cnum, 60) > 0 then
				StartQuest(cnum, 13)				
				return 2,0,"你找到丢失的怀表了吗？", 32, "是的，我找到了它。"
			end	
		elseif GetSwitchCount(cnum, 61) > 0 then
			return 1,0,"你会成为一个英雄的，请保管好树之精灵"
		else
			return 1,0,"请稍后再试一次"
		end
	elseif req == 2 then
		if GetItemCount(cnum, 378, 0) < 1 then
			return 1,0,"你没有带来黄金玻璃瓶？"
		else
			return 3,0,"预言家已经跟我说了，但是你要经得住我的考验，我才能给你树之精灵", 12, "什么考验？", 13, "我为什么要接受考验？"
		end
	elseif req == 3 then
		return 1,0,"你是弱者！我不知道你为什么来。但是，如果你想活命，就回到你的城市。"
	elseif req == 12 then
		return 2,0,"在沙漠中我被怪物袭击，弄丢了我的表，如果你能找回我的表，我就给你树之精灵", 22, "好的"
	elseif req == 13 then
		return 1,0,"我只是想让你快速获得信任，既然你不愿意，那我不可能给你树之精灵的"
	elseif req == 22 then
		if CheckItemPocket(cnum, 1196, 5) < 0 then
			return 1,0,"请整理好你的背包，留有足够的空位，我要给你东西"
		else
			AddItemCount(cnum, 1196, 5) -- 眉仿狼 厚距 3俺 瘤鞭
			AddSwitchCount(cnum, 60, 1)
			StartQuest(cnum, 13)
			return 1,0,"我的表丢的时间不长，应该就是这里的怪物，在沙漠中跟那些怪物战斗，你需要有这些大力丸，好补充你的体能"
		end
	elseif req == 23 then
		return 1,0,"嗯..乐观是一个很好的解决问题的方法，哈哈哈。"
		
	elseif req == 32 then
		if GetItemCount(cnum, 380, 0) < 1 then
			return 1,0,"你都没有帮我找到丢失的怀表"
		else 
			if CheckItemPocket(cnum, 379, 1) < 0 then	
				return 1,0,"你的背包满了，请誊出空位，我要给你树之精灵"
			else
				AddItemCount(cnum, 380, -1)				
				AddItemCount(cnum, 379, 1)
				AddSwitchCount(cnum, 61, 1) --涅胶飘 辆丰 犬牢 胶困摹蔼
				--AddMoney(cnum, 30000)
				EndQuest(cnum, 13)
				return 1,0,"你找到了吗？令人难以置信。很幸运，你已经通过了考验，我不可能把东西随便给人，拿着这个，我们要祈祷生命之树能够恢复。"
			end
		end
	end
end