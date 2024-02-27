function NPC_QUEST_853(cnum,reqNumber) -- 믹마무인랜드 입장 아나똘리

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 524) < 1 then
			return 3,0,"용감한 밸러님!@전 페르보선장님의 부하 아나똘리라고 합니다!@용감한 밸러님 제 부탁 좀 들어주실래요?",2,"네~! 말해봐요!",12,"싫어요"
		else 
			return 3,0,"용감한 밸러님! 다시 믹마무인랜드로 가시겠어요?",7,"네~!",8,"아니요"			
		end	
		

	elseif req == 2 then
		return 2,0,"최근 소식통에 의하면 20년전 행방불명이 되었던 페르보선장의 절친 쿨라파선장의 부하 아르젬이라는 분이 저기 멀리 믹마무인랜드에 살아 있다는 정보가 입수되었습니다!",3,"그래서요?"

	elseif req == 3 then
		return 2,0,"페르보선장님께서 저에게 아르젬을 구출하라는 특명을 내리셨는데..제 힘으론 도저히...",4,"왜요?"

	elseif req == 12 then
		return 1,0,"용감한 밸러님께서 도와주시면 좋을텐데....마음이 바뀌면 다시 와 주세요!"

	elseif req == 4 then
		return 3,0,"사실..믹마무인랜드는 무시무시한 곳이랍니다. 저같은 애송이는 발조차 딛기도 무서운 곳이죠..용감한 밸러님께서 저 대신 믹마무인랜드에서 아르젬님을 찾아주시지 않겠어요?",5,"네! 좋아요!",6,"싫어요"

	elseif req == 5 then
		SetSwitchCount(cnum, 524, 1)
		return 2,0,"정말 고맙습니다! 제가 믹마무인랜드까지 모셔다 드릴게요!!",7,"네!"

	elseif req == 6 then
		return 1,0,"그곳은 무시무시한 곳이니까..두렵기도 하시겠네요.....엄청난 보물이 있다고 하는 이야기는 있지만...생각이 바뀌면 다시 와 주세요~!"

	elseif req == 7 then
		if GetSwitchCount(cnum, 523) < 1 then

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 192, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 193, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 194, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 195, 254)
			end

		else

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 196, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 197, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 198, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 199, 254)
			end
		end


	elseif req == 8 then
		return 1,0,"네~! 믹마무인랜드에는...엄청난 보물이 있다고 하는 이야기가 들리던데..생각이 바뀌면 다시 와 주세요~!"
	end
end


function NPC_QUEST_854(cnum,reqNumber) -- 믹마무인랜드 입장 아나똘리

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 524) < 1 then
			return 3,0,"용감한 밸러님!@전 페르보선장님의 부하 아나똘리라고 합니다!@용감한 밸러님 제 부탁 좀 들어주실래요?",2,"네~! 말해봐요!",12,"싫어요"
		else 
			return 3,0,"용감한 밸러님! 다시 믹마무인랜드로 가시겠어요?",7,"네~!",8,"아니요"			
		end	
		

	elseif req == 2 then
		return 2,0,"최근 소식통에 의하면 20년전 행방불명이 되었던 페르보선장의 절친 쿨라파선장의 부하 아르젬이라는 분이 저기 멀리 믹마무인랜드에 살아 있다는 정보가 입수되었습니다!",3,"그래서요?"

	elseif req == 3 then
		return 2,0,"페르보선장님께서 저에게 아르젬을 구출하라는 특명을 내리셨는데..제 힘으론 도저히...",4,"왜요?"

	elseif req == 12 then
		return 1,0,"용감한 밸러님께서 도와주시면 좋을텐데....마음이 바뀌면 다시 와 주세요!"

	elseif req == 4 then
		return 3,0,"사실..믹마무인랜드는 무시무시한 곳이랍니다. 저같은 애송이는 발조차 딛기도 무서운 곳이죠..용감한 밸러님께서 저 대신 믹마무인랜드에서 아르젬님을 찾아주시지 않겠어요?",5,"네! 좋아요!",6,"싫어요"

	elseif req == 5 then
		SetSwitchCount(cnum, 524, 1)
		return 2,0,"정말 고맙습니다! 제가 믹마무인랜드까지 모셔다 드릴게요!!",7,"네!"

	elseif req == 6 then
		return 1,0,"그곳은 무시무시한 곳이니까..두렵기도 하시겠네요.....엄청난 보물이 있다고 하는 이야기는 있지만...생각이 바뀌면 다시 와 주세요~!"

	elseif req == 7 then
		if GetSwitchCount(cnum, 523) < 1 then

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 192, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 193, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 194, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 195, 254)
			end

		else

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 196, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 197, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 198, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 199, 254)
			end
		end


	elseif req == 8 then
		return 1,0,"네~! 믹마무인랜드에는...엄청난 보물이 있다고 하는 이야기가 들리던데..생각이 바뀌면 다시 와 주세요~!"
	end
