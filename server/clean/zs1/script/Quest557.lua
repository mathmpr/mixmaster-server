function NPC_QUEST_1196(cnum,reqNumber) -- 한복 장인

req = reqNumber
type = GetHeroType(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 617) == 1 then -- 퀘스트 종료 후 재 대화 시
			return 1,0,"새해에는 소망하던 일들이 모두@이루어지고 늘 행복하고 건강하길@기원할게."
		end

		if GetSwitchCount(cnum, 616) < 1 then -- 퀘스트 진행 중
			return 2,0,"반갑다! 얘야! 설날이구나!@난 30년 째 한복을 만들고 있단다!@하지만, 최근에 몬스터들이 실 공장을@습격해서 [오색 비단]을 만들 수 있는@실 뭉치들을 모두 훔쳐 가벼렸지 뭐니@@혹시, 네가 좀 도와줄 수 있겠니?",2,"네! 제가 도와드릴게요!"
		else
		  if GetItemCount(cnum, 8672, 0) < 1 then -- 오색 비단 아이템을 안가지고 있을 때
				return 2,0,"자 잊지 마~@아이템 빌더에게@[청색 실 뭉치], [백색 실 뭉치],@[적색 실 뭉치], [흑색 실 뭉치],@[황색 실 뭉치],@[생산의 서[오색 비단]]을 가져가서@@[오색 비단]을 만들어 가져오면 돼~@자 그럼 파이팅~!",5000,"[오색 비단] 생산에 실패했어요!"
			else -- 오색 비단을 가지고 있을 때
				return 2,0,"돌아왔구나!@벌써 [오색 비단]을 가져왔네?@대단하구나~@@이제 고~운 한복을 만들어 볼까~~@잠시만 기다려보렴~~@",6,"네!"
			end			
		end

	elseif req == 2 then
		return 2,0,"고맙구나!@나는 한복을 만들 때@[오색 비단]을 재료로 고집한단다.@[오색 비단]으로 한복을 만들면 참~@고운 한복이 만들어지지~@[오색 비단]을 만들려면 다섯 가지 색@실 뭉치가 필요하단다~",3,"네! 어떤 색 실 뭉치 인가요?"

	elseif req == 3 then
		return 2,0,"[오색 비단]을 만들기 위해서는@@[청색 실 뭉치] [백색 실 뭉치]@[적색 실 뭉치] [흑색 실 뭉치]@[황색 실 뭉치]@@다섯 가지 색 실 뭉치가 필요하단다.@몬스터들이 다 훔쳐 가버렸지..",4,"그렇군요"

	elseif req == 4 then
		return 2,0,"내가 여기 [생산의 서[오색 비단]을 줄게~! 이 책에는 다섯 가지 실 뭉치로 [오색 비단]을 만들 수 있는 방법이 쓰여 있단다. 이 책과 다섯 가지 색 뭉치를 가지고 아이템 빌더에게 가면 [오색 비단]을 만들 수 있을게야~@@[오색 비단]을 만들어 가져오렴.@아~주 고운 한복을 만들어줄게~!",5,"네!"

	elseif req == 5 then
    if GetRemainPocket(cnum) < 1 then -- 인벤토리 빈공간 검사
      	return 1,0,"[아이템 [인벤토리]가 가득찼습니다.@아이템[인벤토리]가 최소한 1칸 이상@있어야 아이템을 수령할 수 있습니다."
    end

		SetSwitchCount(cnum, 616, 1) -- 퀘스트 시작
		AddItemCount(cnum, 8666, 1)  -- [생산의 서[오색 비단] 지급
		return 1,0,"자 잊지 마~@아이템 빌더에게@[청색 실 뭉치], [백색 실 뭉치],@[적색 실 뭉치], [흑색 실 뭉치],@[황색 실 뭉치],@[생산의 서[오색 비단]]을 가져가서@@[오색 비단]을 만들어 가져오면 돼~@자 그럼 파이팅~!"

	elseif req == 6 then
		if GetRemainPocket(cnum) < 1 then -- 인벤토리 빈공간 검사
      	return 1,0,"[아이템 [인벤토리]가 가득찼습니다.@아이템[인벤토리]가 최소한 1칸 이상@있어야 아이템을 수령할 수 있습니다."
    end

		if type == 0 then
				  AddItemCount(cnum, 8673, 1)
		elseif type == 1 then
		  AddItemCount(cnum, 8674, 1)
		elseif type == 2 then
		  AddItemCount(cnum, 8675, 1)
		elseif type == 3 then
		  AddItemCount(cnum, 8676, 1)
		end

    AddItemCount(cnum, 8672, -1)
		SetSwitchCount(cnum, 617, 1) -- 퀘스트 종료
		return 2,0,"자~! 여기 다 만들었네~?!@아줌마도 이태리 장인이 옷을 만들 듯@한 땀 한 땀 정성껏 수를 놓아서~@만들었단다~참~예쁘게 되었구나~!@한복을 입고 고운 자태를 뽐내보렴!@@* [한복]을 습득하였습니다.",100,"고맙습니다!"
		
	elseif req == 5000 then
		if GetRemainPocket(cnum) < 1 then -- 인벤토리 빈공간 검사
      	return 1,0,"[아이템 [인벤토리]가 가득찼습니다.@아이템[인벤토리]가 최소한 1칸 이상@있어야 아이템을 수령할 수 있습니다."
    end
    
    if GetItemCount(cnum, 8666, 0) < 1 then
        AddItemCount(cnum, 8666, 1)  -- [생산의 서[오색 비단] 재지급
      	return 1,0,"자~! 여기@[생산의 서[오색 비단]]을 줄게~!@꼭 성공하렴!"
    else
      	return 1,0,"잘 찾아보렴~!@[생산의 서[오색 비단]을 가지고 있구나~!"
    end 
		

	elseif req == 100 then
		return 0

	end

end


