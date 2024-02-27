function NPC_QUEST_1599(cnum, reqNumber) --마지리타 빼빼킹 [2011 빼빼로데이 이벤트 - 빼빼군단의 대결]
req = reqNumber

	if req == 1 then
	Lv = GetHeroLv(cnum)

		if GetSwitchCount(cnum, 725) > 1 then --빼빼퀸 도와주고 있을 경우,
		return 1,0, "짐을 놀리는겐가? 빼빼퀸을 도와주고 있질 않는가! (버럭버럭) @@(빼빼퀸을 돕는 도중에는 빼빼킹을 도울 수 없습니다.)"
		elseif GetSwitchCount(cnum, 724) < 1 then
		return 3,0, "짐은 빼빼왕국의 왕, 바로 빼빼킹이다. 짐의 빼빠군단은 최고라고 할 수 있을 정도로 강력하며 늠름한 훈련병으로 갖춰져 있다!",5,"빼빼킹님, 안색이 안 좋아보여요.",11,"[빼빼로 마크받기]"

		elseif GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then --다른 미션 수행중에 이동을 원할 경우에는 막기! (안그러면 귀찮아짐)
			if GetSwitchCount(cnum, 727) == 3 then
			return 2,0, "빼빠르타 훈련장은 잘 다녀왔는가? 어떤가, 다들 굉장히 멋지지 않은가? 그래, 수고의 표시로 짐이 선물을 하나 더 준비했네.",12,"[빼빼로 마크받기]"
			elseif GetSwitchCount(cnum, 725) < 2 or SwitchCount(cnum, 724) < 2 then
			return 2,0, "짐은 빼빼왕국의 왕, 바로 빼빼킹이다. 짐의 빼빠군단은 최고라고 할 수 있을 정도로 강력하며 늠름한 훈련병으로 갖춰져 있다!",3,"빼빠르타 훈련장으로 이동~!"
			else
			return 1,0, "미션을 완수하서 오도록 하게. @@(빼빼킹의 미션을 진행중이거나, 빼빼퀸을 돕는 도중에는 빼빠르타 훈련장으로 이동할 수 없습니다."
			end
		elseif GetSwitchCount(cnum, 724) > 1 then

			if GetSwitchCount(cnum, 724) == 30 then
				if GetItemCount(cnum, 8869,0) < 30 or GetItemCount(cnum, 8866,0) < 30 then
					return 1,0, "빼빠훈련병을 만들 준비가 덜 되어있군! '길다란 막대'과 '초콜릿'을 30개씩 모아와야 하네!@@(훈련장 안 빼삐 훈련병과 대화 전에 입장권 소멸 시, 다시 한 번 빼빼킹 미션을 완료해야 합니다.)"

				elseif GetSwitchCount(cnum, 727) == 2 then --빼삐훈련병에게 '초코 리본넥타이' 수집 100개 이벤트 받은유저
					SetSwitchCount(cnum, 727,1)
					return 1,0, "(빼삐훈련병:친해지고 싶어요~ 실패!!)@@흠흠! 짐을 돕고 싶거든 짐 몰래 빼빼퀸과 그녀의 훈련병들과 대화도 하지 말게나!@@(빼빼킹이나 빼빼퀸에게 다시 말을 걸어야만 처음부터 미션을 진행할 수 있습니다.)"

				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "인벤토리가 꽉 차서 입장권을 줄 수 없지않은가.. 비워오도록 하게."
					elseif GetSwitchCount(cnum, 728) == 1 then
						AddItemCount(cnum, 8869,-30)
						AddItemCount(cnum, 8866,-30)
						AddItemCount(cnum, 8860,1)
						EndQuest(cnum, 224)
						return 2,0, "오오, 왔는가! 이 정도면 빼빼퀸의 빼삐훈련병을 뛰어넘을 수 있겠군! 정말 수고했네.@@고마움의 표시로 주는 보상이네. 자네는 30분동안 빼빠르타 훈련장을 이용할 수 있네. 바로 들어가겠는가?@[빼빠르타 훈련장 입장권을 획득하였습니다]",3,"빼빠르타 훈련장으로 이동~!"

					else
						AddItemCount(cnum, 8869,-30)
						AddItemCount(cnum, 8866,-30)
						AddItemCount(cnum, 8860,1)
						AddItemCount(cnum, 8868,5)
						SetSwitchCount(cnum, 728, 1)
						EndQuest(cnum, 224)
						return 2,0, "오오, 왔는가! 이 정도면 빼빼퀸의 빼삐훈련병을 뛰어넘을 수 있겠군! 정말 수고했네.@@고마움의 표시로 주는 보상이네. 자네는 30분동안 빼빠르타 훈련장을 이용할 수 있네. 바로 들어가겠는가?@[초코 빼빼로 5개, 빼빠르타 훈련장 입장권을 획득하였습니다]",3,"빼빠르타 훈련장으로 이동~!"
					end
				end

			elseif GetSwitchCount(cnum, 724) == 60 then
				if GetItemCount(cnum, 8869,0) < 60 or GetItemCount(cnum, 8866,0) < 60 then
					return 1,0, "빼빠훈련병을 만들 준비가 덜 되어있군! '길다란 막대'과 '초콜릿'을 60개씩 모아와야 하네!@@(훈련장 안 빼삐 훈련병과 대화 전에 입장권 소멸 시, 다시 한 번 빼빼킹 미션을 완료해야 합니다.)"

				elseif GetSwitchCount(cnum, 727) == 2 then --빼삐훈련병에게 '초코 리본넥타이' 수집 100개 이벤트 받은유저
					SetSwitchCount(cnum, 727,1)
					return 1,0, "(빼삐훈련병:친해지고 싶어요~ 실패!!)@@흠흠! 짐을 돕고 싶거든 짐 몰래 빼빼퀸과 그녀의 훈련병들과 대화도 하지 말게나!@@(빼빼킹이나 빼빼퀸에게 다시 말을 걸어야만 처음부터 미션을 진행할 수 있습니다.)"

				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "인벤토리가 꽉 차서 입장권을 줄 수 없지않은가.. 비워오도록 하게."
					elseif GetSwitchCount(cnum, 728) == 2 then
						AddItemCount(cnum, 8869,-60)
						AddItemCount(cnum, 8866,-60)
						AddItemCount(cnum, 8861,1)
						EndQuest(cnum, 225)
						return 2,0, "오오, 왔는가! 이 정도면 빼빼퀸의 빼삐훈련병을 뛰어넘을 수 있겠군! 정말 수고했네.@@고마움의 표시로 주는 보상이네. 자네는 1 시간(60분)동안 빼빠르타 훈련장을 이용할 수 있네. 바로 들어가겠는가?@[빼빠르타 훈련장 입장권을 획득하였습니다]",3,"빼빠르타 훈련장으로 이동~!"

					else
						AddItemCount(cnum, 8869,-60)
						AddItemCount(cnum, 8866,-60)
						AddItemCount(cnum, 8861,1)
						AddItemCount(cnum, 8868,10)
						SetSwitchCount(cnum, 728, 2)
						EndQuest(cnum, 225)
						return 2,0, "오오, 왔는가! 이 정도면 빼빼퀸의 빼삐훈련병을 뛰어넘을 수 있겠군! 정말 수고했네.@@고마움의 표시로 주는 보상이네. 자네는 1 시간(60분)동안 빼빠르타 훈련장을 이용할 수 있네. 바로 들어가겠는가?@[초코 빼빼로 10개, 빼빠르타 훈련장 입장권을 획득하였습니다]",3,"빼빠르타 훈련장으로 이동~!"
					end
				end

			elseif GetSwitchCount(cnum, 724) == 90 then
				if GetItemCount(cnum, 8869,0) < 90 or GetItemCount(cnum, 8866,0) < 90 then
					return 1,0, "빼빠훈련병을 만들 준비가 덜 되어있군! '길다란 막대'과 '초콜릿'을 90개씩 모아와야 하네!@@(훈련장 안 빼삐 훈련병과 대화 전에 입장권 소멸 시, 다시 한 번 빼빼킹 미션을 완료해야 합니다.)"

				elseif GetSwitchCount(cnum, 727) == 2 then --빼삐훈련병에게 '초코 리본넥타이' 수집 100개 이벤트 받은유저
					SetSwitchCount(cnum, 727,1)
					return 1,0, "(빼삐훈련병:친해지고 싶어요~ 실패!!)@@흠흠! 짐을 돕고 싶거든 짐 몰래 빼빼퀸과 그녀의 훈련병들과 대화도 하지 말게나!@@(빼빼킹이나 빼빼퀸에게 다시 말을 걸어야만 처음부터 미션을 진행할 수 있습니다.)"

				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "인벤토리가 꽉 차서 입장권을 줄 수 없지않은가.. 비워오도록 하게."
					elseif GetSwitchCount(cnum, 728) == 3 then
						AddItemCount(cnum, 8869,-90)
						AddItemCount(cnum, 8866,-90)
						AddItemCount(cnum, 8862,1)
						EndQuest(cnum, 226)
						return 2,0, "오오, 왔는가! 이 정도면 빼빼퀸의 빼삐훈련병을 뛰어넘을 수 있겠군! 정말 수고했네.@@고마움의 표시로 주는 보상이네. 자네는 90분 동안 빼빠르타 훈련장을 이용할 수 있네. 바로 들어가겠는가?@[빼빠르타 훈련장 입장권을 획득하였습니다]",3,"빼빠르타 훈련장으로 이동~!"

					else
						AddItemCount(cnum, 8869,-90)
						AddItemCount(cnum, 8866,-90)
						AddItemCount(cnum, 8862,1)
						AddItemCount(cnum, 8868,15)
						SetSwitchCount(cnum, 728, 3)
						EndQuest(cnum, 226)
						return 2,0, "오오, 왔는가! 이 정도면 빼빼퀸의 빼삐훈련병을 뛰어넘을 수 있겠군! 정말 수고했네.@@고마움의 표시로 주는 보상이네. 자네는 90분 동안 빼빠르타 훈련장을 이용할 수 있네. 바로 들어가겠는가?@[초코 빼빼로 15개, 빼빠르타 훈련장 입장권을 획득하였습니다]",3,"빼빠르타 훈련장으로 이동~!"
					end
				end
			else
			return 2,0, "짐은 빼빼왕국의 왕, 바로 빼빼킹이다. 짐의 빼빠군단은 최고라고 할 수 있을 정도로 강력하며 늠름한 훈련병으로 갖춰져 있다!",11,"[빼빼로데이 마크받기]"
			end

		else --GetSwitchCount(cnum, 724) == 1 then --빼빼킹의 미션을 완료한 뒤 최종보상인 마크를 획득 (미션재시작구분용)
			return 2,0, "덕분에 짐의 빼빠군단이 이전보다 강해졌다네. 하지만 아직 안심하긴 이르네. 빼빼퀸도 마찬가지로 히어로의 도움을 받고 있어 빼삐군단이 계속 늘어나고 있지 뭔가? 자네만 괜찮다면 더 모아줘도 사양않겠네.",10,"물론 괜찮습니다."

		end





