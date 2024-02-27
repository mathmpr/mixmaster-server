function NPC_QUEST_295(cnum,reqNumber) 
	local req = reqNumber

 	if req == 1 then
	    	return 1, 0,"几个星期前，一群怪物袭击了女神的神殿，抢走了供奉的圣物（祝福的项链、女神的腰带、精灵的戒指）。请你帮助我们找到我的宝贝。你到米格瑞塔东海岸找警卫队长埃克特(X:127 Y: 161)。"
     	end
  	return 0
end

function NPC_QUEST_263(cnum,reqNumber) 

 	local req = reqNumber
	
 	if req == 1 then
		if GetSwitchCount(cnum, 1016) < 1 then
			if GetSwitchCount(cnum, 1015) < 1 then
		    		return 2,0,"你真是前途无量啊！我是警卫队长埃克特，女神的神殿已经被怪物袭击。问题是，由于长时间的和平，士兵们变得很散漫了。如果你能找到祝福的项链，我就会给你1000GP作为奖励。抓住飞天猪和奶嘴鹰就能得到", 12, "好吧，我会帮助你。"
			 else
				return 2,0,"你找到了祝福的项链吗？", 2, "是的"
			end
		 else
			return 1,0,"感谢您的帮助，您太有才了。下面你应该到伊斯拉布湿地去找凌柏林(X:214, Y:165)"
		end
	 elseif req == 12 then
		
		if GetHeroLv(cnum,1) < 6 then        
			return 1,0,"我需要志愿者，但看来你是缺乏运动。等你达到6级，你在回来吧"
		end
	 
		StartQuest(cnum, 104)
		AddSwitchCount(cnum, 1015, 1)
		return 1,0,"好，我相信你。祝你好运。"
 	 elseif req == 2 then
		if GetItemCount(cnum,178,0) == 0 then
			return 1,0,"如果你忘记了自己需要做什么任务，你可以点击屏幕右下角的“任务”按钮"
		end
		if GetSwitchCount(cnum, 3) < 1 then
			--AddMoney(cnum,1000) 
			AddSwitchCount(cnum,3,1) 
			AddSwitchCount(cnum, 1016, 1)
			EndQuest(cnum, 104)
			return 1,0,"好东西！不错小伙子！你需要的其他东西可以到伊斯拉布湿地去找凌柏林(X:214, Y:165)，他会想办法帮助你的"
		 else
			return 0	
		end
	end
	return 0
end

function NPC_QUEST_220(cnum,reqNumber) 

local req = reqNumber
	if req == 1 then
		if GetSwitchCount(cnum, 1018) < 1 then		
		     	if GetSwitchCount(cnum,3) == 0 then
				return 1,0,"你能帮助我吗？不过在此之前你应该到米格瑞塔东海岸找警卫队长埃克特(X:127 Y: 161)"
			 elseif GetSwitchCount(cnum, 1017) < 1 then
			    	return 2,0,"你是来帮我吗？哦，谢天谢地！女神的腰带？我怀疑是刺刺猪和绿蔬偷走的，但是对我来说他们太强大了。我给你1000GP，如果你能帮我把它找回来的话。", 12, "我是一个经得住考验的勇士"
			 else
				return 2,0,"你找到了女神的腰带？", 2, "是的"
			end
		 else
			return 1,0,"谢谢！我听说洛维德也需要帮助。请帮帮他好吗？他在黑尔斯波入口（X：227，Y：62）。"
		end
	elseif req == 12 then
		if GetHeroLv(cnum,1) < 6 then
			return 1,0,"对不起，我需要的是一个勇士，而不是一个小罗罗。等你的等级达到6级以上再来找我"
		end
		StartQuest(cnum, 105)
		AddSwitchCount(cnum, 1017, 1)
		return 1,0,"呵呵，我讨厌懦夫。请快帮我！"
	elseif req == 2 then
		if GetItemCount(cnum,179,0) == 0 then
			return 1,0,"我需要你的帮助找到女神的腰带，抓住刺刺猪和绿蔬就能得到！拜托了！"
		end
		if GetSwitchCount(cnum, 4) < 1 then
			--AddMoney(cnum,1000) 
			AddSwitchCount(cnum,4,1) 
			AddSwitchCount(cnum,1018, 1)
			EndQuest(cnum, 105)
			return 1,0,"非常感谢你！我要是像你一样勇猛就好了。现在你到黑尔斯波入口找警卫兵洛维德吧(X:227, Y:62)，他需要你的帮助。"
		 else
			return 0
		end
 	end	
	return 0
