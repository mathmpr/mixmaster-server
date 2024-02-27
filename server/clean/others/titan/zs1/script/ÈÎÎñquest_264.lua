function NPC_QUEST_264(cnum, reqNumber)

req = reqNumber

name = GetHeroName(cnum)


	if req == 1 then
		if GetSwitchCount(cnum, 84) < 1 then
			return 1,0,"小孩子来这里干什么？回家去，这里很危险"
		elseif GetItemCount(cnum, 379, 0) < 1 then
			return 1,0,"你从很远的地方来。我不知道你来这里......但如果有任务，那就应该马上去做，树之精灵有吗？"
		else
			result = GetSwitchCount(cnum, 86)
				
			if result < 1 then
				if GetSwitchCount(cnum, 85) < 1 then
					return 2,0,"哦，树的灵魂吗？你肯定是个英雄，仔细听，我会告诉你真正邪恶的怪物", 12, "请你告诉我。"
				else
					StartQuest(cnum, 14)
					return 3,0,"你已经找到了吗？", 72, "是的，我找到了。", 73, "没有，相当困难。"
				end
			else
				return 2,0,"现在，我们已经完成了所有的准备。你想现在去吗？", 82, "离开"
			end
		end
	 elseif req == 12 then
		return 2,0,"",22,"请继续..."
	 elseif req == 22 then
		return 2,0,"几个星期前，我遭到了袭击，封印怪物的神器被偷走了两样。他们是在夜幕降临的时候伏击的我，22年来我小心翼翼，但是这件事已经使我的尊严尽失...", 32, "我很抱歉听到这个消息。"
	 elseif req == 32 then
		return 2,0,"你要为我找回那两样神器", 42, "我会为你找到它们的"
	 elseif req == 42 then
		return 2,0,"哦，谢谢你！非常欣慰你能相信我ˇ，你知道哪两样神器吗？提摩的铠甲、洛奇的头盔。", 52, "怪物是什么样子的？"
	 elseif req == 52 then
		return 2,0,"我没有看清攻击我的怪物，但是我听到有机械的声音，并且感觉到地面震动ˇ", 62, "好的我知道了"
	 elseif req == 62 then
		StartQuest(cnum, 14)
		AddSwitchCount(cnum, 85, 1)
		return 1,0,"祝你好运，要小心。"
		
	elseif req == 72 then
		if GetItemCount(cnum, 1201, 0) < 1 or GetItemCount(cnum, 1202, 0) < 1 then
			return 1,0,"我没有看到你把它们带回来，请尽快给我带来。"
		else
			AddItemCount(cnum,1201, -1)
			AddItemCount(cnum,1202, -1)
			AddSwitchCount(cnum, 86, 1) -- 辆丰 胶困摹蔼 饶俊 历林狼 顶栏肺 捞悼窍绰单 荤侩茄促. 
			EndQuest(cnum, 14)
			return 1,0,"做的不错，虽然我只给了你一点点信息，你居然猜到了，我真的很感激你的帮助"
		end	
	elseif req == 82 then
		return 1,0,"[任务正在进行中]"
	end
end