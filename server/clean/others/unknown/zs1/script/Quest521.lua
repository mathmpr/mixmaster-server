function NPC_QUEST_340(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"이곳을 넘어 더 들어가시면 퍼즐의 정원입니다. 퍼즐의 정원 깊숙한 곳에는 무시무시한 집게마왕이 있습니다. 배테랑 밸러가 아니라면 돌아가시길 권고합니다.",2,"루디스로 돌아간다."

	elseif req == 2 then
		MoveZone(cnum, 67, 254)

	else
		return 0
	end
end


function NPC_QUEST_341(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"여기까지 오시다니 대단하시군요. 저는 함께 출발한 여러 대원들을 잃고 저 혼자 이곳에 살아남았습니다. 혹시 다른대원들이 살아오지 않을까 기다리고 있습니다. 여기는 위험하니 어서 마을로 돌아가시지요.",2,"루디스로 돌아간다."

	elseif req == 2 then
		MoveZone(cnum, 67, 254)

	else
		return 0
	end
end


function NPC_QUEST_342(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"퍼즐의 정원 입구는 현재 몬스터들로 차고넘치는 위험한 상황입니다. 숙련되지 못한 밸러분들은 돌아가시기를 권고합니다.",2,"루디스로 돌아간다."

	elseif req == 2 then
		MoveZone(cnum, 67, 254)

	else
		return 0

	end
end
