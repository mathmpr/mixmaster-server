function NPC_QUEST_1624(cnum, reqNumber) --마지리타 눈사람 [2011 크리스마스 이벤트 - 내 몸이 녹고있어요!(서브2)]
req = reqNumber

LV = GetHeroLv(cnum)



--[[사용 스위치
745 스노우맨 미션 시작
746 스노우맨 보상 -- 변신갑옷 받음여부 확인

사용 퀘스트 번호
234 (크리스마스)내 몸이 녹고있어요!
--]]



	if req == 1 then

		if GetSwitchCount(cnum, 745)  < 1 then --미션 안받은 유저
		return 2,0, "[눈사람]@@아이구~더워라~~",2,"무슨 일인가요?"

		elseif GetSwitchCount(cnum, 745 ) == 1 then --미션을 받았을 때 아이템 체크 및 보상
			if GetSwitchCount(cnum, 746) < 2 then -- 보상을 안 받은 유저들
			return 2,0, "[눈사람]@@(뻘뻘)으악, 몸이 녹고있어!@내가 말한 '눈덩이'는 가지고 왔니?",7,"네, 여기요"

			elseif GetSwitchCount(cnum, 746) == 2 then -- 보상을 받았을 때 재 미션 여부 확인
				if GetItemCount(cnum, 8916, 0) >= 30 then -- 눈덩이 아이템이 30개 이상이면
				return 2,0, "[눈사람]@@눈덩이를 가져왔구나!?@고마워!'눈사람'헨치를 줄게!",7,"[받는다]"

				else -- 눈덩이 아이템이 없거나 부족할 경우 아래 텍스트를 출력하여 반복 미션이 가능함을 알림.
				return 1,0, "[눈사람]@@고마워!@덕분에 한동안 견딜 수 있게 됐어~@'눈사람' 헨치가 필요하거든@언제든지 눈덩이를 들고 오렴!"
				end

			else
			return 1,0, "오류..1"
			end

		else
		return 1,0, "오류..2"
		end




	elseif req == 2 then
	return 2,0, "[눈사람]@@근처에 있는 '크리스마스 트리'와 이야기 해 보았니? 그녀처럼 나도 사람들이 더 이상 찾아오질 않아 내 몸이 녹고 있어!",3,"몸이 녹는다구요?"

	elseif req == 3 then
	return 2,0, "[눈사람]@@그래! '크리스마스 트리'와 마찬가지로 사람들이 우릴 찾아와서 장신구를 달아주고, 눈덩이를 굴려서 내게 붙여줬다면 이렇게 힘들진 않았을거야..",4,"눈덩이요?"

	elseif req == 4 then
	return 2,0, "[눈사람]@@난 눈으로 만들어졌으니 내게 필요한건 몸이 녹지 않기 위한 '눈덩이' 뿐이야! 혹시 갖고 있거나 구할 수 있니?",5,"눈이 있는곳을 알아요!"

	elseif req == 5 then
	return 2,0, "[눈사람]@@그것 참 다행이네! 하지만 난 곧 녹고 말거야. 게다가 난 특수한 눈으로 만들어졌기 때문에 일반 눈덩이로는 이 몸을 유지하지 못할거야. 그러니까 산타클로스의 선물이 필요해!",6,"산타클로스라면.."

	elseif req == 6 then
	StartQuest(cnum, 234)
	AddSwitchCount(cnum, 745, 1)
	SetSwitchCount(cnum, 746, 1)
	return 1,0, "[눈사람]@@근처에 있을거야. 산타클로스의 선물은 산타만이 갖고있지. 하지만 루돌프와의 갈등으로 상황이 좋지 않나봐. 여튼! 산타클로스에게서 '산타의 선물상자'를 받아보면, 안에 선물이 있을거야. 그 중 '눈덩이' 를 30개만 가져다줘!"


	elseif req == 7 then

		if GetItemCount(cnum, 8916, 0) < 30 then
		return 1,0, "[눈사람]@@눈덩이 개수가 모자라~~@30개를 모아다줘!@'산타클로스'에게서 '산타의 선물상자'를 받아 열면 일정 확률로 나올거야~!"

		elseif GetItemCount(cnum, 8916, 0) >= 30 then

			if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0, "[눈사람]@@헨치 인벤토리에 공간이 없네?@한 칸 비우고 다시 오도록 해~"

			else

				if GetHeroLv(cnum) < 41 then
				AddHench(cnum, 1127, 1)
				SetSwitchCount(cnum, 746, 2)
				AddItemCount(cnum, 8916, -30)
				EndQuest(cnum, 234)
				return 1,0, "[눈사람]@@우와아!@모아왔구나! 정말 고마워!@덕분에 한동안 녹을 걱정은 없겠어!@고마움의 표시로 주는 선물이야!@@(눈사람 헨치(Lv.20))를 얻었습니다."

				elseif GetHeroLv(cnum) < 81 then
				AddHench(cnum, 1128, 1)
				SetSwitchCount(cnum, 746, 2)
				AddItemCount(cnum, 8916, -30)
				EndQuest(cnum, 234)
				return 1,0, "[눈사람]@@우와아!@모아왔구나! 정말 고마워!@덕분에 한동안 녹을 걱정은 없겠어!@고마움의 표시로 주는 선물이야!@@(눈사람 헨치(Lv.60))를 얻었습니다."

				elseif GetHeroLv(cnum) < 121 then
				AddHench(cnum, 1129, 1)
				SetSwitchCount(cnum, 746, 2)
				AddItemCount(cnum, 8916, -30)
				EndQuest(cnum, 234)
				return 1,0, "[눈사람]@@우와아!@모아왔구나! 정말 고마워!@덕분에 한동안 녹을 걱정은 없겠어!@고마움의 표시로 주는 선물이야!@@(눈사람 헨치(Lv.100))를 얻었습니다."

				elseif GetHeroLv(cnum) < 161 then
				AddHench(cnum, 1130, 1)
				SetSwitchCount(cnum, 746, 2)
				AddItemCount(cnum, 8916, -30)
				EndQuest(cnum, 234)
				return 1,0, "[눈사람]@@우와아!@모아왔구나! 정말 고마워!@덕분에 한동안 녹을 걱정은 없겠어!@고마움의 표시로 주는 선물이야!@@(눈사람 헨치(Lv.140))를 얻었습니다."

				elseif GetHeroLv(cnum) <= 200 then
				AddHench(cnum, 1131, 1)
				SetSwitchCount(cnum, 746, 2)
				AddItemCount(cnum, 8916, -30)
				EndQuest(cnum, 234)
				return 1,0, "[눈사람]@@우와아!@모아왔구나! 정말 고마워!@덕분에 한동안 녹을 걱정은 없겠어!@고마움의 표시로 주는 선물이야!@@(눈사람 헨치(Lv.180))를 얻었습니다."

				else
				return 1,0, "오류..4"
				end
			end

		end

	end
end
