function NPC_QUEST_1569(cnum, reqNumber) -- 엘리시온 / 바르크

	req = reqNumber

	if req == 1 then
		return 6,0,"하하! 나는 최고의 몬스터 목장을 운영하는 바르크라네! 하하! 최근 이곳에 새로운 몬스터가 등장했다고해서 거금 2백 GP를 내고 여기로 왔지! 멋진 헨치들을 얻기 전까지는 돌아갈 수 없네. 하하 밸러! 자네가 도와주겠는가? 자네의 수준을 알려주게나!",2,"레벨90이상",3,"레벨100이상",4,"레벨110이상",5,"레벨120이상",6,"레벨130이상"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 90이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네는 꽤가 용감해보이는군! 내가 원하는 코어는 [펀치라바]라는 녀석일세! 비실비실한 놈말고 레벨 100 이상의 [펀치라바]의 코어 1개를 가져오게! 그리고 [각 색깔 부유석 결정체] 1개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",101,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 100이상의 [펀치라바]와 [각 색깔 부유석 결정체] 1개씩을 가져왔는가?",12,"네! 여기요!",13,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 100이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네! 또 왔군! 이번에 내가 원하는 코어는 [램프앤소켓]이라는 녀석일세! 이번에도 튼튼한 놈으로다가 레벨 110 이상의 [램프앤소켓] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 3개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",102,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 110 이상의 [램프앤소켓]과 [각 색깔 부유석 결정체] 3개씩을 가져왔는가?",22,"네! 여기요!",23,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 110이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 왔는가! 고맙네! 이번에 내가 원하는 코어는 [비틀거]라는 녀석일세! 이번에도 건강한 놈으로다가 레벨 120 이상의 [비틀거] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 5개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",103,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 120 이상의 [비틀거]와 [각 색깔 부유석 결정체] 5개씩을 가져왔는가?",32,"네! 여기요!",33,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 120이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 고맙네! 자네! 또 왔는가!@이번에 내가 원하는 코어는 [솔져호크]라는 녀석일세! 건강한 놈으로 레벨 130 이상의 [솔져호크] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 10개씩도 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",104,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 130 이상의 [솔져호크]와 [각 색깔 부유석 결정체] 10개씩을 가져왔는가?",42,"네! 여기요!",44,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"내 시험은 여기까지라네. 조만간 다른 성에서도 테스트를 치를 예정이니 그때까지 더 실력을 쌓게나."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 130이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"고맙네! 또 왔는가!@이번엔 [포이즈너]라는 녀석일세! 레벨 140 이상의 [포이즈너] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 15개씩도 가져오게!그러면 자네가 쓸만한 코어 1개를 하나주지!",105,"네~! 알겠습니다.!"
			end
		else
			return 4,0,"레벨 140 이상의 [포이즈너]와 [각 색깔 부유석 결정체] 15개씩을 가져왔는가?",52,"네! 여기요!",54,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end







--퀘스트 수락 했을 때 처리부
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"기다리겠네"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"기다리겠네"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"기다리겠네"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"기다리겠네"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"기다리겠네"






--레벨90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--펀치라바
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1029, -1)--펀치라바 뺐기
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--뉴아야야
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--사이퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--뉴스캠퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--하티
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--메리봉봉
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 13 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."








--레벨100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--램프앤소켓
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--혼말레키
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--스노폭시
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--럼버럼버
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--질러
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 23 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."
















--레벨 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--비틀거 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--뉴데블스톤
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--미스터락
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--페일비쥬
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 33 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--솔져호크 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--파이어듀크
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--블루하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--민트라이온킹
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 43 then
		return 1,0,"엘리시온에서만 구할 수 있는 것으로 종류는 [붉은 빛 부유석 결정체], [회색 빛 부유석 결정체], [파란 빛 부유석 결정체], [황토 빛 부유석 결정체], [초록 빛 부유석 결정체], [하늘 빛 부유석 결정체], [보라 빛 부유석 결정체], [청록 빛 부유석 결정체]가 있네"

	elseif req == 44 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--포이즈너 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--피오끼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--먹쿠르미르
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--실버군
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--엘더링
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end




	elseif req == 54 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."

	end
end