elseif req == 3 then
	if GetItemCount(cnum, 8860,0) < 1 and GetItemCount(cnum, 8861,0) < 1 and GetItemCount(cnum, 8862,0) < 1 then
		return 1,0, "빼빠르타 훈련장 입장권이 있어야만 입장할 수 있다네.@@(빼빼킹의 빼빠군단 만들기 이벤트의 보상아이템입니다.@아이템이 없을경우 이미 시간이 다 소모됐기 때문에, 다시 미션을 완료하여 입장권을 받아야 합니다.)"
	else
		return 2,0, "그럼 짐의 빼빼군단, 늠름한 빼빠훈련병의 훈련장으로 안내하겠네. 시간이 지나면 자동으로 마을로 돌아오니 주의하시게.@@(시간이 지나면 입장권이 소멸됨과 동시에 캐릭터가 워프존으로 설정한 지역으로 자동 이동됩니다.)",4,"[이동]"
	end


elseif req == 4 then

	if Lv < 41 then
	MoveZone(cnum,208,254) --76
	elseif Lv < 81 then
	MoveZone(cnum,209,254) --76
	elseif Lv < 121 then
	MoveZone(cnum,210,254) --76
	elseif Lv < 161 then
	MoveZone(cnum,211,254) --76
	elseif Lv <= 200 then
	MoveZone(cnum,212,254) --76


	else
		return 1,0, "뜨면안됨"
	end

elseif req == 5 then
	return 2,0, "짐의 빼빠군단은 최강이다. 그런데, 내 사랑하는 부인인 빼빼퀸이 짐의 빼빠군단을 보고 뭔가 부족하다며 트집을 잡는게 아닌가? 그래서 조금 다툼을 했지... 어느 쪽의 군단이 더 강한지 결국 숫자싸움이 되어버렸지.",6,"제가 도와드릴 일이 있나요?"

elseif req == 6 then
	return 4,0, "오오, 듣던 중 반가운 소리군! 짐 혼자서도 할 수 있지만 히어로인 자네가 도와준다면야, 빼빼퀸의 군단을 쉽게 이길 수 있겠지. 빼빠훈련병을 만드는데 필요한 재료는 '초콜릿' 과 '길다란 막대'라네. 두 개를 1세트로 생각하게 모아오도록 하게. 자네가 도와줄 수 있는 빼빠훈련병의 개수를 선택해보게.",7,"빼빠훈련병 30개",8,"빼빠훈련병 60개",9,"빼빠훈련병 90개"

elseif req == 7 then
	SetSwitchCount(cnum, 724, 30)
	StartQuest(cnum, 224)
	return 1,0, "<빼빠훈련병 30개>@@재료는 '길다란 막대'와 '초콜릿' 이 두 개가 1세트로 하나의 빼빠훈련병을 만들 수 있으니, 30개면 '각각 30개씩 총 60개를' 모아오면 된다네. 그럼 짐은 기다리고있겠네."

elseif req == 8 then
	SetSwitchCount(cnum, 724, 60)
	StartQuest(cnum, 225)
	return 1,0, "<빼빠훈련병 60개>@@재료는 '길다란 막대'와 '초콜릿' 이 두 개가 1세트로 하나의 빼빠훈련병을 만들 수 있으니, 60개면 각각 '60개씩 총 120개를' 모아오면 된다네. 그럼 짐은 기다리고있겠네."

elseif req == 9 then
	SetSwitchCount(cnum, 724, 90)
	StartQuest(cnum, 226)
	return 1,0, "<빼빠훈련병 90개>@@재료는 '길다란 막대'와 '초콜릿' 이 두 개가 1세트로 하나의 빼빠훈련병을 만들 수 있으니, 90개면 각각 '90개씩 총 180개를' 모아오면 된다네. 그럼 짐은 기다리고있겠네."

elseif req == 10 then
	SetSwitchCount(cnum, 727,1)
	return 4,0, "이전에 도와준것과 동일하니 방법은 잘 알고 있겠지? 빼빠훈련병을 만들 재료인 '길다란 막대'와 '초콜릿' 이 두 개가 1세트로 하나의 빼빠훈련병을 만들 수 있다네. 자네가 도와줄 수 있는 빼빠훈련병의 개수를 선택해보게.",7,"빼빠훈련병 30개",8,"빼빠훈련병 60개",9,"빼빠훈련병 90개"

elseif req == 11 then	--빼빼로데이 마크받기
	return 2,0, "빼빼로 데이를 맞이하여 빼빼왕국에서 만든 마크라네. 일반 마크와는 생김새가 많이 다르기 때문에 색다를걸세. 이 마크는 내 미션을 다 완수하면 주도록 하지.@@(빼빼킹이나 빼빼퀸의 수집 미션 완료 후 훈련장에서 리본수집 이벤트까지 완료한 뒤에 킹,퀸 npc와 대화해야만 받을 수 있습니다.)",12,"빼빼로 마크를 주세요"








elseif req == 12 then

	if GetRemainPocket(cnum) < 1 then
	return 1,0, "인벤토리가 꽉 차서 빼빼로 마크를 줄 수 없지않은가.. 비워오도록 하게."
	else
		if GetSwitchCount(cnum, 724) == 30 then
			if GetSwitchCount(cnum, 732) < 1 then
				if GetSwitchCount(cnum, 727) == 3 then
				AddItemCount(cnum, 8905,1)
				SetSwitchCount(cnum, 724, 1) -- 빼빼킹의 미션 완료 (리셋)
				SetSwitchCount(cnum, 732, 1) --마크받음
				SetSwitchCount(cnum, 727, 4) --빼삐훈련병의 미션 완료 (잠시막음)
				return 1,0, "빼빼로 마크(30분)라네. 잘 사용하도록 하게."
				else
				return 1,0, "0"
				end
			else
			SetSwitchCount(cnum, 724,1)
			SetSwitchCount(cnum, 727, 4) --빼삐훈련병의 미션 완료 (잠시막음)
			return 1,0, "빼빼로 마크는 미션당 1개씩만 받을 수 있다네..@@(마크는 빼빼킹의 30개 수집, 60,90 이렇게 총 3번, 그리고 빼빼퀸의 30개 수집, 60,90 이렇게 총합 6개를 획득할 수 있습니다.)"
			end

		elseif GetSwitchCount(cnum, 724) == 60 then
			if GetSwitchCount(cnum, 733) < 1 then
				if GetSwitchCount(cnum, 727) == 3 then
				AddItemCount(cnum, 8906,1)
				SetSwitchCount(cnum, 724, 1)
				SetSwitchCount(cnum, 733, 1) --마크받음
				SetSwitchCount(cnum, 727, 4) --빼삐훈련병의 미션 완료 (잠시막음)
				return 1,0, "빼빼로 마크(60분)라네. 잘 사용하도록 하게."
				else
				return 1,0, "1"
				end
			else
			SetSwitchCount(cnum, 724,1)
			SetSwitchCount(cnum, 727, 4) --빼삐훈련병의 미션 완료 (잠시막음)
			return 1,0, "빼빼로 마크는 미션당 1개씩만 받을 수 있다네..@@(마크는 빼빼킹의 30개 수집, 60,90 이렇게 총 3번, 그리고 빼빼퀸의 30개 수집, 60,90 이렇게 총합 6개를 획득할 수 있습니다.)"
			end

		elseif GetSwitchCount(cnum, 724) == 90 then
			if GetSwitchCount(cnum, 734) < 1 then
				if GetSwitchCount(cnum, 727) == 3 then
				AddItemCount(cnum, 8907,1)
				SetSwitchCount(cnum, 724, 1)
				SetSwitchCount(cnum, 734, 1) --마크받음
				SetSwitchCount(cnum, 727, 4) --빼삐훈련병의 미션 완료 (잠시막음)
				return 1,0, "빼빼로 마크(90분)라네. 잘 사용하도록 하게."
				else
				return 1,0, "2"
				end
			else
			SetSwitchCount(cnum, 724,1)
			SetSwitchCount(cnum, 727, 4) --빼삐훈련병의 미션 완료 (잠시막음)
			return 1,0, "빼빼로 마크는 미션당 1개씩만 받을 수 있다네..@@(마크는 빼빼킹의 30개 수집, 60,90 이렇게 총 3번, 그리고 빼빼퀸의 30개 수집, 60,90 이렇게 총합 6개를 획득할 수 있습니다.)"
			end
		else
		return 1,0, "빼빼로 마크는 주어진 미션을 모두 해결한 뒤에 받을 수 있습니다. @@(빼빼킹이나 빼빼퀸의 미션을 클리어 후, 훈련장 미션까지 완료한 뒤에 해당 npc에게 말을 걸어야만 받을 수 있습니다.)"
		end
	end

	end
end










