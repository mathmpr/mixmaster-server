function NPC_QUEST_679(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 399) < 1 then 
			if GetItemCount(cnum, 8208, 0) < 1 then
				return 2,0,"자네는 귀환의 용사가 아니군. 뭐.. 그래도 상관은 없겠지.. 사냥을 하다 보면 '귀환의 증표' 아이템을 얻을 수 있을거야. '귀환의 증표'를 50개씩 모아오면 유용하게 사용할 수 있는 아이템을 주도록 하지. '귀환의 증표'는 사냥터 어디서든 나오니 열심히 모아보시게나.",2,"그러죠. 수고"


			else
				return 3,0,"와우! 간만에 컴백 하셨구만! 얼굴 잊어버리겠어 이 친구야.. 컴백 기념으로 프리미엄 존 입장권 30일짜리를  선물로 주도록 하지. 후후후~",12,"앗싸!",13,"그건 나중에 받도록 하지요."


			end



		else
			if GetItemCount(cnum, 8208, 0) < 1 then -- 귀환의 반지 없는 유저들 이벤트 진행
				return 2,0,"내가 말한 귀환의 증표는 모아왔나?",32,"'귀환의 증표'를 50개 모아 왔습니다." 


			else                                    -- 귀환의 반자가 있는 유저들 이벤트 진행
				return 2,0,"내가 말한 귀환의 증표는 모아왔나?",33,"'귀환의 증표'를 50개 모아 왔습니다."


			end
		end
			




	elseif req == 2 then
		AddSwitchCount(cnum, 399, 1) --이벤트 수락 공통 확인





	elseif req == 12 then
		return 2,0,"아직 좋아하긴 일러. 후후후~ 귀환의 용사임을 증명하려면 한가지 더 필요한게 있지. 지금 당장 사냥터에 가서 사냥을 하시게. 사냥을 하다 보면 '귀환의 증표' 아이템을 얻을 수 있을거야. '귀환의 증표'를 50개씩 모아오면 유용하게 사용할 수 있는 아이템과 함께 선물교환권을 주도록 하지. '귀환의 증표'는 사냥터 어디서든 나오니 열심히 모아보시게나.",22,"후딱 다녀오지요."


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"이런. 인벤토리에 프리미엄존 입장권을 넣을 공간이 없어. 1칸 이상 비우고 다시 오게나"


		else
			AddItemCount(cnum, 940, 1)
			AddSwitchCount(cnum, 399, 1) --이벤트 수락 공통 확인
			AddSwitchCount(cnum, 400, 1) --프리미엄존 입장권 배급 확인


		end
				



	elseif req == 32 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"이런. 인벤토리에 빈 공간이 없어. 2칸 이상 비우고 다시 오게나"


		elseif GetItemCount(cnum, 8207, 0) < 50 then
			return 1,0,"지금 나한테 사기를 치겠다는건가? [귀환의증표 50개]를 모아오라니까..이렇게 모아올 때마다 선물을 줄 수 있다네. 다시 다녀오게."


		else
			random = SetRandom(cnum, 1,100)

			if random < 3 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1027, 1)


			elseif random >= 3 and random < 5 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 874, 1)


			elseif random >= 5 and random < 7 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3708, 1)


			elseif random >= 7 and random < 9 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3316, 1)


			elseif random >= 9 and random < 89 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 4491, 10)


			elseif random >= 89 and random < 90 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3501, 1)


			elseif random >= 90 and random < 91 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1333, 1)


			elseif random >= 91 and random <= 100 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 80, 1)
				AddItemCount(cnum, 80, 1)


			else
				return 0

			end			
			return 1,0,"수고했구만.. 생각보다 열심히 하고 있군.. 지금 준 선물은 필요할 때 쓰게나. 자~ 1분1초가 아쉬운 판국에 뭐하고 있나. 어서 다시 모아와야지?"

		end







	elseif req == 33 then

		if GetSwitchCount(cnum, 400) < 1 then
			if GetRemainPocket(cnum) < 4 then
				return 1,0,"이런. 인벤토리에 빈 공간이 없어. 4칸 이상 비우고 다시 오게나"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"지금 나한테 사기를 치겠다는건가? [귀환의증표 50개]를 모아오라니까..이렇게 모아올 때마다 선물을 줄 수 있다네. 다시 다녀오게."


			else

				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				else
					return 0
	
				end
				return 1,0,"수고했구만.. 생각보다 열심히 하고 있군.. 지금 준 선물은 필요할 때 쓰고, 선물교환 리본은 잘 보관하고 있게나.. 나중에 추첨해서 아주 아주 좋을걸 줄테니말야.. 아 그리고 자네는 프리미엄존 입장권을 받아가지 않았더군. 그런 좋은건 잊어버리지 말고 챙겨갔어야지. 이번만 내가 챙겨주는거야"

			end

		else
			if GetRemainPocket(cnum) < 3 then
				return 1,0,"이런. 인벤토리에 빈 공간이 없어. 3칸 이상 비우고 다시 오게나"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"지금 나한테 사기를 치겠다는건가? [귀환의증표 50개]를 모아오라니까..이렇게 모아올 때마다 선물을 줄 수 있다네. 다시 다녀오게."


			else
				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				else
					return 0
		
				end
				return 1,0,"수고했구만.. 생각보다 열심히 하고 있군.. 지금 준 선물은 필요할 때 쓰고, 선물교환 리본은 잘 보관하고 있게나.. 나중에 추첨해서 아주 아주 좋을걸 줄테니말야.. 자~ 1분1초가 아쉬운 판국에 뭐하고 있나. 어서 다시 모아와야지?"
			end
		end

	else
		return 0

	end
