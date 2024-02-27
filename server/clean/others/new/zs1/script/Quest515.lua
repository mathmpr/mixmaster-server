function NPC_QUEST_693(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 406) < 1 then 
			return 2,0,"나는야 선도부장. 요즘 믹스마스터의 출석률이 저조하다는 이야기가 들려 내가 나섰지. 자자.. 열심히들 출석 합시다.",2,"출석 체크는 어떻게?"


		else
			return 3,0,"출석하러 왔나?@열심히 하고 있군..@좋은 마음가짐이다.",32,"출석 체크 할께요.",33,"지금까지 몇 번 체크 했나요?"


		end




	elseif req == 2 then
		return 2,0,"출석 체크?? 간단하지. 나를 찾아오면 된다네. 출석은 2시간마다 가능한데, 내가 주는 출석체크용 타이머 암릿을 착용하고 2시간이 지난 후 다시 찾아오면 된다네. 즉, 열심히 한다면 하루에 총 12번을 출석 체크 할 수 있다는 말이지. 단, 출석체크용 타이머 암릿은 착용 시에만 시간이 흐르니까 빨리빨리 소모해버리는게 좋을거야. 괜시리 출석 체크 해놓고 나갔다가 2시간 뒤에 접속해서 나를 찾아오는 일은 없도록 하시게나.",12,"출석 체크를 하면 뭐가 좋나요?"



	elseif req == 12 then
		return 2,0,"물론, 좋지! 출석 체크를 10회 할 때마다 성실함을 인정하여 아래 아이템 중 1개를 선물을 주도록 하지.@[저주받은 프리미엄 마크 1개]@[축복의 시너지레벨 상승물약 1개]@[축복의 티어스타 1개]@[축복의 생명의 열매 1개]@[밸러의 참고서 1개]@[슈퍼노점권 1개]@[일반 메가폰 5개]@그리고 이벤트가 종료될 때까지 출석 체크를 가장 많이 한 사람에게는 100,000캐시를 줄 예정이니 열심히 출석하시게나.",22,"넵! 지금부터 출석 합니다!"




	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"타이머 암릿을 넣을 공간이 부족합니다."

		else
			SetSwitchCurTime(cnum, 405) -- 출석체크 시작 시간 저장
			AddSwitchCount(cnum, 406, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 407, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 408, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8213, 1)
			return 1,0,"타이머 암릿을 지급받았습니다."
		end





	
	elseif req == 32 then
		GetTime = GetSwitchTime(cnum, 405)
		Today	= GetCurrentTime()


		if Today - GetTime >= 7200 then
--		if Today - GetTime >= 60 then
			if GetItemCount(cnum, 8213, 0) < 1 and GetItemCount(cnum, 8213, 2) < 1 then
				return 2,0,"음.. 2시간 동안 열심히 했군. 체크 완료되었네. 자.. 출석 체크용 타이머를 다시 줄 테니.. 계속 열심히 오케이?",42,"네네~"


			else
				return 2,0,"타이머 암릿의 시간이 모두 지나 아이템이 사라지면 다시 찾아오게나.",52,"그러죠. 수고요~"
				

			end

		
		else
			return 2,0,"이전에 출석 체크 한 뒤로 아직 2시간이 지나지 않았군. 2시간이 지난 다음에 체크를 할 수 있으니. 출석 체크 타이머의 시간이 모두 지나 아이템이 사라지면 다시 찾아오게나.",52,"그러죠. 수고요~"



		end



	elseif req == 33 then
		Time = GetSwitchCount(cnum, 407)
		return 2,0,"출석 횟수 확인인가..? 음.. 자네는 여태 총 ["..Time.."회 ] 출석 했다네. 계속 열심히 오케이?",62,"네네~"

		




	elseif req == 42 then
		if GetSwitchCount(cnum, 408) < 9 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"새로운 타이머 암릿을 넣을 공간이 부족합니다."


			else
				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- 출석체크 시작 시간 재 저장
				AddSwitchCount(cnum, 407, 1) -- 출석체크 횟수 확인
				AddSwitchCount(cnum, 408, 1) -- 출석체크 10회 확인용
				return 1,0,"새로운 타이머 암릿을 지급받았습니다."

			end


		else
			if GetRemainPocket(cnum) < 2 then
				return 1,0,"새로운 타이머 암릿과 출석 체크 10회 보상 아이템을 넣을 공간이 부족합니다."


			else

				random = SetRandom(cnum, 1, 100)


				if random <= 2 then
					AddItemCount(cnum, 1027, 1)


				elseif random >= 3 and random <= 4 then
					AddItemCount(cnum, 874, 1)


				elseif random >= 5 and random <= 6 then
					AddItemCount(cnum, 3708, 1)


				elseif random >= 7 and random <= 8 then
					AddItemCount(cnum, 3316, 1)


				elseif random >= 9 and random <= 88 then
					AddItemCount(cnum, 4491, 5)


				elseif random >= 89 and random <= 89 then
					AddItemCount(cnum, 3501, 1)


				elseif random >= 90 and random <= 90 then
					AddItemCount(cnum, 1333, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 80, 1)


				else
					return 0
		
				end

				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- 출석체크 시작 시간 재 저장
				SetSwitchCount(cnum, 408, 0) -- 10회 체크 초기화
				AddSwitchCount(cnum, 407, 1) -- 출석체크 횟수 확인
				return 1,0,"새로운 타이머 암릿과 10회 보상 아이템을 지급받았습니다."
				

			end	

		end		







	elseif req == 52 then
		return 0
					




	elseif req == 62 then
		return 0





	else
		return 0

	end