function NPC_QUEST_1600(cnum, reqNumber) --마지리타 빼빼퀸 [2011 빼빼로데이 이벤트 - 빼빼군단의 대결]
req = reqNumber
Lv = GetHeroLv(cnum)
	if req == 1 then

		if GetSwitchCount(cnum, 724) > 1 then --빼빼킹 도와주고 있을 경우,
		return 1,0, "빼빼킹을 도와주고 있으면서 어떻게 절 도와주시나요?@@(빼빼킹을 돕는 도중에는 빼빼퀸을 도울 수 없습니다.)"
		elseif GetSwitchCount(cnum, 725) < 1 then
		return 3,0, "저는 빼빼왕국의 여왕, 빼빼퀸입니다. 제 빼삐군단은 최고라고 할 수 있을 정도로 민첩하며 아름다운 훈련병으로 갖춰져 있지요. 하지만..",5,"빼빼퀸님, 안색이 안 좋아보여요.",11,"[빼빼로 마크 받기]"


		elseif GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then --다른 미션 수행중에 이동을 원할 경우에는 막기! (안그러면 귀찮아짐)
			if GetSwitchCount(cnum, 726) == 3 then
			return 2,0, "빼삐르타 훈련장은 잘 다녀오셨나요? 고마움의 뜻으로 선물을 하나 더 준비했답니다.",12,"[빼빼로 마크받기]"

			elseif GetSwitchCount(cnum, 725) < 2 or GetSwitchCount(cnum, 724) < 2 then
			return 2,0, "저는 빼빼왕국의 여왕, 빼빼퀸입니다. 제 빼삐군단은 최고라고 할 수 있을 정도로 민첩하며 아름다운 훈련병으로 갖춰져 있지요.",3,"빼삐르타 훈련장으로 이동~!"
			else
			return 1,0, "미션이 아직 끝나지 않았군요. 완료한 뒤 다시 찾아와주세요. @@(빼빼퀸의 미션을 진행중이거나, 빼빼킹을 돕는 도중에는 빼삐르타 훈련장으로 이동할 수 없습니다."
			end
		elseif GetSwitchCount(cnum, 725) > 1 then

			if GetSwitchCount(cnum, 725) == 30 then
				if GetItemCount(cnum, 8869,0) < 30 or GetItemCount(cnum, 8870,0) < 30 then
					return 1,0, "빼삐훈련병을 만들 준비가 덜 되어있군요? '길다란 막대'과 '딸기초콜릿'을 30개씩이 필요합니다.@@(훈련장 안 빼빠 훈련병과 대화 전에 입장권 소멸 시, 다시 한 번 빼빼퀸 미션을 완료해야 합니다.)"

				elseif GetSwitchCount(cnum, 726) == 2 then --빼빠훈련병에게 '딸기초코 리본넥타이' 수집 100개 이벤트 받은유저
					SetSwitchCount(cnum, 726,1)
					return 1,0, "(빼빠훈련병:친해지고 싶어요~ 실패!!)@@저 몰래 빼빠훈련병들과 이야기를 나누셨나요?@@(빼빼킹이나 빼빼퀸에게 다시 말을 걸어야만 처음부터 미션을 진행할 수 있습니다.)"

				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					elseif GetSwitchCount(cnum, 728) == 1 then
						AddItemCount(cnum, 8869,-30)
						AddItemCount(cnum, 8870,-30)
						AddItemCount(cnum, 8863,1)
						EndQuest(cnum, 227)
						return 2,0, "다 모아오셨군요? 이 정도면 빼빼킹의 빼빠훈련병을 뛰어넘을 수 있겠네요. 수고하셨습니다.@@제 감사의 표시입니다. 히어로님은 30분 동안 빼삐르타 훈련장을 이용할 수 있습니다. 바로 들어가시겠어요?@[빼삐르타 훈련장 입장권을 획득하였습니다]",3,"빼삐르타 훈련장으로 이동~!"

					else
						AddItemCount(cnum, 8869,-30)
						AddItemCount(cnum, 8870,-30)
						AddItemCount(cnum, 8863,1)
						AddItemCount(cnum, 8872,5)
						SetSwitchCount(cnum, 729, 1)
						EndQuest(cnum, 227)
						return 2,0, "다 모아오셨군요? 이 정도면 빼빼킹의 빼빠훈련병을 뛰어넘을 수 있겠네요. 수고하셨습니다.@@제 감사의 표시입니다. 히어로님은 30분 동안 빼삐르타 훈련장을 이용할 수 있습니다. 바로 들어가시겠어요?@[딸기초코 빼빼로 5개, 빼삐르타 훈련장 입장권을 획득하였습니다]",3,"빼삐르타 훈련장으로 이동~!"
					end
				end

			elseif GetSwitchCount(cnum, 725) == 60 then
				if GetItemCount(cnum, 8869,0) < 60 or GetItemCount(cnum, 8870,0) < 60 then
					return 1,0, "빼삐훈련병을 만들 준비가 덜 되어있군요? '길다란 막대'과 '딸기초콜릿'을 60개씩이 필요합니다.@@(훈련장 안 빼빠 훈련병과 대화 전에 입장권 소멸 시, 다시 한 번 빼빼퀸 미션을 완료해야 합니다.)"

				elseif GetSwitchCount(cnum, 726) == 2 then --빼빠훈련병에게 '딸기초코 리본넥타이' 수집 100개 이벤트 받은유저
					SetSwitchCount(cnum, 726,1)
					return 1,0, "(빼빠훈련병:친해지고 싶어요~ 실패!!)@@저 몰래 빼빠훈련병들과 이야기를 나누셨나요?@@(빼빼킹이나 빼빼퀸에게 다시 말을 걸어야만 처음부터 미션을 진행할 수 있습니다.)"

				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					elseif GetSwitchCount(cnum, 729) == 2 then
						AddItemCount(cnum, 8869,-60)
						AddItemCount(cnum, 8870,-60)
						AddItemCount(cnum, 8864,1)
						EndQuest(cnum, 228)
						return 2,0, "다 모아오셨군요? 이 정도면 빼빼킹의 빼빠훈련병을 뛰어넘을 수 있겠네요. 수고하셨습니다.@@제 감사의 표시입니다. 히어로님은 60분 동안 빼삐르타 훈련장을 이용할 수 있습니다. 바로 들어가시겠어요?@[빼삐르타 훈련장 입장권을 획득하였습니다]",3,"빼삐르타 훈련장으로 이동~!"

					else
						AddItemCount(cnum, 8869,-60)
						AddItemCount(cnum, 8870,-60)
						AddItemCount(cnum, 8864,1)
						AddItemCount(cnum, 8872,10)
						SetSwitchCount(cnum, 729, 2)
						EndQuest(cnum, 228)
						return 2,0, "다 모아오셨군요? 이 정도면 빼빼킹의 빼빠훈련병을 뛰어넘을 수 있겠네요. 수고하셨습니다.@@제 감사의 표시입니다. 히어로님은 60분 동안 빼삐르타 훈련장을 이용할 수 있습니다. 바로 들어가시겠어요?@[딸기초코 빼빼로 10개, 빼삐르타 훈련장 입장권을 획득하였습니다]",3,"빼삐르타 훈련장으로 이동~!"
					end
				end

			elseif GetSwitchCount(cnum, 725) == 90 then
				if GetItemCount(cnum, 8869,0) < 90 or GetItemCount(cnum, 8870,0) < 90 then
					return 1,0, "빼삐훈련병을 만들 준비가 덜 되어있군요? '길다란 막대'과 '초콜릿'을 90개씩이 필요합니다.@@(훈련장 안 빼빠 훈련병과 대화 전에 입장권 소멸 시, 다시 한 번 빼빼퀸 미션을 완료해야 합니다.)"

				elseif GetSwitchCount(cnum, 726) == 2 then --빼빠훈련병에게 '딸기초코 리본넥타이' 수집 100개 이벤트 받은유저
					SetSwitchCount(cnum, 726,1)
					return 1,0, "(빼빠훈련병:친해지고 싶어요~ 실패!!)@@저 몰래 빼빠훈련병들과 이야기를 나누셨나요?@@(빼빼킹이나 빼빼퀸에게 다시 말을 걸어야만 처음부터 미션을 진행할 수 있습니다.)"
				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					elseif GetSwitchCount(cnum, 729) == 3 then
						AddItemCount(cnum, 8869,-90)
						AddItemCount(cnum, 8870,-90)
						AddItemCount(cnum, 8865,1)
						EndQuest(cnum, 229)
						return 2,0, "다 모아오셨군요? 이 정도면 빼빼킹의 빼빠훈련병을 뛰어넘을 수 있겠네요. 수고하셨습니다.@@제 감사의 표시입니다. 히어로님은 90분 동안 빼삐르타 훈련장을 이용할 수 있습니다. 바로 들어가시겠어요?@[빼삐르타 훈련장 입장권을 획득하였습니다]",3,"빼삐르타 훈련장으로 이동~!"

					else
						AddItemCount(cnum, 8869,-90)
						AddItemCount(cnum, 8870,-90)
						AddItemCount(cnum, 8865,1)
						AddItemCount(cnum, 8872,15)
						SetSwitchCount(cnum, 729, 3)
						EndQuest(cnum, 229)
						return 2,0, "다 모아오셨군요? 이 정도면 빼빼킹의 빼빠훈련병을 뛰어넘을 수 있겠네요. 수고하셨습니다.@@제 감사의 표시입니다. 히어로님은 90분 동안 빼삐르타 훈련장을 이용할 수 있습니다. 바로 들어가시겠어요?@[딸기초코 빼빼로 15개, 빼삐르타 훈련장 입장권을 획득하였습니다]",3,"빼삐르타 훈련장으로 이동~!"
					end
				end
			else
			return 2,0, "저는 빼빼왕국의 여왕, 빼빼퀸입니다. 제 빼삐군단은 최고라고 할 수 있을 정도로 민첩하며 아름다운 훈련병으로 갖춰져 있지요.",11,"[빼빼로데이 마크받기]"
			end
		else --GetSwitchCount(cnum, 725) == 1 then --빼빼퀸의 미션을 완료한 뒤 최종보상인 마크를 획득 (미션재시작구분용)
			return 2,0, "도와줘서 고마워요. 덕분에 빼삐훈련병들의 사기가 올라갔답니다. 하지만 빼빼킹 역시 히어로의 도움을 받고 있어요. 괜찮다면 언제든지 와 주세요.",10,"물론 괜찮습니다."


		end





elseif req == 3 then
	if GetItemCount(cnum, 8863,0) < 1 and GetItemCount(cnum, 8864,0) < 1 and GetItemCount(cnum, 8865,0) < 1 then
		return 1,0, "빼삐르타 훈련장 입장권이 있어야만 입장할 수 있습니다.@@(빼빼킹의 빼빠군단 만들기 이벤트의 보상아이템입니다.@아이템이 없을경우 이미 시간이 다 소모됐기 때문에, 다시 미션을 완료하여 입장권을 받아야 합니다.)"
	else
		return 2,0, "그럼 저의 빼삐군단의 훈련장소, 빼삐르타 훈련장으로 안내해드리겠습니다.@@(시간이 지나면 입장권이 소멸됨과 동시에 캐릭터가 워프존으로 설정한 지역으로 자동 이동됩니다.)",4,"[이동]"
	end


elseif req == 4 then

	if Lv < 41 then
	MoveZone(cnum,76,254) --76
	elseif Lv < 81 then
	MoveZone(cnum,77,254) --76
	elseif Lv < 121 then
	MoveZone(cnum,78,254) --76
	elseif Lv < 161 then
	MoveZone(cnum,79,254) --76
	elseif Lv <= 200 then
	MoveZone(cnum,80,254) --76

	else
		return 1,0, "뜨면안됨"
	end

