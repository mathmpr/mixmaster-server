function NPC_QUEST_716(cnum, reqNumber)

req = reqNumber
Type = GetHeroType(cnum)

	if req == 1 then
		if Type == 0 then
			if GetItemCount(cnum,1226,2) > 0 or GetItemCount(cnum,6475,2) > 0 or GetItemCount(cnum,6476,2) > 0 or GetItemCount(cnum,6477,2) > 0 or GetItemCount(cnum,1187,2) > 0 then
				if GetSwitchCount(cnum, 448) < 1 then --> 처음 구절판을 줌
					AddSwitchCount(cnum, 448 ,1) --> 구절판 받음
					AddItemCount(cnum, 8255, 1) --> 구절판 지급
					return 3,0,"예쁜 한복을 입으셨네요. 마지리타 왕실에서 구절판을 가지고 왔답니다. 여기 구절판을 드릴게요. 맛있게 드세요. 아참! 마을 많은 분들이 설날인데 떡국을 못 드셨다고 하네요. 나쁜 몬스터들이 떡국 재료를 훔쳐가서 그렇다는데 히어로님이 몬스터를 잡고 떡국을 20인분만 끓여주시겠어요?@@요구 아이템 : 떡국 20인분",2,"네 그럴게요.",7,"죄송합니다. 시간이 없네요."
				else
					return 3,0,"떡국20인분을 끓여서 저에게 주시면 제가 왕실에서 가져온 구절판을 더 드릴게요. 떡국을 못 드신분들을 위해 꼭 부탁드려요.@@ 요구 아이템 : 떡국 20인분",3,"떡국20인분을 건넨다.",4,"생산의 서[떡국20인분]가 필요해요."
 				end
			else 
				return 1,0,"설날에는 예쁜 한복을 입는답니다. 히어로님도 한복을 입으셔야죠? 그나저나 이번설에는 제 옆의 아그네스 아주머니가 마지리타 마을 사람들을 위해 떡국을 끓이려고 했는데 글쎄, 나쁜 몬스터들이 떡국 재료를 모두 훔쳐 달아났데요. 히어로님이 나쁜 몬스터들을 혼내주고 마을 사람들 모두가 떡국을 먹을 수 있게 도와주시면 안되나요?"
			end


		elseif Type == 1 then
			if GetItemCount(cnum,1227,2) > 0 or GetItemCount(cnum,6478,2) > 0 or GetItemCount(cnum,6479,2) > 0 or GetItemCount(cnum,6480,2) > 0 or GetItemCount(cnum,1188,2) > 0 then
				if GetSwitchCount(cnum, 448) < 1 then --> 처음 구절판을 줌
					AddSwitchCount(cnum, 448 ,1) --> 구절판 받음					
					AddItemCount(cnum, 8255, 1) --> 구절판 지급
					return 3,0,"예쁜 한복을 입으셨네요. 마지리타 왕실에서 구절판을 가지고 왔답니다. 여기 구절판을 드릴게요. 맛있게 드세요. 아참! 마을 많은 분들이 설날인데 떡국을 못 드셨다고 하네요. 나쁜 몬스터들이 떡국 재료를 훔쳐가서 그렇다는데 히어로님이 몬스터를 잡고 떡국을 20인분만 끓여주시겠어요?@@요구 아이템 : 떡국 20인분",2,"네 그럴게요.",7,"죄송합니다. 시간이 없네요."
				else
					return 3,0,"떡국20인분을 끓여서 저에게 주시면 제가 왕실에서 가져온 구절판을 더 드릴게요. 떡국을 못 드신분들을 위해 꼭 부탁드려요.@@ 요구 아이템 : 떡국 20인분",3,"떡국20인분을 건넨다.",4,"생산의 서[떡국20인분]가 필요해요."
 				end
			else 
				return 1,0,"설날에는 예쁜 한복을 입는답니다. 히어로님도 한복을 입으셔야죠? 그나저나 이번설에는 제 옆의 아그네스 아주머니가 마지리타 마을 사람들을 위해 떡국을 끓이려고 했는데 글쎄, 나쁜 몬스터들이 떡국 재료를 모두 훔쳐 달아났데요. 히어로님이 나쁜 몬스터들을 혼내주고 마을 사람들 모두가 떡국을 먹을 수 있게 도와주시면 안되나요?"
			end

		elseif Type == 2 then
			if GetItemCount(cnum,1228,2) > 0 or GetItemCount(cnum,6481,2) > 0 or GetItemCount(cnum,6482,2) > 0 or GetItemCount(cnum,6483,2) > 0 or GetItemCount(cnum,1189,2) > 0 then
				if GetSwitchCount(cnum, 448) < 1 then --> 처음 구절판을 줌
					AddSwitchCount(cnum, 448 ,1) --> 구절판 받음
					AddItemCount(cnum, 8255, 1) --> 구절판 지급
					return 3,0,"예쁜 한복을 입으셨네요. 마지리타 왕실에서 구절판을 가지고 왔답니다. 여기 구절판을 드릴게요. 맛있게 드세요. 아참! 마을 많은 분들이 설날인데 떡국을 못 드셨다고 하네요. 나쁜 몬스터들이 떡국 재료를 훔쳐가서 그렇다는데 히어로님이 몬스터를 잡고 떡국을 20인분만 끓여주시겠어요?@@요구 아이템 : 떡국 20인분",2,"네 그럴게요.",7,"죄송합니다. 시간이 없네요."
				else
					return 3,0,"떡국20인분을 끓여서 저에게 주시면 제가 왕실에서 가져온 구절판을 더 드릴게요. 떡국을 못 드신분들을 위해 꼭 부탁드려요.@@ 요구 아이템 : 떡국 20인분",3,"떡국20인분을 건넨다.",4,"생산의 서[떡국20인분]가 필요해요."
 				end
			else 
				return 1,0,"설날에는 예쁜 한복을 입는답니다. 히어로님도 한복을 입으셔야죠? 그나저나 이번설에는 제 옆의 아그네스 아주머니가 마지리타 마을 사람들을 위해 떡국을 끓이려고 했는데 글쎄, 나쁜 몬스터들이 떡국 재료를 모두 훔쳐 달아났데요. 히어로님이 나쁜 몬스터들을 혼내주고 마을 사람들 모두가 떡국을 먹을 수 있게 도와주시면 안되나요?"
			end

		elseif Type == 3 then
			if GetItemCount(cnum,1229,2) > 0 or GetItemCount(cnum,6484,2) > 0 or GetItemCount(cnum,6485,2) > 0 or GetItemCount(cnum,6486,2) > 0 or GetItemCount(cnum,1190,2) > 0 then
				if GetSwitchCount(cnum, 448) < 1 then --> 처음 구절판을 줌
					AddSwitchCount(cnum, 448 ,1) --> 구절판 받음
					AddItemCount(cnum, 8255, 1) --> 구절판 지급
					return 3,0,"예쁜 한복을 입으셨네요. 마지리타 왕실에서 구절판을 가지고 왔답니다. 여기 구절판을 드릴게요. 맛있게 드세요. 아참! 마을 많은 분들이 설날인데 떡국을 못 드셨다고 하네요. 나쁜 몬스터들이 떡국 재료를 훔쳐가서 그렇다는데 히어로님이 몬스터를 잡고 떡국을 20인분만 끓여주시겠어요?@@요구 아이템 : 떡국 20인분",2,"네 그럴게요.",7,"죄송합니다. 시간이 없네요."
				else
					return 3,0,"떡국20인분을 끓여서 저에게 주시면 제가 왕실에서 가져온 구절판을 더 드릴게요. 떡국을 못 드신분들을 위해 꼭 부탁드려요.@@ 요구 아이템 : 떡국 20인분",3,"떡국20인분을 건넨다.",4,"생산의 서[떡국20인분]가 필요해요."
 				end
			else 
				return 1,0,"설날에는 예쁜 한복을 입는답니다. 히어로님도 한복을 입으셔야죠? 그나저나 이번설에는 제 옆의 아그네스 아주머니가 마지리타 마을 사람들을 위해 떡국을 끓이려고 했는데 글쎄, 나쁜 몬스터들이 떡국 재료를 모두 훔쳐 달아났데요. 히어로님이 나쁜 몬스터들을 혼내주고 마을 사람들 모두가 떡국을 먹을 수 있게 도와주시면 안되나요?"
			end
 				
		else
			return 0		
		end
		
		

	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then --> 인벤토리가 한칸이상 비었는지 검사
			return 1,0,"아이템 인벤토리가 부족하여 생산의 서[떡국20인분]을 드릴 수가 없네요. 아이템 인벤토리를 비우고 다시 오세요."
		else
			AddItemCount(cnum, 8257, 1) --> 생산의 서 지급
			return 1,0,"고맙습니다. 히어로님 여기 생산의 서[떡국20인분]을 가져가세요 이것이 있으면 떡국을 끓이는 방법과 필요한 재료들을 알 수 있어요. 그럼 기다리고 있을게요."			
		end

	elseif req == 3 then
		return 2,0,"예상대로 금방 끓여 오셨군요~고맙습니다. 맛있게 잘 됐나요?",6,"떡국 20인분을 건넨다."


	elseif req == 4 then --> 다시 도전
		return 2,0,"여기 생산의 서[떡국20인분]를 드릴게요. 맛있는 떡국 기다려도 되나요?",5,"네 조금만 기다리세요."


	elseif req == 5 then --> 생산의 서 재지급
		if GetItemCount(cnum,8257,0) < 1 and GetItemCount(cnum,8253,0) < 20 then
			AddItemCount(cnum, 8257, 1) --> 생산의 서 재지급
			return 1,0,"자~여기 생산의 서[떡국20인분]이요. 부탁해요."
		elseif GetItemCount(cnum,8257,0) > 0 then
			return 1,0,"생산의 서[떡국20인분]을 가지고 계시네요. 인벤토리를 한번 살펴보세요."
		elseif GetItemCount(cnum,8253,0) > 19 then
			return 2,0,"떡국 20인분을 벌써 끓여서 가지고 계시네요. 저에게 주시겠어요?",6,"떡국 20인분을 건넨다."
		else
			return 0
		end


	elseif req == 6 then
		if GetItemCount(cnum,8253,0) > 19 then --> 인벤토리에 떡국이 20개 있는지 검사
			if GetRemainPocket(cnum) < 1 then   
				return 1,0,"아이템 인벤토리가 부족하여 구절판을 드릴 수가 없네요. 아이템 인벤토리를 비우고 다시 오세요."
			elseif GetRemainPocket(cnum) > 1 then --> 인벤토리가 한칸이상 비었는지 검사
				AddItemCount(cnum, 8255, 1) --> 구절판 아이템 지급
				AddItemCount(cnum, 8253, -20) --> 떡국 아이템 20개 뺏기
	    				return 1,0,"여기 왕실에서 가지고 온 구절판이에요. 도와주셔서 정말 고마워요."
			else
				return 0                        
			end		
		else
			return 1,0,"히어로님 떡국 20인분이 없으시네요. 인벤토리를 다시 한번 확인 해 주실래요?"
			
		end

	elseif req == 7 then
		return 0

	else
		return 0
	end
end