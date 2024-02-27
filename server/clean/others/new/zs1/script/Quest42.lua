function NPC_QUEST_243(cnum,reqNumber) --- 프리미엄 존 입장 NPC(마지리타)
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --유료존 입장권
			return 1,0,"Permisi, Premium Zone merupakan zona VIP terbatas. Dapat membawamu melihat pemandangan Magirita dimasa depan serta kota lain. Aku rasa kamu BUKAN seorang VIP."
		end

		return 3,0,"Selamat siang tuan muda. Kini, aku dapat membawamu ke kota dimasa depan. Kemanakah anda ingin pergi hari ini?",2,"Low level Premium Zone",3,"Mid/High level Premium Zone"

	elseif req == 2 then

		return 4,0,"Apakah ini pertama kalinya untukmu, pemandangannya mungkin menakutkan. Harap hati-hati.",12,"Ruins of Magirita",13,"Ruins of VeHerseba",14,"Ruins of Rudis."

	elseif req == 3 then

		return 5,0,"Apa kamu yakin?? Tidak banyak yang selamat dari wisata ini. Monster disini SANGAT kuat.",22,"Ruins of Magirita",23,"Ruins of VeHerseba",24,"Ruins of Rudis.",25,"Ruins of Purmai"

	elseif req == 12 then

		MoveZone(cnum,238,253) --페허가 된 마지리타

	elseif req == 13 then

		MoveZone(cnum,239,253) --폐허가 된 베헤르세바

	elseif req == 14 then

		MoveZone(cnum,240,253) --폐허가 된 루디스

	elseif req == 22 then

		MoveZone(cnum,241,253) --폐허가 된 마지리타

	elseif req == 23 then

		MoveZone(cnum,242,253) --폐허가 된 베헤르세바

	elseif req == 24 then

		MoveZone(cnum,243,253) --페허가 된 루디스

	elseif req == 25 then

		MoveZone(cnum,118,151) --페허가 된 프르마이

	end
	return 0

end


function NPC_QUEST_244(cnum,reqNumber) --- 프리미엄 존 입장 NPC(메크리타)
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --유료존 입장권
			return 1,0,"Permisi, Premium Zone merupakan zona VIP terbatas. Dapat membawamu melihat pemandangan Magirita dimasa depan serta kota lain. Aku rasa kamu BUKAN seorang VIP."
		end

		return 3,0,"Selamat siang tuan muda. Kini, aku dapat membawamu ke kota dimasa depan. Kemanakah anda ingin pergi hari ini?",2,"Low level Premium Zone",3,"Mid/High level Premium Zone"

	elseif req == 2 then

		return 4,0,"Apakah ini pertama kalinya untukmu, pemandangannya mungkin menakutkan. Harap hati-hati.",12,"Ruins of Magirita",13,"Ruins of VeHerseba",14,"Ruins of Rudis."

	elseif req == 3 then

		return 5,0,"Apa kamu yakin?? Tidak banyak yang selamat dari wisata ini. Monster disini SANGAT kuat.",22,"Ruins of Magirita",23,"Ruins of VeHerseba",24,"Ruins of Rudis.",25,"Ruins of Purmai"

	elseif req == 12 then

		MoveZone(cnum,238,253) --페허가 된 마지리타

	elseif req == 13 then

		MoveZone(cnum,239,253) --폐허가 된 베헤르세바

	elseif req == 14 then

		MoveZone(cnum,240,253) --폐허가 된 루디스

	elseif req == 22 then

		MoveZone(cnum,241,253) --폐허가 된 마지리타

	elseif req == 23 then

		MoveZone(cnum,242,253) --폐허가 된 베헤르세바

	elseif req == 24 then

		MoveZone(cnum,243,253) --페허가 된 루디스

	elseif req == 25 then

		MoveZone(cnum,118,151) --페허가 된 프르마이

	end
	return 0

end


function NPC_QUEST_245(cnum,reqNumber) --- 프리미엄 존 입장 NPC(헤르세바)
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --유료존 입장권
			return 1,0,"Permisi, Premium Zone merupakan zona VIP terbatas. Dapat membawamu melihat pemandangan Magirita dimasa depan serta kota lain. Aku rasa kamu BUKAN seorang VIP."
		end

		return 3,0,"Selamat siang tuan muda. Kini, aku dapat membawamu ke kota dimasa depan. Kemanakah anda ingin pergi hari ini?",2,"Low level Premium Zone",3,"Mid/High level Premium Zone"

	elseif req == 2 then

		return 4,0,"Apakah ini pertama kalinya untukmu, pemandangannya mungkin menakutkan. Harap hati-hati.",12,"Ruins of Magirita",13,"Ruins of VeHerseba",14,"Ruins of Rudis."

	elseif req == 3 then

		return 5,0,"Apa kamu yakin?? Tidak banyak yang selamat dari wisata ini. Monster disini SANGAT kuat.",22,"Ruins of Magirita",23,"Ruins of VeHerseba",24,"Ruins of Rudis.",25,"Ruins of Purmai"

	elseif req == 12 then

		MoveZone(cnum,238,253) --페허가 된 마지리타

	elseif req == 13 then

		MoveZone(cnum,239,253) --폐허가 된 베헤르세바

	elseif req == 14 then

		MoveZone(cnum,240,253) --폐허가 된 루디스

	elseif req == 22 then

		MoveZone(cnum,241,253) --폐허가 된 마지리타

	elseif req == 23 then

		MoveZone(cnum,242,253) --폐허가 된 베헤르세바

	elseif req == 24 then

		MoveZone(cnum,243,253) --페허가 된 루디스

	elseif req == 25 then

		MoveZone(cnum,118,151) --페허가 된 프르마이

	end
	return 0