end




function NPC_QUEST_694(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 406) < 1 then 
			return 2,0,"나는야 선도부장. 요즘 믹스마스터의 출석률이 저조하다는 이야기가 들려 내가 나섰지. 자자.. 열심히들 출석 합시다.",2,"출석 체크는 어떻게?"


		else
			return 3,0,"출석하러 왔나?@열심히 하고 있군..@좋은 마음가짐이다.",32,"출석 체크 할께요.",33,"지금까지 몇 번 체크 했나요?"


		end




	elseif req == 2 then
		return 2,0,"출석 체크?? 간단하지. 나를 찾아오면 된다네. 출석은 2시간마다 가능한데, 내가 주는 출석체크용 타이머 암릿을 착용하고 2시간이 지난 후 다시 찾아오면 된다네. 즉, 열심히 한다면 하루에 총 12번을 출석 체크 할 수 있다는 말이지. 단, 출석체크용 타이머 암릿은 착용 시에만 시간이 흐르니까 빨리빨리 소모해버리는게 좋을거야. 괜시리 출석 체크 해놓고 나갔다가 2시간 뒤에 접속해서 나를 찾아오는 일은 없도록 하시게나.",12,"출석 체크를 하면 뭐가 좋나요?"



	elseif req == 12 then
		return 2,0,"물론, 좋지! 출석 체크를 10회 할 때마다 성실함을 인정하여 아래 아이템 중 1개를 선물을 주도록 하지.@[저주받은 프리미엄 마크 1개]@[축복의 시너지레벨 상승물약 1개]@[축복의 티어스타 1개]@[축복의 생명의 열매 1개]@[밸러의 참고서 1개]@[슈퍼노점권 1개]@[일반 메가폰 5개]@그리고 이벤트가 종료될 때까지 출석 체크를 가장 많이 한 사람에게는 100,000캐시를 줄 예정이니 열심히 출석하시게나.",22,"넵! 지금부터 출석 합니다!"




	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"타이머 암릿을 넣을 공간이 부족합니다."

		else
			SetSwitchCurTime(cnum, 405) -- 출석체크 시작 시간 저장
			AddSwitchCount(cnum, 406, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 407, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 408, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8213, 1)
			return 1,0,"타이머 암릿을 지급받았습니다."
		end





	
	elseif req == 32 then
		GetTime = GetSwitchTime(cnum, 405)
		Today	= GetCurrentTime()


		if Today - GetTime >= 7200 then
