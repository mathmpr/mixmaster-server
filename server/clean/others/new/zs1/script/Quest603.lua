function NPC_QUEST_1579(cnum, reqNumber) -- 마지리타 / 옥토끼(이벤트)

	req = reqNumber
	name = GetHeroName(cnum)
	lv = GetHeroLv(cnum)


	if req == 1 then
		if GetSwitchCount(cnum, 691) < 1 then
			if GetSwitchCount(cnum, 690) < 1 then
				return 2,0,"우리는 토끼 Bros!!@히어로님 우리를 좀 도와주세요!!",2,"응? 무슨일이야?"
			else
				return 3,0,"돌아오셨어요!? 증거 50개를 가지고 오셨나요?",6,"응! 나쁜 녀석들 혼내줬어!",7,"아니 아직.."
			end
		else -- 퀘스트 2
			if GetSwitchCount(cnum, 694) < 1 then -- 퀘스트 2 진행 여부
				return 2,0,"히어로님! 안녕하세요! 한 가지 더 부탁해도 될까요?",12,"응? 뭔데?"
			else
				return 2,0,"히어로님! [달의 정기] 100개를 모아오셨나요?",16,"응~여기~!",17,"아니 아직.."
			end
		end

	elseif req == 16 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"[헨치 인벤토리]가 가득찼습니다.@헨치를 받기위해선 [헨치 인벤토리]가 최소한 1칸 이상 있어야 합니다."
		end

		if GetItemCount(cnum, 8817, 0) < 100 then
			return 1,0,"제가 회복하려면 달의 정기가 최소 100개 이상은 있어야 해요! 다시 한번 살펴보세요 히어로님!"
		else
			if GetSwitchCount(cnum, 697) < 1 then -- 달토끼 2차 퀘스트를 완료하지 않았을 시
				AddItemCount(cnum, 8817, -100)
				SetSwitchCount(cnum, 695, 1) -- 퀘스트 2차 완료
				return 1,0,"정말 고맙습니다! 이제 힘이 나는 것 같아요! 염치없지만 제 옆의 달토끼 형님도 히어로님의 도움이 필요해요. 부탁해요"

			else 	 ---------------------------------- 달토끼 2차 퀘스트를 완료했을 시
				if lv > 0 and lv < 45 then
					AddItemCount(cnum, 8817, -100)
					SetSwitchCount(cnum, 695, 1) -- 퀘스트 2차 완료
					AddHench(cnum, 1105, 1) -- 옥토끼코어 보상 지급
					return 1,0,"정말 고맙습니다! 이제 힘이 나는 것 같아요! 저희 토끼 Bros를 도와주셔서 감사합니다. 제가 달에 돌아가기 전에 단, 며칠 동안만이라도 히어로님의 헨치가 되어 힘을 발휘할게요!"

				elseif lv > 44 and lv < 65 then
					AddItemCount(cnum, 8817, -100)
					SetSwitchCount(cnum, 695, 1) -- 퀘스트 2차 완료
					AddHench(cnum, 1106, 1) -- 옥토끼코어 보상 지급
					return 1,0,"정말 고맙습니다! 이제 힘이 나는 것 같아요! 저희 토끼 Bros를 도와주셔서 감사합니다. 제가 달에 돌아가기 전에 단, 며칠 동안만이라도 히어로님의 헨치가 되어 힘을 발휘할게요!"

				elseif lv > 64 and lv < 85 then
					AddItemCount(cnum, 8817, -100)
					SetSwitchCount(cnum, 695, 1) -- 퀘스트 2차 완료
					AddHench(cnum, 1107, 1) -- 옥토끼코어 보상 지급
					return 1,0,"정말 고맙습니다! 이제 힘이 나는 것 같아요! 저희 토끼 Bros를 도와주셔서 감사합니다. 제가 달에 돌아가기 전에 단, 며칠 동안만이라도 히어로님의 헨치가 되어 힘을 발휘할게요!"

				elseif lv > 84 and lv < 105 then
					AddItemCount(cnum, 8817, -100)
					SetSwitchCount(cnum, 695, 1) -- 퀘스트 2차 완료
					AddHench(cnum, 1108, 1) -- 옥토끼코어 보상 지급
					return 1,0,"정말 고맙습니다! 이제 힘이 나는 것 같아요! 저희 토끼 Bros를 도와주셔서 감사합니다. 제가 달에 돌아가기 전에 단, 며칠 동안만이라도 히어로님의 헨치가 되어 힘을 발휘할게요!"

				elseif lv > 104 and lv < 125 then
					AddItemCount(cnum, 8817, -100)
					SetSwitchCount(cnum, 695, 1) -- 퀘스트 2차 완료
					AddHench(cnum, 1109, 1) -- 옥토끼코어 보상 지급
					return 1,0,"정말 고맙습니다! 이제 힘이 나는 것 같아요! 저희 토끼 Bros를 도와주셔서 감사합니다. 제가 달에 돌아가기 전에 단, 며칠 동안만이라도 히어로님의 헨치가 되어 힘을 발휘할게요!"

				elseif lv > 124 and lv < 145 then
					AddItemCount(cnum, 8817, -100)
					SetSwitchCount(cnum, 695, 1) -- 퀘스트 2차 완료
					AddHench(cnum, 1110, 1) -- 옥토끼코어 보상 지급
					return 1,0,"정말 고맙습니다! 이제 힘이 나는 것 같아요! 저희 토끼 Bros를 도와주셔서 감사합니다. 제가 달에 돌아가기 전에 단, 며칠 동안만이라도 히어로님의 헨치가 되어 힘을 발휘할게요!"

				elseif lv > 144 and lv < 165 then
					AddItemCount(cnum, 8817, -100)
					SetSwitchCount(cnum, 695, 1) -- 퀘스트 2차 완료
					AddHench(cnum, 1111, 1) -- 옥토끼코어 보상 지급
					return 1,0,"정말 고맙습니다! 이제 힘이 나는 것 같아요! 저희 토끼 Bros를 도와주셔서 감사합니다. 제가 달에 돌아가기 전에 단, 며칠 동안만이라도 히어로님의 헨치가 되어 힘을 발휘할게요!"

				elseif lv > 164 and lv < 185 then
					AddItemCount(cnum, 8817, -100)
					SetSwitchCount(cnum, 695, 1) -- 퀘스트 2차 완료
					AddHench(cnum, 1112, 1) -- 옥토끼코어 보상 지급
					return 1,0,"정말 고맙습니다! 이제 힘이 나는 것 같아요! 저희 토끼 Bros를 도와주셔서 감사합니다. 제가 달에 돌아가기 전에 단, 며칠 동안만이라도 히어로님의 헨치가 되어 힘을 발휘할게요!"
				end
			end
		end

	elseif req == 12 then
		return 2,0,"저희 토끼 Bros는 달의 정기를 받아야 힘이 생긴답니다.하지만 이번 여름에는 왜 이렇게 비가 많이 오는지..달이 구름에 가려서 달의 정기를 거의 받지 못했어요.",13,"응..그렇구나"

	elseif req == 13 then
		return 2,0,"그나마 다행히도 추석 즈음에는 달의 기운이 강해져서 몬스터들도 몸에 달의 정기가 조금이나마 축적된다고 하더라고요..그래서 말인데..",14,"응?"

	elseif req == 14 then
		return 2,0,"히어로님께서 몬스터들에게서 달의 정기를 좀 모아와 주실래요? 부탁이에요!",15,"응! 알겠어!"

	elseif req == 15 then
		SetSwitchCount(cnum, 694, 1)
		return 1,0,"고맙습니다[엉..엉] 저는 몸이 좀 커서 [달의 정기] 100개가 있어야 해요!"


	elseif req == 7 then
		return 1,0,"그 놈들을 혼내줬다는 증거를 50개 이상 가져오셔야 제 화가 좀 풀리겠어요 부탁해요!"

	elseif req == 2 then
		return 2,0,"이번 여름은 너무나 긴 장마로 달의@기운을 먹고 사는 저희 토끼 Bros는@가만히 서 있기도 힘들정도랍니다.@[훌쩍..훌쩍].........@@게다가..아주 큰 문제까지 생겼어요@[훌쩍..훌쩍]",3,"큰 문제?!"

	elseif req == 3 then
		return 2,0,"네..저는 평소 몬스터들과 사이좋게@지내고 히어로님들에게도 어떻게 하면@도움을 드릴 수 있을까 항상 생각하는 착한 토끼! 옥토끼랍니다.",41,"으응..그렇구나.."
	
	elseif req == 41 then
		return 2,0,"하지만!! 최근 저를 사칭하며 몬스터들에게 사기를 치고, 지나가는 히어로님들을 공격하는 몬스터가 돌아다니고 있다고 하더라고요! [엉..엉..]아무리 착한 저라도 그런 녀석은 참을 수가 없어요!..[훌쩍..훌쩍]",4,"응..."
		 

	elseif req == 4 then
		return 2,0,"저를 사칭하고 다니는 나쁜 몬스터들을 혼내주시고 그들의 추악한 모습을 증명하는 물건을 모아오시면 제가 저로 변신할 수 있는 변신갑옷을 만들어 드릴게요 부탁해요 히어로님!",5,"응! 알겠어!"

	elseif req == 5 then
		SetSwitchCount(cnum, 690, 1) -- 퀘스트 1 수령
		return 1,0,"충분히 혼내주셔야 돼요! 증거는 한 50개 정도만 가져와주세요! 그래야 화가 좀 풀리겠어요! 기다릴게요!"

	elseif req == 6 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		end

		if GetItemCount(cnum, 8815, 0) < 50 then
			return 1,0,"충분히 혼내주셔야 돼요! 증거는 한 50개 정도를 가져와 주셔야 돼요! 확인해주세요!"
		else
			AddItemCount(cnum, 8815, -50)
			AddItemCount(cnum, 8816, 1)
			SetSwitchCount(cnum, 691, 1) -- 퀘스트 1 완료
			return 1,0,"정말 고맙습니다! 이제야 화가 좀 풀리는 것 같아요! 조합한 토끼털로 변신갑옷을 만들어 입었던 몬스터였나봐요! 자~ 여기 저랑 꼭 닮은 옥토끼 변신갑옷이에요! 고맙습니다! [훌쩍..훌쩍]"
		end

	end
end
