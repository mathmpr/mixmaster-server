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


	if GetItemCount(cnum,170,0) == 0 then -- ������
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



function NPC_QUEST_231(cnum,reqNumber) -- ���츣���� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se Magirita",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Rudis",6,"Mover-se Free Battle Zone",7,"Mover-se Magirita Western Shore"

        elseif req == 2 then
		targetzone = 57 -- ������Ÿ
        elseif req == 3 then
		targetzone = 63 -- �츣����
        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
        elseif req == 5 then
		targetzone = 67 -- ���
        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0
        elseif req == 7 then
                targetzone = 6 -- ������Ÿ �����ؾ�	
        else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 then -- ������
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



function NPC_QUEST_232(cnum,reqNumber) -- �츣���� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Magirita",4,"Mover-se Mekrita",5,"Mover-se Rudis",6,"Mover-se Free Battle Zone",7,"Mover-se Valcan Access Road"
                     
        elseif req == 2 then
		targetzone = 60 -- ���츣����
        elseif req == 3 then
		targetzone = 57 -- ������Ÿ
        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
        elseif req == 5 then
		targetzone = 67 -- ���
        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0
        elseif req == 7 then
                targetzone = 33 -- ��ĭ ���Է�
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 then -- ������
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



function NPC_QUEST_230(cnum,reqNumber) -- ��ũ��Ÿ NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Magirita",5,"Mover-se Rudis",6,"Mover-se Free Battle Zone",7,"Mover-se Rollingcores"

        elseif req == 2 then
		targetzone = 60 -- ���츣����
        elseif req == 3 then
		targetzone = 63 -- �츣����
        elseif req == 4 then
		targetzone = 57 -- ������Ÿ
        elseif req == 5 then
		targetzone = 67 -- ���
        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0
        elseif req == 7 then
                targetzone = 50 -- �Ѹ��ھ��� �ʵ�
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 then -- ������
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



function NPC_QUEST_233(cnum,reqNumber) -- ��� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Free Battle Zone",7,"Mover-se Rollingcores Field"

        elseif req == 2 then
		targetzone = 60 -- ���츣����
        elseif req == 3 then
		targetzone = 63 -- �츣����
        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
        elseif req == 5 then
		targetzone = 57 -- ������Ÿ
        elseif req == 6 then 
		MoveZone(cnum,70,101) -- PK
                return 0
        elseif req == 7 then
                targetzone = 50 -- �Ѹ��ھ��� �ʵ�
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 then -- ������
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



function NPC_QUEST_226(cnum,reqNumber) -- ���̽���� ������ NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Magirita Western shore",7,"Mover-se Rudis"

        elseif req == 2 then
		targetzone = 60 -- ���츣����
        elseif req == 3 then
		targetzone = 63 -- �츣����
        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
        elseif req == 5 then
		targetzone = 57 -- ������Ÿ
        elseif req == 6 then 
		targetzone = 6 -- ������Ÿ �����ؾ�
        elseif req == 7 then
                targetzone = 67 -- ���
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 then -- ������
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



function NPC_QUEST_225(cnum,reqNumber) -- ������Ÿ �����ؾ� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerserva [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Islava Swamp area",7,"Mover-se Rudis"

        elseif req == 2 then
		targetzone = 60 -- ���츣����
        elseif req == 3 then
		targetzone = 63 -- �츣����
        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
        elseif req == 5 then
		targetzone = 57 -- ������Ÿ
        elseif req == 6 then 
                targetzone = 14 -- ���̽���� ������
        elseif req == 7 then
                targetzone = 67 -- ���
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 then -- ������
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



function NPC_QUEST_227(cnum,reqNumber) -- ��ĭ ���Է� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0, "Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos..",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Rollingcores Field",7,"Mover-se Rudis"

        elseif req == 2 then
		targetzone = 60 -- ���츣����
        elseif req == 3 then
		targetzone = 63 -- �츣����
        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
        elseif req == 5 then
		targetzone = 57 -- ������Ÿ
        elseif req == 6 then 
		targetzone = 50 -- �Ѹ� �ھ��� �ʵ�
        elseif req == 7 then
                targetzone = 67 -- ���
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 then -- ������
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




function NPC_QUEST_228(cnum,reqNumber) -- �Ѹ��ھ��� �ʵ� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Valcan Access Road",7,"Mover-se Rudis"

        elseif req == 2 then
		targetzone = 60 -- ���츣����
        elseif req == 3 then
		targetzone = 63 -- �츣����
        elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
        elseif req == 5 then
		targetzone = 57 -- ������Ÿ
        elseif req == 6 then 
		targetzone = 33 -- ��ĭ ���Է�
        elseif req == 7 then
                targetzone = 67 -- ���
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 then -- ������
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




function NPC_QUEST_235(cnum,reqNumber) -- ��ĭ ��� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
        return 7, 0, "Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos.",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Rollingcores Field",7,"Mover-se Rudis"

    elseif req == 2 then
		targetzone = 60 -- ���츣����
    elseif req == 3 then
		targetzone = 63 -- �츣����
    elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
    elseif req == 5 then
		targetzone = 57 -- ������Ÿ
    elseif req == 6 then 
		targetzone = 50 -- �Ѹ� �ھ��� �ʵ�
    elseif req == 7 then
                targetzone = 67 -- ���
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 then -- ������
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



function NPC_QUEST_281(cnum,reqNumber) -- �������� NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
        return 7, 0, "Bom Dia! Eu sou Monez. Se voce quiser usar os meus servicos, voce precisa ter um anel WARP e me pagar 500GP. Voce pode mover a Free Battle Zone sem ambos..",2,"Mover-se VeHerseba [Dungeon Area]",3,"Mover-se Herseba",4,"Mover-se Mekrita",5,"Mover-se Magirita",6,"Mover-se Rollingcores Field",7,"Mover-se Rudis"

    elseif req == 2 then
		targetzone = 60 -- ���츣����
    elseif req == 3 then
		targetzone = 63 -- �츣����
    elseif req == 4 then
		targetzone = 59 -- ��ũ��Ÿ
    elseif req == 5 then
		targetzone = 57 -- ������Ÿ
    elseif req == 6 then 
		targetzone = 50 -- �Ѹ� �ھ��� �ʵ�
    elseif req == 7 then
                targetzone = 67 -- ���
	else 
		return 1,0,"Quest tidak tersedia!!"
	end 				

	-- �������� ��üũ
	if GetItemCount(cnum,170,0) == 0 then -- ������
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
