function NPC_QUEST_265(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) > 1 or GetHeroType(cnum) < 1 then
			return 1,0,"钓鱼岛猎人-简专署任务\n\n你有没有看到我们的少爷？我听说他是在这个城市，但我不能找到他。."
		else
			if GetSwitchCount(cnum, 312) < 1  and GetSwitchCount(cnum, 313) < 1 then --6
				if GetSwitchCount(cnum, 310) < 1 then --5
					if GetSwitchCount(cnum, 308) < 1 then --4
						if GetSwitchCount(cnum, 306) < 1 then --3
							if GetSwitchCount(cnum, 304) < 1 then -- 2
								if GetSwitchCount(cnum, 303) < 1 then --1
      						return	2, 0,"少爷，看到你回来太好了。已经很长一段时间了，自从我们上次见面.",2,"是的。很长一段时间了。"
								else
  									if GetHeroLv(cnum) < 10 then
  										return	1, 0,"你的等级太低了，还不到10级。没有资格做族长"
                                elseif GetRemainPocket(cnum) < 1 then
										return 1,0,"你的背包没有足够的空间"
	  								else
  								   		AddItemCount(cnum, 4427, 1)
									    	AddSwitchCount(cnum, 304, 1)
									    	----------------------------AddHeroExp(cnum, 600)
								    		EndQuest(cnum, 120)
  										return	1, 0,"恭喜！但是，这仅仅是个开始。这是继承者的戒指，你已经完成了第一次考验。你必须保存好它才能继续进行下一个阶段的考验，不能弄丢了。"  										      
  									end
  								end
  							else
								if GetSwitchCount(cnum, 305) < 1 then
									if GetHeroLv(cnum) < 30 then
										return	1, 0,"等级还不到30级，请准备好再来"
									elseif GetItemCount(cnum, 4427, 0) < 1 then
										return 1,0,"少爷你带来继承者的戒指了吗？没有戒指，你就不能继续接受考验"
 									else
										return	2,0,"少爷，欢迎您的到来。我们已经给你准备好了第二次考验",62,"现在？"
									end
								else
									if GetItemCount( cnum, 4432, 0 ) < 10 then
										return	1, 0,"你没有找来10个人龙的角"
									else
										return	2,0, "恭喜！这是继承者的戒指，你已经完成了第二次考验。你必须保存好它才能继续进行下一个阶段的考验，不能弄丢了。我也给你准备了一个小惊喜！一个30级五尾狐宠物蛋！",150,"我不想要这个宠物蛋"
									end
								end
   							end--2场
  						else
	  						if GetSwitchCount(cnum, 307) < 1 then
			      			if GetHeroLv(cnum) < 50 then
  									return	1,0,"你没有50级，不能进行本阶段考验"
								elseif GetItemCount(cnum, 4428, 0) < 1 then
									return 1,0,"你带来继承者的戒指了吗？没有戒指，你就不能继续接受考验"
								else
									return	2,0,"少爷，欢迎您的到来。我们已经给你准备好了第三次考验",82,"就是现在？"
								end	
  							else
  								if GetSwitchCount( cnum, 315 ) < 1 then
  									return	1, 0, "你还没有找到干净的绿洲"
                            elseif GetRemainPocket(cnum) < 1 then
									return 1,0,"你的背包没有足够的空间"
	  							else
  		    					AddSwitchCount( cnum, 308, 1 )
  									AddItemCount( cnum, 4428, -1 )
  									AddItemCount( cnum, 4429, 1 )
									----------------------------AddHeroExp(cnum, 100000)
									EndQuest(cnum, 122)
  									return	1,0,"恭喜！这是继承者的戒指，你已经完成了第三次考验。你必须保存好它才能继续进行下一个阶段的考验，不能弄丢了。"
  								end			
   							end
	  					end
	  					
					else
						if GetSwitchCount(cnum, 309) < 1 then
							if GetHeroLv(cnum) < 70 then                		
								return 1,0,"你没有70级，不能进行本阶段考验"
				    elseif GetItemCount(cnum, 4429, 0) < 1 then
								return 1,0,"你带来继承者的戒指了吗？没有戒指，你就不能继续接受考验"
							else
								return	2,0,"少爷，欢迎您的到来。我们已经给你准备好了第四次考验",92,"好的"	          
  							end  							
						else
							if GetItemCount( cnum, 4433 , 0) < 1 then
	  							return	1,0, "没有带回来需要的双斧铠魔的手臂部件，你还不能任族长"
	  						else
  								return	2,0,"恭喜！这是继承者的戒指，你已经完成了第四次考验。你必须保存好它才能继续进行下一个阶段的考验，不能弄丢了。我也给你准备了一个小惊喜！一个70级五尾狐宠物蛋！",162,"好的"
							end			
						end
					end -- 4场
				else
					if GetSwitchCount(cnum, 314) > 0 then
						return	1,0,"你已经完成此任务."				
				else
						if GetSwitchCount(cnum, 311) < 1 then
							if GetHeroLv(cnum) < 90 then                		
								return 1,0,"你没有90级，不能进行本阶段考验"
				    elseif GetItemCount(cnum, 4430, 0) < 1 and GetItemCount(cnum, 4431, 0) < 1 then
								return 1,0,"带来继承者的戒指了吗？没有戒指，你就不能继续接受考验"
							else
								return	2,0,"少爷，欢迎您的到来。我们已经给你准备好了第五次考验",102,"好的"	          
  							end  							
						else
							if GetHench(cnum, 1, 281, 80) < 1 and GetHench(cnum, 1, 282, 80) < 1 then
	  							return	1,0, "你没有带来伊夫来克和风特思的宠物蛋"
	  						else
  								return	2,0,"恭喜！你已经完成了第五次考验。你必须保存好它才能继续进行下一个阶段的考验，不能弄丢了。",142,"好的"
							end			
						end
					end -- 4场修改5场
				end
			else
				if GetSwitchCount(cnum, 314) > 0 then
					return 1,0,"你已经完成此任务."
				else
					return 2,0,"Selamat! Kamu telah menyelesaikan ujian kelima. Ini adalah Successor's Ring yang akan kuberikan kepadamu sebagai bukti kamu telah menyelesaikan ujian kelima. Kamu harus menyimpannya agar dapat melanjutkan ke tahap berikutnya. Jangan menghilangkannya."
			end
		end
	end
	elseif req == 2 then
		return 2,0,"是啊。你离开家很长一段时间了",12,"你为什么在这里？"
	elseif req == 12 then
		return 2,0,"是族长派我来的。我要从诸多的猎人中筛选出一个继承者",22,"这是否意味着我也有一定的机会？"
	elseif req == 22 then
		return	2,0,"当然。你可以成为一个族长，如果你成功地完成了领主准备的整个考验",32,"考验吗？"
	elseif req == 32 then
		return	2,0, "族长说，谁能成功地通过考验，任何人都有权成为族长。考验包括六个阶段，你必须全部要通过。",42, "那我应该怎么做呢？"
	elseif req == 42 then
		return	2,0, "好吧，我会告诉第一次考验。族长想知道，你在荒漠中是否有生存的技能。前提是要达到10级",52, "好的，我明白了"
	elseif req == 52 then
		StartQuest(cnum, 120)
		AddSwitchCount(cnum, 303, 1) --涅 1 荐遏
	elseif req == 62 then
		return	2,0, "现在是第二阶段考验。族长想知道，你是否有能力保护您的家人免受危险的沙漠怪物的伤害。进入罗林克斯平原，击败人龙，找到10个人龙的角，在回来找我。祝你好运！",72,"好吧"
		
	elseif req == 72 then
		StartQuest(cnum, 121)
		AddSwitchCount(cnum, 305, 1) --涅 2 荐遏
	elseif req == 82 then
		StartQuest(cnum, 122)
		AddSwitchCount(cnum, 307 ,1)
		return	1,0,"好吧，我会告诉第三次考验。族长想知道，你是否能找到一个有水的绿洲。好几个绿洲污染太严重了。你需要去找一个干净的绿洲，然后回来告诉我。你可以通过绿洲的某些植物得知绿洲的状况。命运的沙漠岔道、双子峡谷、白色荒野好像有绿洲，不过不知道哪个是干净的。祝你好运！"
	elseif req == 92 then
		StartQuest(cnum, 123)
		AddSwitchCount(cnum, 309 ,1)
		return	1,0, "现在，我会告诉第四次考验。族长想知道，你是否有能力在危难之时突破重围。你要去劳吉塔地下9层，找到双斧铠魔的手臂部件再回来找我。祝你好运！"
	elseif req == 102 then
		return 2,0, "好吧，我会告诉第五次考验。族长想知道，你有没有能力找到伊夫来克和风特思的宠物蛋，如果你已经有了，那本次考验就简单多了",152,"嗯。这似乎太笼统了吧？"	
	elseif req == 152 then
		return 2,0,"嗯..我同意你的观点。我会给你一些找宠物蛋的考验的",153,"好"
	elseif req == 153 then
		StartQuest(cnum, 124)
		AddSwitchCount( cnum, 311, 1 )
		return 1,0,"80级以上伊夫来克和风特思的宠物蛋哦"
	elseif req == 142 then
		if GetHench(cnum, 1, 538, 1) < 1 then
			return 1,0,"你没有带来70级五尾狐宠物蛋，我就不能怪我了"
		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"背包空间不够"
    elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"宠物背包空间不够"
		else
			AddItemCount(cnum, 4430, -1)
			AddItemCount(cnum, 4431, 1)
			----------------------------AddHeroExp(cnum, 5000000)
			AddSwitchCount(cnum, 314, 1)
			AddHench(cnum, 538, -1)
			AddHench(cnum, 494, 1)
			EndQuest(cnum, 124)
			EndQuest(cnum, 125)
			return 1,0,"隆美尔是用非洲地区的一个著名的将军的名字命名的。正如名字所暗示他会帮助你冒险。"
		end

