function NPC_QUEST_717(cnum, reqNumber)

req = reqNumber
Type = GetHeroType(cnum)

	if req == 1 then
		if Type == 0 then
			if GetItemCount(cnum,1226,2) > 0 or GetItemCount(cnum,6475,2) > 0 or GetItemCount(cnum,6476,2) > 0 or GetItemCount(cnum,6477,2) > 0 or GetItemCount(cnum,1187,2) > 0 then
				if GetSwitchCount(cnum, 449) < 1 then --> 처음 부침개를 줌
					AddSwitchCount(cnum, 449 ,1) --> 부침개 받음
					AddItemCount(cnum, 8254, 1) --> 부침개 지급
					return 2,0,"예쁜 한복을 입으셨군요. 부침개를 많이 했는데 좀 드세요. 설날인데도 떡국을 못 드신 분들이 많아요. 히어로님이 떡국을 좀 끓여주시겠어요?@@요구 아이템 : 떡국 10인분",2,"네 그러죠",7,"시간이 없네요"
				else
					return 3,0,"떡국 10인분을 가져다 주시면 맛있는 부침개를 드릴게요. 꼭 부탁해요.@@요구 아이템 : 떡국 10인분.",3,"여기 제가 끓여왔어요.",4,"생산의 서[떡국10인분]가 필요해요"
 				end
			else 
				return 1,0,"한복을 입어야 설날 분위기가 나죠? 히어로님은 한복을 안 입으셨네요? 아~참! 글쎄 이번 설날에 제 옆의 아그네스 님이 마지리타 사람들 모두에게 떡국을 끓여주시려고 했는데 몬스터들이 떡국 재료들을 싹 훔쳐서 달아났다고 하네요."
			end


		elseif Type == 1 then
			if GetItemCount(cnum,1227,2) > 0 or GetItemCount(cnum,6478,2) > 0 or GetItemCount(cnum,6479,2) > 0 or GetItemCount(cnum,6480,2) > 0 or GetItemCount(cnum,1188,2) > 0 then
				if GetSwitchCount(cnum, 449) < 1 then --> 처음 부침개를 줌
					AddSwitchCount(cnum, 449 ,1) --> 부침개 받음					
					AddItemCount(cnum, 8254, 1) --> 부침개 지급
					return 2,0,"예쁜 한복을 입으셨군요. 부침개를 많이 했는데 좀 드세요. 설날인데도 떡국을 못 드신 분들이 많아요. 히어로님이 떡국을 좀 끓여주시겠어요?@@요구 아이템 : 떡국 10인분",2,"네 그러죠",7,"시간이 없네요"
				else
					return 3,0,"떡국 10인분을 가져다 주시면 맛있는 부침개를 드릴게요. 꼭 부탁해요.@@요구 아이템 : 떡국 10인분.",3,"여기 제가 끓여왔어요.",4,"생산의 서[떡국10인분]가 필요해요"
 				end
			else 
				return 1,0,"한복을 입어야 설날 분위기가 나죠? 히어로님은 한복을 안 입으셨네요? 아~참! 글쎄 이번 설날에 제 옆의 아그네스 님이 마지리타 사람들 모두에게 떡국을 끓여주시려고 했는데 몬스터들이 떡국 재료들을 싹 훔쳐서 달아났다고 하네요."
			end

		elseif Type == 2 then
			if GetItemCount(cnum,1228,2) > 0 or GetItemCount(cnum,6481,2) > 0 or GetItemCount(cnum,6482,2) > 0 or GetItemCount(cnum,6483,2) > 0 or GetItemCount(cnum,1189,2) > 0 then
				if GetSwitchCount(cnum, 449) < 1 then --> 처음 부침개를 줌
					AddSwitchCount(cnum, 449 ,1) --> 부침개 받음
					AddItemCount(cnum, 8254, 1) --> 부침개 지급
					return 2,0,"예쁜 한복을 입으셨군요. 부침개를 많이 했는데 좀 드세요. 설날인데도 떡국을 못 드신 분들이 많아요. 히어로님이 떡국을 좀 끓여주시겠어요?@@요구 아이템 : 떡국 10인분",2,"네 그러죠",7,"시간이 없네요"
				else
					return 3,0,"떡국 10인분을 가져다 주시면 맛있는 부침개를 드릴게요. 꼭 부탁해요.@@요구 아이템 : 떡국 10인분",3,"여기 제가 끓여왔어요.",4,"생산의 서[떡국10인분]가 필요해요"
 				end
			else 
				return 1,0,"한복을 입어야 설날 분위기가 나죠? 히어로님은 한복을 안 입으셨네요? 아~참! 글쎄 이번 설날에 제 옆의 아그네스 님이 마지리타 사람들 모두에게 떡국을 끓여주시려고 했는데 몬스터들이 떡국 재료들을 싹 훔쳐서 달아났다고 하네요."
			end

		elseif Type == 3 then
			if GetItemCount(cnum,1229,2) > 0 or GetItemCount(cnum,6484,2) > 0 or GetItemCount(cnum,6485,2) > 0 or GetItemCount(cnum,6486,2) > 0 or GetItemCount(cnum,1190,2) > 0 then
				if GetSwitchCount(cnum, 449) < 1 then --> 처음 부침개를 줌
					AddSwitchCount(cnum, 449 ,1) --> 부침개 받음
					AddItemCount(cnum, 8254, 1) --> 부침개 지급
					return 2,0,"예쁜 한복을 입으셨군요. 부침개를 많이 했는데 좀 드세요. 설날인데도 떡국을 못 드신 분들이 많아요. 히어로님이 떡국을 좀 끓여주시겠어요?@@요구 아이템 : 떡국 10인분",2,"네 그러죠",7,"시간이 없네요"
				else
					return 3,0,"떡국 10인분을 가져다 주시면 맛있는 부침개를 드릴게요. 꼭 부탁해요.@@요구 아이템 : 떡국 10인분",3,"여기 제가 끓여왔어요.",4,"생산의 서[떡국10인분]가 필요해요"
 				end
			else 
				return 1,0,"한복을 입어야 설날 분위기가 나죠? 히어로님은 한복을 안 입으셨네요? 아~참! 글쎄 이번 설날에 제 옆의 아그네스 님이 마지리타 사람들 모두에게 떡국을 끓여주시려고 했는데 몬스터들이 떡국 재료들을 싹 훔쳐서 달아났다고 하네요."
			end
 				
		else
			return 0		
		end
		
		

	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then --> 인벤토리가 한칸이상 비었는지 검사
			return 1,0,"생산의서 [떡국10인분]을 드리려고 했는데 아이템 인벤토리가 부족하네요. 인벤토리를 1칸 이상 비우고 다시오실래요?"
		else
			AddItemCount(cnum, 8251, 1) --> 생산의 서 지급
			return 1,0,"고마워요. 여기 생산의 서 [떡국10인분]를 드릴게요. 기다리고 있을게요.",7,"네. 조금만 기다리세요."			
		end

	elseif req == 3 then
		return 2,0,"예상대로 금방 끓여 오셨군요~고맙습니다. 맛있게 잘 됐나요?",6,"떡국 10인분을 건넨다"


	elseif req == 4 then --> 다시 도전
		return 2,0,"저런...생산의 서를 다시 한번 드릴게요 다시 끓여오시겠어요?",5,"네 다시 해볼게요."


	elseif req == 5 then --> 생i산의 서 재지급
		if GetItemCount(cnum,8251,0) < 1 and GetItemCount(cnum,8253,0) < 10 then
			AddItemCount(cnum, 8251, 1) --> 생산의 서 재지급
			return 1,0,"자~여기있어요 다시 한번 도전 해 보세요."
		elseif GetItemCount(cnum,8251,0) > 0 then
			return 1,0,"생산의 서[떡국10인분]가 있으시네요."
		elseif GetItemCount(cnum,8253,0) > 9 then
			return 2,0,"떡국10인분을 끓여 오셨네요. 저에게 주시겠어요?",6,"네. 여기있어요."
		else
			return 0
		end


	elseif req == 6 then
		if GetItemCount(cnum,8253,0) > 9 then --> 인벤토리에 떡국이 10개 있는지 검사
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"아이템 인벤토리가 부족하여 부침개를 드릴 수가 없네요. 아이템 인벤토리를 비우고 다시 오세요.!"
			elseif GetRemainPocket(cnum) > 1 then
				AddItemCount(cnum, 8254, 1) --> 부침개 아이템 지급
				AddItemCount(cnum, 8253, -10) --> 떡국 아이템 10개 뺏기
	    			return 1,0,"여기 맛있는 부침개에요. 도와주셔서 정말 고마워요."
			else
				return 0                        
			end		
		else
			return 1,0,"히어로님 떡국 10인분이 없으시네요. 인벤토리를 다시 한번 확인 해 주실래요?"
			
		end

	elseif req == 7 then
		return 0

	else
		return 0
	end
end