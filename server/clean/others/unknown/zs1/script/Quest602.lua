function NPC_QUEST_1583(cnum, reqNumber) -- 자유전투구역 / 거상 무스타파

	req = reqNumber

	money = 100000000
	money2 = 200000000
	money3 = 300000000
	money4 = 400000000
	money5 = 500000000

	charge = 1000000
	charge2 = 2000000
	charge3 = 3000000
	charge4 = 4000000
	charge5 = 5000000

	moneyaddcharge = 101000000
	moneyaddcharge2 = 202000000
	moneyaddcharge3 = 303000000
	moneyaddcharge4 = 404000000
	moneyaddcharge5 = 505000000

	chargerate = 1
	
	maxmoney = 4200000000

	if req == 1 then
		return 3,0,"푸헤헤! 어서오십쇼!@저는 이 곳 자유전투구역에 GP가 남아돈다는 소식을 듣고 온 상인 무스타파라고 합니다요!@@약간의 수수료만 받고 [GP를 금괴로]@[금괴를 GP로] 교환해드립니다요!@@이용해보시겠습니까요?",2,"[GP]를 [금괴]로 교환",3,"[금괴]를 [GP]로 교환"


	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		end

		return 6,0,"[1억 GP] = [금괴 1개]의 가치로 바꿔주고 있습니다요!@@교환 수수료는 거래금의 1%를 GP로 받겠습니다요!@@얼마의 GP를 금괴로 바꾸겠습니까요?",11,"[1억 GP] -> [금괴 1개]",12,"[2억 GP] -> [금괴 2개]",13,"[3억 GP] -> [금괴 3개]",14,"[4억 GP] -> [금괴 4개]",15,"[5억 GP] -> [금괴 5개]"

	elseif req == 3 then
		return 6,0,"[금괴 1개] = [1억 GP]로 바꿔주고 있습니다요!@@교환 수수료는 GP로 거래금의 1%만 받겠습니다요!@@얼마의 금괴를 GP로 바꾸겠습니까요?",21,"[금괴 1개] -> [1억 GP]",22,"[금괴 2개] -> [2억 GP]",23,"[금괴 3개] -> [3억 GP]",24,"[금괴 4개] -> [4억 GP]",25,"[금괴 5개] -> [5억 GP]"


-------------------------------------------------------------- GP를 금괴로
	elseif req == 11 then
		if GetItemCount(cnum, 8835, 0) > 199 then
			return 1,0,"[금괴]를 너무 많이 가지고 계셔서@교환할 수 없습니다요~@@[금괴] 아이템은 인벤토리에 최대 200개까지 소지 가능합니다요~"
		end

		if GetMoney(cnum) < moneyaddcharge then
			return 1,0,"GP가 모자릅니다요! GP로 금괴 한 개와 바꾸려면 수수료 ["..charge.."]GP까지 더해서 ["..moneyaddcharge.."]GP가 필요합니다요!"
		else
			AddItemCount(cnum, 8835, 1)
			AddMoney(cnum, -moneyaddcharge)
			return 1,0,"[금괴] 1개로 교환되었습니다요!@@다음에 또 들러주십쇼!"
		end

	elseif req == 12 then
		if GetItemCount(cnum, 8835, 0) > 198 then
			return 1,0,"[금괴]를 너무 많이 가지고 계셔서@교환할 수 없습니다요~@@[금괴] 아이템은 인벤토리에 최대 200개까지 소지 가능합니다요~"
		end

		if GetMoney(cnum) < moneyaddcharge2 then
			return 1,0,"GP가 모자릅니다요! GP로 금괴 한 개와 바꾸려면 수수료 ["..charge2.."]까지 더해서 ["..moneyaddcharge2.."] GP가 필요합니다요!"
		else
			AddItemCount(cnum, 8835, 2)
			AddMoney(cnum, -moneyaddcharge2)
			return 1,0,"[금괴] 2개로 교환되었습니다요!@@다음에 또 들러주십쇼!"
		end

	elseif req == 13 then
		if GetItemCount(cnum, 8835, 0) > 197 then
			return 1,0,"[금괴]를 너무 많이 가지고 계셔서@교환할 수 없습니다요~@@[금괴] 아이템은 인벤토리에 최대 200개까지 소지 가능합니다요~"
		end

		if GetMoney(cnum) < moneyaddcharge3 then
			return 1,0,"GP가 모자릅니다요! GP로 금괴 한 개와 바꾸려면 수수료 ["..charge3.."]까지 더해서 ["..moneyaddcharge3.."] GP가 필요합니다요!"
		else
			AddItemCount(cnum, 8835, 3)
			AddMoney(cnum, -moneyaddcharge3)
			return 1,0,"[금괴] 3개로 교환되었습니다요!@@다음에 또 들러주십쇼!"
		end

	elseif req == 14 then
		if GetItemCount(cnum, 8835, 0) > 196 then
			return 1,0,"[금괴]를 너무 많이 가지고 계셔서@교환할 수 없습니다요~@@[금괴] 아이템은 인벤토리에 최대 200개까지 소지 가능합니다요~"
		end

		if GetMoney(cnum) < moneyaddcharge4 then
			return 1,0,"GP가 모자릅니다요! GP로 금괴 한 개와 바꾸려면 수수료 ["..charge4.."]까지 더해서 ["..moneyaddcharge4.."] GP가 필요합니다요!"
		else
			AddItemCount(cnum, 8835, 4)
			AddMoney(cnum, -moneyaddcharge4)
			return 1,0,"[금괴] 4개로 교환되었습니다요!@@다음에 또 들러주십쇼!"
		end

	elseif req == 15 then
		if GetItemCount(cnum, 8835, 0) > 195 then
			return 1,0,"[금괴]를 너무 많이 가지고 계셔서@교환할 수 없습니다요~@@[금괴] 아이템은 인벤토리에 최대 200개까지 소지 가능합니다요~"
		end

		if GetMoney(cnum) < moneyaddcharge5 then
			return 1,0,"GP가 모자릅니다요! GP로 금괴 한 개와 바꾸려면 수수료 ["..charge5.."]까지 더해서 ["..moneyaddcharge5.."] GP가 필요합니다요!"
		else
			AddItemCount(cnum, 8835, 5)
			AddMoney(cnum, -moneyaddcharge5)
			return 1,0,"[금괴] 5개로 교환되었습니다요!@@다음에 또 들러주십쇼!"
		end

