function NPC_QUEST_1611(cnum, reqNumber)--[수능 종료 이벤트] 마지리타 나나 158.100

	req = reqNumber

--아래 시간은 test 서버 기준 (본 시간보다 -4~5분 느림)
--[[	CurTime = (GetCurrentTime () - 230964) - 1728000 --32400 : 9 시간, 1728000 : 20일  == 현재 시스템 시간 값 + 후, - 전
	Year = CurTime/ 30758400
	Day = (CurTime % 30758400) / 86400
	Hour = (CurTime % 30758400 % 86400) / 3200
	Min = (CurTime % 30758400 % 86400 % 3200) / 60
	Second = (CurTime % 30758400 % 86400 % 3200% 60)
--]]

--본섭 기준 프르마이
	CurTime = (GetCurrentTime () - 231204) - 1728000 --32400 : 본섭은 4~5분 느리기 때문에 4분 240 값을 더함..
	Year = CurTime/ 30758400
	Day = (CurTime % 30758400) / 86400
	Hour = (CurTime % 30758400 % 86400) / 3200
	Min = (CurTime % 30758400 % 86400 % 3200) / 60
	Second = (CurTime % 30758400 % 86400 % 3200% 60)

-- 750 출첵여부확인
-- 751 출첵스위치 (시간체크)

	if req == 1 then

		return 3,0, "[나나]@@안녕하세요~여러분!@상큼!발랄!나나예요~@이번에 대학수학능력이 있었죠?열심히 한 수험생들을 응원하며 '출석 이벤트'를 걸고 나나가 상품을 드립니다!",2,"이벤트 설명",3,"[출석체크]"


	elseif req == 2 then
		return 4,0, "[나나]@@다음 중 궁금한 것을 선택해주세요.",4,"[이벤트 참여 방법]",5,"[보상 아이템]",6,"[주의사항]"


	elseif req == 3 then

		if GetRemainPocket(cnum) < 1 then
		return 1,0,"아이템 인벤토리가 부족합니다. 인벤토리를 1칸 이상 비우고 오십시오."
		

		elseif GetSwitchCount(cnum, 750) < 1 then -- 처음 방문
			SetSwitchCount(cnum,750,math.floor(Day))
			SetSwitchCount(cnum, 751, 1)
			AddItemCount(cnum, 8908,1)
			return 1,0, "[나나]@@출석체크 도장 쾅!@'분홍 구름(60분) 1개(1.5배)를 획득하였습니다.'"

		elseif GetSwitchCount(cnum, 750) ~= math.floor(Day) then -- 두 번째 방문 이상 (분이 다름!!!)
			if GetSwitchCount(cnum, 750) < math.floor(Day) then
				if math.floor(Day) - GetSwitchCount(cnum, 750) == 1 then--1분 차이 (연속)
					if GetSwitchCount(cnum, 751) == 1 then -- 리셋됐을 경우 다시 처음 아이템을 받음!

					SetSwitchCount(cnum,750,math.floor(Day))
					AddSwitchCount(cnum, 751, 1)
					AddItemCount(cnum, 8909,1)
					return 1,0, "[나나]@@2번째 출석체크 도장 쾅!@'분홍 구름(80분) 1개(2배)를 획득하였습니다.'"

					elseif GetSwitchCount(cnum, 751) == 2 then

					SetSwitchCount(cnum,750,math.floor(Day))
					AddSwitchCount(cnum, 751, 1)
					AddItemCount(cnum, 8910,1)
					return 1,0, "[나나]@@3번째 출석체크 도장 쾅!@'분홍 구름(100분) 1개(2.5배)를 획득하였습니다.'"


					elseif GetSwitchCount(cnum, 751) >= 3 then

					SetSwitchCount(cnum,750,math.floor(Day))
					AddSwitchCount(cnum, 751, 1)
					AddItemCount(cnum, 8911,1)
					return 1,0, "[나나]@@마지막 출석체크 도장 쾅!@'분홍 구름(120분) 1개(3배)를 획득하였습니다.'"

					else
					return 1,0, "오류1"

					end

				elseif math.floor(Day) - GetSwitchCount(cnum, 750) >= 2 then --2분 차이 이상 (중간에 빼먹었군)
				SetSwitchCount(cnum, 750, math.floor(Day))
				SetSwitchCount(cnum, 751, 1)
				AddItemCount(cnum, 8908, 1)
				return 1,0, "[나나]@@연속 출석 실패!@에구..아까워라~다시 처음부터 도전해보세요!@'분홍 구름(60분) 1개(1.5배)를 획득하였습니다."
				end

			else -- 갖고 있던 값이 현재 시간보다 클 일은 없음.
			return 1,0, "뜨면 안됨" --분 초는 어쩔 수 없음 ㅜㅜ
			end

		else --분홍 구름를 받은 시간과 현재 시간이 같을때 (즉 1일)

				return 1,0, "[나나]@@오늘의 출석체크 보상 아이템은 @드렸답니다~@''다음 날 (24:00이후)'' @다시 와서 출석체크를 해 주세요~!"
		end



	elseif req == 4 then
		return 2,0, "[나나]@@이벤트 참여 방법)@1.NPC[나나]를 클릭해서 '출석체크'@2.'24시간(현재시간 자정이후!) 후에' 다시 찾아와 '출석체크'!@3.출석체크 횟수에 따라 보상이 달라짐!@@(단, 연속시에만 상품이 달라지며, 중간에 체크를 못 할 경우 첫 보상으로 돌아갑니다!)",2,"[이전]"


	elseif req == 5 then
		return 2,0, "[나나]@@보상 아이템 목록)@1일:분홍 구름(60분)@--EXP,아이템,코어,이속 1.5배증가!@2일:분홍 구름(80분)@--EXP,아이템,코어,이속 2배증가!@3일:분홍 구름(100분)@--EXP,아이템,코어,이속 2.5배증가!@4일:분홍 구름(120분)@--EXP,아이템,코어,이속 3배증가!",2,"[이전]"


	elseif req == 6 then
		return 2,0, "[나나]@@주의사항)@해당 이벤트는 ''연속 출석''시에만 보상 아이템의 배율이 올라가게 됩니다!@만일 출석을 실패할 경우 맨 처음 보상으로 돌아가기 때문에 시간체크를 잘 하시기 바랍니다.@@출석체크를 하신 후 해당 날 자정(다음날)에 연속 출석이 가능합니다.",2,"[이전]"

	end

end