elseif req == 5 then
	return 2,0, "제 빼삐군단은 최강이예요.  그런데, 내 사랑하는 남편인 빼빼킹이 제 빼삐군단을 보고 뭔가 부족하다며 트집을 잡더군요! 그래서 조금 갈등이 있었어요... 지금은 서로의 빼빠군단으로 대결준비를 하고있죠..",6,"제가 도와드릴 일이 있나요?"

elseif req == 6 then
	return 4,0, "물론이죠. 대결에서 이기기 위해선 병사가 많을수록 좋아요. 그럼, 빼삐훈련병을 만들 재료인 '길다란 막대'와 '딸기초콜릿'을 모아주세요. 이 두 재료가 1set로 한 병사를 만든답니다. 히어로님이 도와줄 수 있는 빼삐훈련병의 개수를 선택해주세요.",7,"빼삐훈련병 30개",8,"빼삐훈련병 60개",9,"빼삐훈련병 90개"

elseif req == 7 then
	SetSwitchCount(cnum, 725,30)
	StartQuest(cnum, 227)
	return 1,0, "<빼삐훈련병 30개>@@재료는 '길다란 막대'와 '딸기초콜릿' 이 두 개가 1세트로 하나의 빼삐훈련병을 만들 수 있으니, 30개면 '각각 30개씩 총 60개를' 모아오면 됩니다."
elseif req == 8 then
	SetSwitchCount(cnum, 725,60)
	StartQuest(cnum, 228)
	return 1,0, "<빼삐훈련병 60개>@@재료는 '길다란 막대'와 '딸기초콜릿' 이 두 개가 1세트로 하나의 빼삐훈련병을 만들 수 있으니, 60개면 각각 '60개씩 총 120개를' 모아오면 됩니다."


elseif req == 9 then
	SetSwitchCount(cnum, 725,90)
	StartQuest(cnum, 229)
	return 1,0, "<빼삐훈련병 90개>@@재료는 '길다란 막대'와 '딸기초콜릿' 이 두 개가 1세트로 하나의 빼삐훈련병을 만들 수 있으니, 90개면 각각 '90개씩 총 180개를' 모아오면 됩니다."

elseif req == 10 then
	SetSwitchCount(cnum, 726,1)
	return 4,0, "한 번 해보셨으니 방법은 아시겠지요. '길다란 막대'와 '딸기초콜릿' 이 두 개가 1세트로 하나의 빼삐훈련병을 만들 수 있습니다. 모아주실 개수를 선택해주세요. ",7,"빼삐훈련병 30개",8,"빼삐훈련병 60개",9,"빼삐훈련병 90개"


elseif req == 11 then	--빼빼로데이 마크받기
	return 2,0, "빼빼로 데이를 맞이하여 빼빼왕국에서 만든 마크입니다. 일반 마크와 달리 좀 더 화려하답니다. 세상에 공짜란 없죠. 저를 도와주시면 이 마크를 드리도록 하죠.@@(빼빼킹이나 빼빼퀸의 수집 미션 완료 후 훈련장에서 리본수집 이벤트까지 완료한 뒤에 킹,퀸 npc와 대화해야만 받을 수 있습니다.)",12,"빼빼로 마크를 주세요"








elseif req == 12 then

	if GetRemainPocket(cnum) < 1 then
	return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
	else
		if GetSwitchCount(cnum, 725) == 30 then
			if GetSwitchCount(cnum, 735) < 1 then
				if GetSwitchCount(cnum, 726) == 3 then
				AddItemCount(cnum, 8905,1)
				SetSwitchCount(cnum, 725, 1)
				SetSwitchCount(cnum, 735, 1)
				SetSwitchCount(cnum, 726, 4) --빼삐훈련병의 미션 완료 (잠시막음)
				return 1,0, "여기 빼빼로 마크(30분)이예요. 유용하게 사용하도록 하세요."
				else
				return 1,0, "0"
				end
			else
			SetSwitchCount(cnum, 725, 1)
			SetSwitchCount(cnum, 726, 4) --빼삐훈련병의 미션 완료 (잠시막음)
			return 1,0, "빼빼로 마크는 미션당 1개씩만 받을 수 있습니다..@@(마크는 빼빼킹의 30개 수집, 60,90 이렇게 총 3번, 그리고 빼빼퀸의 30개 수집, 60,90 이렇게 총합 6개를 획득할 수 있습니다.)"
			end

		elseif GetSwitchCount(cnum, 725) == 60 then
			if GetSwitchCount(cnum, 736) < 1 then
				if GetSwitchCount(cnum, 726) == 3 then
				AddItemCount(cnum, 8906,1)
				SetSwitchCount(cnum, 725, 1)
				SetSwitchCount(cnum, 736, 1)
				SetSwitchCount(cnum, 726, 4) --빼삐훈련병의 미션 완료 (잠시막음)
				return 1,0, "여기 빼빼로 마크(60분)이예요. 유용하게 사용하도록 하세요."
				else
				return 1,0, "1"
				end
			else
			SetSwitchCount(cnum, 725, 1)
			SetSwitchCount(cnum, 726, 4) --빼삐훈련병의 미션 완료 (잠시막음)
			return 1,0, "빼빼로 마크는 미션당 1개씩만 받을 수 있습니다..@@(마크는 빼빼킹의 30개 수집, 60,90 이렇게 총 3번, 그리고 빼빼퀸의 30개 수집, 60,90 이렇게 총합 6개를 획득할 수 있습니다.)"
			end

		elseif GetSwitchCount(cnum, 725) == 90 then
			if GetSwitchCount(cnum, 737) < 1 then
				if GetSwitchCount(cnum, 726) == 3 then
				AddItemCount(cnum, 8907,1)
				SetSwitchCount(cnum, 725, 1)
				SetSwitchCount(cnum, 737, 1) --마크받음
				SetSwitchCount(cnum, 726, 4) --빼삐훈련병의 미션 완료 (잠시막음)
				return 1,0, "여기 빼빼로 마크(90분)이예요. 유용하게 사용하도록 하세요."
				else
				return 1,0, "2"
				end
			else
			SetSwitchCount(cnum, 725, 1)
			SetSwitchCount(cnum, 726, 4) --빼삐훈련병의 미션 완료 (잠시막음)
			return 1,0, "빼빼로 마크는 미션당 1개씩만 받을 수 있습니다..@@(마크는 빼빼킹의 30개 수집, 60,90 이렇게 총 3번, 그리고 빼빼퀸의 30개 수집, 60,90 이렇게 총합 6개를 획득할 수 있습니다.)"
			end
		else
		return 1,0, "빼빼로 마크는 주어진 미션을 모두 해결한 뒤에 받을 수 있습니다. @@(빼빼킹이나 빼빼퀸의 미션을 클리어 후, 훈련장 미션까지 완료한 뒤에 해당 npc에게 말을 걸어야만 받을 수 있습니다.)"
		end
	end

	end
end



















function NPC_QUEST_1601(cnum, reqNumber) --빼삐르타 훈련장 안 빼빠르타 훈련병[2011 빼빼로데이 이벤트 - 빼빼군단의 대결]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 726) < 2 then
		return 3,0, "당신은 그 유명한 히어로가 아닌가요?",2,"뭐 하고 계세요?",6,"마을로 돌아갈래요"

		elseif GetSwitchCount(cnum, 726) == 3 or GetSwitchCount(cnum, 726) == 4 then --미션완료
			if GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then
			return 2,0, "덕분에 좀 더 용기를 낼 수 있게 되었습니다. 오늘은 시너지 관련 아이템을 얻으러 오셨나요? 마을로 돌아가시려면 제게 말을 걸어주시기 바랍니다.@@(빼빼퀸의 미션이 끝난 뒤 해당 입장권이 소멸되어야 재 미션이 가능합니다.)",7,"마을로 돌아갑니다"
			else
		return 2,0, "덕분에 좀 더 용기를 낼 수 있게 되었습니다. 참, 빼삐르타 훈련장은 잘 둘러보셨나요? 시간이 되시면 빼빠르타 훈련장도 둘러보시기 바랍니다.",7,"마을로 돌아갑니다"
			end

		else
			if GetItemCount(cnum,8871,0) < 100 then
			return 1,0, "딸기초코 리본넥타이의 개수가 부족@합니다.100개를 모아서 가져다 주세요."
			else
				if GetSwitchCount(cnum, 725) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					else

					if random <= 2 then

					AddItemCount(cnum, 8871,-100)
					AddItemCount(cnum, 8873,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"


					elseif random >2 and random <= 4 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8874,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

					elseif random >4 and random <= 6 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8875,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


					elseif random >6 and random <= 8 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8876,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum,231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

					elseif random >8 and random <= 10 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8877,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


					elseif random >10 and random <= 12 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8878,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


					elseif random >12 and random <= 14 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8879,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


					elseif random >14 and random <= 16 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8880,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"

					else
					return 1,0, "뜨면안됨..1"
					end
					end


				elseif GetSwitchCount(cnum, 725) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"
						else
						return 1,0, "뜨면안됨..2"
						end
					end



				elseif GetSwitchCount(cnum, 725) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,8880,2)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 피(이벤트)를 획득하였습니다.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 손길(이벤트)을 획득하였습니다.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'활력의 심장(이벤트)을 획득하였습니다.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'불타는 깃털(이벤트)을 획득하였습니다.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'천년의 이슬 결정(이벤트)을 획득하였습니다.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명 나무의 수액(이벤트)을 획득하였습니다.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스릴 핵(이벤트)을 획득하였습니다.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'몽환의 소용돌이(이벤트)를 획득하였습니다.'"

						else
							return 1,0, "뜨면안됨..3"
						end
					end
				else
					return 1,0, "뜨면안됨...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "저는 빼빼킹께서 지휘하시는 빼빠군단의 훈련병입니다. 빼삐훈련병과 친해지고 싶은데 빼빼킹과 빼빼퀸님께서 사이가 좋지 않아서 그게 어렵네요.",3,"그러고보니 여긴..."


	elseif req == 3 then
		return 2,0, "여긴 빼빼퀸께서 지휘하시는 빼삐군단의 훈련장소, 즉 빼삐르타 훈련장입니다. 저기 저 아름다운 분홍색 리본을 보면 알 수 있죠.아, 저 열심히 훈련하는 빼삐 훈련병들을 보세요! 정말 멋지지 않나요?@...............@........@저 분들과 친해지고 싶지만 빼빼킹과 빼빼퀸님의 사이가 좋지 않으셔서 다가가기가 힘드네요..이를 어쩌면 좋담..",4,"어떻게 하면 되나요?"


	elseif req == 4 then
		return 2,0, "저와 같이 저들도 리본넥타이를 하고 있죠? 색상만 분홍빛을 띌 뿐.. 저걸 이용해서 말을 걸고 싶은데 다가가기가 힘드네요.",5,"맡겨주세요!"

	elseif req == 5 then
	SetSwitchCount(cnum, 726,2)
	StartQuest(cnum, 231)
	return 1,0, "빼삐군단의 훈련을 방해하고 싶진 않지만, 저들의 아름다운 '딸기초코 리본넥타이'가 필요합니다. 참, 간혹가다 '시너지 부여 아이템'이 나오기도 하니 사냥하면서 바닥을 잘 살펴보세요."

	elseif req == 6 then
	return 2,0, "모처럼 빼삐르타 훈련장에 오셨는데 좀 더 있다가시죠..?@@정말 돌아가시겠어요?@@(다시 빼삐르타 훈련장에 입장하고싶은 유저들은 빼삐르타 훈련장 입장권을 가지고 빼빼퀸에게 말을 걸면 입장이 가능합니다.)",7,"마을로 돌아갑니다"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end




