--		if Today - GetTime >= 60 then
			if GetItemCount(cnum, 8213, 0) < 1 and GetItemCount(cnum, 8213, 2) < 1 then
				return 2,0,"음.. 2시간 동안 열심히 했군. 체크 완료되었네. 자.. 출석 체크용 타이머를 다시 줄 테니.. 계속 열심히 오케이?",42,"네네~"


			else
				return 2,0,"타이머 암릿의 시간이 모두 지나 아이템이 사라지면 다시 찾아오게나.",52,"그러죠. 수고요~"
				

			end

		
		else
			return 2,0,"이전에 출석 체크 한 뒤로 아직 2시간이 지나지 않았군. 2시간이 지난 다음에 체크를 할 수 있으니. 출석 체크 타이머의 시간이 모두 지나 아이템이 사라지면 다시 찾아오게나.",52,"그러죠. 수고요~"



		end



	elseif req == 33 then
		Time = GetSwitchCount(cnum, 407)
		return 2,0,"출석 횟수 확인인가..? 음.. 자네는 여태 총 ["..Time.."회 ] 출석 했다네. 계속 열심히 오케이?",62,"네네~"

		




	elseif req == 42 then
		if GetSwitchCount(cnum, 408) < 9 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"새로운 타이머 암릿을 넣을 공간이 부족합니다."


			else
				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- 출석체크 시작 시간 재 저장
				AddSwitchCount(cnum, 407, 1) -- 출석체크 횟수 확인
				AddSwitchCount(cnum, 408, 1) -- 출석체크 10회 확인용
				return 1,0,"새로운 타이머 암릿을 지급받았습니다."

			end


		else
			if GetRemainPocket(cnum) < 2 then
				return 1,0,"새로운 타이머 암릿과 출석 체크 10회 보상 아이템을 넣을 공간이 부족합니다."


			else

				random = SetRandom(cnum, 1, 100)


				if random <= 2 then
					AddItemCount(cnum, 1027, 1)


				elseif random >= 3 and random <= 4 then
					AddItemCount(cnum, 874, 1)


				elseif random >= 5 and random <= 6 then
					AddItemCount(cnum, 3708, 1)


				elseif random >= 7 and random <= 8 then
					AddItemCount(cnum, 3316, 1)


				elseif random >= 9 and random <= 88 then
					AddItemCount(cnum, 4491, 5)


				elseif random >= 89 and random <= 89 then
					AddItemCount(cnum, 3501, 1)


				elseif random >= 90 and random <= 90 then
					AddItemCount(cnum, 1333, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 80, 1)


				else
					return 0
		
				end

				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- 출석체크 시작 시간 재 저장
				SetSwitchCount(cnum, 408, 0) -- 10회 체크 초기화
				AddSwitchCount(cnum, 407, 1) -- 출석체크 횟수 확인
				return 1,0,"새로운 타이머 암릿과 10회 보상 아이템을 지급받았습니다."
				

			end	

		end		







	elseif req == 52 then
		return 0
					




	elseif req == 62 then
		return 0





	else
		return 0

	end
end





function NPC_QUEST_695(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 406) < 1 then 
			return 2,0,"나는야 선도부장. 요즘 믹스마스터의 출석률이 저조하다는 이야기가 들려 내가 나섰지. 자자.. 열심히들 출석 합시다.",2,"출석 체크는 어떻게?"


		else
			return 3,0,"출석하러 왔나?@열심히 하고 있군..@좋은 마음가짐이다.",32,"출석 체크 할께요.",33,"지금까지 몇 번 체크 했나요?"


		end




	elseif req == 2 then
		return 2,0,"출석 체크?? 간단하지. 나를 찾아오면 된다네. 출석은 2시간마다 가능한데, 내가 주는 출석체크용 타이머 암릿을 착용하고 2시간이 지난 후 다시 찾아오면 된다네. 즉, 열심히 한다면 하루에 총 12번을 출석 체크 할 수 있다는 말이지. 단, 출석체크용 타이머 암릿은 착용 시에만 시간이 흐르니까 빨리빨리 소모해버리는게 좋을거야. 괜시리 출석 체크 해놓고 나갔다가 2시간 뒤에 접속해서 나를 찾아오는 일은 없도록 하시게나.",12,"출석 체크를 하면 뭐가 좋나요?"



	elseif req == 12 then
		return 2,0,"물론, 좋지! 출석 체크를 10회 할 때마다 성실함을 인정하여 아래 아이템 중 1개를 선물을 주도록 하지.@[저주받은 프리미엄 마크 1개]@[축복의 시너지레벨 상승물약 1개]@[축복의 티어스타 1개]@[축복의 생명의 열매 1개]@[밸러의 참고서 1개]@[슈퍼노점권 1개]@[일반 메가폰 5개]@그리고 이벤트가 종료될 때까지 출석 체크를 가장 많이 한 사람에게는 100,000캐시를 줄 예정이니 열심히 출석하시게나.",22,"넵! 지금부터 출석 합니다!"




	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"타이머 암릿을 넣을 공간이 부족합니다."

		else
			SetSwitchCurTime(cnum, 405) -- 출석체크 시작 시간 저장
			AddSwitchCount(cnum, 406, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 407, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 408, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8213, 1)
			return 1,0,"타이머 암릿을 지급받았습니다."
		end





	
	elseif req == 32 then
		GetTime = GetSwitchTime(cnum, 405)
		Today	= GetCurrentTime()


		if Today - GetTime >= 7200 then
