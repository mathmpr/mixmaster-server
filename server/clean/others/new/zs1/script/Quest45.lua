function NPC_QUEST_216(cnum,reqNumber) -- Lunacy World warp NPC- Rave
	local req = reqNumber

	if req == 1 then
		return 4,0,"Halo! Aku adalah penjaga gerbang menuju Lunacy World. Kamu harus memiliki [Tiket masuk Lunacy World] untuk pergi ke Lunacy World. Jika kamu memiliki sebuah [Tiket masuk Premium zone] atau [10 mawar], aku akan menukarnya dengan sebuah [Tiket masuk Lunacy World]. Apa yang kamu punya?",2,"[Tiket masuk Premium zone]",3,"[10 mawar]",4,"[Tiket masuk Lunacy World]" 

	elseif req == 2 then

		if  GetItemCount(cnum,1050,0) >= 1 then
			return 1,0,"Kamu tidak dapat memiliki lebih dari satu Tiket masuk Lunacy World."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Kamu tidak memiliki cukup ruang di Inventory. Kembalilah, setelah kamu memiliki ruang kosong."
		end
					
		if GetItemCount(cnum,68,0) > 0 then -- 프리미엄존 입장권이 있다면 남은 시간을 알아온다
			remain_time = GetItemPeriod(cnum,68)

		elseif GetItemCount(cnum,69,0) > 0 then
			remain_time = GetItemPeriod(cnum,69)

		elseif GetItemCount(cnum,95,0) > 0 then
			remain_time = GetItemPeriod(cnum,95)

		elseif GetItemCount(cnum,96,0) > 0 then
			remain_time = GetItemPeriod(cnum,96)

		elseif GetItemCount(cnum,940,0) > 0 then
			remain_time = GetItemPeriod(cnum,940)

		elseif GetItemCount(cnum,1316,0) > 0 then
			remain_time = GetItemPeriod(cnum,1316)

		elseif GetItemCount(cnum,3711,0) > 0 then
			remain_time = GetItemPeriod(cnum,3711)
			
		elseif GetItemCount(cnum,8178,0) > 0 then
			remain_time = GetItemPeriod(cnum,8178)
			
		elseif GetItemCount(cnum,8226,0) > 0 then
			remain_time = GetItemPeriod(cnum,8226)

		elseif GetItemCount(cnum,8499,0) > 0 then
			remain_time = GetItemPeriod(cnum,8499)
			
		else
			return 1,0,"Kamu tidak memiliki Tiket masuk Premium Zone."
		end
			
		if remain_time <= 0 then
			return 1,0,"Tiket masuk Premium Zone milikmu sudah tidak berlaku, aku tidak dapat memberimu sebuah Tiket masuk Lunacy World."
		end
			
		AddItemOnTime(cnum,1050,remain_time)
		return 1,0,"Tiket masuk Lunacy World dikeluarkan. Dengan masa berlaku yang sama dengan Tiket masuk Premium Zone milikmu."
						

	elseif req == 3 then
		return 2,0,"[Perhatian] Tiket masuk Lunacy World tersisa [2 jam] bahkan setelah kamu log out. Jadi, apakah kamu masih menginginkannya?",13,"Ya, aku ingin menukarnya."

	elseif req == 13 then
		if GetItemCount(cnum,1046,0) < 10 then
			return 1,0,"Kamu tidak dapat masuk ke Lunacy World jika kamu tidak memiliki 10 mawar. Kamu dapat memperoleh mawar jika kamu melawan ForceFlyer di Islaba damp area."
		end

		if GetItemCount(cnum,1050,0) ==1 then
			return 1,0,"Kamu tidak dapat memiliki lebih dari satu Tiket masuk Lunacy World. Kamu dapat memperoleh Tiket masuk Lunacy World jika mengumpulkan 10 mawar."
		end
		
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Kamu tidak memiliki cukup ruang di Inventory. Kembalilah, setelah kamu memiliki ruang kosong."
		end

		AddItemCount(cnum,1046,-10)
		AddItemCount(cnum,1050,1) -- [Lunacy world admission ticket]
		return 1,0,"Terima kasih atas mawarnya. Ini Tiket masuk Lunacy World. Harap diingat bahwa hanya berlaku 2 jam setelah kamu menggunakannya."
		

	elseif req == 4 then

		if GetItemCount(cnum,1050,0) == 0 then
			return 1,0,"Kamu tidak dapat masuk kecuali kamu memliki Tiket masuk Lunacy World."
		end

		MoveZone(cnum,72,254)
		end
	return 0
end

function NPC_QUEST_321(cnum,reqNumber) -- Move to Rudis NPC-Hallan
	local req = reqNumber

	if req == 1 then
		return 2,0,"Tempat ini tidak sesuai dengan kemampuanmu. Apa kamu ingin pergi ke kota Rudis?",2,"Pergi ke Rudis"

	elseif req == 2 then

		MoveZone(cnum,67,254)
		end
	return 0
end

