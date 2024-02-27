function NPC_QUEST_615(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 361) < 1 then
			return 2,0,"안녕하시다뇽~ 민트캣!! 이다뇽~ 바쁜 몸이지만 iMBC 친구들을 위해 나타났다뇽~!! 그런데 무슨일이뇽??",2,"만나서 반가워요~!!"

		
		else
			return 5,0,"안녕하시뇽~ 다시 나를 찾아 왔구뇽~ 전에도 말했지만 나는 iMBC 친구들을 위해 봉사 한다뇽~ 15레벨, 30레벨, 45레벨, 60레벨을 달성하면 나를 찾아 오게뇽뇽뇽~",12,"15레벨이 되었어요",13,"30레벨이 되었어요",14,"45레벨이 되었어요",15,"60레벨이 되었어요"

		end


			


	elseif req == 2 then
		if CheckItemPocket(cnum, 8199, 1) < 1  then
			return 1,0,"만난 기념으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 비우고 오라뇽"

		else
			AddSwitchCount(cnum, 361, 1)
			AddItemCount(cnum, 8199, 1)
			AddMoney(cnum, 30000)
			return 1,0,"나도 반갑워뇽~ 우리 이렇게 만난 것도 인연인데~ 앞으로 친구 하자뇽~ 친구가 된 기념으로 작지만 버디 마크랑 30,000 GP를 선물로 준다~ 앞으로 종종 봐뇽~"

		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 362) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 15 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 15 레벨을 달성하지 못했다 뇽~! 15 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"15레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 3칸 이상 비우고 오라뇽"
		

		else
			type = GetHeroType(cnum)

			if type == 0 then
				AddItemCount(cnum, 4673, 1)


			elseif type == 1 then
				AddItemCount(cnum, 4688, 1)


			elseif type == 2 then
				AddItemCount(cnum, 4703, 1)


			elseif type == 3 then
				AddItemCount(cnum, 4721, 1)


			else
				return 1,0,"오류"


			end

			AddItemCount(cnum, 8200, 1)
			AddItemCount(cnum, 170, 1)
			AddMoney(cnum, 50000)
			AddSwitchCount(cnum, 362, 1)
			return 1,0,"오~ 15레벨을 달성했구나 ..하지만 15레벨은 믹스 마스터 세계를 조금만 탐험해도 달성 할수 있다뇽~ 하지만 약속은 약속이니 선물을 주겟다 뇽~ 쓸만한 무기와 워프링, 50,000 GP를 선물로 주겠다뇽~ 30레벨이 되면 나를 다시 찾아와라 뇽! 더 근사한 선물을 준비 해 놓고 있겠다뇽~ 아!! 그리고 매번 같이 주는 달성 도장은 절대 버리지 말라뇽!! 나중에 엄청난 상품을 받을 수 있는 응모권이다뇽! 버리면 너의 손해니까 꼭 간직하고 있게뇽~"

		end			
			





	elseif req == 13 then
		if GetSwitchCount(cnum, 363) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 30 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 30 레벨을 달성하지 못했다 뇽~! 30 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 2  then
			return 1,0,"30레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		elseif GetOccupiedHenchPocket(cnum, 1) > 19  then
			return 1,0,"30레벨을 달성한 보답으로 핸치를 줄 까 하는데 핸치 인벤토리에 빈 공간이 없다뇽~ 핸치 인벤토리를 1칸 이상 비우고 오라뇽"
		

		else
			AddHench(cnum, 273, 1)
			AddItemCount(cnum, 8201, 1)
			AddItemCount(cnum, 1018, 1)
			AddSwitchCount(cnum, 363, 1)
			return 1,0,"음... 30레벨을 달성 했구뇽~ 믹스 마스터 세계가 꽤나 마음에 들었구뇽~ 자~ 여기 약속한 선물이뇽~ 닥터캘빈 헨치와 시너지레벨 상승물약을 줄 테니 잘 사용하도록 하게뇽~ 45레벨이 되면 나를 다시 찾아와라 뇽!"

		end





	elseif req == 14 then
		if GetSwitchCount(cnum, 364) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 45 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 45 레벨을 달성하지 못했다 뇽~! 45 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		else
			return 6,0,"앗! 벌써 45레벨을 달성 했구뇽~ 멋지뇽~ 너무 무리 하지 말고 탐험 하길 바란뇽~ 아래의 선물 목록에서 한가지를 고르거뇽~ 그리고 60레벨이 되면 나를 다시 찾아와라 뇽!",22,"파이터듀크 변신갑옷",23,"뿔콩 변신갑옷",24,"밴시 변신갑옷",25,"하피 변신갑옷",26,"윙스톰레이셔 변신갑옷"

		end




	elseif req == 15 then
		if GetSwitchCount(cnum, 365) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 60 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 60 레벨을 달성하지 못했다 뇽~! 60 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"60레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 3칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 365, 1)
			AddItemCount(cnum, 4732, 1)
			AddItemCount(cnum, 95, 1)
			AddItemCount(cnum, 8203, 1)
			return 1,0,"믹스마스터의 세계에서 당신은 이미 훌륭한 탐험가!! 다른 이들과 어울려 모험을 하다 보면, 더욱 흥미 진진한 세계를 맛볼 수 있을거뇽! 마지막 선물은 튼튼한 갑옷과 프리미엄존 입장권을 줄께뇽~ 부디 잘 사용 하고, 나중에 우리 또 만나뇽!!!!"

		end






	elseif req == 22 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4651, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 23 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4606, 1)
			AddItemCount(cnum, 8202, 1)
		
		end
		


	elseif req == 24 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4582, 1)
			AddItemCount(cnum, 8202, 1)
		
		end



	elseif req == 25 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4660, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 26 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4633, 1)
			AddItemCount(cnum, 8202, 1)
		
		end


	else
		return 1,0,"오류 2"

	end