end


function NPC_QUEST_246(cnum,reqNumber) --- 프리미엄 존 입장 NPC(베헤르세바)
	local req = reqNumber

	if req == 1 then
	
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --유료존 입장권
			return 1,0,"Permisi, Premium Zone merupakan zona VIP terbatas. Dapat membawamu melihat pemandangan Magirita dimasa depan serta kota lain. Aku rasa kamu BUKAN seorang VIP."
		end

		return 3,0,"Selamat siang tuan muda. Kini, aku dapat membawamu ke kota dimasa depan. Kemanakah anda ingin pergi hari ini?",2,"Low level Premium Zone",3,"Mid/High level Premium Zone"

	elseif req == 2 then

		return 4,0,"Apakah ini pertama kalinya untukmu, pemandangannya mungkin menakutkan. Harap hati-hati.",12,"Ruins of Magirita",13,"Ruins of VeHerseba",14,"Ruins of Rudis."

	elseif req == 3 then

		return 5,0,"Apa kamu yakin?? Tidak banyak yang selamat dari wisata ini. Monster disini SANGAT kuat.",22,"Ruins of Magirita",23,"Ruins of VeHerseba",24,"Ruins of Rudis.",25,"Ruins of Purmai"

	elseif req == 12 then

		MoveZone(cnum,238,253) --페허가 된 마지리타

	elseif req == 13 then

		MoveZone(cnum,239,253) --폐허가 된 베헤르세바

	elseif req == 14 then

		MoveZone(cnum,240,253) --폐허가 된 루디스

	elseif req == 22 then

		MoveZone(cnum,241,253) --폐허가 된 마지리타

	elseif req == 23 then

		MoveZone(cnum,242,253) --폐허가 된 베헤르세바

	elseif req == 24 then

		MoveZone(cnum,243,253) --페허가 된 루디스

	elseif req == 25 then

		MoveZone(cnum,118,151) --페허가 된 프르마이

	end
	return 0

end


function NPC_QUEST_247(cnum,reqNumber) --- 프리미엄 존 입장 NPC(루디스)
	local req = reqNumber

	if req == 1 then
	
		if GetItemCount(cnum,68,0) == 0 and GetItemCount(cnum,69,0) == 0 and GetItemCount(cnum,95,0) == 0 and GetItemCount(cnum,96,0) == 0 and GetItemCount(cnum,940,0) == 0 and GetItemCount(cnum,1316,0) == 0 and GetItemCount(cnum,3711,0) == 0 and GetItemCount(cnum,8178,0) == 0 and GetItemCount(cnum,8226,0) == 0 and GetItemCount(cnum,8499,0) == 0 then --유료존 입장권
			return 1,0,"Permisi, Premium Zone merupakan zona VIP terbatas. Dapat membawamu melihat pemandangan Magirita dimasa depan serta kota lain. Aku rasa kamu BUKAN seorang VIP."
		end

		return 3,0,"Selamat siang tuan muda. Kini, aku dapat membawamu ke kota dimasa depan. Kemanakah anda ingin pergi hari ini?",2,"Low level Premium Zone",3,"Mid/High level Premium Zone"

	elseif req == 2 then

		return 4,0,"Apakah ini pertama kalinya untukmu, pemandangannya mungkin menakutkan. Harap hati-hati.",12,"Ruins of Magirita",13,"Ruins of VeHerseba",14,"Ruins of Rudis."

	elseif req == 3 then

		return 5,0,"Apa kamu yakin?? Tidak banyak yang selamat dari wisata ini. Monster disini SANGAT kuat.",22,"Ruins of Magirita",23,"Ruins of VeHerseba",24,"Ruins of Rudis.",25,"Ruins of Purmai"

	elseif req == 12 then

		MoveZone(cnum,238,253) --페허가 된 마지리타

	elseif req == 13 then

		MoveZone(cnum,239,253) --폐허가 된 베헤르세바

	elseif req == 14 then

		MoveZone(cnum,240,253) --폐허가 된 루디스

	elseif req == 22 then

		MoveZone(cnum,241,253) --폐허가 된 마지리타

	elseif req == 23 then

		MoveZone(cnum,242,253) --폐허가 된 베헤르세바

	elseif req == 24 then

		MoveZone(cnum,243,253) --페허가 된 루디스

	elseif req == 25 then

		MoveZone(cnum,118,151) --페허가 된 프르마이

	end
	return 0

end