function NPC_QUEST_258(cnum,reqNumber) ---Lunacy Dungeon warp NPC
	local req = reqNumber
	
	if req == 1 then
		return 4,0,"Halo! I am the gatekeeper to the Lunacy Dungeon. You should have a [Tiket masuk Lunacy Dungeon] to move to the Lunacy Dungeon 1st floor. If you have a [Tiket masuk Premium zone] or [10 Invitiation cards], I will give you a [Tiket masuk Lunacy Dungeon]. Which one do you have?",2,"[Tiket masuk Premium zone]",3,"[10 Kartu Undangan]",4,"[Tiket masuk Lunacy Dungeon]"

	elseif req == 2 then

		if  GetItemCount(cnum,1051,0) >= 1 then
			return 1,0,"Kamu tidak dapat memiliki lebih dari satu Tiket masuk Lunacy Dungeon."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Kamu tidak memiliki cukup ruang di Inventory. Kembalilah, setelah kamu memiliki ruang kosong."
		end

		if GetItemCount(cnum,68,0) > 0 then -- 프리미엄존 입장권이 있다면 남은 시간을 알아온다
			remain_time = GetItemPeriod(cnum,68)

		elseif GetItemCount(cnum,69,0) > 0 then
			remain_time = GetItemPeriod(cnum,69)

		elseif GetItemCount(cnum,95,0) > 0 then
			remain_time = GetItemPeriod(cnum,95)

		elseif GetItemCount(cnum,96,0) > 0 then
			remain_time = GetItemPeriod(cnum,96)

		elseif GetItemCount(cnum,940,0) > 0 then
			remain_time = GetItemPeriod(cnum,940)

		elseif GetItemCount(cnum,1316,0) > 0 then
			remain_time = GetItemPeriod(cnum,1316)

		elseif GetItemCount(cnum,3711,0) > 0 then
			remain_time = GetItemPeriod(cnum,3711)
			
		elseif GetItemCount(cnum,8178,0) > 0 then
			remain_time = GetItemPeriod(cnum,8178)
			
		elseif GetItemCount(cnum,8226,0) > 0 then
			remain_time = GetItemPeriod(cnum,8226)

		elseif GetItemCount(cnum,8499,0) > 0 then
			remain_time = GetItemPeriod(cnum,8499)
			
		else
			return 1,0,"Kamu tidak memiliki Tiket masuk Premium Zone."
		end
			
		if remain_time <= 0 then
			return 1,0,"Tiket masuk Premium zone milikmu sudah tidak berlaku, aku tidak dapat memberimu Tiket masuk Lunacy World."
		end
			
		AddItemOnTime(cnum,1051,remain_time)
			return 1,0,"Tiket masuk Lunacy Dungeon dikeluarkan. Dengan masa berlaku yang sama dengan Tiket masuk Premium Zone milikmu."

	elseif req == 3 then
		return 2,0,"[Perhatian] Tiket masuk Lunacy Dungeon tersisa [2 jam] bahkan setelah kamu log out. Jadi, apakah kamu masih menginginkannya?",13,"Ya, aku ingin menukarnya."
	
	elseif req == 13 then

		if GetItemCount(cnum,1049,0) < 10 then
			return 1,0,"Kamu tidak dapat pergi ke Lunacy Dungeon lantai 1 jika kamu tidak memiliki 10 kartu undangan. Kamu dapat memperolehnya setelah mengalahkan Ordevil di Illusion Swamp."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Kamu tidak memiliki cukup ruang di Inventory. Kembalilah, setelah kamu memiliki ruang kosong."
		end

		if GetItemCount(cnum,1051,0) ==1 then
			return 1,0,"Kamu tidak dapat memiliki lebih dari satu Tiket masuk Lunacy Dungeon."
		end
	
		AddItemCount(cnum,1049,-10)
		AddItemCount(cnum,1051,1)
		return 1,0,"Kamu telah mengumpulkan sepuluh kartu undangan. Ini Tiket masuk Lunacy Dungeon. Ingatlah bahwa hanya dapat digunakan selama 2 jam."
		
	elseif req == 4 then

		if GetItemCount(cnum,1051,0) == 0 then
			return 1,0,"Kamu tidak dapat pergi ke Lunacy Dungeon lantai 1 jikat kamu tidak memiliki Tiket masuk Lunacy Dungeon. Kamu dapat memperolehnya jika kamu mengumpulkan 10 kartu undangan."
		end
	
		MoveZone(cnum,91,254)
		end
	return 0
end

function NPC_QUEST_249(cnum,reqNumber) ---Lunacy Dungeon 1st floor NPC- Vandren
	local req = reqNumber

	if req == 1 then
		return 3,0,"Apa kamu takut dengan monster mengerikan? Harap memilih tujuan.",2,"[Pergi ke Lunacy Dungeon entrance]",3,"[Pergi ke Rudis]"

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then
			return 1,0,"Kamu tidak dapat pergi ke [Lunacy Dungeon entrance] karena kamu tidak memiliki tiket masuk Lunacy World."
		end

		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end