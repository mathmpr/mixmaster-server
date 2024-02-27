function NPC_QUEST_690(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"어린이 여러분 안녕하신가?! 5월 5일 어린이날을 축하하기 위해 내가 왔다네! 자자~ 딴말 필요 없고, 축하 기념으로 어린이 마크를 줄 테니 유용하게 사용하도록~ 아! 그리고 마크를 받은 후 하루(24시간)가 지나면 다시 또 마크를 줄 테니 잊지 말고 찾아오시게나!",2,"네! 감사합니다!"


	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 여유 공간이 없어서 어린이 마크를 지급할 수 없습니다."


		else
			GetTime = GetSwitchTime(cnum, 402)
			Today   = GetToday()
--			Today	= ChangeTime(ChangeTime(GetCurrentTime(),3,2),2,3)

			if GetTime < Today then
				SetSwitchCurTime(cnum, 402)
				AddSwitchCount(cnum, 403, 1)
				AddItemCount(cnum, 8212, 1)
				return 1,0,"어린이 마크를 지급해 드렸습니다."


			else
				return 1,0,"벌써부터 조급해하긴~ 어린이라면 차분한 마음가짐을 가져야지! 이전에 어린이 마크를 받고 아직 하루(24시간)가  지나지 않았다네.",12,"넵!"


			end

		end



	else
		return 0

	end
end


function NPC_QUEST_691(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"어린이 여러분 안녕하신가?! 5월 5일 어린이날을 축하하기 위해 내가 왔다네! 자자~ 딴말 필요 없고, 축하 기념으로 어린이 마크를 줄 테니 유용하게 사용하도록~ 아! 그리고 마크를 받은 후 하루(24시간)가 지나면 다시 또 마크를 줄 테니 잊지 말고 찾아오시게나!",2,"네! 감사합니다!"


	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 여유 공간이 없어서 어린이 마크를 지급할 수 없습니다."


		else
			GetTime = GetSwitchTime(cnum, 402)
			Today   = GetToday()
--			Today	= ChangeTime(ChangeTime(GetCurrentTime(),3,2),2,3)

			if GetTime < Today then
				SetSwitchCurTime(cnum, 402)
				AddSwitchCount(cnum, 403, 1)
				AddItemCount(cnum, 8212, 1)
				return 1,0,"어린이 마크를 지급해 드렸습니다."


			else
				return 1,0,"벌써부터 조급해하긴~ 어린이라면 차분한 마음가짐을 가져야지! 이전에 어린이 마크를 받고 아직 하루(24시간)가  지나지 않았다네.",12,"넵!"


			end

		end



	else
		return 0

	end
end




function NPC_QUEST_692(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"어린이 여러분 안녕하신가?! 5월 5일 어린이날을 축하하기 위해 내가 왔다네! 자자~ 딴말 필요 없고, 축하 기념으로 어린이 마크를 줄 테니 유용하게 사용하도록~ 아! 그리고 마크를 받은 후 하루(24시간)가 지나면 다시 또 마크를 줄 테니 잊지 말고 찾아오시게나!",2,"네! 감사합니다!"


	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 여유 공간이 없어서 어린이 마크를 지급할 수 없습니다."


		else
			GetTime = GetSwitchTime(cnum, 402)
			Today   = GetToday()
--			Today	= ChangeTime(ChangeTime(GetCurrentTime(),3,2),2,3)

			if GetTime < Today then
				SetSwitchCurTime(cnum, 402)
				AddSwitchCount(cnum, 403, 1)
				AddItemCount(cnum, 8212, 1)
				return 1,0,"어린이 마크를 지급해 드렸습니다."


			else
				return 1,0,"벌써부터 조급해하긴~ 어린이라면 차분한 마음가짐을 가져야지! 이전에 어린이 마크를 받고 아직 하루(24시간)가  지나지 않았다네.",12,"넵!"


			end

		end



	else
		return 0

	end
end