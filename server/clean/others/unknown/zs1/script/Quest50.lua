function NPC_QUEST_212(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 3,0,"Selamat datang, namaku adalah Lamia dan aku adalah penjaga gerbang dari Valor's Dungeon. Kamu memerlukan sebuah Tiket masuk Premium Zone untuk memasukinya. Apa kamu ingin masuk?",2,"Ya",3,"Tidak"


	elseif req == 2 then
		if GetItemCount(cnum, 68, 0) < 1 and GetItemCount(cnum, 69, 0) < 1 and GetItemCount(cnum, 95, 0) < 1 and GetItemCount(cnum, 96, 0) < 1 and GetItemCount(cnum, 940, 0) < 1 and GetItemCount(cnum, 1316, 0) < 1 and GetItemCount(cnum, 3711, 0) < 1 and GetItemCount(cnum, 8178, 0) < 1 and GetItemCount(cnum, 8226, 0) < 1 and GetItemCount(cnum, 8499, 0) < 1 then 
			return 1,0,"Aku tidak melihat Tiket masuk Premium Zone. Kembalilah jika kamu telah memilikinya."


		else
			return 2,0,"Tiket Masuk Premium Zone telah diterima. Apa kamu ingin masuk sekarang?",12,"Masuk",13,"Nanti"


		end


	elseif req == 12 then
		if GetItemCount(cnum, 68, 0) < 1 and GetItemCount(cnum, 69, 0) < 1 and GetItemCount(cnum, 95, 0) < 1 and GetItemCount(cnum, 96, 0) < 1 and GetItemCount(cnum, 940, 0) < 1 and GetItemCount(cnum, 1316, 0) < 1 and GetItemCount(cnum, 3711, 0) < 1 and GetItemCount(cnum, 8178, 0) < 1 and GetItemCount(cnum, 8226, 0) < 1 and GetItemCount(cnum, 8499, 0) < 1 then 
			return 1,0,"Aku tidak melihat Tiket masuk Premium Zone. Kembalilah jika kamu telah memilikinya."


		else
			MoveZone(cnum, 96, 254)
		
		end


	else
		return 0

	end
end


function NPC_QUEST_214(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Apa kamu menemukan yang kamu cari? Jika kamu ingin pergi, beritahu aku.",2,"Meninggalkan Valor's Dungeon",3,"Tinggal lebih lama lagi"


	elseif req == 2	then
		MoveZone(cnum, 35, 254)


	else
		return 0

	end
end