function NPC_QUEST_1570(cnum, reqNumber) -- 엘리시온 / 바르크

	req = reqNumber

	if req == 1 then
		return 6,0,"하하! 나는 최고의 몬스터 목장을 운영하는 바르크라네! 하하! 최근 이곳에 새로운 몬스터가 등장했다고해서 거금 2백 GP를 내고 여기로 왔지! 멋진 헨치들을 얻기 전까지는 돌아갈 수 없네. 하하 밸러! 자네가 도와주겠는가? 자네의 수준을 알려주게나!",2,"레벨90이상",3,"레벨100이상",4,"레벨110이상",5,"레벨120이상",6,"레벨130이상"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 90이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네는 꽤가 용감해보이는군! 내가 원하는 코어는 [펀치라바]라는 녀석일세! 비실비실한 놈말고 레벨 100 이상의 [펀치라바]의 코어 1개를 가져오게! 그리고 [각 색깔 부유석 결정체] 1개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",101,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 100이상의 [펀치라바]와 [각 색깔 부유석 결정체] 1개씩을 가져왔는가?",12,"네! 여기요!",13,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 100이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네! 또 왔군! 이번에 내가 원하는 코어는 [램프앤소켓]이라는 녀석일세! 이번에도 튼튼한 놈으로다가 레벨 110 이상의 [램프앤소켓] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 3개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",102,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 110 이상의 [램프앤소켓]과 [각 색깔 부유석 결정체] 3개씩을 가져왔는가?",22,"네! 여기요!",23,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 110이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 왔는가! 고맙네! 이번에 내가 원하는 코어는 [비틀거]라는 녀석일세! 이번에도 건강한 놈으로다가 레벨 120 이상의 [비틀거] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 5개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",103,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 120 이상의 [비틀거]와 [각 색깔 부유석 결정체] 5개씩을 가져왔는가?",32,"네! 여기요!",33,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 120이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 고맙네! 자네! 또 왔는가!@이번에 내가 원하는 코어는 [솔져호크]라는 녀석일세! 건강한 놈으로 레벨 130 이상의 [솔져호크] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 10개씩도 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",104,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 130 이상의 [솔져호크]와 [각 색깔 부유석 결정체] 10개씩을 가져왔는가?",42,"네! 여기요!",44,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"내 시험은 여기까지라네. 조만간 다른 성에서도 테스트를 치를 예정이니 그때까지 더 실력을 쌓게나."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 130이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"고맙네! 또 왔는가!@이번엔 [포이즈너]라는 녀석일세! 레벨 140 이상의 [포이즈너] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 15개씩도 가져오게!그러면 자네가 쓸만한 코어 1개를 하나주지!",105,"네~! 알겠습니다.!"
			end
		else
			return 4,0,"레벨 140 이상의 [포이즈너]와 [각 색깔 부유석 결정체] 15개씩을 가져왔는가?",52,"네! 여기요!",54,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end







--퀘스트 수락 했을 때 처리부
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"기다리겠네"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"기다리겠네"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"기다리겠네"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"기다리겠네"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"기다리겠네"






--레벨90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--펀치라바
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1029, -1)--펀치라바 뺐기
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--뉴아야야
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--사이퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--뉴스캠퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--하티
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--메리봉봉
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 13 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."








--레벨100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--램프앤소켓
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--혼말레키
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--스노폭시
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--럼버럼버
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--질러
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 23 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."
















--레벨 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--비틀거 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--뉴데블스톤
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--미스터락
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--페일비쥬
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 33 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--솔져호크 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--파이어듀크
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--블루하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--민트라이온킹
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 43 then
		return 1,0,"엘리시온에서만 구할 수 있는 것으로 종류는 [붉은 빛 부유석 결정체], [회색 빛 부유석 결정체], [파란 빛 부유석 결정체], [황토 빛 부유석 결정체], [초록 빛 부유석 결정체], [하늘 빛 부유석 결정체], [보라 빛 부유석 결정체], [청록 빛 부유석 결정체]가 있네"

	elseif req == 44 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--포이즈너 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--피오끼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--먹쿠르미르
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--실버군
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--엘더링
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end




	elseif req == 54 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."

	end
end

