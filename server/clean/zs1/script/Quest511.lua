function NPC_QUEST_682(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 401) < 1 then 
			return 3,0,"자넨 ~ 커플인가? 솔로인가??",2,"컵흘 지옥! 솔로 천국!!",3,"그걸 질문이라고.. 당연히 커플이지."

		else
			if GetItemCount(cnum, 8209, 0) < 33 and GetItemCount(cnum, 8210, 0) < 33 then
				return 2,0,"이런이런~ 춘장이랑 밀가루 개수가 맞지 않는걸…이러면 짱호야표 삼삼짜장면을 절대 만들 수 없어! 삼삼짜장면을 먹고 싶다면 춘장과 밀가루를 더 모아오도록 해",32,"어?! 이런.. 다시 올께요."


			else
				return 2,0,"와우!!! 아주 신선한 재료들 모아왔군. 이런 재료 구하느라 힘들었을 텐데, 먹는 순간 기분 업!! 시켜줄 수 있는 아주 맛있는 짱호야표 삼삼짜장면을 만들어 주도록 하지~ 달콤리브유를 넣어야 하니, 잠시만 기다려봐.",42,"우와! 맛있겠다!! 빨리 먹고 싶어요."


			end
		end





	elseif req == 2 then
		return 3,0,"허허허~!! 나는 세계에서 유명한 자장면의 달인 짱호야! 라고 해~ 블랙 데이를 맞아 너처럼 외로이 보낼 솔로들을 위해 짱호야표 짜장면을 만들어 줄려고 내가 왔다네! 내가 만드는 짜장면에서는 달콤리브유가 첨가 되기 때문에 짜장면을 먹는 순간 우울한 기분은 사라지게 되지~ 어때? 내가 만든 짜장면을 먹어 볼래?",12,"네!! 얼른 먹어 보고 싶어요.",13,"난 짬뽕이 죠아."



	elseif req == 3 then
		return 0



	elseif req == 12 then
		return 3,0,"자! 그럼 짜장면을 만들려면 몇 가지 재료가 필요해. 다양한 몬스터를 잡다 보면 춘장과 밀가루가 나올거야. 그걸 각각 33개씩 나에게 가져다 주면 내가 달콤리브유가 첨가된 삼삼짜장면을 만들어 주도록 할께. 어때? 벌써부터 입에 침이 고이지?",22,"(침 질질) 구해올께요.",23,"다이어트 중 이예욧!!"



	elseif req == 13 then
		return 0



	elseif req == 22 then
		AddSwitchCount(cnum, 401, 1)



	elseif req == 23 then
		return 0


	elseif req == 32 then
		return 0



	elseif req == 42 then
		return 2,0,"자~ 여깄네!! 세상에서 하나뿐인 중독성 있는 짱호야표 삼삼짜장면 이야. 달콤리브유를 넣어서 아주 맛이 매력적일꺼야. 후훗~ 아! 그리고 신선한 재료만 있으면 내가 언제든지 만들어 줄 수 있으니 기분이 우울해지면 이 짱호야를 찾아오도록 해!",52,"예얍!! 짱호야 멋쨍이~"


	elseif req == 52 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 여유 공간이 없습니다. 한칸 이상 여유 공간이 필요합니다."



		else
			AddItemCount(cnum, 8209, -33)
			AddItemCount(cnum, 8210, -33)
			AddItemCount(cnum, 8211, 1)
		
		end

	else
		return 0

	end
end