end














function NPC_QUEST_680(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 399) < 1 then 
			if GetItemCount(cnum, 8208, 0) < 1 then
				return 2,0,"자네는 귀환의 용사가 아니군. 뭐.. 그래도 상관은 없겠지.. 사냥을 하다 보면 '귀환의 증표' 아이템을 얻을 수 있을거야. '귀환의 증표'를 50개씩 모아오면 유용하게 사용할 수 있는 아이템을 주도록 하지. '귀환의 증표'는 사냥터 어디서든 나오니 열심히 모아보시게나.",2,"그러죠. 수고"


			else
				return 3,0,"와우! 간만에 컴백 하셨구만! 얼굴 잊어버리겠어 이 친구야.. 컴백 기념으로 프리미엄 존 입장권 30일짜리를  선물로 주도록 하지. 후후후~",12,"앗싸!",13,"그건 나중에 받도록 하지요."


			end



		else
			if GetItemCount(cnum, 8208, 0) < 1 then -- 귀환의 반지 없는 유저들 이벤트 진행
				return 2,0,"내가 말한 귀환의 증표는 모아왔나?",32,"'귀환의 증표'를 50개 모아 왔습니다." 


			else                                    -- 귀환의 반자가 있는 유저들 이벤트 진행
				return 2,0,"내가 말한 귀환의 증표는 모아왔나?",33,"'귀환의 증표'를 50개 모아 왔습니다."


			end
		end
			




	elseif req == 2 then
		AddSwitchCount(cnum, 399, 1) --이벤트 수락 공통 확인





	elseif req == 12 then
		return 2,0,"아직 좋아하긴 일러. 후후후~ 귀환의 용사임을 증명하려면 한가지 더 필요한게 있지. 지금 당장 사냥터에 가서 사냥을 하시게. 사냥을 하다 보면 '귀환의 증표' 아이템을 얻을 수 있을거야. '귀환의 증표'를 50개씩 모아오면 유용하게 사용할 수 있는 아이템과 함께 선물교환권을 주도록 하지. '귀환의 증표'는 사냥터 어디서든 나오니 열심히 모아보시게나.",22,"후딱 다녀오지요."


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"이런. 인벤토리에 프리미엄존 입장권을 넣을 공간이 없어. 1칸 이상 비우고 다시 오게나"


		else
			AddItemCount(cnum, 940, 1)
			AddSwitchCount(cnum, 399, 1) --이벤트 수락 공통 확인
			AddSwitchCount(cnum, 400, 1) --프리미엄존 입장권 배급 확인


		end
				



	elseif req == 32 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"이런. 인벤토리에 빈 공간이 없어. 2칸 이상 비우고 다시 오게나"


		elseif GetItemCount(cnum, 8207, 0) < 50 then
			return 1,0,"지금 나한테 사기를 치겠다는건가? [귀환의증표 50개]를 모아오라니까..이렇게 모아올 때마다 선물을 줄 수 있다네. 다시 다녀오게."


		else
			random = SetRandom(cnum, 1,100)

			if random < 3 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1027, 1)


			elseif random >= 3 and random < 5 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 874, 1)


			elseif random >= 5 and random < 7 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3708, 1)


			elseif random >= 7 and random < 9 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3316, 1)


			elseif random >= 9 and random < 89 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 4491, 10)


			elseif random >= 89 and random < 90 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3501, 1)


			elseif random >= 90 and random < 91 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1333, 1)


			elseif random >= 91 and random <= 100 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 80, 1)
				AddItemCount(cnum, 80, 1)


			else
				return 0

			end			
			return 1,0,"수고했구만.. 생각보다 열심히 하고 있군.. 지금 준 선물은 필요할 때 쓰게나. 자~ 1분1초가 아쉬운 판국에 뭐하고 있나. 어서 다시 모아와야지?"

		end







	elseif req == 33 then

		if GetSwitchCount(cnum, 400) < 1 then
			if GetRemainPocket(cnum) < 4 then
				return 1,0,"이런. 인벤토리에 빈 공간이 없어. 4칸 이상 비우고 다시 오게나"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"지금 나한테 사기를 치겠다는건가? [귀환의증표 50개]를 모아오라니까..이렇게 모아올 때마다 선물을 줄 수 있다네. 다시 다녀오게."


			else

				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				else
					return 0
	
				end
				return 1,0,"수고했구만.. 생각보다 열심히 하고 있군.. 지금 준 선물은 필요할 때 쓰고, 선물교환 리본은 잘 보관하고 있게나.. 나중에 추첨해서 아주 아주 좋을걸 줄테니말야.. 아 그리고 자네는 프리미엄존 입장권을 받아가지 않았더군. 그런 좋은건 잊어버리지 말고 챙겨갔어야지. 이번만 내가 챙겨주는거야"

			end

		else
			if GetRemainPocket(cnum) < 3 then
				return 1,0,"이런. 인벤토리에 빈 공간이 없어. 3칸 이상 비우고 다시 오게나"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"지금 나한테 사기를 치겠다는건가? [귀환의증표 50개]를 모아오라니까..이렇게 모아올 때마다 선물을 줄 수 있다네. 다시 다녀오게."


			else
				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				else
					return 0
		
				end
				return 1,0,"수고했구만.. 생각보다 열심히 하고 있군.. 지금 준 선물은 필요할 때 쓰고, 선물교환 리본은 잘 보관하고 있게나.. 나중에 추첨해서 아주 아주 좋을걸 줄테니말야.. 자~ 1분1초가 아쉬운 판국에 뭐하고 있나. 어서 다시 모아와야지?"
			end
		end

	else
		return 0

	end
