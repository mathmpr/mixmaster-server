function NPC_QUEST_206(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 301) < 1 then
			return 2,0,"Hei, kamu tampak seperti turis atau pengelana. Maukah kamu membantuku?",2,"Apa yang dapat aku lakukan?"

		else
			return 1,0,"Hari ini sangat panas. Berada dirumah merupakan yang perlu dilakukan dalam cuaca seperti ini."

		end


	elseif req == 2 then
		return 2,0,"Aku harusnya mengantar sesuatu ke Herseba, namun aku bentrok dengan jadwal lain. Maka... Dapatkah kamu mengantarkannya untukku?",12,"Tentu."


	elseif req == 12 then
		AddItemCount(cnum, 4423, 1)
		AddSwitchCount(cnum, 301, 1)
		StartQuest(cnum, 145)
		return 1,0,"Terima kasih banyak. Antarkan ini ke Fruit Merchant di Herseba. Itu saja. Dia akan membayarmu. Semoga selamat sampai tujuan."
	
	else
		return 1,0,"error"

	end
end




function NPC_QUEST_205(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 332) < 1 then		
			if GetSwitchCount(cnum, 301) < 1 then
				return 1,0,"Ah... Kapan buah yang kupesan tiba?"

			else
				return 2,0,"Ah... Kapan buah yang kupesan tiba? Hm..Siapa kamu?",2,"Aku membawakanmu kotak buah."

			end
		else
			return 1,0,"Nah, sekarang aku akan bersiap dengan bisnis buahku."

		end


	elseif req == 2 then
		if GetItemCount(cnum, 4423, 0) < 1 then
			return 2,0,"Aku tidak melihat buah? Apa aku yang menjadi gila dengan cuaca ini?"

		else
			AddSwitchCount(cnum, 332, 1)
			AddItemCount(cnum, 4423, -1)
			AddHeroExp(cnum, 8000)
			EndQuest(cnum, 145)
			return 1,0,"Oh. Dia dapat mencari alasan untuk tidak mengantarkannya sendiri. Tidak masalah. Cukup puas karena aku menerima buahnya. Terima kasih."

		end

	
	else
		return 1,0,"error"

	end
end





function NPC_QUEST_219(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 343) < 1 then		
			if GetSwitchCount(cnum, 302) < 1 then
				if GetHeroLv(cnum) < 15 then
					return 2,0,"Ini masalah besar. Bagaimana aku melakukannya?"	

		
				else
					return 2,0,"Oh~Kamu tampaknya memiliki kemampuan. Dapatkah kamu membantuku?",2,"Apa yang dapat aku lakukan?"
	
				end
			else
				return 2,0,"Apa kamu mendapatkan Leaf of Cracuss? Anakku sekarat.",32,"Ini, Aku mengerti."

			end
		else
			return 1,0,"Anakku tampaknya mulai pulih berkat dirimu. Aku lebih baik bersabar daripada memarahinya karena kesehatannya adalah yang utama."

		end

	elseif req == 2 then
		return 2,0,"Dia pergi keluar desa untuk bermain dengan temannya beberapa hari yang lalu. Lalu malamnya dia demam..tampaknya mereka ke wilayah lembab yang sedikit jauh dari desa. Disana terdapat serangga beracun dan tanaman misterius, sudah kularang untuk pergi kesana...",12,"Astaga!"



	elseif req == 12 then
		return 2,0,"Kita membutuhkan ramuan penyembuh untuk menurunkan demamnya. Kita tidak tahu penyebabnya, namun kita dapat menurunkan demamnya dengan Cracuss Fruit. Masalahnya Cracuss tumbuh di daerah lembab itu juga. Dapatkah kamu mengambilkannya untukku?",22,"Percayalah padaku."



	elseif req == 22 then
		AddSwitchCount(cnum, 302, 1)
		StartQuest(cnum, 146)
		return 1,0,"Oh~maukah kamu pergi menggantikanku? Terima kasih. Aku akan memberikan hadiah bagus jika kamu berhasil."
	



	

	elseif req == 32 then
		if GetItemCount(cnum, 4426, 0) < 1 then
			return 1,0,"Hm..Ini bukan Cracuss Fruit. Meski sulit untuk menemukannya, tolong cepatlah."

		else
			AddItemCount(cnum, 4426, -1)
			AddHeroExp(cnum, 8000)		
			AddSwitchCount(cnum, 343, 1)	
			EndQuest(cnum, 145)
			return 1,0,"Oh~Ini adalah Cracuss Fruit. Terima kasih. Berkat dirimu, anakku akan baik-baik saja."

		end

	else
		return 1,0,"error"

	end
end
						

function NPC_QUEST_304(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Kami menemukan Cracuss Tree aneh. Tampaknya belum tersentuh manusia karena tidak terdapat bekas luka atau memar. Ada banyak buah. Bagaimana aku melakukannya?",2,"Petik buahnya."


	elseif req == 2 then
		random = SetRandom(cnum, 1, 1000)

		if random < 501 then
			AddItemCount(cnum, 4424, 1)
			return 1,0,"Aku mendapatkan Cracuss Fruit belum matang. Tidak dapat dimakan atau digunakan sebagai obat."

		elseif random >= 501 and random < 901 then
			AddItemCount(cnum, 4425, 1)
			return 1,0,"Aku mendapatkan Cracuss Fruit matang. Mungkin lezat. Namun, tidak dapat digunakan sebagai obat."

		else
			AddItemCount(cnum, 4426, 1)
			return 1,0,"Aku mendapatkan Cracuss Fruit berusia sepuluh tahun. Sangat lezat dan dapat menyembuhkan segala."
		end
	else
		return 1,0,"error"

	end
end