function NPC_QUEST_1571(cnum, reqNumber) -- 엘리시온 / 바르크

	req = reqNumber

	if req == 1 then
		return 6,0,"하하! 나는 최고의 몬스터 목장을 운영하는 바르크라네! 하하! 최근 이곳에 새로운 몬스터가 등장했다고해서 거금 2백 GP를 내고 여기로 왔지! 멋진 헨치들을 얻기 전까지는 돌아갈 수 없네. 하하 밸러! 자네가 도와주겠는가? 자네의 수준을 알려주게나!",2,"레벨90이상",3,"레벨100이상",4,"레벨110이상",5,"레벨120이상",6,"레벨130이상"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 90이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네는 꽤가 용감해보이는군! 내가 원하는 코어는 [펀치라바]라는 녀석일세! 비실비실한 놈말고 레벨 100 이상의 [펀치라바]의 코어 1개를 가져오게! 그리고 [각 색깔 부유석 결정체] 1개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",101,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 100이상의 [펀치라바]와 [각 색깔 부유석 결정체] 1개씩을 가져왔는가?",12,"네! 여기요!",13,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 100이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네! 또 왔군! 이번에 내가 원하는 코어는 [램프앤소켓]이라는 녀석일세! 이번에도 튼튼한 놈으로다가 레벨 110 이상의 [램프앤소켓] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 3개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",102,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 110 이상의 [램프앤소켓]과 [각 색깔 부유석 결정체] 3개씩을 가져왔는가?",22,"네! 여기요!",23,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 110이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 왔는가! 고맙네! 이번에 내가 원하는 코어는 [비틀거]라는 녀석일세! 이번에도 건강한 놈으로다가 레벨 120 이상의 [비틀거] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 5개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",103,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 120 이상의 [비틀거]와 [각 색깔 부유석 결정체] 5개씩을 가져왔는가?",32,"네! 여기요!",33,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 120이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 고맙네! 자네! 또 왔는가!@이번에 내가 원하는 코어는 [솔져호크]라는 녀석일세! 건강한 놈으로 레벨 130 이상의 [솔져호크] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 10개씩도 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",104,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 130 이상의 [솔져호크]와 [각 색깔 부유석 결정체] 10개씩을 가져왔는가?",42,"네! 여기요!",44,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"내 시험은 여기까지라네. 조만간 다른 성에서도 테스트를 치를 예정이니 그때까지 더 실력을 쌓게나."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 130이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"고맙네! 또 왔는가!@이번엔 [포이즈너]라는 녀석일세! 레벨 140 이상의 [포이즈너] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 15개씩도 가져오게!그러면 자네가 쓸만한 코어 1개를 하나주지!",105,"네~! 알겠습니다.!"
			end
		else
			return 4,0,"레벨 140 이상의 [포이즈너]와 [각 색깔 부유석 결정체] 15개씩을 가져왔는가?",52,"네! 여기요!",54,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end







--퀘스트 수락 했을 때 처리부
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"기다리겠네"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"기다리겠네"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"기다리겠네"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"기다리겠네"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"기다리겠네"






--레벨90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--펀치라바
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1029, -1)--펀치라바 뺐기
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--뉴아야야
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--사이퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--뉴스캠퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--하티
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--메리봉봉
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 13 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."








--레벨100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--램프앤소켓
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--혼말레키
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--스노폭시
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--럼버럼버
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--질러
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 23 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."
















--레벨 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--비틀거 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--뉴데블스톤
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--미스터락
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--페일비쥬
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 33 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--솔져호크 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--파이어듀크
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--블루하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--민트라이온킹
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 43 then
		return 1,0,"엘리시온에서만 구할 수 있는 것으로 종류는 [붉은 빛 부유석 결정체], [회색 빛 부유석 결정체], [파란 빛 부유석 결정체], [황토 빛 부유석 결정체], [초록 빛 부유석 결정체], [하늘 빛 부유석 결정체], [보라 빛 부유석 결정체], [청록 빛 부유석 결정체]가 있네"

	elseif req == 44 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--포이즈너 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--피오끼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--먹쿠르미르
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--실버군
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--엘더링
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end




	elseif req == 54 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."

	end
end