function NPC_QUEST_1602(cnum, reqNumber) --빼삐르타 훈련장 안 빼빠르타 훈련병[2011 빼빼로데이 이벤트 - 빼빼군단의 대결]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 726) < 2 then
		return 3,0, "당신은 그 유명한 히어로가 아닌가요?",2,"뭐 하고 계세요?",6,"마을로 돌아갈래요"

		elseif GetSwitchCount(cnum, 726) == 3 or GetSwitchCount(cnum, 726) == 4 then --미션완료
			if GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then
			return 2,0, "덕분에 좀 더 용기를 낼 수 있게 되었습니다. 오늘은 시너지 관련 아이템을 얻으러 오셨나요? 마을로 돌아가시려면 제게 말을 걸어주시기 바랍니다.@@(빼빼퀸의 미션이 끝난 뒤 해당 입장권이 소멸되어야 재 미션이 가능합니다.)",7,"마을로 돌아갑니다"
			else
		return 2,0, "덕분에 좀 더 용기를 낼 수 있게 되었습니다. 참, 빼삐르타 훈련장은 잘 둘러보셨나요? 시간이 되시면 빼빠르타 훈련장도 둘러보시기 바랍니다.",7,"마을로 돌아갑니다"
			end

		else
			if GetItemCount(cnum,8871,0) < 100 then
			return 1,0, "딸기초코 리본넥타이의 개수가 부족@합니다. 100개를 모아서 가져다 주세요."
			else
				if GetSwitchCount(cnum, 725) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					else

					if random <= 2 then

					AddItemCount(cnum, 8871,-100)
					AddItemCount(cnum, 8873,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"


					elseif random >2 and random <= 4 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8874,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

					elseif random >4 and random <= 6 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8875,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


					elseif random >6 and random <= 8 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8876,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum,231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

					elseif random >8 and random <= 10 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8877,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


					elseif random >10 and random <= 12 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8878,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


					elseif random >12 and random <= 14 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8879,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


					elseif random >14 and random <= 16 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8880,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"

					else
					return 1,0, "뜨면안됨..1"
					end
					end


				elseif GetSwitchCount(cnum, 725) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@혼돈의 결정(이벤트)을 획득하였습니다.'"
						else
						return 1,0, "뜨면안됨..2"
						end
					end



				elseif GetSwitchCount(cnum, 725) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,8880,2)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 피(이벤트)를 획득하였습니다.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 손길(이벤트)을 획득하였습니다.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'활력의 심장(이벤트)을 획득하였습니다.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'불타는 깃털(이벤트)을 획득하였습니다.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'천년의 이슬 결정(이벤트)을 획득하였습니다.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명 나무의 수액(이벤트)을 획득하였습니다.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스릴 핵(이벤트)을 획득하였습니다.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'몽환의 소용돌이(이벤트)를 획득하였습니다.'"

						else
							return 1,0, "뜨면안됨..3"
						end
					end
				else
					return 1,0, "뜨면안됨...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "저는 빼빼킹께서 지휘하시는 빼빠군단의 훈련병입니다. 빼삐훈련병과 친해지고 싶은데 빼빼킹과 빼빼퀸님께서 사이가 좋지 않아서 그게 어렵네요.",3,"그러고보니 여긴..."


	elseif req == 3 then
		return 2,0, "여긴 빼빼퀸께서 지휘하시는 빼삐군단의 훈련장소, 즉 빼삐르타 훈련장입니다. 저기 저 아름다운 분홍색 리본을 보면 알 수 있죠.아, 저 열심히 훈련하는 빼삐 훈련병들을 보세요! 정말 멋지지 않나요?@...............@........@저 분들과 친해지고 싶지만 빼빼킹과 빼빼퀸님의 사이가 좋지 않으셔서 다가가기가 힘드네요..이를 어쩌면 좋담..",4,"어떻게 하면 되나요?"


	elseif req == 4 then
		return 2,0, "저와 같이 저들도 리본넥타이를 하고 있죠? 색상만 분홍빛을 띌 뿐.. 저걸 이용해서 말을 걸고 싶은데 다가가기가 힘드네요.",5,"맡겨주세요!"

	elseif req == 5 then
	SetSwitchCount(cnum, 726,2)
	StartQuest(cnum, 231)
	return 1,0, "빼삐군단의 훈련을 방해하고 싶진 않지만, 저들의 아름다운 '딸기초코 리본넥타이'가 필요합니다. 참, 간혹가다 '시너지 부여 아이템'이 나오기도 하니 사냥하면서 바닥을 잘 살펴보세요."

	elseif req == 6 then
	return 2,0, "모처럼 빼삐르타 훈련장에 오셨는데 좀 더 있다가시죠..?@@정말 돌아가시겠어요?@@(다시 빼삐르타 훈련장에 입장하고싶은 유저들은 빼삐르타 훈련장 입장권을 가지고 빼빼퀸에게 말을 걸면 입장이 가능합니다.)",7,"마을로 돌아갑니다"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end
















function NPC_QUEST_1603(cnum, reqNumber) --빼삐르타 훈련장 안 빼빠르타 훈련병[2011 빼빼로데이 이벤트 - 빼빼군단의 대결]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 726) < 2 then
		return 3,0, "당신은 그 유명한 히어로가 아닌가요?",2,"뭐 하고 계세요?",6,"마을로 돌아갈래요"

		elseif GetSwitchCount(cnum, 726) == 3 or GetSwitchCount(cnum, 726) == 4 then --미션완료
			if GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then
			return 2,0, "덕분에 좀 더 용기를 낼 수 있게 되었습니다. 오늘은 시너지 관련 아이템을 얻으러 오셨나요? 마을로 돌아가시려면 제게 말을 걸어주시기 바랍니다.@@(빼빼퀸의 미션이 끝난 뒤 해당 입장권이 소멸되어야 재 미션이 가능합니다.)",7,"마을로 돌아갑니다"
			else
		return 2,0, "덕분에 좀 더 용기를 낼 수 있게 되었습니다. 참, 빼삐르타 훈련장은 잘 둘러보셨나요? 시간이 되시면 빼빠르타 훈련장도 둘러보시기 바랍니다.",7,"마을로 돌아갑니다"
			end

		else
			if GetItemCount(cnum,8871,0) < 100 then
			return 1,0, "딸기초코 리본넥타이의 개수가 부족@합니다. 100개를 모아서 가져다 주세요."
			else
				if GetSwitchCount(cnum, 725) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					else

					if random <= 2 then

					AddItemCount(cnum, 8871,-100)
					AddItemCount(cnum, 8873,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"


					elseif random >2 and random <= 4 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8874,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

					elseif random >4 and random <= 6 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8875,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


					elseif random >6 and random <= 8 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8876,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum,231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

					elseif random >8 and random <= 10 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8877,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


					elseif random >10 and random <= 12 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8878,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


					elseif random >12 and random <= 14 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8879,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


					elseif random >14 and random <= 16 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8880,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"

					else
					return 1,0, "뜨면안됨..1"
					end
					end


				elseif GetSwitchCount(cnum, 725) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"
						else
						return 1,0, "뜨면안됨..2"
						end
					end



				elseif GetSwitchCount(cnum, 725) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,8880,2)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 피(이벤트)를 획득하였습니다.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 손길(이벤트)을 획득하였습니다.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'활력의 심장(이벤트)을 획득하였습니다.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'불타는 깃털(이벤트)을 획득하였습니다.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'천년의 이슬 결정(이벤트)을 획득하였습니다.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명 나무의 수액(이벤트)을 획득하였습니다.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스릴 핵(이벤트)을 획득하였습니다.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'몽환의 소용돌이(이벤트)를 획득하였습니다.'"

						else
							return 1,0, "뜨면안됨..3"
						end
					end
				else
					return 1,0, "뜨면안됨...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "저는 빼빼킹께서 지휘하시는 빼빠군단의 훈련병입니다. 빼삐훈련병과 친해지고 싶은데 빼빼킹과 빼빼퀸님께서 사이가 좋지 않아서 그게 어렵네요.",3,"그러고보니 여긴..."


	elseif req == 3 then
		return 2,0, "여긴 빼빼퀸께서 지휘하시는 빼삐군단의 훈련장소, 즉 빼삐르타 훈련장입니다. 저기 저 아름다운 분홍색 리본을 보면 알 수 있죠.아, 저 열심히 훈련하는 빼삐 훈련병들을 보세요! 정말 멋지지 않나요?@...............@........@저 분들과 친해지고 싶지만 빼빼킹과 빼빼퀸님의 사이가 좋지 않으셔서 다가가기가 힘드네요..이를 어쩌면 좋담..",4,"어떻게 하면 되나요?"


	elseif req == 4 then
		return 2,0, "저와 같이 저들도 리본넥타이를 하고 있죠? 색상만 분홍빛을 띌 뿐.. 저걸 이용해서 말을 걸고 싶은데 다가가기가 힘드네요.",5,"맡겨주세요!"

	elseif req == 5 then
	SetSwitchCount(cnum, 726,2)
	StartQuest(cnum, 231)
	return 1,0, "빼삐군단의 훈련을 방해하고 싶진 않지만, 저들의 아름다운 '딸기초코 리본넥타이'가 필요합니다. 참, 간혹가다 '시너지 부여 아이템'이 나오기도 하니 사냥하면서 바닥을 잘 살펴보세요."

	elseif req == 6 then
	return 2,0, "모처럼 빼삐르타 훈련장에 오셨는데 좀 더 있다가시죠..?@@정말 돌아가시겠어요?@@(다시 빼삐르타 훈련장에 입장하고싶은 유저들은 빼삐르타 훈련장 입장권을 가지고 빼빼퀸에게 말을 걸면 입장이 가능합니다.)",7,"마을로 돌아갑니다"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end














