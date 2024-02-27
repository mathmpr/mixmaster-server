 function NPC_QUEST_236(cnum,reqNumber) --중,저렙 마지리타 NPC
	local req = reqNumber

	if req == 1 then

		return 4,0,"Aku lelah setelah bertempur dengan monster. Namun aku harus menyelesaikan misiku. Kemanakah kamu akan pergi sekarang?",2,"Ruins of VeHerseba",3,"Ruins of Rudis",4,"Pergi ke safe Magirita city."

	elseif req == 2 then

		MoveZone(cnum,239,253) --폐허가 된 베헤르세바
	
	elseif req == 3 then

		MoveZone(cnum,240,253) --폐허가 된 루디스

	elseif req == 4 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_237(cnum,reqNumber) --중,저렙 베헤르세바 NPC
	local req = reqNumber

	if req == 1 then

		return 4,0,"Aku lelah setelah bertempur dengan monster. Namun aku harus menyelesaikan misiku. Kemanakah kamu akan pergi sekarang?",2,"Ruins of Magirita",3,"Ruins of Rudis",4,"Pergi ke safe Magirita city."

	elseif req == 2 then

		MoveZone(cnum,238,253) --페허가 된 마지리타
	
	elseif req == 3 then

		MoveZone(cnum,240,253) --페허가 된 루디스

	elseif req == 4 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_238(cnum,reqNumber) --중,저렙 루디스 NPC
	local req = reqNumber

	if req == 1 then

		return 4,0,"Aku lelah setelah bertempur dengan monster. Namun aku harus menyelesaikan misiku. Kemanakah kamu akan pergi sekarang?",2,"Ruins of VeHerseba",3,"Ruins of Magirita",4,"Pergi ke safe Magirita city."

	elseif req == 2 then

		MoveZone(cnum,239,253) -- 페허가 된 베헤르세바
	elseif req == 3 then

		MoveZone(cnum,238,253) --페허가 된 마지리타

	elseif req == 4 then

		MoveZone(cnum,57,253)

	end
	return 0
end 




 function NPC_QUEST_239(cnum,reqNumber) --중,고렙 마지리타 NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Aku lelah setelah bertempur dengan monster. Namun aku harus menyelesaikan misiku. Kemanakah kamu akan pergi sekarang?",2,"Ruins of VeHerseba",3,"Ruins of Rudis",4,"Pergi ke safe Magirita city."

	elseif req == 2 then

		MoveZone(cnum,242,253) --폐허가 된 베헤르세바
	
	elseif req == 3 then

		MoveZone(cnum,243,253) --폐허가 된 루디스

	elseif req == 4 then

    MoveZone(cnum,118,151) --폐허가 된 프르마이

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_240(cnum,reqNumber) --중,고렙 베헤르세바 NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Aku lelah setelah bertempur dengan monster. Namun aku harus menyelesaikan misiku. Kemanakah kamu akan pergi sekarang?",2,"Ruins of Magirita",3,"Ruins of Rudis",4,"Pergi ke safe Magirita city."

	elseif req == 2 then

		MoveZone(cnum,241,253) --페허가 된 마지리타
	
	elseif req == 3 then

		MoveZone(cnum,243,253) --페허가 된 루디스

	elseif req == 4 then

    MoveZone(cnum,118,151) --폐허가 된 프르마이

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 

 function NPC_QUEST_241(cnum,reqNumber) --중,고렙 루디스 NPC
	local req = reqNumber

	if req == 1 then

		return 5,0,"Aku lelah setelah bertempur dengan monster. Namun aku harus menyelesaikan misiku. Kemanakah kamu akan pergi sekarang?",2,"Ruins of VeHerseba",3,"Ruins of Magirita",4,"Pergi ke safe Magirita city."

	elseif req == 2 then

		MoveZone(cnum,242,253) -- 페허가 된 베헤르세바
	elseif req == 3 then

		MoveZone(cnum,241,253) --페허가 된 마지리타

	elseif req == 4 then

    MoveZone(cnum,118,151) --폐허가 된 프르마이

	elseif req == 5 then

		MoveZone(cnum,57,253)

	end
	return 0
end 



 function NPC_QUEST_273(cnum,reqNumber) --중,고렙 프르마이 NPC
        local req = reqNumber

        if req == 1 then

                return 5,0,"Aku lelah setelah bertempur dengan monster. Namun aku harus menyelesaikan misiku. Kemanakah kamu akan pergi sekarang?",2,"Ruins of VeHerseba",3,"Ruins of Magirita",4,"Ruins of Rudis",5,"Pergi ke safe Magirita city."

        elseif req == 2 then

                MoveZone(cnum,242,253) -- 페허가 된 베헤르세바

        elseif req == 3 then

                MoveZone(cnum,241,253) --페허가 된 마지리타

        elseif req == 4 then

                MoveZone(cnum,243,253) --페허가 된 루디스

        elseif req == 5 then

                MoveZone(cnum,57,253)

        end
        return 0
end 