end










function NPC_QUEST_616(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 361) < 1 then
			return 2,0,"안녕하시다뇽~ 민트캣!! 이다뇽~ 바쁜 몸이지만 iMBC 친구들을 위해 나타났다뇽~!! 그런데 무슨일이뇽??",2,"만나서 반가워요~!!"

		
		else
			return 5,0,"안녕하시뇽~ 다시 나를 찾아 왔구뇽~ 전에도 말했지만 나는 iMBC 친구들을 위해 봉사 한다뇽~ 15레벨, 30레벨, 45레벨, 60레벨을 달성하면 나를 찾아 오게뇽뇽뇽~",12,"15레벨이 되었어요",13,"30레벨이 되었어요",14,"45레벨이 되었어요",15,"60레벨이 되었어요"

		end


			


	elseif req == 2 then
		if CheckItemPocket(cnum, 8199, 1) < 1  then
			return 1,0,"만난 기념으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 비우고 오라뇽"

		else
			AddSwitchCount(cnum, 361, 1)
			AddItemCount(cnum, 8199, 1)
			AddMoney(cnum, 30000)
			return 1,0,"나도 반갑워뇽~ 우리 이렇게 만난 것도 인연인데~ 앞으로 친구 하자뇽~ 친구가 된 기념으로 작지만 버디 마크랑 30,000 GP를 선물로 준다~ 앞으로 종종 봐뇽~"

		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 362) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 15 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 15 레벨을 달성하지 못했다 뇽~! 15 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"15레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 3칸 이상 비우고 오라뇽"
		

		else
			type = GetHeroType(cnum)

			if type == 0 then
				AddItemCount(cnum, 4673, 1)


			elseif type == 1 then
				AddItemCount(cnum, 4688, 1)


			elseif type == 2 then
				AddItemCount(cnum, 4703, 1)


			elseif type == 3 then
				AddItemCount(cnum, 4721, 1)


			else
				return 1,0,"오류"


			end

			AddItemCount(cnum, 8200, 1)
			AddItemCount(cnum, 170, 1)
			AddMoney(cnum, 50000)
			AddSwitchCount(cnum, 362, 1)
			return 1,0,"오~ 15레벨을 달성했구나 ..하지만 15레벨은 믹스 마스터 세계를 조금만 탐험해도 달성 할수 있다뇽~ 하지만 약속은 약속이니 선물을 주겟다 뇽~ 쓸만한 무기와 워프링, 50,000 GP를 선물로 주겠다뇽~ 30레벨이 되면 나를 다시 찾아와라 뇽! 더 근사한 선물을 준비 해 놓고 있겠다뇽~ 아!! 그리고 매번 같이 주는 달성 도장은 절대 버리지 말라뇽!! 나중에 엄청난 상품을 받을 수 있는 응모권이다뇽! 버리면 너의 손해니까 꼭 간직하고 있게뇽~"

		end			
			





	elseif req == 13 then
		if GetSwitchCount(cnum, 363) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 30 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 30 레벨을 달성하지 못했다 뇽~! 30 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 2  then
			return 1,0,"30레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		elseif GetOccupiedHenchPocket(cnum, 1) > 19  then
			return 1,0,"30레벨을 달성한 보답으로 핸치를 줄 까 하는데 핸치 인벤토리에 빈 공간이 없다뇽~ 핸치 인벤토리를 1칸 이상 비우고 오라뇽"
		

		else
			AddHench(cnum, 273, 1)
			AddItemCount(cnum, 8201, 1)
			AddItemCount(cnum, 1018, 1)
			AddSwitchCount(cnum, 363, 1)
			return 1,0,"음... 30레벨을 달성 했구뇽~ 믹스 마스터 세계가 꽤나 마음에 들었구뇽~ 자~ 여기 약속한 선물이뇽~ 닥터캘빈 헨치와 시너지레벨 상승물약을 줄 테니 잘 사용하도록 하게뇽~ 45레벨이 되면 나를 다시 찾아와라 뇽!"

		end





	elseif req == 14 then
		if GetSwitchCount(cnum, 364) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 45 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 45 레벨을 달성하지 못했다 뇽~! 45 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		else
			return 6,0,"앗! 벌써 45레벨을 달성 했구뇽~ 멋지뇽~ 너무 무리 하지 말고 탐험 하길 바란뇽~ 아래의 선물 목록에서 한가지를 고르거뇽~ 그리고 60레벨이 되면 나를 다시 찾아와라 뇽!",22,"파이터듀크 변신갑옷",23,"뿔콩 변신갑옷",24,"밴시 변신갑옷",25,"하피 변신갑옷",26,"윙스톰레이셔 변신갑옷"

		end




	elseif req == 15 then
		if GetSwitchCount(cnum, 365) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 60 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 60 레벨을 달성하지 못했다 뇽~! 60 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"60레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 3칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 365, 1)
			AddItemCount(cnum, 4732, 1)
			AddItemCount(cnum, 95, 1)
			AddItemCount(cnum, 8203, 1)
			return 1,0,"믹스마스터의 세계에서 당신은 이미 훌륭한 탐험가!! 다른 이들과 어울려 모험을 하다 보면, 더욱 흥미 진진한 세계를 맛볼 수 있을거뇽! 마지막 선물은 튼튼한 갑옷과 프리미엄존 입장권을 줄께뇽~ 부디 잘 사용 하고, 나중에 우리 또 만나뇽!!!!"

		end






	elseif req == 22 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4651, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 23 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4606, 1)
			AddItemCount(cnum, 8202, 1)
		
		end
		


	elseif req == 24 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4582, 1)
			AddItemCount(cnum, 8202, 1)
		
		end



	elseif req == 25 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4660, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 26 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4633, 1)
			AddItemCount(cnum, 8202, 1)
		
		end


	else
		return 1,0,"오류 2"

	end