function NPC_QUEST_1572(cnum, reqNumber) -- 엘리시온 / 바르크

	req = reqNumber

	if req == 1 then
		return 6,0,"하하! 나는 최고의 몬스터 목장을 운영하는 바르크라네! 하하! 최근 이곳에 새로운 몬스터가 등장했다고해서 거금 2백 GP를 내고 여기로 왔지! 멋진 헨치들을 얻기 전까지는 돌아갈 수 없네. 하하 밸러! 자네가 도와주겠는가? 자네의 수준을 알려주게나!",2,"레벨90이상",3,"레벨100이상",4,"레벨110이상",5,"레벨120이상",6,"레벨130이상"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 90이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네는 꽤가 용감해보이는군! 내가 원하는 코어는 [펀치라바]라는 녀석일세! 비실비실한 놈말고 레벨 100 이상의 [펀치라바]의 코어 1개를 가져오게! 그리고 [각 색깔 부유석 결정체] 1개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",101,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 100이상의 [펀치라바]와 [각 색깔 부유석 결정체] 1개씩을 가져왔는가?",12,"네! 여기요!",13,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 100이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네! 또 왔군! 이번에 내가 원하는 코어는 [램프앤소켓]이라는 녀석일세! 이번에도 튼튼한 놈으로다가 레벨 110 이상의 [램프앤소켓] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 3개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",102,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 110 이상의 [램프앤소켓]과 [각 색깔 부유석 결정체] 3개씩을 가져왔는가?",22,"네! 여기요!",23,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 110이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 왔는가! 고맙네! 이번에 내가 원하는 코어는 [비틀거]라는 녀석일세! 이번에도 건강한 놈으로다가 레벨 120 이상의 [비틀거] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 5개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",103,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 120 이상의 [비틀거]와 [각 색깔 부유석 결정체] 5개씩을 가져왔는가?",32,"네! 여기요!",33,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 120이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 고맙네! 자네! 또 왔는가!@이번에 내가 원하는 코어는 [솔져호크]라는 녀석일세! 건강한 놈으로 레벨 130 이상의 [솔져호크] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 10개씩도 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",104,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 130 이상의 [솔져호크]와 [각 색깔 부유석 결정체] 10개씩을 가져왔는가?",42,"네! 여기요!",44,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"내 시험은 여기까지라네. 조만간 다른 성에서도 테스트를 치를 예정이니 그때까지 더 실력을 쌓게나."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 130이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"고맙네! 또 왔는가!@이번엔 [포이즈너]라는 녀석일세! 레벨 140 이상의 [포이즈너] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 15개씩도 가져오게!그러면 자네가 쓸만한 코어 1개를 하나주지!",105,"네~! 알겠습니다.!"
			end
		else
			return 4,0,"레벨 140 이상의 [포이즈너]와 [각 색깔 부유석 결정체] 15개씩을 가져왔는가?",52,"네! 여기요!",54,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end







--퀘스트 수락 했을 때 처리부
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"기다리겠네"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"기다리겠네"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"기다리겠네"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"기다리겠네"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"기다리겠네"






--레벨90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--펀치라바
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1029, -1)--펀치라바 뺐기
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--뉴아야야
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--사이퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--뉴스캠퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--하티
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--메리봉봉
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 13 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."








--레벨100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--램프앤소켓
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--혼말레키
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--스노폭시
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--럼버럼버
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--질러
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 23 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."
















--레벨 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--비틀거 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--뉴데블스톤
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--미스터락
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--페일비쥬
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 33 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--솔져호크 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--파이어듀크
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--블루하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--민트라이온킹
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 43 then
		return 1,0,"엘리시온에서만 구할 수 있는 것으로 종류는 [붉은 빛 부유석 결정체], [회색 빛 부유석 결정체], [파란 빛 부유석 결정체], [황토 빛 부유석 결정체], [초록 빛 부유석 결정체], [하늘 빛 부유석 결정체], [보라 빛 부유석 결정체], [청록 빛 부유석 결정체]가 있네"

	elseif req == 44 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--포이즈너 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--피오끼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--먹쿠르미르
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--실버군
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--엘더링
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end




	elseif req == 54 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."

	end
end