end






function NPC_QUEST_681(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 399) < 1 then 
			if GetItemCount(cnum, 8208, 0) < 1 then
				return 2,0,"자네는 귀환의 용사가 아니군. 뭐.. 그래도 상관은 없겠지.. 사냥을 하다 보면 '귀환의 증표' 아이템을 얻을 수 있을거야. '귀환의 증표'를 50개씩 모아오면 유용하게 사용할 수 있는 아이템을 주도록 하지. '귀환의 증표'는 사냥터 어디서든 나오니 열심히 모아보시게나.",2,"그러죠. 수고"


			else
				return 3,0,"와우! 간만에 컴백 하셨구만! 얼굴 잊어버리겠어 이 친구야.. 컴백 기념으로 프리미엄 존 입장권 30일짜리를  선물로 주도록 하지. 후후후~",12,"앗싸!",13,"그건 나중에 받도록 하지요."


			end



		else
			if GetItemCount(cnum, 8208, 0) < 1 then -- 귀환의 반지 없는 유저들 이벤트 진행
				return 2,0,"내가 말한 귀환의 증표는 모아왔나?",32,"'귀환의 증표'를 50개 모아 왔습니다." 


			else                                    -- 귀환의 반자가 있는 유저들 이벤트 진행
				return 2,0,"내가 말한 귀환의 증표는 모아왔나?",33,"'귀환의 증표'를 50개 모아 왔습니다."


			end
		end
			




	elseif req == 2 then
		AddSwitchCount(cnum, 399, 1) --이벤트 수락 공통 확인





	elseif req == 12 then
		return 2,0,"아직 좋아하긴 일러. 후후후~ 귀환의 용사임을 증명하려면 한가지 더 필요한게 있지. 지금 당장 사냥터에 가서 사냥을 하시게. 사냥을 하다 보면 '귀환의 증표' 아이템을 얻을 수 있을거야. '귀환의 증표'를 50개씩 모아오면 유용하게 사용할 수 있는 아이템과 함께 선물교환권을 주도록 하지. '귀환의 증표'는 사냥터 어디서든 나오니 열심히 모아보시게나.",22,"후딱 다녀오지요."


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"이런. 인벤토리에 프리미엄존 입장권을 넣을 공간이 없어. 1칸 이상 비우고 다시 오게나"


		else
			AddItemCount(cnum, 940, 1)
			AddSwitchCount(cnum, 399, 1) --이벤트 수락 공통 확인
			AddSwitchCount(cnum, 400, 1) --프리미엄존 입장권 배급 확인


		end
				



	elseif req == 32 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"이런. 인벤토리에 빈 공간이 없어. 2칸 이상 비우고 다시 오게나"


		elseif GetItemCount(cnum, 8207, 0) < 50 then
			return 1,0,"지금 나한테 사기를 치겠다는건가? [귀환의증표 50개]를 모아오라니까..이렇게 모아올 때마다 선물을 줄 수 있다네. 다시 다녀오게."


		else
			random = SetRandom(cnum, 1,100)

			if random < 3 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1027, 1)


			elseif random >= 3 and random < 5 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 874, 1)


			elseif random >= 5 and random < 7 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3708, 1)


			elseif random >= 7 and random < 9 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3316, 1)


			elseif random >= 9 and random < 89 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 4491, 10)


			elseif random >= 89 and random < 90 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3501, 1)


			elseif random >= 90 and random < 91 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1333, 1)


			elseif random >= 91 and random <= 100 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 80, 1)
				AddItemCount(cnum, 80, 1)


			else
				return 0

			end			
			return 1,0,"수고했구만.. 생각보다 열심히 하고 있군.. 지금 준 선물은 필요할 때 쓰게나. 자~ 1분1초가 아쉬운 판국에 뭐하고 있나. 어서 다시 모아와야지?"

		end







	elseif req == 33 then

		if GetSwitchCount(cnum, 400) < 1 then
			if GetRemainPocket(cnum) < 4 then
				return 1,0,"이런. 인벤토리에 빈 공간이 없어. 4칸 이상 비우고 다시 오게나"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"지금 나한테 사기를 치겠다는건가? [귀환의증표 50개]를 모아오라니까..이렇게 모아올 때마다 선물을 줄 수 있다네. 다시 다녀오게."


			else

				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본
					AddSwitchCount(cnum, 400, 1)


				else
					return 0
	
				end
				return 1,0,"수고했구만.. 생각보다 열심히 하고 있군.. 지금 준 선물은 필요할 때 쓰고, 선물교환 리본은 잘 보관하고 있게나.. 나중에 추첨해서 아주 아주 좋을걸 줄테니말야.. 아 그리고 자네는 프리미엄존 입장권을 받아가지 않았더군. 그런 좋은건 잊어버리지 말고 챙겨갔어야지. 이번만 내가 챙겨주는거야"

			end

		else
			if GetRemainPocket(cnum) < 3 then
				return 1,0,"이런. 인벤토리에 빈 공간이 없어. 3칸 이상 비우고 다시 오게나"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"지금 나한테 사기를 치겠다는건가? [귀환의증표 50개]를 모아오라니까..이렇게 모아올 때마다 선물을 줄 수 있다네. 다시 다녀오게."


			else
				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 478, 1) -- 선물 교환 리본

				else
					return 0
		
				end
				return 1,0,"수고했구만.. 생각보다 열심히 하고 있군.. 지금 준 선물은 필요할 때 쓰고, 선물교환 리본은 잘 보관하고 있게나.. 나중에 추첨해서 아주 아주 좋을걸 줄테니말야.. 자~ 1분1초가 아쉬운 판국에 뭐하고 있나. 어서 다시 모아와야지?"
			end
		end

	else
		return 0

	end
end