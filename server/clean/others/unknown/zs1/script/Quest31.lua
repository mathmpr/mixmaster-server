function NPC_QUEST_257(cnum,reqNumber) -- 루나틱 필드(셀머) - 케익
	local req = reqNumber

	if req == 1 then
		return 3,0,"Dapatkah kamu membantuku? Dapatkah kamu memberikan kue ini kepada Quadra di Illusion Swamp? Quadra sangat menyukai kue. Kamu harus cepat, jika tidak kuenya akan rusak.",2,"[Ya, aku dapat mengantarnya untukmu]",3,"[Tidak, aku tak bisa]"

	elseif req == 2 then

	  if GetSwitchCount(cnum, 1055) > 0 then
			return 1,0,"Aku dengar Quadra menerima kuenya. Terima kasih."
		end

		if GetSwitchCount(cnum, 1054) > 0 then
			return 2,0,"Kamu yang telah mengantarkan kuenya. Apa yang terjadi?",4,"Hmm..."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Kamu tidak memiliki cukup ruang dalam Inventory. Kembalilah setelah kamu memiliki cukup ruang"
		end

		if GetItemCount(cnum, 1047, 0) == 1 then
			return 1,0,"Kamu telah memiliki kue. Tolong berikan kepada Quadra di Illusion Swamp."
		end

    SetSwitchCount(cnum, 1054, 1)
		AddItemCount(cnum, 1047, 1) -- 케익 기증
		StartQuest(cnum, 173)
		return 1,0,"Kamu harus ingat jika kamu terlambat mengantarkannya, kue ini akan rusak."

	elseif req == 3 then

		return 1,0,"Sungguh disayangkan kamu melewatkan kesempatan memperoleh banyak GP."
	
	  elseif req == 4 then

			if GetItemCount(cnum, 1047, 0) == 0 then
			if GetSwitchCount(cnum, 1060) > 0 then

			AddItemCount(cnum, 1047, 1) -- 케익 기증
			SetSwitchCount(cnum, 1054, 1)
			EndQuest(cnum, 173)
			StartQuest(cnum, 173)
			return 1,0,"Kamu telah memakan kuenya...@Itu yang kuminta sebelumnya untuk...Hmm!@Kamu pastinya kelaparan.@Aku mengerti~@Maka, aku akan memberikanmu lagi. Kali ini tolonglah! Antarkan padanya."

			else

			AddItemCount(cnum, 1047, 1) -- 케익 기증
			SetSwitchCount(cnum, 1054, 1)
			EndQuest(cnum, 173)
			StartQuest(cnum, 173)
			return 1,0,"Kamu telah memakan kuenya...@Itu yang kuminta sebelumnya untuk...Hmm!@Kamu pastinya kelaparan.@Aku mengerti~@Maka, aku akan memberikanmu lagi. Kali ini tolonglah! Antarkan padanya."

			end

		else
			return 1,0,"Kamu masih memiliki kuenya!!@Kali ini kamu tidak akan memakannya, benar?"

		end
	end
end


function NPC_QUEST_204(cnum,reqNumber) -- 현혹의 늪(과데라) - 악마의 목걸이
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,1049,0) == 0 then
			return 1,0,"Jika kamu tidak membawa kartu undangan, aku tidak dapat menerima kuemu dan memberimu Devil's Necklace. Kamu dapat memperoleh kartu undangan dengan menangkap Ordevil di Illusion Swamp."
		end


    if GetSwitchCount(cnum, 1056) > 0 then
			return 1,0,"Aku dengar Julias telah menerimanya. Terima kasih"

		end

		if GetSwitchCount(cnum, 1055) > 0 then
			return 2,0,"Bagaimana dengan pengantaran Devil's Necklace?",3,"Devil mengambilnya..."

		end

		if GetItemCount(cnum,1048,0) == 1 then
			return 1,0,"Kamu tidak dapat memiliki lebih dari satu Devil's Necklace."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Kamu tidak memiliki cukup ruang dalam Inventory. Kembalilah setelah kamu memiliki cukup ruang"
		end		


		return 2,0,"Hmm, aku lapar, aku ingin sebuah kue. Jika kamu tidak memiliki kue, kamu bisa menemui Selman di Lunatic field, dan dapatkan sebuah kue darinya.",2,"Aku punya kue."

	elseif req == 2 then

		if GetItemCount(cnum, 1047, 0) == 0 then
		SetSwitchCount(cnum, 160, 1)
			return 1,0,"Kamu tidak memiliki kue. Jika kamu menemui Selman di Lunatic field, kamu dapat memperoleh sebuah kue."
		end

		AddItemCount(cnum, 1047, -1) -- 케익
		EndQuest(cnum, 173)
		return 2,0,"Terima kasih! Kue rasa es krim ini sangat lezat. Namun maaf, aku tidak memiliki bayaranmu. Dapatkah kamu memberikan kalung ini kepada Julias di pintu masuk Lunatic Dungeon? Julias akan memberimu GP sebagai hadiah.",12,"Ya, aku akan mengantarkannya untukmu." 

  elseif req == 3 then

		if GetItemCount(cnum, 1048, 0) == 0 then
			if GetSwitchCount(cnum, 1061) > 0 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"Aku tidak dapat memberikannya kepadamu karena tidak ada ruang dalam Inventory milikmu."

				else
				AddItemCount(cnum, 1048, 1) -- 악마의 목걸이 추가
				SetSwitchCount(cnum, 1054, 1)
				StartQuest(cnum, 174)
				return 1,0,"Kamu bercanda.@Sangat sulit mendapatkan Devil's Necklace...@Aku akan memberimu lagi karena Julias membutuhkannya.@Dan, seperti yang kubilang sebelumnya, kamu sebaiknya membawa undangan yang diperoleh dari Ordevil.@Dia sedikit memusingkan~"

				end

			else
			AddItemCount(cnum, 1048, 1) -- 악마의 목걸이 추가
			SetSwitchCount(cnum, 1054, 1)
			StartQuest(cnum, 174)
			return 1,0,"Kamu bercanda.@Sangat sulit mendapatkan Devil's Necklace...@Aku akan memberimu lagi karena Julias membutuhkannya.@Dan, seperti yang kubilang sebelumnya, kamu sebaiknya membawa undangan yang diperoleh dari Ordevil.@Dia sedikit memusingkan~"

			end
		
		else
			return 1,0,"Kamu memiliki Devil's Necklace!!@Apa mungkin kamu sang Devil? HuHu"

		end


	elseif req == 12 then

		AddItemCount(cnum, 1048, 1) -- 악마의 목걸이 추가
		SetSwitchCount(cnum, 1055, 1)
		StartQuest(cnum, 174)
		return 1,0,"Aku punya satu permintaan lagi. Julias mencari sebuah kartu undangan. Dia tidak akan menerima Devil's Necklace tanpa kartu undangan. Kamu dapat memperoleh kartu undangan jika kamu menangkap Ordevil di Illusion Swamp."
		end
	
	return 0