function NPC_QUEST_1573(cnum, reqNumber) -- 엘리시온 / 바르크

	req = reqNumber

	if req == 1 then
		return 6,0,"하하! 나는 최고의 몬스터 목장을 운영하는 바르크라네! 하하! 최근 이곳에 새로운 몬스터가 등장했다고해서 거금 2백 GP를 내고 여기로 왔지! 멋진 헨치들을 얻기 전까지는 돌아갈 수 없네. 하하 밸러! 자네가 도와주겠는가? 자네의 수준을 알려주게나!",2,"레벨90이상",3,"레벨100이상",4,"레벨110이상",5,"레벨120이상",6,"레벨130이상"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 90이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네는 꽤가 용감해보이는군! 내가 원하는 코어는 [펀치라바]라는 녀석일세! 비실비실한 놈말고 레벨 100 이상의 [펀치라바]의 코어 1개를 가져오게! 그리고 [각 색깔 부유석 결정체] 1개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",101,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 100이상의 [펀치라바]와 [각 색깔 부유석 결정체] 1개씩을 가져왔는가?",12,"네! 여기요!",13,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 100이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네! 또 왔군! 이번에 내가 원하는 코어는 [램프앤소켓]이라는 녀석일세! 이번에도 튼튼한 놈으로다가 레벨 110 이상의 [램프앤소켓] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 3개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",102,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 110 이상의 [램프앤소켓]과 [각 색깔 부유석 결정체] 3개씩을 가져왔는가?",22,"네! 여기요!",23,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 110이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 왔는가! 고맙네! 이번에 내가 원하는 코어는 [비틀거]라는 녀석일세! 이번에도 건강한 놈으로다가 레벨 120 이상의 [비틀거] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 5개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",103,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 120 이상의 [비틀거]와 [각 색깔 부유석 결정체] 5개씩을 가져왔는가?",32,"네! 여기요!",33,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 120이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 고맙네! 자네! 또 왔는가!@이번에 내가 원하는 코어는 [솔져호크]라는 녀석일세! 건강한 놈으로 레벨 130 이상의 [솔져호크] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 10개씩도 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",104,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 130 이상의 [솔져호크]와 [각 색깔 부유석 결정체] 10개씩을 가져왔는가?",42,"네! 여기요!",44,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"내 시험은 여기까지라네. 조만간 다른 성에서도 테스트를 치를 예정이니 그때까지 더 실력을 쌓게나."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 130이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"고맙네! 또 왔는가!@이번엔 [포이즈너]라는 녀석일세! 레벨 140 이상의 [포이즈너] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 15개씩도 가져오게!그러면 자네가 쓸만한 코어 1개를 하나주지!",105,"네~! 알겠습니다.!"
			end
		else
			return 4,0,"레벨 140 이상의 [포이즈너]와 [각 색깔 부유석 결정체] 15개씩을 가져왔는가?",52,"네! 여기요!",54,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end







--퀘스트 수락 했을 때 처리부
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"기다리겠네"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"기다리겠네"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"기다리겠네"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"기다리겠네"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"기다리겠네"






--레벨90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--펀치라바
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1029, -1)--펀치라바 뺐기
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--뉴아야야
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--사이퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--뉴스캠퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--하티
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--메리봉봉
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 13 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."








--레벨100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--램프앤소켓
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--혼말레키
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--스노폭시
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--럼버럼버
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--질러
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 23 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."
















--레벨 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--비틀거 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--뉴데블스톤
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--미스터락
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--페일비쥬
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 33 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--솔져호크 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--파이어듀크
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--블루하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--민트라이온킹
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 43 then
		return 1,0,"엘리시온에서만 구할 수 있는 것으로 종류는 [붉은 빛 부유석 결정체], [회색 빛 부유석 결정체], [파란 빛 부유석 결정체], [황토 빛 부유석 결정체], [초록 빛 부유석 결정체], [하늘 빛 부유석 결정체], [보라 빛 부유석 결정체], [청록 빛 부유석 결정체]가 있네"

	elseif req == 44 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--포이즈너 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--피오끼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--먹쿠르미르
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--실버군
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--엘더링
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end




	elseif req == 54 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."

	end
end