end






function NPC_QUEST_617(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 361) < 1 then
			return 2,0,"안녕하시다뇽~ 민트캣!! 이다뇽~ 바쁜 몸이지만 iMBC 친구들을 위해 나타났다뇽~!! 그런데 무슨일이뇽??",2,"만나서 반가워요~!!"

		
		else
			return 5,0,"안녕하시뇽~ 다시 나를 찾아 왔구뇽~ 전에도 말했지만 나는 iMBC 친구들을 위해 봉사 한다뇽~ 15레벨, 30레벨, 45레벨, 60레벨을 달성하면 나를 찾아 오게뇽뇽뇽~",12,"15레벨이 되었어요",13,"30레벨이 되었어요",14,"45레벨이 되었어요",15,"60레벨이 되었어요"

		end


			


	elseif req == 2 then
		if CheckItemPocket(cnum, 8199, 1) < 1  then
			return 1,0,"만난 기념으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 비우고 오라뇽"

		else
			AddSwitchCount(cnum, 361, 1)
			AddItemCount(cnum, 8199, 1)
			AddMoney(cnum, 30000)
			return 1,0,"나도 반갑워뇽~ 우리 이렇게 만난 것도 인연인데~ 앞으로 친구 하자뇽~ 친구가 된 기념으로 작지만 버디 마크랑 30,000 GP를 선물로 준다~ 앞으로 종종 봐뇽~"

		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 362) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 15 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 15 레벨을 달성하지 못했다 뇽~! 15 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"15레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 3칸 이상 비우고 오라뇽"
		

		else
			type = GetHeroType(cnum)

			if type == 0 then
				AddItemCount(cnum, 4673, 1)


			elseif type == 1 then
				AddItemCount(cnum, 4688, 1)


			elseif type == 2 then
				AddItemCount(cnum, 4703, 1)


			elseif type == 3 then
				AddItemCount(cnum, 4721, 1)


			else
				return 1,0,"오류"


			end

			AddItemCount(cnum, 8200, 1)
			AddItemCount(cnum, 170, 1)
			AddMoney(cnum, 50000)
			AddSwitchCount(cnum, 362, 1)
			return 1,0,"오~ 15레벨을 달성했구나 ..하지만 15레벨은 믹스 마스터 세계를 조금만 탐험해도 달성 할수 있다뇽~ 하지만 약속은 약속이니 선물을 주겟다 뇽~ 쓸만한 무기와 워프링, 50,000 GP를 선물로 주겠다뇽~ 30레벨이 되면 나를 다시 찾아와라 뇽! 더 근사한 선물을 준비 해 놓고 있겠다뇽~ 아!! 그리고 매번 같이 주는 달성 도장은 절대 버리지 말라뇽!! 나중에 엄청난 상품을 받을 수 있는 응모권이다뇽! 버리면 너의 손해니까 꼭 간직하고 있게뇽~"

		end			
			





	elseif req == 13 then
		if GetSwitchCount(cnum, 363) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 30 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 30 레벨을 달성하지 못했다 뇽~! 30 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 2  then
			return 1,0,"30레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		elseif GetOccupiedHenchPocket(cnum, 1) > 19  then
			return 1,0,"30레벨을 달성한 보답으로 핸치를 줄 까 하는데 핸치 인벤토리에 빈 공간이 없다뇽~ 핸치 인벤토리를 1칸 이상 비우고 오라뇽"
		

		else
			AddHench(cnum, 273, 1)
			AddItemCount(cnum, 8201, 1)
			AddItemCount(cnum, 1018, 1)
			AddSwitchCount(cnum, 363, 1)
			return 1,0,"음... 30레벨을 달성 했구뇽~ 믹스 마스터 세계가 꽤나 마음에 들었구뇽~ 자~ 여기 약속한 선물이뇽~ 닥터캘빈 헨치와 시너지레벨 상승물약을 줄 테니 잘 사용하도록 하게뇽~ 45레벨이 되면 나를 다시 찾아와라 뇽!"

		end





	elseif req == 14 then
		if GetSwitchCount(cnum, 364) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 45 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 45 레벨을 달성하지 못했다 뇽~! 45 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		else
			return 6,0,"앗! 벌써 45레벨을 달성 했구뇽~ 멋지뇽~ 너무 무리 하지 말고 탐험 하길 바란뇽~ 아래의 선물 목록에서 한가지를 고르거뇽~ 그리고 60레벨이 되면 나를 다시 찾아와라 뇽!",22,"파이터듀크 변신갑옷",23,"뿔콩 변신갑옷",24,"밴시 변신갑옷",25,"하피 변신갑옷",26,"윙스톰레이셔 변신갑옷"

		end




	elseif req == 15 then
		if GetSwitchCount(cnum, 365) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 60 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 60 레벨을 달성하지 못했다 뇽~! 60 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"60레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 3칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 365, 1)
			AddItemCount(cnum, 4732, 1)
			AddItemCount(cnum, 95, 1)
			AddItemCount(cnum, 8203, 1)
			return 1,0,"믹스마스터의 세계에서 당신은 이미 훌륭한 탐험가!! 다른 이들과 어울려 모험을 하다 보면, 더욱 흥미 진진한 세계를 맛볼 수 있을거뇽! 마지막 선물은 튼튼한 갑옷과 프리미엄존 입장권을 줄께뇽~ 부디 잘 사용 하고, 나중에 우리 또 만나뇽!!!!"

		end






	elseif req == 22 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4651, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 23 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4606, 1)
			AddItemCount(cnum, 8202, 1)
		
		end
		


	elseif req == 24 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4582, 1)
			AddItemCount(cnum, 8202, 1)
		
		end



	elseif req == 25 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4660, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 26 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4633, 1)
			AddItemCount(cnum, 8202, 1)
		
		end


	else
		return 1,0,"오류 2"

	end