function NPC_QUEST_1604(cnum, reqNumber) --빼삐르타 훈련장 안 빼빠르타 훈련병[2011 빼빼로데이 이벤트 - 빼빼군단의 대결]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 726) < 2 then
		return 3,0, "당신은 그 유명한 히어로가 아닌가요?",2,"뭐 하고 계세요?",6,"마을로 돌아갈래요"

		elseif GetSwitchCount(cnum, 726) == 3 or GetSwitchCount(cnum, 726) == 4 then --미션완료
			if GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then
			return 2,0, "덕분에 좀 더 용기를 낼 수 있게 되었습니다. 오늘은 시너지 관련 아이템을 얻으러 오셨나요? 마을로 돌아가시려면 제게 말을 걸어주시기 바랍니다.@@(빼빼퀸의 미션이 끝난 뒤 해당 입장권이 소멸되어야 재 미션이 가능합니다.)",7,"마을로 돌아갑니다"
			else
		return 2,0, "덕분에 좀 더 용기를 낼 수 있게 되었습니다. 참, 빼삐르타 훈련장은 잘 둘러보셨나요? 시간이 되시면 빼빠르타 훈련장도 둘러보시기 바랍니다.",7,"마을로 돌아갑니다"
			end

		else
			if GetItemCount(cnum,8871,0) < 100 then
			return 1,0, "딸기초코 리본넥타이의 개수가 부족@합니다. 100개를 모아서 가져다 주세요."
			else
				if GetSwitchCount(cnum, 725) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					else

					if random <= 2 then

					AddItemCount(cnum, 8871,-100)
					AddItemCount(cnum, 8873,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"


					elseif random >2 and random <= 4 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8874,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

					elseif random >4 and random <= 6 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8875,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


					elseif random >6 and random <= 8 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8876,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum,231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

					elseif random >8 and random <= 10 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8877,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


					elseif random >10 and random <= 12 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8878,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


					elseif random >12 and random <= 14 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8879,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


					elseif random >14 and random <= 16 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8880,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"

					else
					return 1,0, "뜨면안됨..1"
					end
					end


				elseif GetSwitchCount(cnum, 725) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"
						else
						return 1,0, "뜨면안됨..2"
						end
					end



				elseif GetSwitchCount(cnum, 725) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,8880,2)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 피(이벤트)를 획득하였습니다.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 손길(이벤트)을 획득하였습니다.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'활력의 심장(이벤트)을 획득하였습니다.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'불타는 깃털(이벤트)을 획득하였습니다.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'천년의 이슬 결정(이벤트)을 획득하였습니다.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명 나무의 수액(이벤트)을 획득하였습니다.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스릴 핵(이벤트)을 획득하였습니다.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'몽환의 소용돌이(이벤트)를 획득하였습니다.'"

						else
							return 1,0, "뜨면안됨..3"
						end
					end
				else
					return 1,0, "뜨면안됨...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "저는 빼빼킹께서 지휘하시는 빼빠군단의 훈련병입니다. 빼삐훈련병과 친해지고 싶은데 빼빼킹과 빼빼퀸님께서 사이가 좋지 않아서 그게 어렵네요.",3,"그러고보니 여긴..."


	elseif req == 3 then
		return 2,0, "여긴 빼빼퀸께서 지휘하시는 빼삐군단의 훈련장소, 즉 빼삐르타 훈련장입니다. 저기 저 아름다운 분홍색 리본을 보면 알 수 있죠.아, 저 열심히 훈련하는 빼삐 훈련병들을 보세요! 정말 멋지지 않나요?@...............@........@저 분들과 친해지고 싶지만 빼빼킹과 빼빼퀸님의 사이가 좋지 않으셔서 다가가기가 힘드네요..이를 어쩌면 좋담..",4,"어떻게 하면 되나요?"


	elseif req == 4 then
		return 2,0, "저와 같이 저들도 리본넥타이를 하고 있죠? 색상만 분홍빛을 띌 뿐.. 저걸 이용해서 말을 걸고 싶은데 다가가기가 힘드네요.",5,"맡겨주세요!"

	elseif req == 5 then
	SetSwitchCount(cnum, 726,2)
	StartQuest(cnum, 231)
	return 1,0, "빼삐군단의 훈련을 방해하고 싶진 않지만, 저들의 아름다운 '딸기초코 리본넥타이'가 필요합니다. 참, 간혹가다 '시너지 부여 아이템'이 나오기도 하니 사냥하면서 바닥을 잘 살펴보세요."

	elseif req == 6 then
	return 2,0, "모처럼 빼삐르타 훈련장에 오셨는데 좀 더 있다가시죠..?@@정말 돌아가시겠어요?@@(다시 빼삐르타 훈련장에 입장하고싶은 유저들은 빼삐르타 훈련장 입장권을 가지고 빼빼퀸에게 말을 걸면 입장이 가능합니다.)",7,"마을로 돌아갑니다"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end











function NPC_QUEST_1605(cnum, reqNumber) --빼삐르타 훈련장 안 빼빠르타 훈련병[2011 빼빼로데이 이벤트 - 빼빼군단의 대결]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 726) < 2 then
		return 3,0, "당신은 그 유명한 히어로가 아닌가요?",2,"뭐 하고 계세요?",6,"마을로 돌아갈래요"

		elseif GetSwitchCount(cnum, 726) == 3 or GetSwitchCount(cnum, 726) == 4 then --미션완료
			if GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then
			return 2,0, "덕분에 좀 더 용기를 낼 수 있게 되었습니다. 오늘은 시너지 관련 아이템을 얻으러 오셨나요? 마을로 돌아가시려면 제게 말을 걸어주시기 바랍니다.@@(빼빼퀸의 미션이 끝난 뒤 해당 입장권이 소멸되어야 재 미션이 가능합니다.)",7,"마을로 돌아갑니다"
			else
		return 2,0, "덕분에 좀 더 용기를 낼 수 있게 되었습니다. 참, 빼삐르타 훈련장은 잘 둘러보셨나요? 시간이 되시면 빼빠르타 훈련장도 둘러보시기 바랍니다.",7,"마을로 돌아갑니다"
			end

		else
			if GetItemCount(cnum,8871,0) < 100 then
			return 1,0, "딸기초코 리본넥타이의 개수가 부족@합니다. 100개를 모아서 가져다 주세요."
			else
				if GetSwitchCount(cnum, 725) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					else

					if random <= 2 then

					AddItemCount(cnum, 8871,-100)
					AddItemCount(cnum, 8873,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"


					elseif random >2 and random <= 4 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8874,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

					elseif random >4 and random <= 6 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8875,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


					elseif random >6 and random <= 8 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8876,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum,231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

					elseif random >8 and random <= 10 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8877,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


					elseif random >10 and random <= 12 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8878,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


					elseif random >12 and random <= 14 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8879,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


					elseif random >14 and random <= 16 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8880,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"

					else
					return 1,0, "뜨면안됨..1"
					end
					end


				elseif GetSwitchCount(cnum, 725) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"
						else
						return 1,0, "뜨면안됨..2"
						end
					end



				elseif GetSwitchCount(cnum, 725) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,8880,2)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'용의 피(이벤트)를 획득하였습니다.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'악마의 손길(이벤트)을 획득하였습니다.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'활력의 심장(이벤트)을 획득하였습니다.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'불타는 깃털(이벤트)을 획득하였습니다.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'천년의 이슬 결정(이벤트)을 획득하였습니다.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'생명 나무의 수액(이벤트)을 획득하였습니다.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'미스릴 핵(이벤트)을 획득하였습니다.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "모아주셨군요. 꽤나 힘드셨을텐데, 감사합니다. 이건 제 성의이니 잘 사용해주세요.@@'몽환의 소용돌이(이벤트)를 획득하였습니다.'"

						else
							return 1,0, "뜨면안됨..3"
						end
					end
				else
					return 1,0, "뜨면안됨...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "저는 빼빼킹께서 지휘하시는 빼빠군단의 훈련병입니다. 빼삐훈련병과 친해지고 싶은데 빼빼킹과 빼빼퀸님께서 사이가 좋지 않아서 그게 어렵네요.",3,"그러고보니 여긴..."


	elseif req == 3 then
		return 2,0, "여긴 빼빼퀸께서 지휘하시는 빼삐군단의 훈련장소, 즉 빼삐르타 훈련장입니다. 저기 저 아름다운 분홍색 리본을 보면 알 수 있죠.아, 저 열심히 훈련하는 빼삐 훈련병들을 보세요! 정말 멋지지 않나요?@...............@........@저 분들과 친해지고 싶지만 빼빼킹과 빼빼퀸님의 사이가 좋지 않으셔서 다가가기가 힘드네요..이를 어쩌면 좋담..",4,"어떻게 하면 되나요?"


	elseif req == 4 then
		return 2,0, "저와 같이 저들도 리본넥타이를 하고 있죠? 색상만 분홍빛을 띌 뿐.. 저걸 이용해서 말을 걸고 싶은데 다가가기가 힘드네요.",5,"맡겨주세요!"

	elseif req == 5 then
	SetSwitchCount(cnum, 726,2)
	StartQuest(cnum, 231)
	return 1,0, "빼삐군단의 훈련을 방해하고 싶진 않지만, 저들의 아름다운 '딸기초코 리본넥타이'가 필요합니다. 참, 간혹가다 '시너지 부여 아이템'이 나오기도 하니 사냥하면서 바닥을 잘 살펴보세요."

	elseif req == 6 then
	return 2,0, "모처럼 빼삐르타 훈련장에 오셨는데 좀 더 있다가시죠..?@@정말 돌아가시겠어요?@@(다시 빼삐르타 훈련장에 입장하고싶은 유저들은 빼삐르타 훈련장 입장권을 가지고 빼빼퀸에게 말을 걸면 입장이 가능합니다.)",7,"마을로 돌아갑니다"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end














