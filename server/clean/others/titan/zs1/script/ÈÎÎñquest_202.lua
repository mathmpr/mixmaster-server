 function NPC_QUEST_202(cnum,reqNumber) --NPC 绊电(官恩狼 带傈 救郴磊) - 海庆福技官 巢何瘤开
	local req, id1, count1

	id1 = 368 --官恩狼 脚惯	
	
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1007) < 1 then
			return 2,0,"哦，你拿到了卡奥斯宝盒。出于某种原因，你必须得有雨之戒指才能恢复任何丢失的东西，那个东西在狂风地牢能找到", 3, "我要去狂风地牢"
		else
			return 2,0,"你有风之靴了吗？", 4, "是的，我有了"
		end
		
	elseif req == 3 then
		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"你必须有卡奥斯宝盒才能进入狂风地牢"
		end
		return 2,0,"你必须要有强壮的身体才能抵御狂风地牢的狂风，如果不够强，那我就不知道会发生什么事情了", 101, "我一定要进去"
	elseif req == 101 then
		StartQuest(cnum, 8)
		AddSwitchCount(cnum, 1007, 1) 
		return 1,0,"嗯，对不起，年轻的猎人不能抵御狂风地牢的狂风，但是风之靴可以帮助你，抓住贝赫鲁南部的肥肥就能找到风之靴"
	elseif req == 4 then
		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"*** 继续任务之前，你必须到罗林克斯平原去找赫理 (X:153.Y:100)"
		end
		if GetItemCount(cnum,368,0) == 0 then --官恩狼 脚惯(368)
			return 1,0,"抓住贝赫鲁南部的肥肥就能找到风之靴"
		end
		
		EndQuest(cnum, 8)
		return 2,0,"好的。虽然你穿了风之靴，但是你不能在地牢中呆很长时间，一旦风之靴的持久没了你就会吹回去。我和你一起去，你准备好了吗？", 5, "是的"
	elseif req == 5 then
		count1 = GetItemCount(cnum,id1,0)
		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"只有赫理知道卡奥斯宝盒的用法"
		end
		if GetItemCount(cnum,368,0) == 0 then --官恩狼 脚惯
			return 1,0,"你需要有风之靴才能进入狂风地牢"
		end	
		AddItemCount(cnum,id1,-count1)  --官恩狼 脚惯
		SetReturnTimer(cnum,180,66) 
		MoveZone(cnum,247,101) --官恩狼 带傈 247
		end
		
	return 0
end


 function NPC_QUEST_203(cnum,reqNumber) --NPC 绊电(官恩狼 带傈救)
	local req,id1,id2, id3,count1,count2,count3

	id1 = 338 --官恩狼 脚惯
	id2 = 369 --厚狼 馆瘤
	id3 = 366 --墨坷胶 钮宏

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1008) < 1 then
			return 2,0,"要获得雨之戒指是非常困难的。虽然你有风之靴，但是它只有几分钟的持久。一旦持久消失，你将会被吹回去，所以要持久消失之前找到雨之戒指", 12, "我要如何找到它？"
		else
			if GetSwitchCount(cnum, 17) < 1 then
				return 2,0,"你找到雨之戒指了？", 2, "是的"
			else
				return 2,0,"你已经能暂时抵御住狂风地牢的狂风了，你要进入狂风地牢吗？", 14, "是的"
			end
		end
	elseif req == 12 then
		return 2,0,"地牢的某个怪物你打败它，就能得到了", 13, "我知道了！"
	elseif req == 13 then
		StartQuest(cnum, 9)
		AddSwitchCount(cnum, 1008, 1)
		return 1,0,"注意：要把握好时间哦"
		
	elseif req == 14 then
		MoveZone(cnum, 66, 254)
		
	elseif req == 2 then
		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"你去找罗林克斯平原的赫理没？"
		end
		if GetItemCount(cnum,369, 0) == 0 then -- 厚狼 馆瘤(369)
			return 1,0,"打败这里的某个怪物你就能得到雨之戒指，得到后，我会告诉你如何使用它"
		end
		return 2,0,"你已经得到了雨之戒指，有了雨之戒指和卡奥斯宝盒就可以找回席拉的全家福，让我们一起将雨之戒指和卡奥斯宝盒结合吧", 3, "结合"
	elseif req == 3 then
		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		count3 = GetItemCount(cnum,id3,0)
		if GetSwitchCount(cnum,17) > 0 then
			return 1,0,"席拉的全家福只有一张，你已经得到了"
		end
		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"你去找罗林克斯平原的赫理没？"
		end
		if GetItemCount(cnum,366,0) == 0 then --墨坷胶 钮宏(366)
			return 1,0,"你没有卡奥斯宝盒哦"
		end
		if GetItemCount(cnum,369,0) == 0 then --厚狼 馆瘤(369)
			return 1,0,"你没有雨之戒指"
		end
		
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"你的背包空位不够，请整理出一个空位"
		end
		AddItemCount(cnum,id1,-count1) -- 官恩狼 脚惯
		AddItemCount(cnum,id2,-count2) --厚狼 馆瘤(369)
		AddItemCount(cnum,id3,-count3) --墨坷胶 钮宏(366) 
		AddItemCount(cnum,371,1) --浆扼狼 啊练荤柳(371)
		AddSwitchCount(cnum,17,1)
		EndQuest(cnum, 9)
		return 1,0,"这是给你的东西。你把全家福给席拉，他会既高兴又难过的。"
	end
	return 0
end