end





function NPC_QUEST_855(cnum,reqNumber) -- 믹마무인랜드 입장 아나똘리

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 524) < 1 then
			return 3,0,"용감한 밸러님!@전 페르보선장님의 부하 아나똘리라고 합니다!@용감한 밸러님 제 부탁 좀 들어주실래요?",2,"네~! 말해봐요!",12,"싫어요"
		else 
			return 3,0,"용감한 밸러님! 다시 믹마무인랜드로 가시겠어요?",7,"네~!",8,"아니요"			
		end	
		

	elseif req == 2 then
		return 2,0,"최근 소식통에 의하면 20년전 행방불명이 되었던 페르보선장의 절친 쿨라파선장의 부하 아르젬이라는 분이 저기 멀리 믹마무인랜드에 살아 있다는 정보가 입수되었습니다!",3,"그래서요?"

	elseif req == 3 then
		return 2,0,"페르보선장님께서 저에게 아르젬을 구출하라는 특명을 내리셨는데..제 힘으론 도저히...",4,"왜요?"

	elseif req == 12 then
		return 1,0,"용감한 밸러님께서 도와주시면 좋을텐데....마음이 바뀌면 다시 와 주세요!"

	elseif req == 4 then
		return 3,0,"사실..믹마무인랜드는 무시무시한 곳이랍니다. 저같은 애송이는 발조차 딛기도 무서운 곳이죠..용감한 밸러님께서 저 대신 믹마무인랜드에서 아르젬님을 찾아주시지 않겠어요?",5,"네! 좋아요!",6,"싫어요"

	elseif req == 5 then
		SetSwitchCount(cnum, 524, 1)
		return 2,0,"정말 고맙습니다! 제가 믹마무인랜드까지 모셔다 드릴게요!!",7,"네!"

	elseif req == 6 then
		return 1,0,"그곳은 무시무시한 곳이니까..두렵기도 하시겠네요.....엄청난 보물이 있다고 하는 이야기는 있지만...생각이 바뀌면 다시 와 주세요~!"

	elseif req == 7 then
		if GetSwitchCount(cnum, 523) < 1 then

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 192, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 193, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 194, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 195, 254)
			end

		else

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 196, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 197, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 198, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 199, 254)
			end
		end


	elseif req == 8 then
		return 1,0,"네~! 믹마무인랜드에는...엄청난 보물이 있다고 하는 이야기가 들리던데..생각이 바뀌면 다시 와 주세요~!"
	end
end


