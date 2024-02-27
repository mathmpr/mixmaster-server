function NPC_QUEST_344(cnum,reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"산타 할아버지를 아시나요?@산타 할아버지는 매년 12월 25일에 세상 모~든 착한 어린이에게 선물을 주는 멋진~할아버지에요~!@하지만, 최근 무슨 고민이 있으신 것 같은데..@한번 산타 할아버지를 만나보시겠어요?@제가 보내 드릴게요~!",2,"산타 할아버지를 만나게 해주세요!"

	elseif req == 2 then
		MoveZone(cnum, 111, 254)

	else
		return 0
	end
end



function NPC_QUEST_345(cnum,reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"산타 할아버지를 아시나요?@산타 할아버지는 매년 12월 25일에 세상 모~든 착한 어린이에게 선물을 주는 멋진~할아버지에요~!@하지만, 최근 무슨 고민이 있으신 것 같은데..@한번 산타 할아버지를 만나보시겠어요?@제가 보내 드릴게요~!",2,"산타 할아버지를 만나게 해주세요!"

	elseif req == 2 then
		MoveZone(cnum, 111, 254)

	else
		return 0
	end
end



function NPC_QUEST_346(cnum,reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"산타 할아버지를 아시나요?@산타 할아버지는 매년 12월 25일에 세상 모~든 착한 어린이에게 선물을 주는 멋진~할아버지에요~!@하지만, 최근 무슨 고민이 있으신 것 같은데..@한번 산타 할아버지를 만나보시겠어요?@제가 보내 드릴게요~!",2,"산타 할아버지를 만나게 해주세요!"

	elseif req == 2 then
		MoveZone(cnum, 111, 254)

	else
		return 0
	end
end



function NPC_QUEST_347(cnum,reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"산타 할아버지를 아시나요?@산타 할아버지는 매년 12월 25일에 세상 모~든 착한 어린이에게 선물을 주는 멋진~할아버지에요~!@하지만, 최근 무슨 고민이 있으신 것 같은데..@한번 산타 할아버지를 만나보시겠어요?@제가 보내 드릴게요~!",2,"산타 할아버지를 만나게 해주세요!"

	elseif req == 2 then
		MoveZone(cnum, 111, 254)

	else
		return 0
	end
end



function NPC_QUEST_348(cnum,reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"산타 할아버지를 아시나요?@산타 할아버지는 매년 12월 25일에 세상 모~든 착한 어린이에게 선물을 주는 멋진~할아버지에요~!@하지만, 최근 무슨 고민이 있으신 것 같은데..@한번 산타 할아버지를 만나보시겠어요?@제가 보내 드릴게요~!",2,"산타 할아버지를 만나게 해주세요!"

	elseif req == 2 then
		MoveZone(cnum, 111, 254)

	else
		return 0
	end
end



function NPC_QUEST_349(cnum,reqNumber)

req = reqNumber

	if req == 1 then
		return 7,0,"제 옆에 계신 분이 바로 산타 할아버지에요~!@저는 산타 할아버지를 도우러 오신 마음 착한 분들을 다른 마을로 무료로 보내드리고 있어요.@어느 마을로 이동하시겠어요?",2,"마지리타로 보내주세요.",3,"메크리타로 보내주세요",4,"베헤르세바로 보내주세요.",5,"헤르세바로 보내주세요.",6,"루디스로 보내주세요.",7,"여기 더 있을게요."

	elseif req == 2 then
		MoveZone(cnum, 57, 254)

	elseif req == 3 then
		MoveZone(cnum, 59, 254)

	elseif req == 4 then
		MoveZone(cnum, 60, 254)

	elseif req == 5 then
		MoveZone(cnum, 63, 254)

	elseif req == 6 then
		MoveZone(cnum, 67, 254)

	else
		return 0
	end
end