end

function NPC_QUEST_217(cnum,reqNumber) 

local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1020) < 1 then		
			if GetSwitchCount(cnum,3) == 0 then
				return 1,0,"我现在在值班，不能跟外人交谈，如果你找我有事的话，你需要到米格瑞塔东海岸找警卫队长埃克特说一下"
			elseif GetSwitchCount(cnum,4) == 0 then 
				return 1,0,"哦，你要帮我吗？伊斯拉布湿地去找凌柏林(X:214, Y:165)，他更需要帮助"
			elseif GetSwitchCount(cnum, 1019) < 1 then
				return 2,0,"哦，你是一个新猎人吧？帮帮我吧！我被怪物攻击受伤了，我需要有精灵的戒指才能痊愈，抓住飞天龙和红眼蓝鲸就能找到戒指。你能找回来吗？", 12, "好的，没有问题"
			else
				return 2,0,"你找到了精灵的戒指？", 2, "找到了"
			end
		else
			return 1,0,"Terima kasih telah menyelamatkanku! Kini temui Cherrish (X:47 Y:158) yang berada di Rudis. Dia akan memberimu Blessing of Goddess."
		end
	elseif req == 12 then
		if GetHeroLv(cnum,1) < 6 then
			return 1,0,"谢谢你的好意，但以你现在的能力，要想找回精灵的戒指是很难的，你需要多历练。等你变的更强达到6级以上你就能帮助我了"
		end
		StartQuest(cnum, 106)
		AddSwitchCount(cnum, 1019, 1)
		return 1,0,"快点...我的身体越来越弱了"
	 elseif req == 2 then
		if GetItemCount(cnum,180,0) == 0 then
			return 1,0,"快点给我精灵的戒指，谢谢。。"
		end
		if GetSwitchCount(cnum, 5) < 1 then
		    --AddMoney(cnum,1000) 
			AddSwitchCount(cnum,5,1) 
			AddSwitchCount(cnum, 1020, 1)
			EndQuest(cnum, 106)
			return 1,0,"哦，谢谢你，我感觉好多了！你终于找到第三件宝贝。现在去找鲁狄斯的杰里西（X：47 Y：158）吧，他会带给你女神的祝福的。"
		 else
			return 0
		end
 	end	
	return 0
end

function NPC_QUEST_296(cnum,reqNumber) 
	local resultmsg,req,itemname1,itemname2,itemname3,id1,id2,id3,count1,count2,count3

  itemname1 = "祝福的项链"
  itemname2 = "女神的腰带"
  itemname3 = "精灵的戒指"

	id1 = 178 
	id2 = 179
	id3 = 180

    req = reqNumber

    if req == 1 then
   	 	return 2, 0,"噢，太勇敢了！你找回了所有的圣物？真不敢相信，我会代表女神给你15点属性点的", 2, "是的，我都找回来了"
    elseif req == 2 then
		if GetSwitchCount(cnum,6) > 0 then
			return 1,0, "女神的祝福已经奖励你15点属性点"
		end
		count1 = GetItemCount(cnum,id1,0)
		if count1 == 0 then 
			resultmsg = itemname1 
		end
		
		count2 = GetItemCount(cnum,id2,0)
		if count2 == 0 then 
			if resultmsg == nil then 
				resultmsg = itemname2 
			 else 
				resultmsg = resultmsg..","..itemname2
			end
		end
		count3 = GetItemCount(cnum,id3,0)
		if count3 == 0 then
			if resultmsg == nil then 
				resultmsg = itemname3 
			 else 
				resultmsg = resultmsg..","..itemname3
			end
		end
		if resultmsg ~= nil then
			return 1,0, "你有没有带来" .. resultmsg
		 end
		    AddItemCount(cnum,id1,-count1)
		    AddItemCount(cnum,id2,-count2)
		    AddItemCount(cnum,id3,-count3)
       		--AddHeroFreePoint(cnum,15)
	        AddSwitchCount(cnum,6,1) 
	        return 1,0,"我祈祷女神能够带给你——年轻的勇士好运！"
	end 			
	return 0
end