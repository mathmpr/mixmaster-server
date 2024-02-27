function NPC_QUEST_201(cnum, reqNumber) --게릭

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 165) < 1 then
			if GetSwitchCount(cnum, 164) < 1 then
				return 3,0,"Hei, Hei...",2,"Siapa kamu??",3,"Hm.. Orang gila.."
	
			else
				return 4,0,"Apa kamu sudah mendapatkan Potion?",62,"Ya, Pak",63,"Terlalu sulit",64,"[Info Quest]"

			end

		else
			return 3,0,"Apa kamu mendapatkannya?",92,"Ya, Pak",93,"Menjelaskannya"

		
		end

 

	elseif req == 2 then
		return 2,0,"Aku adalah wizard istana yang telah pernah merasakan Dungeon of Valor. Ketamakan sesaat yang membuatku seperti ini..",12,"Mengapa kamu melakukan itu?"

	elseif req == 12 then
		return 2,0,"Aku memasuki Dungeon of Valor 10 tahun yang lalu. Dan aku menemukan sesuatu yang tidak terbayangkan.",22,"Apa yang kamu temukan?"

	elseif req == 22 then
		return 2,0,"Aku tidak dapat memberitahukanmu sekarang karena aku belum mempercayaimu..",32,"Apa yang dapat aku lakukan?"

	elseif req == 32 then
		return 2,0,"Dapatkah kamu membantuku? Aku berada dibawah kutukan. Untuk menghilangkannya, aku membutuhkan benda khusus dari desa. Apakah kamu mau membawakannya untukku? Aku akan memberikan hadiah jika kamu bersedia.",42,"Benda apa?"

	elseif req == 42 then
		return 2,0,"Benda tersebut adalah [Curse Purifying Potion]. Tampaknya tidak mudah mendapatkannya. Potion tersebut ada didalam desa. Aku telah seperti ini selama sepuluh tahun.",52,"Aku akan mengambilkannya."

	elseif req == 52 then
	  StartQuest(cnum, 169)
		AddSwitchCount(cnum, 164, 1)
		return 1,0,"Aku akan menunggumu."




	elseif req == 62 then
		if GetItemCount(cnum, 8019, 0) < 1 then
			return 1,0,"Apa kamu menipuku?"

		else
		  EndQuest(cnum, 169)
		  return 2,0,"Akhirnya aku terlepas dari kutukan ini. Terima kasih. Aku akan memberimu hadiah. Apa kamu dapat membaca huruf Rune? Mungkin kamu tidak dapat membaca buku ini. Hm.. aku akan menterjemahkannya untukmu. Bawalah barang-barangnya.",72,"Barang apa?"

		end


	elseif req == 63 then
		return 1,0,"Apakah kamu pikir mudah untuk mendapatkan Potion? Curse Purifying Potion sangat mahal karena hanya dapat dibuat di sanctuary."


	elseif req == 64 then
		return 1,0,"[Curse Purifying Potion]@ Dapat menyembuhkan kutukan tingkat tinggi dan Merchant di Magirita dan Mekrita menjualnya."





	elseif req == 72 then
		return 2,0,"Aku menemukan buku yang menunjukkan cara membuat [Mix Enchant] dalam Dungeon of Valor. Aku akan membuatkannya untukmu jika kamu ingin membawanya",82,"Aku akan mengambilkannya."



	elseif req == 82 then
		AddItemCount(cnum, 8019, -1)
		AddSwitchCount(cnum, 165, 1)
		StartQuest(cnum, 170)
		return 1,0,"Kini, aku akan mencoba Potion? Kek.... Seperti racun…aku akan disini, kamu dapat mampir kapanpun."



--계열 선택 부분
	elseif req == 92 then
		return 6,0,"Tentukan jenis yang ingin kamu buat",122,"Dragon Type Mix Potion",123,"Devil Type Mix Potion",124,"Beast Type Mix Potion",125,"Bird Type Mix Potion",126,"Berikutnya"



	elseif req == 126 then
		return 6,0,"Tentukan jenis yang ingin kamu buat",132,"Insect Type Mix Potion",133,"Plant Type Mix Potion",134,"Mystery Type Mix Potion",135,"Metal Type Mix Potion",92,"Sebelumnya" 