function NPC_QUEST_856(cnum,reqNumber) -- 믹마무인랜드 입장 아나똘리

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 524) < 1 then
			return 3,0,"용감한 밸러님!@전 페르보선장님의 부하 아나똘리라고 합니다!@용감한 밸러님 제 부탁 좀 들어주실래요?",2,"네~! 말해봐요!",12,"싫어요"
		else 
			return 3,0,"용감한 밸러님! 다시 믹마무인랜드로 가시겠어요?",7,"네~!",8,"아니요"			
		end	
		

	elseif req == 2 then
		return 2,0,"최근 소식통에 의하면 20년전 행방불명이 되었던 페르보선장의 절친 쿨라파선장의 부하 아르젬이라는 분이 저기 멀리 믹마무인랜드에 살아 있다는 정보가 입수되었습니다!",3,"그래서요?"

	elseif req == 3 then
		return 2,0,"페르보선장님께서 저에게 아르젬을 구출하라는 특명을 내리셨는데..제 힘으론 도저히...",4,"왜요?"

	elseif req == 12 then
		return 1,0,"용감한 밸러님께서 도와주시면 좋을텐데....마음이 바뀌면 다시 와 주세요!"

	elseif req == 4 then
		return 3,0,"사실..믹마무인랜드는 무시무시한 곳이랍니다. 저같은 애송이는 발조차 딛기도 무서운 곳이죠..용감한 밸러님께서 저 대신 믹마무인랜드에서 아르젬님을 찾아주시지 않겠어요?",5,"네! 좋아요!",6,"싫어요"

	elseif req == 5 then
		SetSwitchCount(cnum, 524, 1)
		return 2,0,"정말 고맙습니다! 제가 믹마무인랜드까지 모셔다 드릴게요!!",7,"네!"

	elseif req == 6 then
		return 1,0,"그곳은 무시무시한 곳이니까..두렵기도 하시겠네요.....엄청난 보물이 있다고 하는 이야기는 있지만...생각이 바뀌면 다시 와 주세요~!"

	elseif req == 7 then
		if GetSwitchCount(cnum, 523) < 1 then

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 192, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 193, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 194, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 195, 254)
			end

		else

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 196, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 197, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 198, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 199, 254)
			end
		end


	elseif req == 8 then
		return 1,0,"네~! 믹마무인랜드에는...엄청난 보물이 있다고 하는 이야기가 들리던데..생각이 바뀌면 다시 와 주세요~!"
	end
end


function NPC_QUEST_857(cnum,reqNumber) -- 믹마무인랜드 입장 아나똘리

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 524) < 1 then
			return 3,0,"용감한 밸러님!@전 페르보선장님의 부하 아나똘리라고 합니다!@용감한 밸러님 제 부탁 좀 들어주실래요?",2,"네~! 말해봐요!",12,"싫어요"
		else 
			return 3,0,"용감한 밸러님! 다시 믹마무인랜드로 가시겠어요?",7,"네~!",8,"아니요"			
		end	
		

	elseif req == 2 then
		return 2,0,"최근 소식통에 의하면 20년전 행방불명이 되었던 페르보선장의 절친 쿨라파선장의 부하 아르젬이라는 분이 저기 멀리 믹마무인랜드에 살아 있다는 정보가 입수되었습니다!",3,"그래서요?"

	elseif req == 3 then
		return 2,0,"페르보선장님께서 저에게 아르젬을 구출하라는 특명을 내리셨는데..제 힘으론 도저히...",4,"왜요?"

	elseif req == 12 then
		return 1,0,"용감한 밸러님께서 도와주시면 좋을텐데....마음이 바뀌면 다시 와 주세요!"

	elseif req == 4 then
		return 3,0,"사실..믹마무인랜드는 무시무시한 곳이랍니다. 저같은 애송이는 발조차 딛기도 무서운 곳이죠..용감한 밸러님께서 저 대신 믹마무인랜드에서 아르젬님을 찾아주시지 않겠어요?",5,"네! 좋아요!",6,"싫어요"

	elseif req == 5 then
		SetSwitchCount(cnum, 524, 1)
		return 2,0,"정말 고맙습니다! 제가 믹마무인랜드까지 모셔다 드릴게요!!",7,"네!"

	elseif req == 6 then
		return 1,0,"그곳은 무시무시한 곳이니까..두렵기도 하시겠네요.....엄청난 보물이 있다고 하는 이야기는 있지만...생각이 바뀌면 다시 와 주세요~!"

	elseif req == 7 then
		if GetSwitchCount(cnum, 523) < 1 then

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 192, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 193, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 194, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 195, 254)
			end

		else

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 196, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 197, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 198, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 199, 254)
			end
		end


	elseif req == 8 then
		return 1,0,"네~! 믹마무인랜드에는...엄청난 보물이 있다고 하는 이야기가 들리던데..생각이 바뀌면 다시 와 주세요~!"
	end
end

