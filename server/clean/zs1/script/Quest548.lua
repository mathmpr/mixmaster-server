function NPC_QUEST_866(cnum,reqNumber) -- 소름오싹뱌암동굴 쿨라파 선장 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 531) < 1 then
			if GetItemCount(cnum, 8508, 0) < 1 then
				return 1,0,"그대여...내 보물을 가지고 싶나? 하지만 아직은 줄 수 없다...이 근처에 있는 뱌암킹...저 놈을 죽여서 그 놈의 가죽을 가지고 와라..그러면 내가 이 상자를 내어 주겠다."
			else
				return 2,0,"아니 그것은!! 뱌암킹! 그 놈의 가죽인가?! 이리 보여다오...",2,"여기.."
			end
		else
			return 1,0,"그대여 고맙다..그대는 정말 강력하고 멋진 밸러로구나!"
		end

	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"쿨라파 선장의 보물을 넣을 공간이 부족합니다."
		else
			AddItemCount(cnum, 8503, 1) 
			SetSwitchCount(cnum, 525, 1) -- 보물 찾음
			SetSwitchCount(cnum, 531, 1)
			return 1,0,"하하하!! 좋다! 내 보물상자를 가져가라! 그대는 진정한 보물의 주인이다! 으하하하!!"
		end


	end
end

function NPC_QUEST_867(cnum,reqNumber) -- 소름오싹뱌암동굴 쿨라파 선장 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 531) < 1 then
			if GetItemCount(cnum, 8508, 0) < 1 then
				return 1,0,"그대여...내 보물을 가지고 싶나? 하지만 아직은 줄 수 없다...이 근처에 있는 뱌암킹...저 놈을 죽여서 그 놈의 가죽을 가지고 와라..그러면 내가 이 상자를 내어 주겠다."
			else
				return 2,0,"아니 그것은!! 뱌암킹! 그 놈의 가죽인가?! 이리 보여다오...",2,"여기.."
			end
		else
			return 1,0,"그대여 고맙다..그대는 정말 강력하고 멋진 밸러로구나!"
		end

	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"쿨라파 선장의 보물을 넣을 공간이 부족합니다."
		else
			AddItemCount(cnum, 8503, 1) 
			SetSwitchCount(cnum, 525, 1) -- 보물 찾음
			SetSwitchCount(cnum, 531, 1)
			return 1,0,"하하하!! 좋다! 내 보물상자를 가져가라! 그대는 진정한 보물의 주인이다! 으하하하!!"
		end


	end
end
function NPC_QUEST_868(cnum,reqNumber) -- 소름오싹뱌암동굴 쿨라파 선장 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 531) < 1 then
			if GetItemCount(cnum, 8508, 0) < 1 then
				return 1,0,"그대여...내 보물을 가지고 싶나? 하지만 아직은 줄 수 없다...이 근처에 있는 뱌암킹...저 놈을 죽여서 그 놈의 가죽을 가지고 와라..그러면 내가 이 상자를 내어 주겠다."
			else
				return 2,0,"아니 그것은!! 뱌암킹! 그 놈의 가죽인가?! 이리 보여다오...",2,"여기.."
			end
		else
			return 1,0,"그대여 고맙다..그대는 정말 강력하고 멋진 밸러로구나!"
		end

	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"쿨라파 선장의 보물을 넣을 공간이 부족합니다."
		else
			AddItemCount(cnum, 8503, 1) 
			SetSwitchCount(cnum, 525, 1) -- 보물 찾음
			SetSwitchCount(cnum, 531, 1)
			return 1,0,"하하하!! 좋다! 내 보물상자를 가져가라! 그대는 진정한 보물의 주인이다! 으하하하!!"
		end


	end
end
function NPC_QUEST_869(cnum,reqNumber) -- 소름오싹뱌암동굴 쿨라파 선장 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 531) < 1 then
			if GetItemCount(cnum, 8508, 0) < 1 then
				return 1,0,"그대여...내 보물을 가지고 싶나? 하지만 아직은 줄 수 없다...이 근처에 있는 뱌암킹...저 놈을 죽여서 그 놈의 가죽을 가지고 와라..그러면 내가 이 상자를 내어 주겠다."
			else
				return 2,0,"아니 그것은!! 뱌암킹! 그 놈의 가죽인가?! 이리 보여다오...",2,"여기.."
			end
		else
			return 1,0,"그대여 고맙다..그대는 정말 강력하고 멋진 밸러로구나!"
		end

	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"쿨라파 선장의 보물을 넣을 공간이 부족합니다."
		else
			AddItemCount(cnum, 8503, 1) 
			SetSwitchCount(cnum, 525, 1) -- 보물 찾음
			SetSwitchCount(cnum, 531, 1)
			return 1,0,"하하하!! 좋다! 내 보물상자를 가져가라! 그대는 진정한 보물의 주인이다! 으하하하!!"
		end


	end
end

function NPC_QUEST_870(cnum,reqNumber) -- 소름오싹뱌암동굴 진행 불가 해골

req = reqNumber

	if req == 1 then
		return 1,0,"해골이 있는 너머에는 너무 깜깜해서 보이지도 않는다. 들어가기 힘들 것 같다."
	end
end

function NPC_QUEST_871(cnum,reqNumber) -- 소름오싹뱌암동굴 진행 불가 해골

req = reqNumber

	if req == 1 then
		return 1,0,"해골이 있는 너머에는 너무 깜깜해서 보이지도 않는다. 들어가기 힘들 것 같다."
	end
end

function NPC_QUEST_872(cnum,reqNumber) -- 소름오싹뱌암동굴 진행 불가 해골

req = reqNumber

	if req == 1 then
		return 1,0,"해골이 있는 너머에는 너무 깜깜해서 보이지도 않는다. 들어가기 힘들 것 같다."
	end
end

function NPC_QUEST_873(cnum,reqNumber) -- 소름오싹뱌암동굴 진행 불가 해골

req = reqNumber

	if req == 1 then
		return 1,0,"해골이 있는 너머에는 너무 깜깜해서 보이지도 않는다. 들어가기 힘들 것 같다."
	end
end