function NPC_QUEST_1606(cnum, reqNumber) --빼빠르타 훈련장 안 빼삐르타 훈련병[2011 빼빼로데이 이벤트 - 빼빼군단의 대결]
req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 727) < 2 then
		return 3,0, "(소근소근) 어머나, 왠 사람이람?",2,"뭐 하고 계세요?",6,"마을로 돌아갈래요"

		elseif GetSwitchCount(cnum, 727) == 3 or GetSwitchCount(cnum, 727) == 4 then --미션완료
			if GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then
			return 2,0, "(소근소근) 저번엔 도와주셔서 감사했습니다. 오늘은 시너지 관련 아이템을 얻으러 오셨나보군요? 그런데 무슨 일로 제게 말을 거셨나요?@@(빼빼킹의 미션이 끝난 뒤 해당 입장권이 소멸되어야 재 미션이 가능합니다.)",7,"마을로 돌아갑니다"
			else
			return 1,0, "뜨면안됨.2"
			end

		else
			if GetItemCount(cnum,8867,0) < 100 then
			return 1,0, "(소근소근) 초코 리본넥타이의 개수가 부족해요! 100개를 모아와주세요!"
			else
				if GetSwitchCount(cnum, 724) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					else

					if random <= 2 then

						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


					else
					return 1,0, "뜨면안됨..1"
					end
					end


				elseif GetSwitchCount(cnum, 724) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
							SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"
						else
						return 1,0, "뜨면안됨..2"
						end
					end



				elseif GetSwitchCount(cnum, 724) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@용의 피(이벤트)를 획득하였습니다.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 손길(이벤트)을 획득하였습니다.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'활력의 심장(이벤트)을 획득하였습니다.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'불타는 깃털(이벤트)을 획득하였습니다.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'천년의 이슬 결정(이벤트)을 획득하였습니다.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명 나무의 수액(이벤트)을 획득하였습니다.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스릴 핵(이벤트)을 획득하였습니다.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'몽환의 소용돌이(이벤트)를 획득하였습니다.'"


						else
							return 1,0, "뜨면안됨..3"
						end
					end
				else
					return 1,0, "뜨면안됨...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "(소근소근) 쉿! 목소리 낮추세요! 지금 빼빠르타 훈련병들이 열심히 훈련중이니 방해하면 안된다구요~",3,"그러고보니 여긴..."

	elseif req == 3 then
		return 2,0, "(소근소근) 여긴 빼빠르타 훈련장이예요. 빼빼킹께서 지휘하시는 빼빠군단의 훈련장소죠. 아, 저 열심히 훈련하는 빼삐 훈련병들을 보세요! 정말 멋지지 않나요?@...............@........@저 분들과 친해지고 싶지만 빼빼킹과 빼빼퀸님의 사이가 좋지 않으셔서 다가가기가 힘드네요..이를 어쩌면 좋담..",4,"어떻게 하면 되나요?"

	elseif req == 4 then
		return 2,0, "(소근소근) 음.. 빼빠 훈련병들의 상징인 저 구릿빛......리본을 가지고 싶어요! 리본 100개 정도면 되겠네요!",5,"맡겨주세요!"

	elseif req == 5 then
	SetSwitchCount(cnum, 727,2)
	StartQuest(cnum, 230)
	return 1,0, "고마워요! 앗...@@(소근소근) 저 멋진 빼빠 훈련병들에겐 미안하지만.. 저들의 '초코 리본넥타이'를 '100개' 모아주시면 돼요. 참, 간혹가다 '시너지 부여 아이템'이 나오기도 하니 열심히 싸워주세요!"

	elseif req == 6 then
	return 2,0, "(소근소근) 아무것도 하지 않고 돌아가겠단 건가요? 아쉽네요..@다시 돌아오실때에는 빼빼킹님에게 말을 걸면 될 거예요. @@정말 돌아가시겠어요?",7,"마을로 돌아갑니다"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end
















function NPC_QUEST_1607(cnum, reqNumber) --빼빠르타 훈련장 안 빼삐르타 훈련병[2011 빼빼로데이 이벤트 - 빼빼군단의 대결]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 727) < 2 then
		return 3,0, "(소근소근) 어머나, 왠 사람이람?",2,"뭐 하고 계세요?",6,"마을로 돌아갈래요"

		elseif GetSwitchCount(cnum, 727) == 3 or GetSwitchCount(cnum, 727) == 4 then --미션완료
			if GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then
			return 2,0, "(소근소근) 저번엔 도와주셔서 감사했습니다. 오늘은 시너지 관련 아이템을 얻으러 오셨나보군요? 그런데 무슨 일로 제게 말을 거셨나요?@@(빼빼킹의 미션이 끝난 뒤 해당 입장권이 소멸되어야 재 미션이 가능합니다.)",7,"마을로 돌아갑니다"
			else
			return 2,0, "(소근소근) 저번엔 도와주셔서 감사했습니다. 무슨 일로 제게 말을 거셨나요?@@(빼빼킹의 미션을 모두 완수한 뒤 재시작하면 해당 미션을 반복할 수 있습니다.)",7,"마을로 돌아갑니다"
			end

		else
			if GetItemCount(cnum,8867,0) < 100 then
			return 1,0, "(소근소근) 초코 리본넥타이의 개수가 부족해요! 100개를 모아와주세요!"
			else
				if GetSwitchCount(cnum, 724) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					else

					if random <= 2 then

						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


					else
					return 1,0, "뜨면안됨..1"
					end
					end


				elseif GetSwitchCount(cnum, 724) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
							SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"
						else
						return 1,0, "뜨면안됨..2"
						end
					end


				elseif GetSwitchCount(cnum, 724) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 피(이벤트)를 획득하였습니다.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 손길(이벤트)을 획득하였습니다.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'활력의 심장(이벤트)을 획득하였습니다.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'불타는 깃털(이벤트)을 획득하였습니다.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'천년의 이슬 결정(이벤트)을 획득하였습니다.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명 나무의 수액(이벤트)을 획득하였습니다.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스릴 핵(이벤트)을 획득하였습니다.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'몽환의 소용돌이(이벤트)를 획득하였습니다.'"


						else
							return 1,0, "뜨면안됨..3"
						end
					end
				else
					return 1,0, "뜨면안됨...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "(소근소근) 쉿! 목소리 낮추세요! 지금 빼빠르타 훈련병들이 열심히 훈련중이니 방해하면 안된다구요~",3,"그러고보니 여긴..."

	elseif req == 3 then
		return 2,0, "(소근소근) 여긴 빼빠르타 훈련장이예요. 빼빼킹께서 지휘하시는 빼빠군단의 훈련장소죠. 아, 저 열심히 훈련하는 빼삐 훈련병들을 보세요! 정말 멋지지 않나요?@...............@........@저 분들과 친해지고 싶지만 빼빼킹과 빼빼퀸님의 사이가 좋지 않으셔서 다가가기가 힘드네요..이를 어쩌면 좋담..",4,"어떻게 하면 되나요?"

	elseif req == 4 then
		return 2,0, "(소근소근) 음.. 빼빠 훈련병들의 상징인 저 구릿빛......리본을 가지고 싶어요! 리본 100개 정도면 되겠네요!",5,"맡겨주세요!"

	elseif req == 5 then
	SetSwitchCount(cnum, 727,2)
	StartQuest(cnum, 230)
	return 1,0, "고마워요! 앗...@@(소근소근) 저 멋진 빼빠 훈련병들에겐 미안하지만.. 저들의 '초코 리본넥타이'를 '100개' 모아주시면 돼요. 참, 간혹가다 '시너지 부여 아이템'이 나오기도 하니 열심히 싸워주세요!"

	elseif req == 6 then
	return 2,0, "(소근소근) 아무것도 하지 않고 돌아가겠단 건가요? 아쉽네요..@다시 돌아오실때에는 빼빼킹님에게 말을 걸면 될 거예요. @@정말 돌아가시겠어요?",7,"마을로 돌아갑니다"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end












function NPC_QUEST_1608(cnum, reqNumber) --빼빠르타 훈련장 안 빼삐르타 훈련병[2011 빼빼로데이 이벤트 - 빼빼군단의 대결]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 727) < 2 then
		return 3,0, "(소근소근) 어머나, 왠 사람이람?",2,"뭐 하고 계세요?",6,"마을로 돌아갈래요"

		elseif GetSwitchCount(cnum, 727) == 3 or GetSwitchCount(cnum, 727) == 4 then --미션완료
			if GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then
			return 2,0, "(소근소근) 저번엔 도와주셔서 감사했습니다. 오늘은 시너지 관련 아이템을 얻으러 오셨나보군요? 그런데 무슨 일로 제게 말을 거셨나요?@@(빼빼킹의 미션이 끝난 뒤 해당 입장권이 소멸되어야 재 미션이 가능합니다.)",7,"마을로 돌아갑니다"
			else
			return 2,0, "(소근소근) 저번엔 도와주셔서 감사했습니다. 무슨 일로 제게 말을 거셨나요?@@(빼빼킹의 미션을 모두 완수한 뒤 재시작하면 해당 미션을 반복할 수 있습니다.)",7,"마을로 돌아갑니다"
			end

		else
			if GetItemCount(cnum,8867,0) < 100 then
			return 1,0, "(소근소근) 초코 리본넥타이의 개수가 부족해요! 100개를 모아와주세요!"
			else
				if GetSwitchCount(cnum, 724) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					else

					if random <= 2 then

						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


					else
					return 1,0, "뜨면안됨..1"
					end
					end


				elseif GetSwitchCount(cnum, 724) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
							SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"
						else
						return 1,0, "뜨면안됨..2"
						end
					end



				elseif GetSwitchCount(cnum, 724) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 피(이벤트)를 획득하였습니다.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 손길(이벤트)을 획득하였습니다.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'활력의 심장(이벤트)을 획득하였습니다.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'불타는 깃털(이벤트)을 획득하였습니다.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'천년의 이슬 결정(이벤트)을 획득하였습니다.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명 나무의 수액(이벤트)을 획득하였습니다.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스릴 핵(이벤트)을 획득하였습니다.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'몽환의 소용돌이(이벤트)를 획득하였습니다.'"


						else
							return 1,0, "뜨면안됨..3"
						end
					end
				else
					return 1,0, "뜨면안됨...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "(소근소근) 쉿! 목소리 낮추세요! 지금 빼빠르타 훈련병들이 열심히 훈련중이니 방해하면 안된다구요~",3,"그러고보니 여긴..."

	elseif req == 3 then
		return 2,0, "(소근소근) 여긴 빼빠르타 훈련장이예요. 빼빼킹께서 지휘하시는 빼빠군단의 훈련장소죠. 아, 저 열심히 훈련하는 빼삐 훈련병들을 보세요! 정말 멋지지 않나요?@...............@........@저 분들과 친해지고 싶지만 빼빼킹과 빼빼퀸님의 사이가 좋지 않으셔서 다가가기가 힘드네요..이를 어쩌면 좋담..",4,"어떻게 하면 되나요?"

	elseif req == 4 then
		return 2,0, "(소근소근) 음.. 빼빠 훈련병들의 상징인 저 구릿빛......리본을 가지고 싶어요! 리본 100개 정도면 되겠네요!",5,"맡겨주세요!"

	elseif req == 5 then
	SetSwitchCount(cnum, 727,2)
	StartQuest(cnum, 230)
	return 1,0, "고마워요! 앗...@@(소근소근) 저 멋진 빼빠 훈련병들에겐 미안하지만.. 저들의 '초코 리본넥타이'를 '100개' 모아주시면 돼요. 참, 간혹가다 '시너지 부여 아이템'이 나오기도 하니 열심히 싸워주세요!"

	elseif req == 6 then
	return 2,0, "(소근소근) 아무것도 하지 않고 돌아가겠단 건가요? 아쉽네요..@다시 돌아오실때에는 빼빼킹님에게 말을 걸면 될 거예요. @@정말 돌아가시겠어요?",7,"마을로 돌아갑니다"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end














