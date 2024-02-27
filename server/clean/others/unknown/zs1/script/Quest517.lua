function NPC_QUEST_699(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 412) < 1 then
			return 2,0,"6월은 호국보훈의 달입니다.@호국보훈이란?@나라를 지키며 공을 세운 사람들의@공훈에 보답하는 것을 말한답니다.@여러분들께서는 할 수 있는 보답은@진심으로 감사의 마음을 갖는@것입니다.@자~ 그런 의미에서 간단히@하실 수 있는 일이 있습니다.",2,"무슨 일을 하면 되나요?"

		else
			if GetItemCount(cnum, 8157, 0) < 10 or GetItemCount(cnum, 8158, 0) < 10 or GetItemCount(cnum, 8159, 0) < 10 or GetItemCount(cnum, 8160, 0) < 10 or GetItemCount(cnum, 8161, 0) < 10 or GetItemCount(cnum, 8162, 0) < 10 or GetItemCount(cnum, 8163, 0) < 10 or GetItemCount(cnum, 8164, 0) < 10 or GetItemCount(cnum, 8165, 0) < 10 then
				return 1,0,"무궁화 조각이 부족하군요.@각 조각 10개씩 필요하답니다.@잊지 마세요!",22,"어이쿠~ 이런!"


			else
				return 2,0,"무궁화 조각을 모두 모아 왔군요!@자~ 감사의 선물을 드리도록 @할께요.@우선, 인벤토리가 2칸 이상 비워@있는지 확인해보시고 받아주세요.@꼭 필요한 선물이 되었으면 @하네요~ ^^@그리고, 무궁화는 계속 모아 오시면@또 선물을 드릴 테니.. @앞으로도 항상 나라를 지킨 분들께@감사의 마음을 가지세요~",23,"잊지 않을께요! 선물은 감사!"


			end
		end




	
	elseif req == 2 then
		return 2,0,"우리나라를 대표하는 꽃!! @무궁화를 모아오세요.@무궁화는 총 9조각으로@나뉘어져 있으며, 몬스터 사냥을@통해 얻으실 수 있답니다.@각각의 조각 10개씩을 모아오면 @감사의 선물을 드릴께요.",12,"넵! 당장 모아올께요."




	elseif req == 12 then
		AddSwitchCount(cnum, 412, 1)



	
	
	elseif req == 23 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 빈 공간이 부족합니다. 2칸 이상 빈 공간을 만든뒤에 오세요"


		else
			AddItemCount(cnum, 8157, -10)
			AddItemCount(cnum, 8158, -10)
			AddItemCount(cnum, 8159, -10)
			AddItemCount(cnum, 8160, -10)
			AddItemCount(cnum, 8161, -10)
			AddItemCount(cnum, 8162, -10)
			AddItemCount(cnum, 8163, -10)
			AddItemCount(cnum, 8164, -10)
			AddItemCount(cnum, 8165, -10)

			random = SetRandom(cnum, 1, 1000)

			if random <= 5 then
				AddItemCount(cnum, 1333, 1)

			elseif random > 5 and random <= 45 then
				AddItemCount(cnum, 4513, 1)

			elseif random > 45 and random <= 100 then
				AddItemCount(cnum, 80, 1)			

			elseif random > 100 and random <= 1000 then
				AddItemCount(cnum, 154, 1)

			else
				return 0

			end

		end

	else
		return 0


	end
end