function NPC_QUEST_683(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 401) < 1 then 
			return 3,0,"자넨 ~ 커플인가? 솔로인가??",2,"컵흘 지옥! 솔로 천국!!",3,"그걸 질문이라고.. 당연히 커플이지."

		else
			if GetItemCount(cnum, 8209, 0) < 33 and GetItemCount(cnum, 8210, 0) < 33 then
				return 2,0,"이런이런~ 춘장이랑 밀가루 개수가 맞지 않는걸…이러면 짱호야표 삼삼짜장면을 절대 만들 수 없어! 삼삼짜장면을 먹고 싶다면 춘장과 밀가루를 더 모아오도록 해",32,"어?! 이런.. 다시 올께요."


			else
				return 2,0,"와우!!! 아주 신선한 재료들 모아왔군. 이런 재료 구하느라 힘들었을 텐데, 먹는 순간 기분 업!! 시켜줄 수 있는 아주 맛있는 짱호야표 삼삼짜장면을 만들어 주도록 하지~ 달콤리브유를 넣어야 하니, 잠시만 기다려봐.",42,"우와! 맛있겠다!! 빨리 먹고 싶어요."


			end
		end





	elseif req == 2 then
		return 3,0,"허허허~!! 나는 세계에서 유명한 자장면의 달인 짱호야! 라고 해~ 블랙 데이를 맞아 너처럼 외로이 보낼 솔로들을 위해 짱호야표 짜장면을 만들어 줄려고 내가 왔다네! 내가 만드는 짜장면에서는 달콤리브유가 첨가 되기 때문에 짜장면을 먹는 순간 우울한 기분은 사라지게 되지~ 어때? 내가 만든 짜장면을 먹어 볼래?",12,"네!! 얼른 먹어 보고 싶어요.",13,"난 짬뽕이 죠아."



	elseif req == 3 then
		return 0



	elseif req == 12 then
		return 3,0,"자! 그럼 짜장면을 만들려면 몇 가지 재료가 필요해. 다양한 몬스터를 잡다 보면 춘장과 밀가루가 나올거야. 그걸 각각 33개씩 나에게 가져다 주면 내가 달콤리브유가 첨가된 삼삼짜장면을 만들어 주도록 할께. 어때? 벌써부터 입에 침이 고이지?",22,"(침 질질) 구해올께요.",23,"다이어트 중 이예욧!!"



	elseif req == 13 then
		return 0



	elseif req == 22 then
		AddSwitchCount(cnum, 401, 1)



	elseif req == 23 then
		return 0


	elseif req == 32 then
		return 0



	elseif req == 42 then
		return 2,0,"자~ 여깄네!! 세상에서 하나뿐인 중독성 있는 짱호야표 삼삼짜장면 이야. 달콤리브유를 넣어서 아주 맛이 매력적일꺼야. 후훗~ 아! 그리고 신선한 재료만 있으면 내가 언제든지 만들어 줄 수 있으니 기분이 우울해지면 이 짱호야를 찾아오도록 해!",52,"예얍!! 짱호야 멋쨍이~"


	elseif req == 52 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 여유 공간이 없습니다. 한칸 이상 여유 공간이 필요합니다."



		else
			AddItemCount(cnum, 8209, -33)
			AddItemCount(cnum, 8210, -33)
			AddItemCount(cnum, 8211, 1)
		
		end

	else
		return 0

	end
end




function NPC_QUEST_684(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 401) < 1 then 
			return 3,0,"자넨 ~ 커플인가? 솔로인가??",2,"컵흘 지옥! 솔로 천국!!",3,"그걸 질문이라고.. 당연히 커플이지."

		else
			if GetItemCount(cnum, 8209, 0) < 33 and GetItemCount(cnum, 8210, 0) < 33 then
				return 2,0,"이런이런~ 춘장이랑 밀가루 개수가 맞지 않는걸…이러면 짱호야표 삼삼짜장면을 절대 만들 수 없어! 삼삼짜장면을 먹고 싶다면 춘장과 밀가루를 더 모아오도록 해",32,"어?! 이런.. 다시 올께요."


			else
				return 2,0,"와우!!! 아주 신선한 재료들 모아왔군. 이런 재료 구하느라 힘들었을 텐데, 먹는 순간 기분 업!! 시켜줄 수 있는 아주 맛있는 짱호야표 삼삼짜장면을 만들어 주도록 하지~ 달콤리브유를 넣어야 하니, 잠시만 기다려봐.",42,"우와! 맛있겠다!! 빨리 먹고 싶어요."


			end
		end





	elseif req == 2 then
		return 3,0,"허허허~!! 나는 세계에서 유명한 자장면의 달인 짱호야! 라고 해~ 블랙 데이를 맞아 너처럼 외로이 보낼 솔로들을 위해 짱호야표 짜장면을 만들어 줄려고 내가 왔다네! 내가 만드는 짜장면에서는 달콤리브유가 첨가 되기 때문에 짜장면을 먹는 순간 우울한 기분은 사라지게 되지~ 어때? 내가 만든 짜장면을 먹어 볼래?",12,"네!! 얼른 먹어 보고 싶어요.",13,"난 짬뽕이 죠아."



	elseif req == 3 then
		return 0



	elseif req == 12 then
		return 3,0,"자! 그럼 짜장면을 만들려면 몇 가지 재료가 필요해. 다양한 몬스터를 잡다 보면 춘장과 밀가루가 나올거야. 그걸 각각 33개씩 나에게 가져다 주면 내가 달콤리브유가 첨가된 삼삼짜장면을 만들어 주도록 할께. 어때? 벌써부터 입에 침이 고이지?",22,"(침 질질) 구해올께요.",23,"다이어트 중 이예욧!!"



	elseif req == 13 then
		return 0



	elseif req == 22 then
		AddSwitchCount(cnum, 401, 1)



	elseif req == 23 then
		return 0


	elseif req == 32 then
		return 0



	elseif req == 42 then
		return 2,0,"자~ 여깄네!! 세상에서 하나뿐인 중독성 있는 짱호야표 삼삼짜장면 이야. 달콤리브유를 넣어서 아주 맛이 매력적일꺼야. 후훗~ 아! 그리고 신선한 재료만 있으면 내가 언제든지 만들어 줄 수 있으니 기분이 우울해지면 이 짱호야를 찾아오도록 해!",52,"예얍!! 짱호야 멋쨍이~"


	elseif req == 52 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 여유 공간이 없습니다. 한칸 이상 여유 공간이 필요합니다."



		else
			AddItemCount(cnum, 8209, -33)
			AddItemCount(cnum, 8210, -33)
			AddItemCount(cnum, 8211, 1)
		
		end

	else
		return 0

	end
end



































		