function NPC_QUEST_1609(cnum, reqNumber) --빼빠르타 훈련장 안 빼삐르타 훈련병[2011 빼빼로데이 이벤트 - 빼빼군단의 대결]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 727) < 2 then
		return 3,0, "(소근소근) 어머나, 왠 사람이람?",2,"뭐 하고 계세요?",6,"마을로 돌아갈래요"

		elseif GetSwitchCount(cnum, 727) == 3 or GetSwitchCount(cnum, 727) == 4 then --미션완료
			if GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then
			return 2,0, "(소근소근) 저번엔 도와주셔서 감사했습니다. 오늘은 시너지 관련 아이템을 얻으러 오셨나보군요? 그런데 무슨 일로 제게 말을 거셨나요?@@(빼빼킹의 미션이 끝난 뒤 해당 입장권이 소멸되어야 재 미션이 가능합니다.)",7,"마을로 돌아갑니다"
			else
			return 2,0, "(소근소근) 저번엔 도와주셔서 감사했습니다. 무슨 일로 제게 말을 거셨나요?@@(빼빼킹의 미션을 모두 완수한 뒤 재시작하면 해당 미션을 반복할 수 있습니다.)",7,"마을로 돌아갑니다"
			end

		else
			if GetItemCount(cnum,8867,0) < 100 then
			return 1,0, "(소근소근) 초코 리본넥타이의 개수가 부족해요! 100개를 모아와주세요!"
			else
				if GetSwitchCount(cnum, 724) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					else

					if random <= 2 then

						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


					else
					return 1,0, "뜨면안됨..1"
					end
					end


				elseif GetSwitchCount(cnum, 724) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
							SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"
						else
						return 1,0, "뜨면안됨..2"
						end
					end

				elseif GetSwitchCount(cnum, 724) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 피(이벤트)를 획득하였습니다.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 손길(이벤트)을 획득하였습니다.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'활력의 심장(이벤트)을 획득하였습니다.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'불타는 깃털(이벤트)을 획득하였습니다.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'천년의 이슬 결정(이벤트)을 획득하였습니다.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명 나무의 수액(이벤트)을 획득하였습니다.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스릴 핵(이벤트)을 획득하였습니다.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'몽환의 소용돌이(이벤트)를 획득하였습니다.'"


						else
							return 1,0, "뜨면안됨..3"
						end
					end
				else
					return 1,0, "뜨면안됨...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "(소근소근) 쉿! 목소리 낮추세요! 지금 빼빠르타 훈련병들이 열심히 훈련중이니 방해하면 안된다구요~",3,"그러고보니 여긴..."

	elseif req == 3 then
		return 2,0, "(소근소근) 여긴 빼빠르타 훈련장이예요. 빼빼킹께서 지휘하시는 빼빠군단의 훈련장소죠. 아, 저 열심히 훈련하는 빼삐 훈련병들을 보세요! 정말 멋지지 않나요?@...............@........@저 분들과 친해지고 싶지만 빼빼킹과 빼빼퀸님의 사이가 좋지 않으셔서 다가가기가 힘드네요..이를 어쩌면 좋담..",4,"어떻게 하면 되나요?"

	elseif req == 4 then
		return 2,0, "(소근소근) 음.. 빼빠 훈련병들의 상징인 저 구릿빛......리본을 가지고 싶어요! 리본 100개 정도면 되겠네요!",5,"맡겨주세요!"

	elseif req == 5 then
	SetSwitchCount(cnum, 727,2)
	StartQuest(cnum, 230)
	return 1,0, "고마워요! 앗...@@(소근소근) 저 멋진 빼빠 훈련병들에겐 미안하지만.. 저들의 '초코 리본넥타이'를 '100개' 모아주시면 돼요. 참, 간혹가다 '시너지 부여 아이템'이 나오기도 하니 열심히 싸워주세요!"

	elseif req == 6 then
	return 2,0, "(소근소근) 아무것도 하지 않고 돌아가겠단 건가요? 아쉽네요..@다시 돌아오실때에는 빼빼킹님에게 말을 걸면 될 거예요. @@정말 돌아가시겠어요?",7,"마을로 돌아갑니다"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end

















function NPC_QUEST_1610(cnum, reqNumber) --빼빠르타 훈련장 안 빼삐르타 훈련병[2011 빼빼로데이 이벤트 - 빼빼군단의 대결]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 727) < 2 then
		return 3,0, "(소근소근) 어머나, 왠 사람이람?",2,"뭐 하고 계세요?",6,"마을로 돌아갈래요"

		elseif GetSwitchCount(cnum, 727) == 3 or GetSwitchCount(cnum, 727) == 4 then --미션완료
			if GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then
			return 2,0, "(소근소근) 저번엔 도와주셔서 감사했습니다. 오늘은 시너지 관련 아이템을 얻으러 오셨나보군요? 그런데 무슨 일로 제게 말을 거셨나요?@@(빼빼킹의 미션이 끝난 뒤 해당 입장권이 소멸되어야 재 미션이 가능합니다.)",7,"마을로 돌아갑니다"
			else
			return 2,0, "(소근소근) 저번엔 도와주셔서 감사했습니다. 무슨 일로 제게 말을 거셨나요?@@(빼빼킹의 미션을 모두 완수한 뒤 재시작하면 해당 미션을 반복할 수 있습니다.)",7,"마을로 돌아갑니다"
			end

		else
			if GetItemCount(cnum,8867,0) < 100 then
			return 1,0, "(소근소근) 초코 리본넥타이의 개수가 부족해요! 100개를 모아와주세요!"
			else
				if GetSwitchCount(cnum, 724) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
					else

					if random <= 2 then

						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


					else
					return 1,0, "뜨면안됨..1"
					end
					end


				elseif GetSwitchCount(cnum, 724) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
							SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"
						else
						return 1,0, "뜨면안됨..2"
						end
					end



				elseif GetSwitchCount(cnum, 724) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "이런, 가방이 너무 무겁군요. 보답을 드리려 했는데 이래선 드릴 수 없어요."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'드래곤의 비늘(이벤트)을 획득하였습니다.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'박쥐 날개(이벤트)를 획득하였습니다.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'날카로운 이빨(이벤트)을 획득하였습니다.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 깃털(이벤트)을 획득하였습니다.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'달콤한 수액(이벤트)을 획득하였습니다.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇가지(이벤트)를 획득하였습니다.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'붉은 금속(이벤트)을 획득하였습니다.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스틱 완드(이벤트)를 획득하였습니다.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 보옥(이벤트)을 획득하였습니다.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 계약서(이벤트)를 획득하였습니다.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'맹수의 심볼(이벤트)을 획득하였습니다.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'바람의 결정(이벤트)을 획득하였습니다.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'무지개 벌레의 껍질(이벤트)을 획득하였습니다.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명의 나뭇잎(이벤트)을 획득하였습니다.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'기계생명의 열쇠(이벤트)를 획득하였습니다.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'혼돈의 결정(이벤트)을 획득하였습니다.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'용의 피(이벤트)를 획득하였습니다.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'악마의 손길(이벤트)을 획득하였습니다.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'활력의 심장(이벤트)을 획득하였습니다.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'불타는 깃털(이벤트)을 획득하였습니다.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'천년의 이슬 결정(이벤트)을 획득하였습니다.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'생명 나무의 수액(이벤트)을 획득하였습니다.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'미스릴 핵(이벤트)을 획득하였습니다.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "앗!!! 고마워요!!@@(소근소근) 이걸 갖다주는 핑계로 한번 친해져보도록 노력해야겠네요. 정말 고마워요. 이건 제 감사의 표시랍니다.@@'몽환의 소용돌이(이벤트)를 획득하였습니다.'"


						else
							return 1,0, "뜨면안됨..3"
						end
					end
				else
					return 1,0, "뜨면안됨...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "(소근소근) 쉿! 목소리 낮추세요! 지금 빼빠르타 훈련병들이 열심히 훈련중이니 방해하면 안된다구요~",3,"그러고보니 여긴..."

	elseif req == 3 then
		return 2,0, "(소근소근) 여긴 빼빠르타 훈련장이예요. 빼빼킹께서 지휘하시는 빼빠군단의 훈련장소죠. 아, 저 열심히 훈련하는 빼삐 훈련병들을 보세요! 정말 멋지지 않나요?@...............@........@저 분들과 친해지고 싶지만 빼빼킹과 빼빼퀸님의 사이가 좋지 않으셔서 다가가기가 힘드네요..이를 어쩌면 좋담..",4,"어떻게 하면 되나요?"

	elseif req == 4 then
		return 2,0, "(소근소근) 음.. 빼빠 훈련병들의 상징인 저 구릿빛......리본을 가지고 싶어요! 리본 100개 정도면 되겠네요!",5,"맡겨주세요!"

	elseif req == 5 then
	SetSwitchCount(cnum, 727,2)
	StartQuest(cnum, 230)
	return 1,0, "고마워요! 앗...@@(소근소근) 저 멋진 빼빠 훈련병들에겐 미안하지만.. 저들의 '초코 리본넥타이'를 '100개' 모아주시면 돼요. 참, 간혹가다 '시너지 부여 아이템'이 나오기도 하니 열심히 싸워주세요!"

	elseif req == 6 then
	return 2,0, "(소근소근) 아무것도 하지 않고 돌아가겠단 건가요? 아쉽네요..@다시 돌아오실때에는 빼빼킹님에게 말을 걸면 될 거예요. @@정말 돌아가시겠어요?",7,"마을로 돌아갑니다"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end



