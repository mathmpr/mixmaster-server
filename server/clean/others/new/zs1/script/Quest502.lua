function NPC_QUEST_625(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 370) < 1 then
			return 3,0,"어딘가 부실한 크리스마스 트리 앞에 산타 할아버지가 서 있다. 메리 크리스마스! 즐거운 크리스마스를 위해 트리를 멋지게 꾸며주길 바라네..! 자네만 믿고 있겠네! 음.. 산타 할아버지의 갑작스런 요청이군.. 어쩔까나??",2,"좋아요! 뭘 하면 되죠?",3,"난 크리스마스가 싫어!"


		else
			return 3,0,"장식물품은 모두 모았는가? 나에게 보여주게나",22,"여기요",23,"아직 못모았어요"


		end

	elseif req == 2 then
		return 3,0,"내가 워낙 바뻐서 트리를 장식할 시간이 없군.. 허허~ [트리 장식용 구슬 10개], [트리 장식용 나뭇가지 10개], [트리 장식용 눈덩이 10개] 이 세가지 장식용품들을 모두 모아오면 내가 좋은 선물을 주지.. 기대하고 있겠네!",12,"좋아! 어디 모아볼까나!",13,"역시.. 별로군~"




	elseif req == 12 then
		AddSwitchCount(cnum, 370, 1)
		return 1,0,"자네만 믿겠네"



	elseif req == 22 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"


		else
			return 2,0,"오~! 굿! 해피 크리스마스! 자네 덕분에 이제 트리를 좀 장식할 수 있겠군~! 자~ 이건 선물일세! 즐거운 크리스마스 보내시게나~! 허허허!",32,"메리 크리스마스"


		end


	elseif req == 32 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"

		
		else
			AddItemCount(cnum, 8053, -10)
			AddItemCount(cnum, 8054, -10)
			AddItemCount(cnum, 8055, -10)
			AddItemCount(cnum, 8059, 1)
		end

	else
		return 0

	end
end





function NPC_QUEST_626(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 370) < 1 then
			return 3,0,"어딘가 부실한 크리스마스 트리 앞에 산타 할아버지가 서 있다. 메리 크리스마스! 즐거운 크리스마스를 위해 트리를 멋지게 꾸며주길 바라네..! 자네만 믿고 있겠네! 음.. 산타 할아버지의 갑작스런 요청이군.. 어쩔까나??",2,"좋아요! 뭘 하면 되죠?",3,"난 크리스마스가 싫어!"


		else
			return 3,0,"장식물품은 모두 모았는가? 나에게 보여주게나",22,"여기요",23,"아직 못모았어요"


		end

	elseif req == 2 then
		return 3,0,"내가 워낙 바뻐서 트리를 장식할 시간이 없군.. 허허~ [트리 장식용 구슬 10개], [트리 장식용 나뭇가지 10개], [트리 장식용 눈덩이 10개] 이 세가지 장식용품들을 모두 모아오면 내가 좋은 선물을 주지.. 기대하고 있겠네!",12,"좋아! 어디 모아볼까나!",13,"역시.. 별로군~"




	elseif req == 12 then
		AddSwitchCount(cnum, 370, 1)
		return 1,0,"자네만 믿겠네"



	elseif req == 22 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"


		else
			return 2,0,"오~! 굿! 해피 크리스마스! 자네 덕분에 이제 트리를 좀 장식할 수 있겠군~! 자~ 이건 선물일세! 즐거운 크리스마스 보내시게나~! 허허허!",32,"메리 크리스마스"


		end


	elseif req == 32 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"

		
		else
			AddItemCount(cnum, 8053, -10)
			AddItemCount(cnum, 8054, -10)
			AddItemCount(cnum, 8055, -10)
			AddItemCount(cnum, 8059, 1)
		end

	else
		return 0

	end
end