-- 涅胶飘 眠啊 荤亲
	elseif req == 150 then
		return 2,0,"它虽然是初期的，但是可以帮助你。它有着优良血统",151,"谢谢。"
	elseif req == 151 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"宠物背包没有足够的空间"
    elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"你的背包没有足够的空间"
		else
			AddItemCount(cnum, 4427, -1)
			AddItemCount(cnum, 4432, -10)
			AddSwitchCount(cnum, 306, 1)
			AddItemCount(cnum, 4428, 1)
			----------------------------AddHeroExp(cnum, 20000)
			AddHench(cnum, 537, 1)
			EndQuest(cnum, 121)
			return 1,0,"请准备好下一次考验"
		end
	elseif req == 162 then
		return 2,0,"宠物都是会进化的，请把30级五尾狐宠物蛋给我，我给你换70级五尾狐宠物蛋",163,"谢谢"
	elseif req == 163 then
		if GetHench(cnum, 1, 537, 1) < 1 then
			return 1,0,"你没有带来30级五尾狐宠物蛋，我就不能怪我了"
   	elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"背包空间不够"
		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"宠物背包空间不够"
		else
			AddItemCount( cnum, 4433, -1 )
			AddItemCount( cnum, 4429, -1 )
			AddItemCount( cnum, 4430, 1 )
			AddSwitchCount(cnum, 310, 1)
			----------------------------AddHeroExp(cnum, 400000)
			AddHench(cnum, 537, -1)
			AddHench(cnum, 538, 1)
			EndQuest(cnum, 123)
			return 1,0,"请准备好进行下一次考验"
		end
	else
		return 1,0,"错误"
	end
