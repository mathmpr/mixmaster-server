function NPC_QUEST_251(cnum,reqNumber) -- 锅侥狼 唱公

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 61) < 1 then
			if GetSwitchCount(cnum, 1001) < 1 then 
               return 2, 0, "你是来帮我的吗？不知道谁可以帮助我？", 2, "我可以帮你"
			else
				if GetSwitchCount(cnum, 9) < 1 then
					return 2,0,"你有没有带来恢复之叶？", 32, "带来了", 33, "什么是恢复之叶？"
				else
					AddSwitchCount(cnum,10,1) --Switch#10
					return 1,0,"很遗憾，我没有能够完全恢复，到马吉利塔 (X:100,Y:100)找占卜师阿娜斯吧，她可以帮助我"
				end
				
			end
		else
			return 3,0,"恢复之路漫长。。。找到我需要的东西了吗？", 12, "是的，我找到了些方法", 13, "我需要更多的时间"
		end
	elseif req == 2 then
		if GetSwitchCount(cnum, 8) < 1 then
			return 1,0,". . ."
		else
			return 2,0,"我不是一棵普通的树，我已经活了1000年了。怪物们通过我的力量可以使它们变的强大，我现在摆脱不了它们的控制，如果有恢复之叶我就能够摆脱它们", 101, "我在哪里可以找到它？"
		end
	elseif req == 101 then
		StartQuest(cnum, 2)
		AddItemCount(cnum,354,-1)--备浇 化扁
		AddItemCount(cnum,355,-1)
		AddItemCount(cnum,356,-1)
		AddSwitchCount(cnum, 1001, 1)
		return 1,0,"恢复之叶产于米格瑞塔南部草原，只有打败了大头鹰才能得到，你找到了就回来找我，那个有助于我恢复体力"
		
	elseif req == 32 then
		if GetItemCount(cnum,357,0) == 0 then
			return 1,0,"我需要恢复之叶，在大头鹰那里可以得到"
		
		else
			--AddMoney(cnum,3000) -- 3000GP 眠啊
			AddSwitchCount(cnum,9,1) -- Switch#9 雀汗狼 蕾荤蓖
			AddItemCount(cnum,357,-1)
			EndQuest(cnum, 2)
			return 1,0,"非常感谢，给你一定的GP作为奖励。但是我还没有能完全恢复，到马吉利塔 (X:100,Y:100)找占卜师阿娜斯吧，她能帮助我"
		end
	elseif req == 33 then
		return 1,0,"恢复之叶产于米格瑞塔南部草原，只有打败了大头鹰才能得到，你找到了就回来找我，那个有助于我恢复体力"
	elseif req == 12 then
		if GetItemCount(cnum, 379, 0) < 1 then
			return 1,0,"你没有带来树之精灵"
		else
			return 2,0,"如果你已经找到了必要的物品，就帮我恢复记忆吧 . . .", 22, "我已经带来了眼泪结晶和树之精灵"
		end
	elseif req == 13 then
		return 1,0,"快点，怪物变的更强大了"
	elseif req == 22 then
		AddItemCount(cnum, 378, -1)
		AddItemCount(cnum, 364, -1)
		AddItemCount(cnum, 370, -1)
		AddItemCount(cnum, 374, -1)
		AddItemCount(cnum, 379, -1)
		AddItemCount(cnum, 375, -1)		
		AddSwitchCount(cnum, 84, 1)
		return 1,0,"谢谢你，年轻的英雄。生命之树恢复了记忆和力量，但是怪物太强大了。你现在去双子峡谷找安戴利吧(X：102 Y：142)，她会告诉你怎么对付怪物的"
	end

	return 0
 end