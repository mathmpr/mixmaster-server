function NPC_QUEST_306(cnum, reqNumber)

req = reqNumber
	
	if req == 1 then
		if GetSwitchCount(cnum, 61) < 1 then
			if GetSwitchCount(cnum, 60) < 1 then
				return 3,0,"Siapa kamu? Mengapa kamu ada di tempat terpencil ini?",2,"Aku ke sini untuk pohonnya.",3,"Mau segelas air? Aku juga haus."

			elseif GetSwitchCount(cnum, 60) > 0 then
				StartQuest(cnum, 13)				
				return 2,0,"Apakah kamu menemukan jamnya?",32,"Ya, aku menemukannya."
			end
		
		elseif GetSwitchCount(cnum, 61) > 0 then
			return 1,0,"Mengapa diam saja? Kamu akan menjadi pahlawan! Kamu harus bergegas menyelamatkan Tree of Propagation."
		else
			return 1,0,"Silahkan coba lagi nanti."
		end


	elseif req == 2 then
		if GetItemCount(cnum, 378, 0) < 1 then
			return 1,0,"Benar kamu yang dikirim oleh Predic? Mengapa kamu tidak memiliki Golden Glass Bottle?"
		else
			return 3,0,"Oh… Apakah kamu yang diceritakan Predic padaku? Predic telah mengirim orang yang dipercaya, namun aku harus berhati - hati. Aku tidak dapat memberimu Spirit of the Tree tanpa bukti bahwa kamu adalah utusannya. Jika kamu benar menjawab pertanyaanku, aku akan memberimu Soul of the Tree.",12,"Tes macam apa?",13,"Mengapa aku harus menjalani tes?"
		end

	elseif req == 3 then
		return 1,0,"Kamu lemah! Aku tidak tahu mengapa kamu datang. Tapi jika kamu ingin tetap hidup, kembalilah ke kotamu."



	elseif req == 12 then
		return 2,0,"Aku kehilangan jam dalam perjalanan di gurun. Aku biasanya berhati - hati namun aku pasti sedang lengah. Aku tidak yakin monster apa yang merampokku. Aku akan memberimu Spirit of the Tree jika kamu bisa menemukan jam itu.",22,"OK (Ia hanya mau bantuanku)."

	elseif req == 13 then
		return 1,0,"Tidak peduli jika terlalu berat, aku hanya ingin tahu kamu pantas mendapatkan kepercayaan atau tidak. Jika kamu tidak dapat melakukannya, pergi saja. Aku tidak ingin memberikan Spirit of Tree yang berharga ini pada orang lemah sepertimu."



	elseif req == 22 then
		if CheckItemPocket(cnum, 1196, 5) < 0 then
			return 1,0,"Kenapa kamu membawa banyak barang? Datang padaku setelah kamu mengatur Inventory. Aku akan memberikan barang yang kamu inginkan."
 
		else
			AddItemCount(cnum, 1196, 5) -- 체력의 비약 3개 지급
			AddSwitchCount(cnum, 60, 1)
--			StartQuest(cnum, 13)
			return 1,0,"Jam tersebut dicuri belum lama dan seharusnya berada di monster di sekitar sini. Ambil ini. Yang terpenting di gurun adalah kekuatan fisik. Minumlah pil ini untuk memulihkan tenaga fisikmu."
		end
	

	elseif req == 23 then
		return 1,0,"Umm.. Sikap optimis merupakan jalan yang baik dalam menyelesaikan permasalahan… Hahaha."
		

	elseif req == 32 then
		if GetItemCount(cnum, 1194, 0) < 1 then
			return 1,0,"Apakah Predic mengirim seorang pembohong? Jika kamu ingin membuatku tertawa, leluconmu tidak lucu. Cukup bawakan aku jam tersebut."

		else 
			if CheckItemPocket(cnum, 1195, 1) < 0 then	
				return 1,0,"Inventory milikmu penuh. Kurasa kamu tidak memiliki tempat untuk menyimpan Spirit of the Tree."
			else
				AddItemCount(cnum, 1194, -1)				
				AddItemCount(cnum, 1195, 1)
				AddSwitchCount(cnum, 61, 1) --퀘스트 종료 확인 스위치값
				AddMoney(cnum, 30000)
				EndQuest(cnum, 13)
				return 1,0,"Kamu menemukannya? Luar biasa. Aku menitipkannya kepada Pumped, monster terkuat di sini. Predic telah mengirimkan orang yang tepat! Ambil ini. Kudoakan agar Tree of Propagation kembali pulih. Aku juga akan memberimu 30000GP. Maaf aku telah mengujimu. Ini adalah pohon suci, aku tidak dapat memberikannya kepada orang yang salah."
			end
		end
	end
end





	
		