end

function NPC_QUEST_289(cnum,reqNumber) -- 루나틱 던전 입구(줄리어스)
	local req = reqNumber

	if req == 1 then

    if GetSwitchCount(cnum, 1056) > 0 then
			return 1,0,"Kamu yang mengantarkannya untukku. Terima kasih"

		end

		if GetItemCount(cnum, 1049, 0) == 0 then -- 초대장
		SetSwitchCount(cnum, 1061, 1)
			return 1,0,"Aku tidak akan menerima Devil's Necklace tanpa kartu undangan. Kamu dapat memperoleh kartu undangan dengan menangkap Ordevil di Illusion Swamp. Tolong bawakan aku kartu undangan."
		end

		if GetItemCount(cnum, 1048, 0) == 0 then --악마의 목걸이
		SetSwitchCount(cnum, 1061, 1)
			return 1,0,"Kamu tidak memiliki Devil's Necklace. Kamu dapat memperolehnya jika kamu berbicara dengan Quadra di Illusion Swamp."
		end

		return 2,0,"Apa kamu memiliki Devil's Necklace dan kartu undangan? Jika kamu berikan padaku, aku mungkin memberimu bayaran. Besarnya bayaran tergantung padaku. Aku sangat plin-plan. Jika kamu beruntung, aku dapat memberimu banyak GP.",12,"[Berikan kalung dan kartu undangan]"

	elseif req == 12 then

		if GetItemCount(cnum, 1049, 0) == 0 then
			return 1,0,"Kamu tidak memiliki kartu undangan. Kamu dapat memperolehnya jika kamu menangkap Ordevil di Illusion Swamp."
		end

		if GetItemCount(cnum, 1048, 0) == 0 then
			return 1,0,"Kamu tidak memiliki Devil's Necklace. Kamu dapat memperolehnya dari Quadra di Illusion Swamp."
		end

		random = SetRandom(cnum, 0, 1000)

		if random < 350 then
			
			AddItemCount(cnum, 1049, -1) -- 초대장
			AddItemCount(cnum, 1048, -1) -- 악마의 목걸이
			AddMoney(cnum,300)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Ini 300GP untuk jasa yang kamu berikan."

		elseif random >= 350 and random < 650 then
			
			AddItemCount(cnum, 1049, -1) --초대장
			AddItemCount(cnum, 1048, -1) --악마의 목걸이
			AddMoney(cnum,1000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Ini 1.000GP untuk jasa yang kamu berikan."

		elseif random >= 650 and random < 900 then
			
			AddItemCount(cnum, 1049, -1) --초대장
			AddItemCount(cnum, 1048, -1) --악마의 목걸이
			AddMoney(cnum,3000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Ini 3.000GP untuk jasa yang kamu berikan."

		elseif random >= 900 and random < 995 then
			
			AddItemCount(cnum, 1049, -1) --초대장
			AddItemCount(cnum, 1048, -1) --악마의 목걸이
			AddMoney(cnum, 30000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Ini 30.000GP untuk jasa yang kamu berikan."

		elseif random >= 995 and random < 998 then
			
			AddItemCount(cnum, 1049, -1) --초대장
			AddItemCount(cnum, 1048, -1) --악마의 목걸이
			AddMoney(cnum,90000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Ini 90.000GP untuk jasa yang kamu berikan."

		elseif random >= 998 and random < 1000 then
			
			AddItemCount(cnum, 1049, -1) -- 초대장
			AddItemCount(cnum, 1048, -1) -- 악마의 목걸이
			AddMoney(cnum, 150000)
			EndQuest(cnum, 174)
			AddSwitchCount(cnum, 1056, 1)
			return 1,0,"Aku akan memberimu seluruh uangku, 150.000GP. Anggaplah dirimu orang yang beruntung."
			end
		end
		return 0
end