end



function NPC_QUEST_310(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"你可以在附近的绿洲看到一些植物."
		else
			return 2,0,"你可以在附近的绿洲看到一些植物，你会做些什么呢？",2,"我要收集点东西."
		end
	elseif req == 2 then
		return 1,0,"看起来是健康的，但不是因为绿洲。你必须找到另一个绿洲。"
	else
		return 1,0,"错误"
	end
end


function NPC_QUEST_309(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"你可以在附近的绿洲看到一些植物."
		else
			return 2,0,"你可以在附近的绿洲看到一些植物，你会做些什么呢？",2,"我要收集点东西"
		end
	elseif req == 2 then
		return 1,0,"看起来是健康的，但不是因为绿洲。你必须找到另一个绿洲。"
	else
		return 1,0,"错误"
	end
end


function NPC_QUEST_308(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then		
			return 1,0,"你可以在附近的绿洲看到一些植物"
		else
			return 2,0,"你可以在附近的绿洲看到一些植物，你会做些什么呢？",2,"我要收集点东西"
		end
	elseif req == 2 then
		AddSwitchCount(cnum, 315, 1)
		return 1,0,"这些植物看起来很健康，因为绿洲。你已经找到了一个干净的绿洲！"
	else
		return 1,0,"错误"
	end
end