function NPC_QUEST_1574(cnum, reqNumber) -- 엘리시온 / 바르크

	req = reqNumber

	if req == 1 then
		return 6,0,"하하! 나는 최고의 몬스터 목장을 운영하는 바르크라네! 하하! 최근 이곳에 새로운 몬스터가 등장했다고해서 거금 2백 GP를 내고 여기로 왔지! 멋진 헨치들을 얻기 전까지는 돌아갈 수 없네. 하하 밸러! 자네가 도와주겠는가? 자네의 수준을 알려주게나!",2,"레벨90이상",3,"레벨100이상",4,"레벨110이상",5,"레벨120이상",6,"레벨130이상"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 90이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네는 꽤가 용감해보이는군! 내가 원하는 코어는 [펀치라바]라는 녀석일세! 비실비실한 놈말고 레벨 100 이상의 [펀치라바]의 코어 1개를 가져오게! 그리고 [각 색깔 부유석 결정체] 1개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",101,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 100이상의 [펀치라바]와 [각 색깔 부유석 결정체] 1개씩을 가져왔는가?",12,"네! 여기요!",13,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 100이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네! 또 왔군! 이번에 내가 원하는 코어는 [램프앤소켓]이라는 녀석일세! 이번에도 튼튼한 놈으로다가 레벨 110 이상의 [램프앤소켓] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 3개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",102,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 110 이상의 [램프앤소켓]과 [각 색깔 부유석 결정체] 3개씩을 가져왔는가?",22,"네! 여기요!",23,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 110이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 왔는가! 고맙네! 이번에 내가 원하는 코어는 [비틀거]라는 녀석일세! 이번에도 건강한 놈으로다가 레벨 120 이상의 [비틀거] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 5개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",103,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 120 이상의 [비틀거]와 [각 색깔 부유석 결정체] 5개씩을 가져왔는가?",32,"네! 여기요!",33,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 120이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 고맙네! 자네! 또 왔는가!@이번에 내가 원하는 코어는 [솔져호크]라는 녀석일세! 건강한 놈으로 레벨 130 이상의 [솔져호크] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 10개씩도 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",104,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 130 이상의 [솔져호크]와 [각 색깔 부유석 결정체] 10개씩을 가져왔는가?",42,"네! 여기요!",44,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"내 시험은 여기까지라네. 조만간 다른 성에서도 테스트를 치를 예정이니 그때까지 더 실력을 쌓게나."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 130이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"고맙네! 또 왔는가!@이번엔 [포이즈너]라는 녀석일세! 레벨 140 이상의 [포이즈너] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 15개씩도 가져오게!그러면 자네가 쓸만한 코어 1개를 하나주지!",105,"네~! 알겠습니다.!"
			end
		else
			return 4,0,"레벨 140 이상의 [포이즈너]와 [각 색깔 부유석 결정체] 15개씩을 가져왔는가?",52,"네! 여기요!",54,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end







--퀘스트 수락 했을 때 처리부
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"기다리겠네"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"기다리겠네"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"기다리겠네"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"기다리겠네"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"기다리겠네"






--레벨90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--펀치라바
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1029, -1)--펀치라바 뺐기
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--뉴아야야
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--사이퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--뉴스캠퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--하티
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--메리봉봉
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 13 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."








--레벨100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--램프앤소켓
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--혼말레키
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--스노폭시
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--럼버럼버
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--질러
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 23 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."
















--레벨 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--비틀거 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--뉴데블스톤
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--미스터락
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--페일비쥬
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 33 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--솔져호크 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--파이어듀크
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--블루하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--민트라이온킹
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 43 then
		return 1,0,"엘리시온에서만 구할 수 있는 것으로 종류는 [붉은 빛 부유석 결정체], [회색 빛 부유석 결정체], [파란 빛 부유석 결정체], [황토 빛 부유석 결정체], [초록 빛 부유석 결정체], [하늘 빛 부유석 결정체], [보라 빛 부유석 결정체], [청록 빛 부유석 결정체]가 있네"

	elseif req == 44 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--포이즈너 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--피오끼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--먹쿠르미르
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--실버군
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--엘더링
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end




	elseif req == 54 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."

	end
end

