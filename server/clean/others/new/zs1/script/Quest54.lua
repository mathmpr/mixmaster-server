function NPC_QUEST_300(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Halo. Tempat ini sangat berbahaya, apa kamu yakin ingin pergi kesana?",2,"Ya, aku mau"

	elseif req == 2 then
		if GetItemCount(cnum, 68, 0) < 1 and GetItemCount(cnum, 69, 0) < 1 and GetItemCount(cnum, 95, 0) < 1 and GetItemCount(cnum, 96, 0) < 1 and GetItemCount(cnum, 940, 0) < 1 and GetItemCount(cnum, 1316, 0) < 1 and GetItemCount(cnum, 3711, 0) < 1 and GetItemCount(cnum, 8178, 0) < 1 and GetItemCount(cnum, 8226, 0) < 1 and GetItemCount(cnum, 4363, 0) < 1  and GetItemCount(cnum, 8499, 0) < 1 then
			return 2,0,"Untuk pergi kesana, kamu membutuhkan Tiket masuk Premium Zone atau Sign of Friendship.",12,"Sign of Friendship?"


		else
		EndQuest(cnum, 165)
		EndQuest(cnum, 167)
			return 2,0,"Tempat yang berbahaya, hati-hatilah.",22,"Berangkat sekarang"


		end

	elseif req == 12 then
		return 2,0,"Kamu dapat memperoleh Evidence of Promise dari Wolf di Purmai.",32,"Bagaimana aku mendapatkannya?"



	elseif req == 22 then
		MoveZone(cnum, 116, 254)


	elseif req == 32 then
	  StartQuest(cnum, 165)
		return 1,0,"Kamu dapat bertanya kepada Wolf, dia akan memberitahumu"


	else
		return 0

	end
end


function NPC_QUEST_271(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 215 ) < 1 then
			return 2,0,"Huh? Apa yang kamu inginkan? Aku sibuk saat ini, tidak ada waktu bermain dengan anak sepertimu, menyingkirlah dari hadapanku",2,"Apa kamu tahu mengenai Evidence of Promise?"
    elseif GetSwitchCount(cnum, 215 ) == 2 then
			return 2,0,"Apa kamu kesini untuk mendapatkan Evidence of Promise lagi?",3,"Ya"
		else
			return 4,0,"Apa kamu telah menemukan seluruh bagiannya?",32,"Ya, ini dia.",33,"Belum",34,"Informasi Quest"
		end


	elseif req == 2 then
		return 2,0,"Bagaimana kamu tahu? Evidence of Promise merupakan hadiah dari temanku Karnick. Aku tidak dapat memberikannya padamu, namun jika kamu benar membutuhkannya, kamu harus menolongku",12,"Apa itu?"

  elseif req == 3 then
		if GetItemCount(cnum, 4363, 0) < 1 then
			return 2,0,"Aku akan memberikan Evidence of Promise kepadamu jika kamu mengumpulkan 10 mystic pieces dan 20 unknown pieces. Bagaimana? Apa kamu mau mencoba?",22,"Tentu."
		else
			return 1,0,"Aku tahu kamu tidak memiliki Evidence of Promise? Aku menunggu!"
		end


	elseif req == 12 then
		return 2,0,"Lawanlah monster di White seashore, Iskai Forest dan Ruins of Silence. Bawakan aku barang yang mereka jatuhkan. Namanya adalah Mystic piece, Mystery Piece. Bawakan aku 10 Mystic piece dan 20 Mystery piece",22,"Ok, akan kulakukan."


	elseif req == 22 then
		EndQuest(cnum, 167)
		SetSwitchCount(cnum, 215, 1)
		StartQuest(cnum, 166)	



	elseif req == 32 then
		if GetItemCount(cnum, 4361, 0) < 10 and GetItemCount(cnum, 4362, 0) < 20 then
			return 1,0,"Kamu belum menemukan semuanya, kamu seharusnya bisa."


		else		
			EndQuest(cnum, 166)
			StartQuest(cnum, 167)
			SetSwitchCount(cnum, 215, 2)
			AddItemCount(cnum, 4361, -10)
			AddItemCount(cnum, 4362, -20)
			AddItemCount(cnum, 4363, 1)	
			return 1,0,"Hmmm, kamu telah menemukan semuanya. OK, ini untukmu Evidence of Promise. Hanya akan bertahan selama satu hari setelah itu menghilang. Kembalilah jika kamu membutuhkannya lagi"

		end

	elseif req == 34 then
		return 1,0,"Kamu dapat memperoleh Mystic pieces dan Mystery pieces dengan berburu monster di White seashore, Iskai Forest dan Ruins of Silence. Kamu harus temukan 10 Mystic Pieces dan 20 Mystery Pieces."



	else
		return 0

	end
end
