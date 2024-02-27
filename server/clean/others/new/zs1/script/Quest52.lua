function NPC_QUEST_313(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 182) < 1 then
			return 2,0,"Hei kamu, apa kamu memiliki Hench. Apa kamu seorang valor? Kami datang dari Artreia untuk menemukan valor hebat. Apa kamu ingin mendengar kisahku?",2,"Ya, tentu saja"

		else
			if GetSwitchCount(cnum, 183) < 1 then
				if GetItemCount(cnum, 8027, 0) < 5 or GetItemCount(cnum, 8028, 0) < 5 then
					return 1,0,"Kamu belum selesai? Jika kamu tidak menemukannya, kita tidak dapat memperbaiki kapal, kita tidak dapat kembali ke Artreia."
			
				else
					AddItemCount(cnum, 8027, -5)
					AddItemCount(cnum, 8028, -5)
					AddSwitchCount(cnum, 183, 1)
					EndQuest(cnum, 164)
					return 1,0,"Oh. Kamu menemukannya. Aku tidak menyangka. Terima kasih banyak. Aku dapat memperbaiki kapal ini. Aku sebaiknya segera bekerja, sampai nanti"
				end

			else
				return 3,0,"Atas bantuanmu, kapal ini telah diperbaiki dan siap untuk berangkat. Apa sudah bisa berangkat ke Artreia? Jika kamu membutuhkan waktu untuk bersiap, datanglah kembali nanti",32,"Ayo kita pergi sekarang",33,"Aku perlu bersiap, aku akan kembali"

			end

		end


	elseif req == 2 then
		return 2,0,"Dapatkah kamu menolong kami? Beberapa hari lalu, monster datang ke kota Pumai dan kami berada dalam bahaya. Kami pergi menyeberangi lautan untuk meminta bantuanmu. Jika kamu dapat membantu, kami akan memberi hadiah potion dan equipment. Tolong bantu kami",12,"OK, aku akan membantumu."



	elseif req == 12 then
		return 2,0,"Terima kasih kamu akan membantu kami. Kami mengalami masalah, kapal kami rusak dan kami tidak dapat kembali ke kota kami. Bahan untuk memperbaiki kapal telah dicuri monster. Dapatkah kamu mengambilnya kembali? Kami membutuhkan 5 Wooden panels dan 5 Big Nails",22,"OK, aku akan mengambilnya",23,"Terlalu sulit untukku"




	elseif req == 22 then
  	StartQuest(cnum, 164)
		AddSwitchCount(cnum, 182, 1)
		return 1,0,"Semoga berhasil"



	elseif req == 23 then
		return 1,0,"Apakah itu yang terbaik kamu lakukan? Jika benar, maka kamu tidak dapat menyelamatkan kota kami, aku harus mencari orang lain untuk membantu kami."




	elseif req == 32 then
		return 2,0,"OK. Aku akan membawamu ke Purmai sebentar lagi, mohon menunggu.",42,"[Pergi ke Purmai]"


	elseif req == 33 then
		return 1,0,"Baiklah, bicaralah padaku jika kamu telah siap"


	elseif req == 42 then
		MoveZone(cnum, 111, 254)


	else
		return 0

	end
end			