function NPC_QUEST_1575(cnum, reqNumber) -- 엘리시온 / 바르크

	req = reqNumber

	if req == 1 then
		return 6,0,"하하! 나는 최고의 몬스터 목장을 운영하는 바르크라네! 하하! 최근 이곳에 새로운 몬스터가 등장했다고해서 거금 2백 GP를 내고 여기로 왔지! 멋진 헨치들을 얻기 전까지는 돌아갈 수 없네. 하하 밸러! 자네가 도와주겠는가? 자네의 수준을 알려주게나!",2,"레벨90이상",3,"레벨100이상",4,"레벨110이상",5,"레벨120이상",6,"레벨130이상"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 90이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네는 꽤가 용감해보이는군! 내가 원하는 코어는 [펀치라바]라는 녀석일세! 비실비실한 놈말고 레벨 100 이상의 [펀치라바]의 코어 1개를 가져오게! 그리고 [각 색깔 부유석 결정체] 1개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",101,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 100이상의 [펀치라바]와 [각 색깔 부유석 결정체] 1개씩을 가져왔는가?",12,"네! 여기요!",13,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 100이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네! 또 왔군! 이번에 내가 원하는 코어는 [램프앤소켓]이라는 녀석일세! 이번에도 튼튼한 놈으로다가 레벨 110 이상의 [램프앤소켓] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 3개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",102,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 110 이상의 [램프앤소켓]과 [각 색깔 부유석 결정체] 3개씩을 가져왔는가?",22,"네! 여기요!",23,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 110이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 왔는가! 고맙네! 이번에 내가 원하는 코어는 [비틀거]라는 녀석일세! 이번에도 건강한 놈으로다가 레벨 120 이상의 [비틀거] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 5개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",103,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 120 이상의 [비틀거]와 [각 색깔 부유석 결정체] 5개씩을 가져왔는가?",32,"네! 여기요!",33,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 120이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 고맙네! 자네! 또 왔는가!@이번에 내가 원하는 코어는 [솔져호크]라는 녀석일세! 건강한 놈으로 레벨 130 이상의 [솔져호크] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 10개씩도 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",104,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 130 이상의 [솔져호크]와 [각 색깔 부유석 결정체] 10개씩을 가져왔는가?",42,"네! 여기요!",44,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"내 시험은 여기까지라네. 조만간 다른 성에서도 테스트를 치를 예정이니 그때까지 더 실력을 쌓게나."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 130이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"고맙네! 또 왔는가!@이번엔 [포이즈너]라는 녀석일세! 레벨 140 이상의 [포이즈너] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 15개씩도 가져오게!그러면 자네가 쓸만한 코어 1개를 하나주지!",105,"네~! 알겠습니다.!"
			end
		else
			return 4,0,"레벨 140 이상의 [포이즈너]와 [각 색깔 부유석 결정체] 15개씩을 가져왔는가?",52,"네! 여기요!",54,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end







--퀘스트 수락 했을 때 처리부
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"기다리겠네"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"기다리겠네"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"기다리겠네"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"기다리겠네"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"기다리겠네"






--레벨90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--펀치라바
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1029, -1)--펀치라바 뺐기
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--뉴아야야
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--사이퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--뉴스캠퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--하티
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--메리봉봉
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 13 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."








--레벨100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--램프앤소켓
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--혼말레키
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--스노폭시
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--럼버럼버
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--질러
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 23 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."
















--레벨 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--비틀거 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--뉴데블스톤
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--미스터락
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--페일비쥬
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 33 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--솔져호크 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--파이어듀크
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--블루하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--민트라이온킹
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 43 then
		return 1,0,"엘리시온에서만 구할 수 있는 것으로 종류는 [붉은 빛 부유석 결정체], [회색 빛 부유석 결정체], [파란 빛 부유석 결정체], [황토 빛 부유석 결정체], [초록 빛 부유석 결정체], [하늘 빛 부유석 결정체], [보라 빛 부유석 결정체], [청록 빛 부유석 결정체]가 있네"

	elseif req == 44 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--포이즈너 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--피오끼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--먹쿠르미르
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--실버군
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--엘더링
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end




	elseif req == 54 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."

	end
end

