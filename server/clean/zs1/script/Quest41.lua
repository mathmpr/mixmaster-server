function NPC_QUEST_229(cnum,reqNumber)
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Halo, aku Monez. Jika kamu ingin dipindahkan ketempat lain, kamu harus membawa sebuah Warp Ring dan membayar 500GP. NAMUN, kamu dapat pergi ke Free Battle Zone gratis!",2,"Pergi ke VeHerseba[dungeon area]",3,"Pergi ke Herseba",4,"Pergi ke Mekrita",5,"Pergi ke Rudis",6,"Pergi ke Free Battle Zone",7,"Pergi ke Islaba Damp Area"

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
	        return 7, 0,"Oh, sangat panas di sini! Aku tumbuh menjadi Magirita Wizard hingga perubahan ini terasa menyakitkan! Kamu butuh Warp? Tolong siapkan Warp Ring dan 500GP.",2,"Pergi ke Magirita",3,"Pergi ke Herseba",4,"Pergi ke Mekrita",5,"Pergi ke Rudis",6,"Pergi ke Free Battle Zone",7,"Pergi ke Magirita Western Shore"

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
	        return 7, 0,"Halo aku adalah Monez. Baiklah, nama asliku adalah Monezzetta. Aku seorang gadis Monez. Dapatkah kamu menebaknya? Tolong siapkan Warp Ring dan 500GP",2,"Pergi ke VeHerseba [Dungeon Area]",3,"Pergi ke Magirita",4,"Pergi ke Mekrita",5,"Pergi ke Rudis",6,"Pergi ke Free Battle Zone",7,"Pergi ke Valcan Access Road"
                     
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
	        return 7, 0,"Halo! Aku Monez. Jika kamu ingin menggunakan jasaku, kamu harus memberikan sebuah Warp Ring dan membayarku 500GP. Kamu dapat pindah ke Free Battle Zone tanpa satupun.",2,"Pergi ke VeHerseba [Dungeon Area]",3,"Pergi ke Herseba",4,"Pergi ke Magirita",5,"Pergi ke Rudis",6,"Pergi ke Free Battle Zone",7,"Pergi ke Rollingcores"

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
	        return 7, 0,"Halo, kamu ingin menggunakan warp? Hari yang indah untuk warp! Oh aku menyukainya.. Dibutuhkan Warp Ring dan 500GP.",2,"Pergi ke VeHerseba [Dungeon Area]",3,"Pergi ke Herseba",4,"Pergi ke Mekrita",5,"Pergi ke Magirita",6,"Pergi ke Free Battle Zone",7,"Pergi ke Rollingcores Field"

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



function NPC_QUEST_274(cnum,reqNumber) -- PK지역  NPC 
  	local req = reqNumber
  	req = reqNumber

	if req == 1 then
	        return 2, 0,"Apa kamu ingin pergi kembali ke Mekrita?.",2,"Pergi ke Mekrita"

        elseif req == 2 then
		MoveZone(cnum,59,253)
		return 0	
	end 				
end --



function NPC_QUEST_226(cnum,reqNumber) -- 아이슬라바 습지대 NPC 
  	local req = reqNumber
	local money,remain,resultmsg,targetzone
  	req = reqNumber

	if req == 1 then
	        return 7, 0,"Harap tunjukkan tiket! Jika tidak, dibutuhkan Warp ring dan 500GP!",2,"Pergi ke VeHerseba [Dungeon Area]",3,"Pergi ke Herseba",4,"Pergi ke Mekrita",5,"Pergi ke Magirita",6,"Pergi ke Magirita Western shore",7,"Pergi ke Rudis"

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
	        return 7, 0,"Namaku Monez. Jika kamu ingin pindah ke tempat lain, kamu harus memiliki Warp ring dan 500GP. Namun, kamu dapat pindah ke Free Battle Zone gratis.",2,"Pergi ke VeHerserva [Dungeon Area]",3,"Pergi ke Herseba",4,"Pergi ke Mekrita",5,"Pergi ke Magirita",6,"Pergi ke Islava Swamp area",7,"Pergi ke Rudis"

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
	        return 7, 0, "Kemana kamu ingin pergi!? Tolong siapkan Warp ring dan 500GP!.",2,"Pergi ke VeHerseba [Dungeon Area]",3,"Pergi ke Herseba",4,"Pergi ke Mekrita",5,"Pergi ke Magirita",6,"Pergi ke Rollingcores Field",7,"Pergi ke Rudis"

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
	        return 7, 0,"Warp Ring and 500GP.",2,"Pergi ke VeHerseba [Dungeon Area]",3,"Pergi ke Herseba",4,"Pergi ke Mekrita",5,"Pergi ke Magirita",6,"Pergi ke Valcan Access Road",7,"Pergi ke Rudis"

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
        return 7, 0, "Kemana kamu ingin pergi!? Tolong siapkan Warp Ring dan 500GP!",2,"Pergi ke VeHerseba [Dungeon Area]",3,"Pergi ke Herseba",4,"Pergi ke Mekrita",5,"Pergi ke Magirita",6,"Pergi ke Rollingcores Field",7,"Pergi ke Rudis"

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
        return 7, 0, "Kemana kamu ingin pergi!? Tolong siapkan Warp Ring dan 500GP!.",2,"Pergi ke VeHerseba [Dungeon Area]",3,"Pergi ke Herseba",4,"Pergi ke Mekrita",5,"Pergi ke Magirita",6,"Pergi ke Rollingcores Field",7,"Pergi ke Rudis"

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
