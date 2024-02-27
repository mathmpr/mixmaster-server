function NPC_QUEST_715(cnum, reqNumber)

req = reqNumber
Type = GetHeroType(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 447) < 1 then --> 퀘스트를 끝낸적이 없는지 검사
			if GetSwitchCount(cnum, 446) < 1 then --> 퀘스트를 시작안한 것이 맞는 지 검사
				return 3,0,"설날에 마지리타 모든 사람들에게 떡국을 끓여주려고 떡국 재료를 창고에 가득 쌓아놨는데, 엊그제 몬스터들이 습격해서 떡국 재료를 모두 가져가 버렸지 뭐에요. 떡국 50인분 정도가 더 있으면 될 것 같은데..히어로님이 도와주실거라고 믿어요. 그렇죠?@@ - 요구 아이템 : 떡국 50인분",2,"어떻게 아셨어요. 제가 도와드릴게요.",7,"설마요..죄송합니다."
			else
				return 3,0,"벌써 떡국 50인분을 끓여오셨나요? ",3,"네 끓여왔어요.",4,"아니오. 끓이는데 실패했어요."
			end
		else
			return 1,0,"히어로님 정말 감사해요! 덕분에 맛있는 떡국을 먹었어요. 새해 복 많이 받으세요!!"			
		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then --> 인벤토리가 한칸이상 비었는지 검사
			return 1,0,"아이템 인벤토리가 부족하여 생산의 서[떡국50인분]을 드릴 수가 없네요. 아이템 인벤토리를 비우고 다시 오세요."
		else
			AddSwitchCount(cnum, 446 ,1) --> 퀘스트 수락
			AddItemCount(cnum, 8250, 1) --> 생산의 서 지급
			return 1,0,"고맙습니다. 히어로님 여기 생산의 서[떡국50인분]을 가져가세요. 이것이 있으면 떡국을 끓이는 재료와 방법을 알 수 있어요. 그럼 기다리고 있을게요.",7,"네. 조금만 기다리세요."			
		end


	elseif req == 3 then
		return 2,0,"정말 금방 끓여 오셨군요 고맙습니다. 맛있게 잘 됐나요?",6,"떡국 50인분을 건넨다"


	elseif req == 4 then --> 다시 도전
		return 2,0,"저런...생산의 서를 다시한번 드릴게요 다시 끓여오시겠어요?",5,"네 다시 해볼게요."


	elseif req == 5 then --> 생산의 서 재지급
		if GetItemCount(cnum,8250,0) < 1 and GetItemCount(cnum,8253,0) < 50 then
			AddItemCount(cnum, 8250, 1) --> 생산의 서 재지급
			return 1,0,"자~여기있어요 다시 한번 도전 해 보세요"
		elseif GetItemCount(cnum,8250,0) > 0 then
			return 1,0,"생산의 서[떡국50인분]가 있으시네요."
		elseif GetItemCount(cnum,8253,0) > 49 then
			return 2,0,"떡국50인분을 끓여 오셨네요. 저에게 주시겠어요?",6,"네. 여기있어요"
		else
			return 0
		end


	elseif req == 6 then
		if GetItemCount(cnum,8253,0) > 49 then
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"아이템 인벤토리가 부족하여 한복을 드릴 수가 없네요. 아이템 인벤토리를 비우고 다시 오세요."
			elseif GetRemainPocket(cnum) > 0 then
       				if Type == 0 then
					AddItemCount(cnum, 1226, 1) --> 한복 아이템 지급
					AddSwitchCount(cnum, 447 ,1) --> 퀘스트 종료	
					AddItemCount(cnum, 8253, -50) --> 떡국 아이템 50개 뺏기
    					return 1,0,"여기 제가 손수 만든 한복이에요. 설날 동안은 예쁘게 입으실 수 있을거에요. 도와주셔서 정말 고마워요."
				elseif Type == 1 then
					AddItemCount(cnum, 1227, 1)
					AddSwitchCount(cnum, 447 ,1) --> 퀘스트 종료						
					AddItemCount(cnum, 8253, -50) --> 떡국 아이템 50개 뺏기
					return 1,0,"여기 제가 손수 만든 한복이에요. 설날 동안은 예쁘게 입으실 수 있을거에요. 도와주셔서 정말 고마워요."
				elseif Type == 2 then
					AddItemCount(cnum, 1228, 1)
					AddSwitchCount(cnum, 447 ,1) --> 퀘스트 종료						
					AddItemCount(cnum, 8253, -50) --> 떡국 아이템 50개 뺏기
					return 1,0,"여기 제가 손수 만든 한복이에요. 설날 동안은 예쁘게 입으실 수 있을거에요. 도와주셔서 정말 고마워요."
				elseif Type == 3 then
					AddItemCount(cnum, 1229, 1)
					AddSwitchCount(cnum, 447 ,1) --> 퀘스트 종료						
					AddItemCount(cnum, 8253, -50) --> 떡국 아이템 50개 뺏기
					return 1,0,"여기 제가 손수 만든 한복이에요. 설날 동안은 예쁘게 입으실 수 있을거에요. 도와주셔서 정말 고마워요."
				else
					return 0
				end

			else
				return 0                        
			end		
		else
			return 1,0,"히어로님 떡국 50개가 없으시네요. 인벤토리를 다시 한번 확인 해 주실래요?"
		end


	elseif req == 7 then
		return 0

	else
		return 0
	end

end