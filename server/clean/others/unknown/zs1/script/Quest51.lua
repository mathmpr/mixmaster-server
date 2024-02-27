function NPC_QUEST_301(cnum, reqNumber)

req = reqNumber

item1 = GetItemCount(cnum, 4294, 0)
item2 = GetItemCount(cnum, 4295, 0)
item3 = GetItemCount(cnum, 4296, 0)
item4 = GetItemCount(cnum, 4297, 0)
item5 = GetItemCount(cnum, 4298, 0)
item6 = GetItemCount(cnum, 4299, 0)
item7 = GetItemCount(cnum, 4300, 0)
item8 = GetItemCount(cnum, 4301, 0)
item9 = GetItemCount(cnum, 4302, 0)


	if req == 1 then
		if GetSwitchCount(cnum,158) < 1 then
			return 3,0,"Ini adalah pintu masuk Valor's dungeon lantai 4. Kamu tidak dapat masuk kecuali telah menyelesaikan Quest untukku. Aku ingin kamu menemukan 9 halaman dari dokumen kuno. Hanya aku yang dapat menterjemahkannya. Setelah aku selesai, aku akan mengijinkanmu masuk ke lantai 4.",2,"Bagaimana aku menemukan halaman ini?",3,"Berikan halaman pada Kai untuk diterjemahkan."

		else
			return 3,0,"Ah maaf, aku sibuk membaca dokumen ini. Bicaralah padaku jika kamu ingin pergi ke lantai 4?",22,"Ok, aku telah siap",23,"Mungkin nanti, aku masih takut"

		end


	elseif req == 2 then
	  StartQuest(cnum, 175)
		return 1,0,"Monster di lantai 3 telah mengambil halaman dari dokumen kuno. Pergi dan dapatkanlah kembali seluruh 9 halamannya untukku."


	elseif req == 3 then
		if item1 < 1 or item2 < 1 or item3 < 1 or item4 < 1 or item5 < 1 or item6 < 1 or item7 < 1 or item8 < 1 or item9 < 1 then
			return 1,0,"Kamu masih kehilangan beberapa halaman, aku membutuhkan seluruh 9 halaman untuk menterjemahkan dan mengetahui arti dokumen tersebut. Tolong temukan untukku."

		else

			AddItemCount(cnum, 4294, -1)
			AddItemCount(cnum, 4295, -1)
			AddItemCount(cnum, 4296, -1)
			AddItemCount(cnum, 4297, -1)
			AddItemCount(cnum, 4298, -1)
			AddItemCount(cnum, 4299, -1)
			AddItemCount(cnum, 4300, -1)
			AddItemCount(cnum, 4301, -1)
			AddItemCount(cnum, 4302, -1)
			AddSwitchCount(cnum, 158, 1)
			EndQuest(cnum, 175)
			return 3,0,"Ah dokumen ini menarik, aku perlu waktu lagi untuk memeriksanya. Seperti yang kujanjikan, aku akan mengijinkanmu masuk ke lantai 4. Namun hati-hati, aku dengar monster disana sangat kuat. Beritahu aku jika kamu ingin pergi ke lantai 4",12,"Aku siap, ayo pergi!",13,"Mungkin nanti, aku masih takut"

		end


	elseif req == 12 then
		MoveZone(cnum, 99, 254)


	elseif req == 13 then
		return 1,0,"Kamu telah sejauh ini dan kamu merasa takut? Wow, aku bingung harus berkata apa. Apa kamu ingin dibantu ibumu?"


	elseif req == 22 then
		MoveZone(cnum, 99, 254)


	elseif req == 23 then
		return 1,0,"Masih takut? Ayolah, kamu harus lebih berani. Oh baiklah, aku akan tetap disini menunggumu hingga memiliki cukup keberaninan."



	else
		return 0

	end

end