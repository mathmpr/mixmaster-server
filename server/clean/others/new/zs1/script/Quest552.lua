function NPC_QUEST_1128(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Apa kamu ingin pergi ke Veherseba? Dibutuhkan 2,000,000 GP jika kamu ingin kembali kesini. Pikirlah dahulu. Apa kamu yakin ingin pergi?",2,"Pergi ke [Veherseba]"

	elseif req == 2 then
		MoveZone(cnum, 60, 254)
		
	else
		return 0
	end
end

function NPC_QUEST_1127(cnum,reqNumber) -- 베헤르세바 페르보선장

local req = reqNumber

	if req == 1 then
		return 4,0,"Aku adalah kapten Ferbo dari kapal bernama Aerobomber ini. Untuk pergi ke pulau langit, Elysion, dibutuhkan [Areobomber Ticket] dan 2,000,000 GP. Jika kamu punya [Tiket masuk Premium zone], gratis terbang kesana. Kamu dapat menukar [Green Turton shell 20ea] untuk [Areobomber Ticket]. Apa yang kamu punya?",2,"[Tiket masuk Premium zone]",3,"[Green Turton shell 20ea]",4,"[Areobomber Ticket]"

	elseif req == 2 then

		if  GetHeroLv(cnum) < 70 then -- Lv.
			return 1,0,"Elysion lebih berbahaya dari yang kamu bayangkan. Valor dengan dibawah Lv70 tidak diijinkan pergi kesana."
		end

		if  GetItemCount(cnum,8634,0) >= 1 then -- [에어로봄버 이용권]을 이미 가지고 있다면 더 이상 못 받게 한다.
			return 1,0,"Kamu hanya dapat memiliki satu [Areobomber Ticket]"
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Inventorymu penuh.@Kosongkan setidaknya satu ruang untuk menerima benda dari Captain Ferbo"
		end

		if GetItemCount(cnum,68,0) > 0 then -- 프리미엄 존 입장권이 있다면 남은 시간을 알아온다
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

		elseif GetItemCount(cnum,8582,0) > 0 then
			remain_time = GetItemPeriod(cnum,8582)

		elseif GetItemCount(cnum,8641,0) > 0 then
			remain_time = GetItemPeriod(cnum,8641)

		else
			return 1,0,"Kamu tidak memiliki [Tiket masuk Premium zone]"
		end

		if remain_time <= 0 then --[프리미엄 존 입장권] 시간이 만료되었으면 [에어로봄버 이용권]을 안준다
			return 1,0,"Aku tidak dapat memberikan [Areobomber Ticket] kepadamu karena [Tiket masuk Premium zone] sudah tidak berlaku."
		end

		AddItemOnTime(cnum,8634,remain_time)-- 에어로봄버 이용권을 주면서 프리미엄존 입장권의 남은 시간을 넣는다.
		return 1,0,"Ini [Areobomber Ticket]. Ingat bahwa waktumu di Elysion sama dengan waktu yang tersisa pada [Tiket masuk Premium zone]"


	elseif req == 3 then
		if  GetHeroLv(cnum) < 70 then -- Lv.
			return 1,0,"Elysion lebih berbahaya dari yang kamu bayangkan. Valor dengan dibawah Lv70 tidak diijinkan pergi kesana. Kembalilah setelah mencapai Lv 70 atau lebih."
		end

		return 2,0,"[Perhatian] [Areobomber Ticket] memiliki batas waktu 3 jam. Sisa waktu terus berjalan meski log out. Apa kamu yakin ingin menukarkannya?",13,"Ya. Aku mau."

	elseif req == 13 then
		if GetItemCount(cnum,8621,0) < 20 then
			return 1,0,"Areobomber akan sulit terbang tanpa [Green Turton shell 20ea]. Kamu dapat memperoleh [Green Turton shell] dari [Reincurne dungeon] di tengah [Fork Road]. First, pergilah ke barat dari map [Veherseba] ini"
		end

		if GetItemCount(cnum,8634,0) ==1 then
			return 1,0,"Kamu hanya dapat memiliki satu [Areobomber Ticket]"
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Inventorymu penuh.@Kosongkan setidaknya satu ruang untuk menerima benda dari Captain Ferbo"
		end

		AddItemCount(cnum,8621,-20)
		AddItemCount(cnum,8634,1) -- 에어로봄버 이용권
		return 1,0,"Oh~ bagus! Aerobomber akan senang. Ambil ini [Aerobomber Ticket]. Jangan lupa mengenai batas waktu 3 jam."


	elseif req == 4 then
		if  GetHeroLv(cnum) < 70 then -- Lv.
			return 1,0,"Elysion lebih berbahaya dari yang kamu bayangkan. Valor dengan dibawah Lv70 tidak diijinkan pergi kesana."
		end

		if GetItemCount(cnum,8634,0) == 0 then
			return 1,0,"Tidak diperbolehkan pergi ke Elysion tanpa [Aerobomber Ticket]"
		end

		if GetItemCount(cnum,68,0) > 0 or
		 GetItemCount(cnum,69,0) > 0 or
		 GetItemCount(cnum,95,0) > 0 or
		 GetItemCount(cnum,96,0) > 0 or
		 GetItemCount(cnum,940,0) > 0 or
		 GetItemCount(cnum,1316,0) > 0 or
		 GetItemCount(cnum,3711,0) > 0 or
		 GetItemCount(cnum,8178,0) > 0 or
		 GetItemCount(cnum,8226,0) > 0 or
		 GetItemCount(cnum,8499,0) > 0 or
		 GetItemCount(cnum,8582,0) > 0 or
		 GetItemCount(cnum,8641,0) > 0 then

		return 2,0,"Kamu memiliki [Tiket masuk Premium zone]. Kamu dapat pergi ke Elysion tanpa membayar 2,000,000 GP,. Apa kamu ingin berangkat?",5,"Tentu! Biarkan aku terbang ke Elysion!"

		else

		return 2,0,"Kamu tidak memiliki [Tiket masuk Premium zone]. Kamu harus membayar 2,000,000 GP. Apa kamu ingin pergi ke Elysion?",6,"Tentu! Biarkan aku terbang ke Elysion!"

		end


	elseif req == 5 then

		MoveZone(cnum,103,254)

	elseif req == 6 then

		if GetMoney(cnum) < 2000000 then
			return 1,0,"Kamu tidak memiliki cukup GP. Maafkan aku."
		else
			AddMoney(cnum, -2000000)
			MoveZone(cnum,103,254)
		end

	end
end

function NPC_QUEST_1145(cnum,reqNumber) -- 베헤르세바 에어로봄버

req = reqNumber

	if req == 1 then
		return 1,0,"Dr. Jove membuat kapal ini di ilhami oleh BomberGun."

	end
end

function NPC_QUEST_1146(cnum,reqNumber) -- 베헤르세바 에어로봄버

req = reqNumber

	if req == 1 then
		return 1,0,"Dr. Jove membuat kapal ini di ilhami oleh BomberGun."

	end
end