function NPC_QUEST_627(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 370) < 1 then
			return 3,0,"어딘가 부실한 크리스마스 트리 앞에 산타 할아버지가 서 있다. 메리 크리스마스! 즐거운 크리스마스를 위해 트리를 멋지게 꾸며주길 바라네..! 자네만 믿고 있겠네! 음.. 산타 할아버지의 갑작스런 요청이군.. 어쩔까나??",2,"좋아요! 뭘 하면 되죠?",3,"난 크리스마스가 싫어!"


		else
			return 3,0,"장식물품은 모두 모았는가? 나에게 보여주게나",22,"여기요",23,"아직 못모았어요"


		end

	elseif req == 2 then
		return 3,0,"내가 워낙 바뻐서 트리를 장식할 시간이 없군.. 허허~ [트리 장식용 구슬 10개], [트리 장식용 나뭇가지 10개], [트리 장식용 눈덩이 10개] 이 세가지 장식용품들을 모두 모아오면 내가 좋은 선물을 주지.. 기대하고 있겠네!",12,"좋아! 어디 모아볼까나!",13,"역시.. 별로군~"




	elseif req == 12 then
		AddSwitchCount(cnum, 370, 1)
		return 1,0,"자네만 믿겠네"



	elseif req == 22 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"


		else
			return 2,0,"오~! 굿! 해피 크리스마스! 자네 덕분에 이제 트리를 좀 장식할 수 있겠군~! 자~ 이건 선물일세! 즐거운 크리스마스 보내시게나~! 허허허!",32,"메리 크리스마스"


		end


	elseif req == 32 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"

		
		else
			AddItemCount(cnum, 8053, -10)
			AddItemCount(cnum, 8054, -10)
			AddItemCount(cnum, 8055, -10)
			AddItemCount(cnum, 8059, 1)
		end

	else
		return 0

	end
end




function NPC_QUEST_628(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 370) < 1 then
			return 3,0,"어딘가 부실한 크리스마스 트리 앞에 산타 할아버지가 서 있다. 메리 크리스마스! 즐거운 크리스마스를 위해 트리를 멋지게 꾸며주길 바라네..! 자네만 믿고 있겠네! 음.. 산타 할아버지의 갑작스런 요청이군.. 어쩔까나??",2,"좋아요! 뭘 하면 되죠?",3,"난 크리스마스가 싫어!"


		else
			return 3,0,"장식물품은 모두 모았는가? 나에게 보여주게나",22,"여기요",23,"아직 못모았어요"


		end

	elseif req == 2 then
		return 3,0,"내가 워낙 바뻐서 트리를 장식할 시간이 없군.. 허허~ [트리 장식용 구슬 10개], [트리 장식용 나뭇가지 10개], [트리 장식용 눈덩이 10개] 이 세가지 장식용품들을 모두 모아오면 내가 좋은 선물을 주지.. 기대하고 있겠네!",12,"좋아! 어디 모아볼까나!",13,"역시.. 별로군~"




	elseif req == 12 then
		AddSwitchCount(cnum, 370, 1)
		return 1,0,"자네만 믿겠네"



	elseif req == 22 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"


		else
			return 2,0,"오~! 굿! 해피 크리스마스! 자네 덕분에 이제 트리를 좀 장식할 수 있겠군~! 자~ 이건 선물일세! 즐거운 크리스마스 보내시게나~! 허허허!",32,"메리 크리스마스"


		end


	elseif req == 32 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"

		
		else
			AddItemCount(cnum, 8053, -10)
			AddItemCount(cnum, 8054, -10)
			AddItemCount(cnum, 8055, -10)
			AddItemCount(cnum, 8059, 1)
		end

	else
		return 0

	end
end



