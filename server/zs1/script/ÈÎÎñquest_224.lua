 function NPC_QUEST_224(cnum,reqNumber) --NPC 盖乔胶
	local req,id1,count1
	
	id1 = 372 --夸沥狼 朝俺

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1010) < 1 then
			if GetSwitchCount(cnum, 1009) < 1 then
				if GetSwitchCount(cnum,18) == 0 then
					return 1,0,"你是谁？我只告诉席拉，她在哪里？她在贝赫鲁？"
				end	
				return 2,0,"什么？席拉把你送给我吗？她的眼泪吗？她肯定想要我的权杖，你知道它是一种特殊的权杖", 2, "关于权杖"
			else
				return 3,0,"找到精灵的翅膀了？", 3, "我要权杖", 4, "我有精灵的翅膀"
			end
		else
			return 1,0,"Harap temui Shira sekarang."
		end
	elseif req == 2 then
		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"我可以和你谈谈，如果你有一个朱黄色眼泪结晶的话。很抱歉，我得走了，这里太冷了"
		end
		return 2,0,"它能带来希望。难道你不知道吗？她想结束她的悲痛。因为我是一个好人，如果你给我个贵重的东西，比如精灵的翅膀，我就会把希望的权杖给你", 12, "好吧，就这样吗？"
	elseif req == 12 then
		StartQuest(cnum, 10)
		AddSwitchCount(cnum, 1009, 1)		
		return 1,0,"抓住欧文草原的椰蛋树就能得到精灵的翅膀"
	elseif req == 3 then
		
		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"我很忙"
		end
		return 1,0,"我告诉你，即使你带来了精灵的翅膀，也并不意味着你可以100%得到希望的权杖，因为那是很珍贵的"
	elseif req == 4 then
		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"你没有朱黄色眼泪结晶，离我远点"
		end
		if GetItemCount(cnum,372,0) == 0 then --夸沥狼 朝俺(372)
			return 1,0,"你没有精灵的翅膀"
		end
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"你的背包空位不够，请整理出一个空位"
		end
		random = SetRandom(cnum,0,100)
		if random < 24 then
			AddItemCount(cnum,302,1) -- 鳃傅器记
			AddItemCount(cnum,id1,-1) --夸沥狼 朝俺(372)
			return 1,0,"对不起，精灵的翅膀我收下了，权杖嘛。。。"
		elseif random >=24 and random < 30 then
			AddItemCount(cnum,303,1) -- 唱捞胶 鳃傅器记
			AddItemCount(cnum,id1,-1) --夸沥狼 朝俺(372)
			return 1,0,"嗯..我可以给你同样的权杖，但是我忘了你想要哪个，对不起，我把它弄丢了"
		elseif random >=30 and random <60 then
			AddItemCount(cnum,304,1) -- 葛绢 鳃傅器记
			AddItemCount(cnum,id1,-1) --夸沥狼 朝俺(372)
			return 1,0,"再给我一个精灵的翅膀我肯定会给你权杖"
		elseif random >=60 and random <100 then
			AddItemCount(cnum,373,1) ---锐噶狼 瘤莆捞
			AddItemCount(cnum,id1,-1) --夸沥狼 朝俺(372)
			AddSwitchCount(cnum, 1010, 1)
			EndQuest(cnum, 10)
			return 1,0,"这是希望的权杖，拿给席拉吧。"
		end
	end

	return 0
end