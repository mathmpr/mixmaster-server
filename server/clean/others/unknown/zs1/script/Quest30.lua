function NPC_QUEST_211(cnum,reqNumber) -- 마지리타 서부해안 (듀크프)- 아이스 크림
	local req = reqNumber

	if req == 1 then
		return 3,0,"Bolehkah aku meminta bantuanmu? Dapatkah kamu memberikan es krim ini kepada temanku Macca di daerah padang rumput Southern Mekrita? Dia menginginkan es krim.",2,"[Aku akan mengantarnya.]",3,"[Tidak, aku tidak akan]"

	elseif req == 2 then

		if GetSwitchCount(cnum, 1052) > 0 then
			return 1,0,"Macca berkata padaku bahwa ia menerima es krim nya dengan baik, terima kasih."
		end

		if GetSwitchCount(cnum, 1051) > 0 then
			return 1,0,"Sepertinya aku telah memberimu es krim, benar?"
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Inventory tidak memiliki cukup ruang untuk menyimpan es krim."
		end

		if GetItemCount(cnum,1044,0) == 1 then -- 아이스크림
			return 1,0,"Kamu sudah memiliki es krim. Tolong berikan kepada Macca di daerah padang rumput Southern Mekrita."
		end

		AddItemCount(cnum,1044,1) -- 아이스크림 기증
		AddSwitchCount(cnum, 1051, 1)
		return 1,0,"Satu hal yang perlu kamu ingat... Jika kamu tidak mengantarkan es krim ke Macca di daerah Meadows of Southern Mekrita dengan segera, maka es krim akan mencair."

	elseif req == 3 then

		return 1,0,"Maaf, namun kamu melepaskan kesempatan mendapatkan banyak GP"
		
		end

	return 0

end


function NPC_QUEST_223(cnum,reqNumber) -- 메크리타 남부초원 (Macca)-편지
	local req = reqNumber

	if req == 1 then

    if GetSwitchCount(cnum, 1053) > 0 then
			return 1,0,"Laboz mengatakan bahwa dia menerima surat dan mawar. Terima kasih"
		end

		if GetSwitchCount(cnum, 1052) > 0 then
			return 1,0,"Apa kamu menyelesaikan tugas mengantarkan surat dengan baik?"
		end
		
		if GetItemCount(cnum,1046,0) == 1 then
			return 1,0,"Aku tidak dapat memberikan suratnya jika tidak ada mawar dalam Inventory."
		end

		if GetItemCount(cnum,1045,0) == 1 then --편지
			return 1,0,"Kamu tidak dapat menerima lebih dari satu surat."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Untuk melakukan Quest ini, kamu harus menyisakan ruang lebih dari satu dalam Inventory..."
		end

		return 2,0,"Aku sangat ingin es krim! Apa kamu punya es krim? Kamu dapat memperolehnya dari Duct di Western Sea of Magirita.",2,"Aku punya es krim."

	elseif req == 2 then

		if GetItemCount(cnum,1044,0) == 0 then
			return 1,0,"Kamu tidak punya es krim. Kamu dapat memperolehnya dari Dukfu di Western Sea of Magirita."
		end

		AddItemCount(cnum,1044,-1) -- 아이스크림
		return 2,0,"Terima kasih atas es krim dingin ini.! Namun, astaga! Aku tidak memiliki upah bayarannya. Hm... Kamu dapat mengantar surat ini ke Laboz di Islava Damp Area? Laboz가 akan memberimu banyak GP sebagai hadiah kebaikanmu.",12,"Ya, aku akan mengantarkan surat ini." 

	elseif req == 12 then

		AddItemCount(cnum,1045,1) -- 편지 추가
		AddSwitchCount(cnum, 1052, 1)
		return 1,0,"Nah, satu hal lagi. Laboz sangat menyukai mawar. Dia tidak akan membaca suratnya jika tidak ada mawar. Kamu dapat memperoleh mawar setelah mengalahkan ForceFlyer di Islaba Damp Area."
		end
	
	return 0
end

function NPC_QUEST_213(cnum,reqNumber) -- 아이슬라바 습지대 (Laboz) 
	local req = reqNumber

	if req == 1 then


	  if GetSwitchCount(cnum, 1053) > 0 then
			return 1,0,"Terima kasih untuk surat dan mawarnya"
		end

		if GetItemCount(cnum,1046,0) == 0 then
			return 1,0,"Aku tidak akan membaca surat apapun tanpa mawar! Kamu dapat memperoleh mawar jika mengalahkan ForceFlyer di Islaba Damp Area. Tolong bawakan aku mawar."
		end

		if GetItemCount(cnum,1045,0) == 0 then
			return 1,0,"Kamu tidak memiliki suratnya. Kamu dapat memperolehnya jika kamu menemui Macca di Southern Meadows of Mekrita."
		end

		return 2,0,"Apa kamu memiliki surat dan mawarnya? Jika kamu memberikannya padaku, aku akan memberimu imbalan. Bayarannya dapat berupa lelucon karena aku gampang marah. Kamu juga memperoleh kesempatan dibayar dengan banyak GP, jika kamu beruntung..",12,"[Memberikan surat dan mawar]"

	elseif req == 12 then

		if GetItemCount(cnum,1046,0) == 0 then
			return 1,0,"Kamu tidak memiliki mawar."
		end

		if GetItemCount(cnum,1045,0) == 0 then
			return 1,0,"Kamu tidak memiliki surat."
		end

		random = SetRandom(cnum,0,1000)

		if random < 350 then
			
			AddItemCount(cnum,1046,-1) -- 장미꽃
			AddItemCount(cnum,1045,-1) -- 편지
			AddMoney(cnum,300)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Aku akan membayarmu 300GP. Mawarnya layu."

		elseif random >= 350 and random < 650 then
			
			AddItemCount(cnum,1046,-1) --장미꽃
			AddItemCount(cnum,1045,-1) --편지
			AddMoney(cnum,1000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Aku akan membayarmu 1.000GP. Mawarnya sedikit layu."

		elseif random >= 650 and random < 900 then
			
			AddItemCount(cnum,1046,-1) --장미꽃
			AddItemCount(cnum,1045,-1) --편지
			AddMoney(cnum,3000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Aku akan membayarmu 3.000GP. Mawarnya tidak segar!"

		elseif random >= 900 and random < 995 then
			
			AddItemCount(cnum,1046,-1) --장미꽃
			AddItemCount(cnum,1045,-1) --편지
			AddMoney(cnum,30000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Aku akan membayarmu 30.000GP. Mawarnya segar."

		elseif random >= 995 and random < 998 then
			
			AddItemCount(cnum,1046,-1) --장미꽃
			AddItemCount(cnum,1045,-1) --편지
			AddMoney(cnum,90000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Aku akan membayarmu 90.000GP. Mawarnya sangat segar."

		elseif random >= 998 and random < 1000 then
			
			AddItemCount(cnum,1046,-1) -- 장미꽃
			AddItemCount(cnum,1045,-1) -- 편지
			AddMoney(cnum,150000)
			AddSwitchCount(cnum, 1053, 1)
			return 1,0,"Aku akan membayarmu 150.000GP seluruh yang aku punya. Kamu sungguh beruntung!"
			end

    else
      return 0
			
		end
		return 0
end