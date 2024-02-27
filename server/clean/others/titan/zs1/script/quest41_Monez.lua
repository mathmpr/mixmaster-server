function NPC_QUEST_229(cnum,reqNumber)
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se para VeHerseba[dungeon area]",3,"Mover-se para Herseba",4,"Mover-se Mekrita",5,"Mover-se Rudis",6,"Mover-se Free Battle Zone",7,"Mover-se Islaba Damp Area",8,"[DANGER] Aurea Battle"

    elseif req == 2 then
	  targetzone = 60 
	  elseif req == 3 then
	  targetzone = 63
	  elseif req == 4 then
	  targetzone = 59
	  elseif req == 5 then
	  targetzone = 67
	  elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0
	elseif req == 7 then
                targetzone = 14 
		elseif req == 8 then
		MoveZone(cnum,172,254) -- New PK
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				


	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --



function NPC_QUEST_231(cnum,reqNumber) -- 베헤르세바 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se Magirita",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Rudis",6,"Mover-se Free Battle Zone",7,"Mover-se Magirita Western Shore"

        elseif req == 2 then
		targetzone = 57 -- 마지리타
        elseif req == 3 then
		targetzone = 63 -- 헤르세바
        elseif req == 4 then
		targetzone = 59 -- 메크리타
        elseif req == 5 then
		targetzone = 67 -- 루디스
        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0
        elseif req == 7 then
                targetzone = 6 -- 마지리타 서부해안	
        else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- 워프링과 돈체크
	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --



function NPC_QUEST_232(cnum,reqNumber) -- 헤르세바 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Magirita",4,"Mover-se Mekrita",5,"Mover-se Rudis",6,"Mover-se Free Battle Zone",7,"Mover-se Valcan Access Road"
                     
        elseif req == 2 then
		targetzone = 60 -- 베헤르세바
        elseif req == 3 then
		targetzone = 57 -- 마지리타
        elseif req == 4 then
		targetzone = 59 -- 메크리타
        elseif req == 5 then
		targetzone = 67 -- 루디스
        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0
        elseif req == 7 then
                targetzone = 33 -- 발칸 진입로
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- 워프링과 돈체크
	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --



function NPC_QUEST_230(cnum,reqNumber) -- 메크리타 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Magirita",5,"Mover-se Rudis",6,"Mover-se Free Battle Zone",7,"Mover-se Rollingcores"

        elseif req == 2 then
		targetzone = 60 -- 베헤르세바
        elseif req == 3 then
		targetzone = 63 -- 헤르세바
        elseif req == 4 then
		targetzone = 57 -- 마지리타
        elseif req == 5 then
		targetzone = 67 -- 루디스
        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0
        elseif req == 7 then
                targetzone = 50 -- 롤링코어즈 필드
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- 워프링과 돈체크
	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --



function NPC_QUEST_233(cnum,reqNumber) -- 루디스 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Free Battle Zone",7,"Mover-se Rollingcores Field"

        elseif req == 2 then
		targetzone = 60 -- 베헤르세바
        elseif req == 3 then
		targetzone = 63 -- 헤르세바
        elseif req == 4 then
		targetzone = 59 -- 메크리타
        elseif req == 5 then
		targetzone = 57 -- 마지리타
        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0
        elseif req == 7 then
                targetzone = 50 -- 롤링코어즈 필드
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- 워프링과 돈체크
	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --



NPC_QUEST_274 = function(cnum, reqNumber)
  local req = reqNumber
  if req == 1 then
    return 4, 0, GetHeroName(cnum) .. "Oi tudo bem, estou aqui para ajudar a voce a sair da zona de combat. Selecione uma opcao para ir em algumas cidades",2, "Mover-se para Magirita ",3, "Mover-se para Mekrita " ,4, "Mover-se para Herseba "
  elseif req == 2 then
    MoveZone(cnum, 57, 253)
  elseif req == 3 then
    MoveZone(cnum, 59, 253)
  elseif req == 4 then
    MoveZone(cnum, 63, 253)
    return 0
  end
end