--		if Today - GetTime >= 60 then
			if GetItemCount(cnum, 8213, 0) < 1 and GetItemCount(cnum, 8213, 2) < 1 then
				return 2,0,"음.. 2시간 동안 열심히 했군. 체크 완료되었네. 자.. 출석 체크용 타이머를 다시 줄 테니.. 계속 열심히 오케이?",42,"네네~"


			else
				return 2,0,"타이머 암릿의 시간이 모두 지나 아이템이 사라지면 다시 찾아오게나.",52,"그러죠. 수고요~"
				

			end

		
		else
			return 2,0,"이전에 출석 체크 한 뒤로 아직 2시간이 지나지 않았군. 2시간이 지난 다음에 체크를 할 수 있으니. 출석 체크 타이머의 시간이 모두 지나 아이템이 사라지면 다시 찾아오게나.",52,"그러죠. 수고요~"



		end



	elseif req == 33 then
		Time = GetSwitchCount(cnum, 407)
		return 2,0,"출석 횟수 확인인가..? 음.. 자네는 여태 총 ["..Time.."회 ] 출석 했다네. 계속 열심히 오케이?",62,"네네~"

		




	elseif req == 42 then
		if GetSwitchCount(cnum, 408) < 9 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"새로운 타이머 암릿을 넣을 공간이 부족합니다."


			else
				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- 출석체크 시작 시간 재 저장
				AddSwitchCount(cnum, 407, 1) -- 출석체크 횟수 확인
				AddSwitchCount(cnum, 408, 1) -- 출석체크 10회 확인용
				return 1,0,"새로운 타이머 암릿을 지급받았습니다."

			end


		else
			if GetRemainPocket(cnum) < 2 then
				return 1,0,"새로운 타이머 암릿과 출석 체크 10회 보상 아이템을 넣을 공간이 부족합니다."


			else

				random = SetRandom(cnum, 1, 100)


				if random <= 2 then
					AddItemCount(cnum, 1027, 1)


				elseif random >= 3 and random <= 4 then
					AddItemCount(cnum, 874, 1)


				elseif random >= 5 and random <= 6 then
					AddItemCount(cnum, 3708, 1)


				elseif random >= 7 and random <= 8 then
					AddItemCount(cnum, 3316, 1)


				elseif random >= 9 and random <= 88 then
					AddItemCount(cnum, 4491, 5)


				elseif random >= 89 and random <= 89 then
					AddItemCount(cnum, 3501, 1)


				elseif random >= 90 and random <= 90 then
					AddItemCount(cnum, 1333, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 80, 1)


				else
					return 0
		
				end

				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- 출석체크 시작 시간 재 저장
				SetSwitchCount(cnum, 408, 0) -- 10회 체크 초기화
				AddSwitchCount(cnum, 407, 1) -- 출석체크 횟수 확인
				return 1,0,"새로운 타이머 암릿과 10회 보상 아이템을 지급받았습니다."
				

			end	

		end		







	elseif req == 52 then
		return 0
					




	elseif req == 62 then
		return 0





	else
		return 0

	end
end