function NPC_QUEST_629(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 370) < 1 then
			return 3,0,"어딘가 부실한 크리스마스 트리 앞에 산타 할아버지가 서 있다. 메리 크리스마스! 즐거운 크리스마스를 위해 트리를 멋지게 꾸며주길 바라네..! 자네만 믿고 있겠네! 음.. 산타 할아버지의 갑작스런 요청이군.. 어쩔까나??",2,"좋아요! 뭘 하면 되죠?",3,"난 크리스마스가 싫어!"


		else
			return 3,0,"장식물품은 모두 모았는가? 나에게 보여주게나",22,"여기요",23,"아직 못모았어요"


		end

	elseif req == 2 then
		return 3,0,"내가 워낙 바뻐서 트리를 장식할 시간이 없군.. 허허~ [트리 장식용 구슬 10개], [트리 장식용 나뭇가지 10개], [트리 장식용 눈덩이 10개] 이 세가지 장식용품들을 모두 모아오면 내가 좋은 선물을 주지.. 기대하고 있겠네!",12,"좋아! 어디 모아볼까나!",13,"역시.. 별로군~"




	elseif req == 12 then
		AddSwitchCount(cnum, 370, 1)
		return 1,0,"자네만 믿겠네"



	elseif req == 22 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"


		else
			return 2,0,"오~! 굿! 해피 크리스마스! 자네 덕분에 이제 트리를 좀 장식할 수 있겠군~! 자~ 이건 선물일세! 즐거운 크리스마스 보내시게나~! 허허허!",32,"메리 크리스마스"


		end


	elseif req == 32 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"

		
		else
			AddItemCount(cnum, 8053, -10)
			AddItemCount(cnum, 8054, -10)
			AddItemCount(cnum, 8055, -10)
			AddItemCount(cnum, 8059, 1)
		end

	else
		return 0

	end
end




function NPC_QUEST_630(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 370) < 1 then
			return 3,0,"어딘가 부실한 크리스마스 트리 앞에 산타 할아버지가 서 있다. 메리 크리스마스! 즐거운 크리스마스를 위해 트리를 멋지게 꾸며주길 바라네..! 자네만 믿고 있겠네! 음.. 산타 할아버지의 갑작스런 요청이군.. 어쩔까나??",2,"좋아요! 뭘 하면 되죠?",3,"난 크리스마스가 싫어!"


		else
			return 3,0,"장식물품은 모두 모았는가? 나에게 보여주게나",22,"여기요",23,"아직 못모았어요"


		end

	elseif req == 2 then
		return 3,0,"내가 워낙 바뻐서 트리를 장식할 시간이 없군.. 허허~ [트리 장식용 구슬 10개], [트리 장식용 나뭇가지 10개], [트리 장식용 눈덩이 10개] 이 세가지 장식용품들을 모두 모아오면 내가 좋은 선물을 주지.. 기대하고 있겠네!",12,"좋아! 어디 모아볼까나!",13,"역시.. 별로군~"




	elseif req == 12 then
		AddSwitchCount(cnum, 370, 1)
		return 1,0,"자네만 믿겠네"



	elseif req == 22 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"


		else
			return 2,0,"오~! 굿! 해피 크리스마스! 자네 덕분에 이제 트리를 좀 장식할 수 있겠군~! 자~ 이건 선물일세! 즐거운 크리스마스 보내시게나~! 허허허!",32,"메리 크리스마스"


		end


	elseif req == 32 then
		if GetItemCount(cnum, 8053, 0) < 10 or GetItemCount(cnum, 8054, 0) < 10 or GetItemCount(cnum, 8055, 0) < 10 then
			return 1,0,"이런~! 그것만으로는 아직 트리를 장식할 수 없어~ 좀 더 모아오도록 해. [트리 장식용 구슬], [트리 장식용 나뭇가지], [트리 장식용 눈덩이] 각각 10개씩이 필요하다네~ 그럼 나중에 봄세! "


		elseif CheckItemPocket(cnum, 8059, 1) < 0 then
 			return 1,0,"수고해준 자네를 위해 작은 보상 아이템을 하나 줄까 했는데 인벤토리에 빈 공간이 없구만. 좀 비우고 오게나"

		
		else
			AddItemCount(cnum, 8053, -10)
			AddItemCount(cnum, 8054, -10)
			AddItemCount(cnum, 8055, -10)
			AddItemCount(cnum, 8059, 1)
		end

	else
		return 0

	end
end