function NPC_QUEST_1576(cnum, reqNumber) -- 엘리시온 / 바르크

	req = reqNumber

	if req == 1 then
		return 6,0,"하하! 나는 최고의 몬스터 목장을 운영하는 바르크라네! 하하! 최근 이곳에 새로운 몬스터가 등장했다고해서 거금 2백 GP를 내고 여기로 왔지! 멋진 헨치들을 얻기 전까지는 돌아갈 수 없네. 하하 밸러! 자네가 도와주겠는가? 자네의 수준을 알려주게나!",2,"레벨90이상",3,"레벨100이상",4,"레벨110이상",5,"레벨120이상",6,"레벨130이상"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 90이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네는 꽤가 용감해보이는군! 내가 원하는 코어는 [펀치라바]라는 녀석일세! 비실비실한 놈말고 레벨 100 이상의 [펀치라바]의 코어 1개를 가져오게! 그리고 [각 색깔 부유석 결정체] 1개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",101,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 100이상의 [펀치라바]와 [각 색깔 부유석 결정체] 1개씩을 가져왔는가?",12,"네! 여기요!",13,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 100이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 자네! 또 왔군! 이번에 내가 원하는 코어는 [램프앤소켓]이라는 녀석일세! 이번에도 튼튼한 놈으로다가 레벨 110 이상의 [램프앤소켓] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 3개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",102,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 110 이상의 [램프앤소켓]과 [각 색깔 부유석 결정체] 3개씩을 가져왔는가?",22,"네! 여기요!",23,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 110이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 왔는가! 고맙네! 이번에 내가 원하는 코어는 [비틀거]라는 녀석일세! 이번에도 건강한 놈으로다가 레벨 120 이상의 [비틀거] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 5개씩을 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",103,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 120 이상의 [비틀거]와 [각 색깔 부유석 결정체] 5개씩을 가져왔는가?",32,"네! 여기요!",33,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"이미 얻은 헨치는 필요없네~ 나는 새로운 헨치가 필요해 다른 헨치 구하기에 도전하는 것은 어떤가?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 120이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"오! 고맙네! 자네! 또 왔는가!@이번에 내가 원하는 코어는 [솔져호크]라는 녀석일세! 건강한 놈으로 레벨 130 이상의 [솔져호크] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 10개씩도 가져오게! 그러면 자네가 쓸만한 코어를 하나주지!",104,"네~! 알겠습니다!"
			end
		else
			return 4,0,"레벨 130 이상의 [솔져호크]와 [각 색깔 부유석 결정체] 10개씩을 가져왔는가?",42,"네! 여기요!",44,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"아직은 안돼~! 차례차례 밑 단계부터 진행하라고! 내가 제일 먼저 얻고 싶은 코어부터 말일세! 하하!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"내 시험은 여기까지라네. 조만간 다른 성에서도 테스트를 치를 예정이니 그때까지 더 실력을 쌓게나."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"아무리 자네가 용감해보여도 좀 위험할 것 같네. 레벨 130이상의 밸러가 된 후에 다시 찾아오게"

			else
				return 2,0,"고맙네! 또 왔는가!@이번엔 [포이즈너]라는 녀석일세! 레벨 140 이상의 [포이즈너] 코어 1개를 가져오게! 그리고 [각 색깔의 부유석 결정체] 15개씩도 가져오게!그러면 자네가 쓸만한 코어 1개를 하나주지!",105,"네~! 알겠습니다.!"
			end
		else
			return 4,0,"레벨 140 이상의 [포이즈너]와 [각 색깔 부유석 결정체] 15개씩을 가져왔는가?",52,"네! 여기요!",54,"나중에 드릴게요!",43,"[각 색깔 부유석 결정체]는 뭐에요?"
		end







--퀘스트 수락 했을 때 처리부
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"기다리겠네"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"기다리겠네"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"기다리겠네"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"기다리겠네"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"기다리겠네"






--레벨90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--펀치라바
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1029, -1)--펀치라바 뺐기
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--뉴아야야
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--사이퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--뉴스캠퍼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--하티
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--메리봉봉
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 13 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."








--레벨100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--램프앤소켓
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--혼말레키
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--스노폭시
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--럼버럼버
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--질러
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end



	elseif req == 23 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."
















--레벨 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--비틀거 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--뉴데블스톤
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--미스터락
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--페일비쥬
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 33 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--솔져호크 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--파이어듀크
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--블루하피
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--민트라이온킹
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end


	elseif req == 43 then
		return 1,0,"엘리시온에서만 구할 수 있는 것으로 종류는 [붉은 빛 부유석 결정체], [회색 빛 부유석 결정체], [파란 빛 부유석 결정체], [황토 빛 부유석 결정체], [초록 빛 부유석 결정체], [하늘 빛 부유석 결정체], [보라 빛 부유석 결정체], [청록 빛 부유석 결정체]가 있네"

	elseif req == 44 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."













--레벨 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--포이즈너 뺐기
			return 1,0,"내가 가져오라는 코어가 안 보이는데? 다시 한번 확인해보게나~하하!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"한마리만 가져오면 된다네. 나에게 줄 코어 외에는 창고에 보관하고 오게나"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[각 색깔의 부유석]개수가 모자르네~! 더 모아오게!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--피오끼
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--먹쿠르미르
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--실버군
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--엘더링
				if result < -1 then
					return 1,0,"코어를 넣을 공간이 부족하네."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"고맙네! 이 놈은 내가 우리 목장에 잘 풀어놓겠네! 이 녀석도 좋은 녀석이니 잘 키워보게!"

			end
		end




	elseif req == 54 then
		return 1,0,"시간 제한은 없으니 천천히 하게나."

	end
end