--아이템 선택 부분
	elseif req == 122 then -- 드래곤
		return 3,0,"Kamu dapat membuat Dragon's Scale dan Dragon's Jewerly. Pilih item. Taruh item pada kolom pertama, dan botol di kolom ketiga. Bendanya hanya satu buah.",142,"Dragon's Scale",143,"Dragon's Jewelry"
 

	elseif req == 123 then -- 악마
		return 3,0,"Kamu dapat membuat Wing of Bat dan Devil's Contract. Pilih item. Taruh item pada kolom pertama, dan botol di kolom ketiga. Bendanya hanya satu buah.",152,"Wing of Bat",153,"Devil's Contract"


	elseif req == 124 then -- 짐승
		return 3,0,"Kamu dapat membuat Sharp Tooth dan Symbol of Animal. Pilih item. Taruh item pada kolom pertama, dan botol di kolom ketiga. Bendanya hanya satu buah.",162,"Sharp of Tooth",163,"Symbol of Animal"


	elseif req == 125 then -- 새
		return 3,0,"Kamu dapat membuat Plumes of Wind dan Wind Crystal. Pilih item. Taruh item pada kolom pertama, dan botol di kolom ketiga. Bendanya hanya satu buah.",172,"Plumes of Wind",173,"Wind Crystal"


	elseif req == 132 then -- 곤충
		return 3,0,"Kamu dapat membuat Sweet Sap dan Shell of Rainbow Insect. Pilih item. Taruh item pada kolom pertama, dan botol di kolom ketiga. Bendanya hanya satu buah.",182,"Sweet Sap",183,"Shell of Rainbow Insect"


	elseif req == 133 then -- 식물
		return 3,0,"Kamu dapat membuat Twing of Life dan Leaf of Life. Pilih item. Taruh item pada kolom pertama, dan botol di kolom ketiga. Bendanya hanya satu buah.",192,"Twing of Life",193,"Leap of Life"


	elseif req == 134 then -- 미스테리		 
		return 3,0,"Kamu dapat membuat Mystic Wand dan Chaos Crystal. Pilih item. Taruh item pada kolom pertama, dan botol di kolom ketiga. Bendanya hanya satu buah.",202,"Mystic Wand",203,"Chaos Crystal"


	elseif req == 135 then -- 메탈
		return 3,0,"Kamu dapat membuat Red Metal dan Key of Machine Life. Pilih item. Taruh item pada kolom pertama, dan botol di kolom ketiga. Bendanya hanya satu buah.",212,"Red Metal",213,"Key of Machine Life"










	elseif req == 93 then
		return 2,0,"Pertama-tama, Setiap Enchant Item membutuhkan item karakteristik seperti [Dragon's Flame] dan [Magic Book of Darkness]. Kamu dapat mencampur item tersebut dan Small Glass Bottle untuk Enchant Pertama. Dan untuk Enchant Kedua, kamu membutuhkan Big Glass Bottle.",102,"Item karakteristik... Bagaimana aku mendapatkannya?"



	elseif req == 102 then
		return 3,0,"Kamu dapat memperoleh item karakteristik dari berburu monster dalam Dungeon in Valor. Dan dari menyelesaikan Quest.",112,"Beritahu aku mengenai barang yang aku butuhkan",113,"Beritahu aku tentang Quest"



	elseif req == 112 then
		return 1,0,""


	elseif req == 113 then
		return 1,0,"Aku tidak yakin sepenuhnya. Pergi temui [Carrez] di Mekrita. Dia akan menjelaskannya padamu."










	elseif req == 142 then
			if GetSwitchCount(cnum, 1035) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 250, 3, 1)
		
		end

	elseif req == 143 then
		if GetSwitchCount(cnum, 1036) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 251, 3, 1)
		end


	elseif req == 152 then
		if GetSwitchCount(cnum, 1037) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 252, 3, 1)

		end

	elseif req == 153 then
		if GetSwitchCount(cnum, 1038) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 253, 3, 1)

		end

	elseif req == 162 then
		if GetSwitchCount(cnum, 1039) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 254, 3, 1)

		end

	elseif req == 163 then
		if GetSwitchCount(cnum, 1040) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 255, 3, 1)

		end

	elseif req == 172 then
		if GetSwitchCount(cnum, 1041) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 256, 3, 1)

		end

	elseif req == 173 then
		if GetSwitchCount(cnum, 1042) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 257, 3, 1)

		end

	elseif req == 182 then
		if GetSwitchCount(cnum, 1043) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 258, 3, 1)

		end

	elseif req == 183 then
		if GetSwitchCount(cnum, 1044) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 259, 3, 1)

		end

	elseif req == 192 then
		if GetSwitchCount(cnum, 1045) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 260, 3, 1)

		end

	elseif req == 193 then
		if GetSwitchCount(cnum, 1046) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 261, 3, 1)
 
		end

	elseif req == 202 then
		if GetSwitchCount(cnum, 1047) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 262, 3, 1)

		end

	elseif req == 203 then
		if GetSwitchCount(cnum, 1048) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 263, 3, 1)

		end

	elseif req == 212 then
		if GetSwitchCount(cnum, 1049) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 264, 3, 1)

		end

	elseif req == 213 then
		if GetSwitchCount(cnum, 1050) > 0 then
			return 1,0,"Penukaran benda hanya tersedia sekali"

		else
			QuestItemCart(cnum, 265, 3, 1)

		end



	elseif req == 250 then
		result1 = ItemOrderMatch(cnum, 3, 4286 , 0, 8017)

		if result1 < 0 then
			return 1,0,"Cobalah kembali nanti!"

		elseif result1 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 320, 1)
			AddSwitchCount(cnum, 1035, 1)
			EndQuest(cnum, 170) 
			return 1,0,"Kamu berhasil membuat Dragon's Scale!"

		end




	elseif req == 251 then
		result2 = ItemOrderMatch(cnum, 3, 4286 , 0, 8018)

		if result2 < 0 then
			return 1,0,"Cobalah kembali nanti2"

		elseif result2 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 328, 1) 
			AddSwitchCount(cnum, 1036, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Dragon's Jewelry!"

		end



	elseif req == 252 then
		result3 = ItemOrderMatch(cnum, 3, 4287 , 0, 8017)

		if result3 < 0 then
			return 1,0,"Cobalah kembali nanti3"

		elseif result3 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 321, 1)
			AddSwitchCount(cnum, 1037, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Wing of Bat!"

		end



	elseif req == 253 then
		result4 = ItemOrderMatch(cnum, 3, 4287 , 0, 8018)

		if result4 < 0 then
			return 1,0,"Cobalah kembali nanti4"

		elseif result4 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 329, 1)
			AddSwitchCount(cnum, 1038, 1)
			EndQuest(cnum, 170)			
			return 1,0,"Kamu berhasil membuat Devil's Contract!"

		end



	elseif req == 254 then
		result5 = ItemOrderMatch(cnum, 3, 4288 , 0, 8017)

		if result5 < 0 then
			return 1,0,"Cobalah kembali nanti5"

		elseif result5 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 322, 1)
			AddSwitchCount(cnum, 1039, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Sharp Tooth!"

		end



	elseif req == 255 then
		result6 = ItemOrderMatch(cnum, 3, 4288 , 0, 8018)

		if result6 < 0 then
			return 1,0,"Cobalah kembali nanti6"

		elseif result6 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 330, 1)		
			AddSwitchCount(cnum, 1040, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Symbol of Animal!"

		end




	elseif req == 256 then
		result7 = ItemOrderMatch(cnum, 3, 4289 , 0, 8017)

		if result7 < 0 then
			return 1,0,"Cobalah kembali nanti7"

		elseif result7 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 323, 1)
			AddSwitchCount(cnum, 1041, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Plumes of Wind!"

		end



	elseif req == 257 then
		result8 = ItemOrderMatch(cnum, 3, 4289 , 0, 8018)

		if result8 < 0 then
			return 1,0,"Cobalah kembali nanti8"

		elseif result8 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 331, 1)		
			AddSwitchCount(cnum, 1042, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Wing Crystal!"

		end




	elseif req == 258 then
		result9 = ItemOrderMatch(cnum, 3, 4290 , 0, 8017)

		if result9 < 0 then
			return 1,0,"Cobalah kembali nanti9"

		elseif result9 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 324, 1)
			AddSwitchCount(cnum, 1043, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Sweet Sap!"

		end



	elseif req == 259 then
		result10 = ItemOrderMatch(cnum, 3, 4290 , 0, 8018)

		if result10 < 0 then
			return 1,0,"Cobalah kembali nanti10"

		elseif result10 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 332, 1)		
			AddSwitchCount(cnum, 1044, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Shell of Rainbow Insect!"

		end




	elseif req == 260 then
		result11 = ItemOrderMatch(cnum, 3, 4291 , 0, 8017)

		if result11 < 0 then
			return 1,0,"Cobalah kembali nanti11"

		elseif result11 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 325, 1)	
			AddSwitchCount(cnum, 1045, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Twing of Life!"

		end



	elseif req == 261 then
		result12 = ItemOrderMatch(cnum, 3, 4291 , 0, 8018)

		if result12 < 0 then
			return 1,0,"Cobalah kembali nanti12"

		elseif result12 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 333, 1)			
			AddSwitchCount(cnum, 1046, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Leaf of Life!"

		end



	elseif req == 262 then
		result13 = ItemOrderMatch(cnum, 3, 4292 , 0, 8017)

		if result13 < 0 then
			return 1,0,"Cobalah kembali nanti13"

		elseif result13 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 327, 1)
			AddSwitchCount(cnum, 1047, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Mystic Wand!"

		end



	elseif req == 263 then
		result14 = ItemOrderMatch(cnum, 3, 4292 , 0, 8018)

		if result14 < 0 then
			return 1,0,"Cobalah kembali nanti14"

		elseif result14 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 335, 1)
			AddSwitchCount(cnum, 1048, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Chaos Crystal!"

		end


	elseif req == 264 then
		result15 = ItemOrderMatch(cnum, 3, 4293 , 0, 8017)

		if result15 < 0 then
			return 1,0,"Cobalah kembali nanti15"

		elseif result15 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 326, 1)
			AddSwitchCount(cnum, 1049, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Red Metal!"

		end



	elseif req == 265 then
		result16 = ItemOrderMatch(cnum, 3, 4293 , 0, 8018)

		if result16 < 0 then
			return 1,0,"Cobalah kembali nanti16"

		elseif result16 == 0 then
			return 1,0,"Item tidak sesuai urutan atau bukan item yang diminta oleh NPC."

		else
			ClearCart(cnum)
			AddItemCount(cnum, 334, 1)		
			AddSwitchCount(cnum, 1050, 1)
			EndQuest(cnum, 170)
			return 1,0,"Kamu berhasil membuat Key of Machine Life!"

		end



	else
		return 0

	end
end		





