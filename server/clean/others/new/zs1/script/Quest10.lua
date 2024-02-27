 function NPC_QUEST_286(cnum,reqNumber) --NPC 촌장 일하(체세바 유적지)
	local req,id1,id2,count1,count2

	id1 = 376 -- 깨진 유리조각
	id2 = 377 -- 프리즘

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 20) < 1 then
			if GetSwitchCount(cnum, 1011) < 1 then		
				if GetSwitchCount(cnum,19) == 0 then
					return 1,0,"Kamu belum mengumpulkan semua Tree Tear Crystal. Berbicaralah dengan Shira di VeHerseba."
				end

				return 2,0,"Halo, anak muda. Hmm, sebuah wadah cristal? Kalau begitu temukan Golden Glass Bottle. Itu adalah botol berharga yang dahulu kala memiliki kekuatan untuk memulihkan aura magis.",12,"Bagaimana aku dapat menemukannya?"
			else
				return 4,0,"Apakah kamu ingin menanyakan sesuatu padaku?",2,"Tanyakan lagi mengenai Golden Glass Bottle.",3,"Tanyakan lagi mengenai Magic Mirror.",4,"Tanyakan mengenai pembuatan Magic Mirror."
			end
		else
			return 1,0,"Sekarang, temukan Predic yang memiliki kekuatan khusus di Tamer's Field (X:180 Y:75). Predic akan mengirimmu ke masa lalu."
		end

	elseif req == 12 then
		return 2,0,"Golden Glass Bottle hanya ada di masa lalu. Jika kamu menginginkannya, pergi dan temukan di masa lalu. Kamu memerlukan Magic Mirror jika ingin pergi ke masa lalu. Magic Mirror dapat dibuat dengan kombinasi Broken Glass dan Prism. Kudengar biasanya dokternya.",13,"Ok."


	elseif req == 13 then
		StartQuest(cnum, 11)
		AddSwitchCount(cnum, 1011, 1)
		return 1,0,"Jika kamu bawa barangnya, aku bisa membuatkanmu Magic Mirror. Lalu kamu dapat pergi ke masa lalu."


	elseif req == 2 then

		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"Kamu dapat memperoleh informasi jika kamu telah mengumpulkan ketiga Shiras Tear Crystal. Temuilah Shira di VeHerseba."
		end

		return 1,0,"Golden Glass Bottle hanya ada di masa lalu. Jika kamu menginginkannya, pergi dan temukan di masa lalu. Kamu memerlukan Magic Mirror jika ingin pergi ke masa lalu."

	elseif req == 3 then

		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"Kamu tidak memiliki Tear Crystal. Temui Shira di VeHerseba."
		end

		return 1,0,"Kamu dapat memiliki Magic Mirror jika kamu mencampurkan broken glass piece dengan prism. Aku dengar kabar bahwa dokter menyukai benda ini. Aku tidak tahu dokter yang mana, mungkin yang ada di desa."

	elseif req == 4 then


		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)

		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"Temui Shira dan bicaralah padanya di VeHerseba."
		end

		if GetSwitchCount(cnum,20) > 0 then
			return 1,0,"Maafkan orang tua ini, aku hanya dapat membuat Magic Mirror sekali."

		end

		if GetItemCount(cnum,376,0) == 0 then --깨진 유리조각(376)
			return 1,0,"Tidak ada kepingan Broken Glass. Bicaralah dengan para dokter."
		end

		if GetItemCount(cnum,377,0) == 0 then --프리즘(377)
			return 1,0,"Tolong bawakan aku Prism. Carilah seorang dokter."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Harus ada satu slot kosong di Inventory."
		end

		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,375,1) -- 마법의 거울(375)
		AddMoney(cnum,10000) -- 10000GP 추가
		AddSwitchCount(cnum,20,1) --마법의 거울 Switch 값
		EndQuest(cnum, 11)

		return 1,0,"Oh, kerja bagus. Sekarang... Begini, begitu… Beres. Aku telah membuat Magic Mirror. Ah, menyenangkan. Aku akan memberimu sejumlah uang sebagai hadiah."
	end
	return 0
end
