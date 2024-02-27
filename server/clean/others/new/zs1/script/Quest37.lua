 function NPC_QUEST_252(cnum,reqNumber)
	local req = reqNumber

	if req == 1 then
		return 4,0,"Selamat datang! Apakah kamu ingin mendapat EXP? Butuh sebuah Core. Umm.. Pertama, klik level yang sesuai.",2,"[Lvl 20 atau kurang]",3,"[Lvl 21~40]",4,"[Lvl 41 atau lebih]"

	elseif req == 2 then
		if GetHeroLv(cnum,1) > 20 then
		return 1,0,"Kamu salah memilih. Kamu harus lvl 20 atau dibawahnya untuk memilih ini. Harap memilih yang sesuai dengan levelmu."
		end

		return 2,0,"Kamu telah memilih 20 dan dibawahnya. Jika kamu memberiku Rabie Core, aku akan meningkatkan EXP milikmu.",22,"[Dapat EXP]"

	elseif req == 22 then

	  if GetSwitchCount(cnum, 1057) > 0 then
			return 1,0, "Hanya tersedia sekali untuk mendapatkan Experience point."
		end

		if GetHench(cnum,1,101,1) < 1 then
		return 1,0, "Kamu tidak memiliki Rabie Core. Aku tidak dapat memberimu EXP jika kamu tidak menukarkan dengan Rabie Core."
		end

		if GetHench(cnum,1,101,1) > 1 then
		return 1,0,"Jika terdapat lebih dari 2 Rabie dalam Inventory, aku tidak dapat memberimu EXP. Mengapa tidak kamu simpan dahulu sebagian."
		end
		

		random = SetRandom(cnum,0,10000)

		if random < 3000 then
			AddHeroExp(cnum,20) ----- 히어로 경험치 20 추가
			AddHench(cnum,101,-1) ---래핀
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"20 EXP telah ditambahkan."

		elseif random >= 3000 and random <6000 then
			AddHeroExp(cnum,30) ----- 히어로 경험치 30 추가
			AddHench(cnum,101,-1) ---래핀
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"30 EXP telah ditambahkan."
			
		elseif random >= 6000 and random <8500 then
			AddHeroExp(cnum,100) ----- 히어로 경험치 100 추가
			AddHench(cnum,101,-1) ---래핀
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"100 EXP telah ditambahkan."

		elseif random >= 8500 and random <9500 then
			AddHeroExp(cnum,300) ----- 히어로 경험치 300 추가
			AddHench(cnum,101,-1) ---래핀
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"300 EXP telah ditambahkan."

		elseif random >= 9500 and random <10000 then
			AddHeroExp(cnum,500) ----- 히어로 경험치 500 추가
			AddHench(cnum,101,-1) ---래핀
			AddSwitchCount(cnum, 1057, 1)
			return 1,0,"500 EXP telah ditambahkan."


		end

	elseif req == 3 then

		if GetHeroLv(cnum,1) < 21 then
			return 1,0,"Kamu salah memilih. Kamu harus antara lvl 21 dan 40 untuk memilih ini. Harap memilih yang sesuai dengan levelmu."
		elseif GetHeroLv(cnum,1) > 40 then
			return 1,0,"Kamu salah memilih. Kamu harus antara lvl 21 dan 40 untuk memilih ini. Harap memilih yang sesuai dengan levelmu."
		else
			return 2,0,"Kamu telah memilih level 21 to 40. Aku akan meningkatkan EXP milikmu jika kamu memberikanku Synicks Core.",32,"[Dapat EXP]"
		end

	elseif req == 32 then

	  if GetSwitchCount(cnum, 1058) > 0 then
			return 1,0, "Hanya tersedia sekali untuk mendapatkan Experience point."
		end

		if GetHench(cnum,1,141,1) < 1 then
		return 1,0, "Kamu tidak memiliki Synicks Core. Aku tidak dapat memberimu EXP jika kamu tidak menukarkan dengan Synicks Core."
		end

		if GetHench(cnum,1,141,1) > 1 then
		return 1,0,"Jika terdapat lebih dari 2 Synicks dalam Inventory, aku tidak dapat memberimu EXP. Mengapa tidak kamu simpan dahulu sebagian."
		end

		random = SetRandom(cnum,0,10000)

		if random < 3000 then
			AddHeroExp(cnum,500) ----- 히어로 경험치 500 추가
			AddHench(cnum,141,-1) ---씨닉스
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"500 EXP telah ditambahkan."

		elseif random >= 3000 and random <6000 then
			AddHeroExp(cnum,700) ----- 히어로 경험치 700 추가
			AddHench(cnum,141,-1) ---씨닉스
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"700 EXP telah ditambahkan."
			
		elseif random >= 6000 and random <8500 then
			AddHeroExp(cnum,2000) ----- 히어로 경험치 2000 추가
			AddHench(cnum,141,-1) ---씨닉스
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"2000 EXP telah ditambahkan."

		elseif random >= 8500 and random <9500 then
			AddHeroExp(cnum,5000) ----- 히어로 경험치 5000 추가
			AddHench(cnum,141,-1) ---씨닉스
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"5000 EXP telah ditambahkan."

		elseif random >= 9500 and random <10000 then
			AddHeroExp(cnum,8000) ----- 히어로 경험치 8000 추가
			AddHench(cnum,141,-1) ---씨닉스
			AddSwitchCount(cnum, 1058, 1)
			return 1,0,"8000 EXP telah ditambahkan."
		end

	elseif req == 4 then
		
		if GetHeroLv(cnum,1) < 41 then
			return 1,0,"Kamu salah memilih. Kamu harus level 41 atau diatasnya untuk memilih ini. Harap memilih yang sesuai dengan levelmu."
		end

		return 2,0,"Kamu telah memilih 41 dan lebih. Jika kamu memberiku Asakayza Core, aku akan meningkatkan EXP milikmu.",42,"[Dapat EXP]"


	elseif req == 42 then

	  if GetSwitchCount(cnum, 1059) > 0 then
			return 1,0, "Hanya tersedia sekali untuk mendapatkan Experience point."
		end

		if GetHench(cnum,1,169,1) < 1 then
		return 1,0,"Tidak ada Asakayza Core. Aku tidak dapat memberimu EXP jika tidak ada Asakayza Core."
		end

		if GetHench(cnum,1,169,1) > 1 then
		return 1,0,"Jika terdapat lebih dari 2 Asakayza dalam Inventory, aku tidak dapat memberimu EXP. Mengapa tidak kamu simpan dahulu sebagian."
		end

		random = SetRandom(cnum,0,10000)

		if random < 3000 then
			AddHeroExp(cnum,3000) ----- 히어로 경험치 3000 추가
			AddHench(cnum,169,-1) ---달리손
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"3000 EXP telah ditambahkan."

		elseif random >= 3000 and random <6000 then
			AddHeroExp(cnum,5000) ----- 히어로 경험치 5000 추가
			AddHench(cnum,169,-1) ---달리손
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"5000 EXP telah ditambahkan."
			
		elseif random >= 6000 and random <8500 then
			AddHeroExp(cnum,7000) ----- 히어로 경험치 7000 추가
			AddHench(cnum,169,-1) ---달리손
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"7000 EXP telah ditambahkan."

		elseif random >= 8500 and random <9500 then
			AddHeroExp(cnum,10000) ----- 히어로 경험치 10000 추가
			AddHench(cnum,169,-1) ---달리손
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"10000 EXP telah ditambahkan."

		elseif random >= 9500 and random <10000 then
			AddHeroExp(cnum,12000) ----- 히어로 경험치 12000 추가
			AddHench(cnum,169,-1) ---달리손
			AddSwitchCount(cnum, 1059, 1)
			return 1,0,"12000 EXP telah ditambahkan."
		
			end
		end
	return 0
end
		
		
		
		


	
		
		

		

		


		