-------------------------------------------------------------- GP를 금괴로
-------------------------------------------------------------- 금괴를 GP로
	elseif req == 21 then
		if GetMoney(cnum) > maxmoney - (money - charge) then
			return 1,0,"너무 많은 [GP]를 가지고 계십니다요!@@[금괴 1개]를 [GP]로 바꾸기 위해서는 가지고 계신 [GP]가 아무리 많아도@@[4,101,000,000]보다 적어야 합니다요!"		
		end
		
		if GetItemCount(cnum, 8835, 0) < 1 then
			return 1,0,"금괴가 모자릅니다요! [금괴 1개]가 필요합니다요!"
		else
			AddItemCount(cnum, 8835, -1)
			AddMoney(cnum, money - charge)
			return 1,0,"[금괴] 1개를 수수료 ["..charge.."]GP를@빼고 [GP]로 교환해드렸습니다요!@@다음에 또 들러주십쇼!"
		end

	elseif req == 22 then
		if GetMoney(cnum) > maxmoney - (money2 - charge2) then
			return 1,0,"너무 많은 [GP]를 가지고 계십니다요!@@[금괴 2개]를 [GP]로 바꾸기 위해서는 가지고 계신 [GP]가 아무리 많아도@@[4,002,000,000]보다 적어야 합니다요!"		
		end
		
		if GetItemCount(cnum, 8835, 0) < 2 then
			return 1,0,"금괴가 모자릅니다요! [금괴 2개]가 필요합니다요!"
		else
			AddItemCount(cnum, 8835, -2)
			AddMoney(cnum, money2 - charge2)
			return 1,0,"[금괴] 2개를 수수료 ["..charge2.."]GP를@빼고 [GP]로 교환해드렸습니다요!@@다음에 또 들러주십쇼!"
		end

	elseif req == 23 then
		if GetMoney(cnum) > maxmoney - (money3 - charge3) then
			return 1,0,"너무 많은 [GP]를 가지고 계십니다요!@@[금괴 3개]를 [GP]로 바꾸기 위해서는 가지고 계신 [GP]가 아무리 많아도@@[3,903,000,000]보다 적어야 합니다요!"		
		end
	
		if GetItemCount(cnum, 8835, 0) < 3 then
			return 1,0,"금괴가 모자릅니다요! [금괴 3개]가 필요합니다요!"
		else
			AddItemCount(cnum, 8835, -3)
			AddMoney(cnum, money3 - charge3)
			return 1,0,"[금괴] 3개를 수수료 ["..charge3.."]GP를@빼고 [GP]로 교환해드렸습니다요!@@다음에 또 들러주십쇼!"
		end

	elseif req == 24 then
		if GetMoney(cnum) > maxmoney - (money4 - charge4) then
			return 1,0,"너무 많은 [GP]를 가지고 계십니다요!@@[금괴 4개]를 [GP]로 바꾸기 위해서는 가지고 계신 [GP]가 아무리 많아도@@[3,804,000,000]보다 적어야 합니다요!"		
		end	
	
		if GetItemCount(cnum, 8835, 0) < 4 then
			return 1,0,"금괴가 모자릅니다요! [금괴 4개]가 필요합니다요!"
		else
			AddItemCount(cnum, 8835, -4)
			AddMoney(cnum, money4 - charge4)
			return 1,0,"[금괴] 4개를 수수료 ["..charge4.."]GP를@빼고 [GP]로 교환해드렸습니다요!@@다음에 또 들러주십쇼!"
		end

	elseif req == 25 then
		if GetMoney(cnum) > maxmoney - (money5 - charge5) then
			return 1,0,"너무 많은 [GP]를 가지고 계십니다요!@@[금괴 5개]를 [GP]로 바꾸기 위해서는 가지고 있는 GP가 아무리 많아도@@[3,705,000,000]보다 적어야 합니다요!"		
		end	
	
		if GetItemCount(cnum, 8835, 0) < 5 then
			return 1,0,"금괴가 모자릅니다요! [금괴 5개]가 필요합니다요!"
		else
			AddItemCount(cnum, 8835, -5)
			AddMoney(cnum, money5 - charge5)
			return 1,0,"[금괴] 5개를 수수료 ["..charge5.."]GP를@빼고 [GP]로 교환해드렸습니다요!@@다음에 또 들러주십쇼!"
		end

-------------------------------------------------------------- 금괴를 GP로
	end
end