end











function NPC_QUEST_618(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 361) < 1 then
			return 2,0,"안녕하시다뇽~ 민트캣!! 이다뇽~ 바쁜 몸이지만 iMBC 친구들을 위해 나타났다뇽~!! 그런데 무슨일이뇽??",2,"만나서 반가워요~!!"

		
		else
			return 5,0,"안녕하시뇽~ 다시 나를 찾아 왔구뇽~ 전에도 말했지만 나는 iMBC 친구들을 위해 봉사 한다뇽~ 15레벨, 30레벨, 45레벨, 60레벨을 달성하면 나를 찾아 오게뇽뇽뇽~",12,"15레벨이 되었어요",13,"30레벨이 되었어요",14,"45레벨이 되었어요",15,"60레벨이 되었어요"

		end


			


	elseif req == 2 then
		if CheckItemPocket(cnum, 8199, 1) < 1  then
			return 1,0,"만난 기념으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 비우고 오라뇽"

		else
			AddSwitchCount(cnum, 361, 1)
			AddItemCount(cnum, 8199, 1)
			AddMoney(cnum, 30000)
			return 1,0,"나도 반갑워뇽~ 우리 이렇게 만난 것도 인연인데~ 앞으로 친구 하자뇽~ 친구가 된 기념으로 작지만 버디 마크랑 30,000 GP를 선물로 준다~ 앞으로 종종 봐뇽~"

		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 362) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 15 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 15 레벨을 달성하지 못했다 뇽~! 15 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"15레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 3칸 이상 비우고 오라뇽"
		

		else
			type = GetHeroType(cnum)

			if type == 0 then
				AddItemCount(cnum, 4673, 1)


			elseif type == 1 then
				AddItemCount(cnum, 4688, 1)


			elseif type == 2 then
				AddItemCount(cnum, 4703, 1)


			elseif type == 3 then
				AddItemCount(cnum, 4721, 1)


			else
				return 1,0,"오류"


			end

			AddItemCount(cnum, 8200, 1)
			AddItemCount(cnum, 170, 1)
			AddMoney(cnum, 50000)
			AddSwitchCount(cnum, 362, 1)
			return 1,0,"오~ 15레벨을 달성했구나 ..하지만 15레벨은 믹스 마스터 세계를 조금만 탐험해도 달성 할수 있다뇽~ 하지만 약속은 약속이니 선물을 주겟다 뇽~ 쓸만한 무기와 워프링, 50,000 GP를 선물로 주겠다뇽~ 30레벨이 되면 나를 다시 찾아와라 뇽! 더 근사한 선물을 준비 해 놓고 있겠다뇽~ 아!! 그리고 매번 같이 주는 달성 도장은 절대 버리지 말라뇽!! 나중에 엄청난 상품을 받을 수 있는 응모권이다뇽! 버리면 너의 손해니까 꼭 간직하고 있게뇽~"

		end			
			





	elseif req == 13 then
		if GetSwitchCount(cnum, 363) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 30 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 30 레벨을 달성하지 못했다 뇽~! 30 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 2  then
			return 1,0,"30레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		elseif GetOccupiedHenchPocket(cnum, 1) > 19  then
			return 1,0,"30레벨을 달성한 보답으로 핸치를 줄 까 하는데 핸치 인벤토리에 빈 공간이 없다뇽~ 핸치 인벤토리를 1칸 이상 비우고 오라뇽"
		

		else
			AddHench(cnum, 273, 1)
			AddItemCount(cnum, 8201, 1)
			AddItemCount(cnum, 1018, 1)
			AddSwitchCount(cnum, 363, 1)
			return 1,0,"음... 30레벨을 달성 했구뇽~ 믹스 마스터 세계가 꽤나 마음에 들었구뇽~ 자~ 여기 약속한 선물이뇽~ 닥터캘빈 헨치와 시너지레벨 상승물약을 줄 테니 잘 사용하도록 하게뇽~ 45레벨이 되면 나를 다시 찾아와라 뇽!"

		end





	elseif req == 14 then
		if GetSwitchCount(cnum, 364) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 45 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 45 레벨을 달성하지 못했다 뇽~! 45 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		else
			return 6,0,"앗! 벌써 45레벨을 달성 했구뇽~ 멋지뇽~ 너무 무리 하지 말고 탐험 하길 바란뇽~ 아래의 선물 목록에서 한가지를 고르거뇽~ 그리고 60레벨이 되면 나를 다시 찾아와라 뇽!",22,"파이터듀크 변신갑옷",23,"뿔콩 변신갑옷",24,"밴시 변신갑옷",25,"하피 변신갑옷",26,"윙스톰레이셔 변신갑옷"

		end




	elseif req == 15 then
		if GetSwitchCount(cnum, 365) > 0 then
			return 1,0,"당신은 이미 민트 캣의 선물을 모두 받았다 뇽~! 이 민트 캣의 기억력을 무시해서는 안된다뇽!"


		elseif GetHeroLv(cnum) < 60 then
			return 1,0,"앗!! 이 민트 캣을 속이려고 하다뇽~! 당신은 아직 60 레벨을 달성하지 못했다 뇽~! 60 레벨을 달성하면 나를 다시 찾아 와라 뇽~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"60레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 3칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 365, 1)
			AddItemCount(cnum, 4732, 1)
			AddItemCount(cnum, 95, 1)
			AddItemCount(cnum, 8203, 1)
			return 1,0,"믹스마스터의 세계에서 당신은 이미 훌륭한 탐험가!! 다른 이들과 어울려 모험을 하다 보면, 더욱 흥미 진진한 세계를 맛볼 수 있을거뇽! 마지막 선물은 튼튼한 갑옷과 프리미엄존 입장권을 줄께뇽~ 부디 잘 사용 하고, 나중에 우리 또 만나뇽!!!!"

		end






	elseif req == 22 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4651, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 23 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4606, 1)
			AddItemCount(cnum, 8202, 1)
		
		end
		


	elseif req == 24 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4582, 1)
			AddItemCount(cnum, 8202, 1)
		
		end



	elseif req == 25 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4660, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 26 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45레벨을 달성한 보답으로 선물을 줄 까 하는데 인벤토리에 빈 공간이 없다뇽~ 인벤토리를 2칸 이상 비우고 오라뇽"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4633, 1)
			AddItemCount(cnum, 8202, 1)
		
		end


	else
		return 1,0,"오류 2"

	end
end