function NPC_QUEST_226(cnum,reqNumber) -- 아이슬라바 습지대 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Magirita Western shore",7,"Mover-se Rudis"

        elseif req == 2 then
		targetzone = 60 -- 베헤르세바
        elseif req == 3 then
		targetzone = 63 -- 헤르세바
        elseif req == 4 then
		targetzone = 59 -- 메크리타
        elseif req == 5 then
		targetzone = 57 -- 마지리타
        elseif req == 6 then 
		targetzone = 6 -- 마지리타 서부해안
        elseif req == 7 then
                targetzone = 67 -- 루디스
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- 워프링과 돈체크
	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --



function NPC_QUEST_225(cnum,reqNumber) -- 마지리타 서부해안 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerserva [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Islava Swamp area",7,"Mover-se Rudis"

        elseif req == 2 then
		targetzone = 60 -- 베헤르세바
        elseif req == 3 then
		targetzone = 63 -- 헤르세바
        elseif req == 4 then
		targetzone = 59 -- 메크리타
        elseif req == 5 then
		targetzone = 57 -- 마지리타
        elseif req == 6 then 
                targetzone = 14 -- 아이슬라바 습지대
        elseif req == 7 then
                targetzone = 67 -- 루디스
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- 워프링과 돈체크
	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --



function NPC_QUEST_227(cnum,reqNumber) -- 발칸 진입로 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0, "Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos..",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Rollingcores Field",7,"Mover-se Rudis"

        elseif req == 2 then
		targetzone = 60 -- 베헤르세바
        elseif req == 3 then
		targetzone = 63 -- 헤르세바
        elseif req == 4 then
		targetzone = 59 -- 메크리타
        elseif req == 5 then
		targetzone = 57 -- 마지리타
        elseif req == 6 then 
		targetzone = 50 -- 롤링 코어즈 필드
        elseif req == 7 then
                targetzone = 67 -- 루디스
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- 워프링과 돈체크
	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end -- 




function NPC_QUEST_228(cnum,reqNumber) -- 롤링코어즈 필드 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Valcan Access Road",7,"Mover-se Rudis"

        elseif req == 2 then
		targetzone = 60 -- 베헤르세바
        elseif req == 3 then
		targetzone = 63 -- 헤르세바
        elseif req == 4 then
		targetzone = 59 -- 메크리타
        elseif req == 5 then
		targetzone = 57 -- 마지리타
        elseif req == 6 then 
		targetzone = 33 -- 발칸 진입로
        elseif req == 7 then
                targetzone = 67 -- 루디스
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- 워프링과 돈체크
	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500- money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end --




function NPC_QUEST_235(cnum,reqNumber) -- 발칸 계곡 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
        return 7, 0, "Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Rollingcores Field",7,"Mover-se Rudis"

    elseif req == 2 then
		targetzone = 60 -- 베헤르세바
    elseif req == 3 then
		targetzone = 63 -- 헤르세바
    elseif req == 4 then
		targetzone = 59 -- 메크리타
    elseif req == 5 then
		targetzone = 57 -- 마지리타
    elseif req == 6 then 
		targetzone = 50 -- 롤링 코어즈 필드
    elseif req == 7 then
                targetzone = 67 -- 루디스
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- 워프링과 돈체크
	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end



function NPC_QUEST_281(cnum,reqNumber) -- 프리마이 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
        return 7, 0, "Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos..",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Rollingcores Field",7,"Mover-se Rudis"

    elseif req == 2 then
		targetzone = 60 -- 베헤르세바
    elseif req == 3 then
		targetzone = 63 -- 헤르세바
    elseif req == 4 then
		targetzone = 59 -- 메크리타
    elseif req == 5 then
		targetzone = 57 -- 마지리타
    elseif req == 6 then 
		targetzone = 50 -- 롤링 코어즈 필드
    elseif req == 7 then
                targetzone = 67 -- 루디스
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- 워프링과 돈체크
	if GetItemCount(cnum,170,0) == 0 then -- 워프링
		resultmsg = "Warp Ring"
	end 	

	money = GetMoney(cnum)
	if money < 500 then
		remain = 500 - money
		if resultmsg == nil then
			resultmsg = remain.."GP"
		else
			resultmsg = resultmsg.."dan"..remain.."GP adalah"
		end
	else
		if resultmsg ~= nil then
			resultmsg = resultmsg.."adalah"
		end
	end 

	if resultmsg ~= nil then
		 return 1,0,resultmsg.."tidak tersedia saat ini. Sehingga, tidak dapat warp."
	end 

	AddMoney(cnum,-500)
	MoveZone(cnum,targetzone,253)
	return 0	
end
