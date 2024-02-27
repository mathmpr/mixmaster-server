function NPC_QUEST_251(cnum,reqNumber) -- 번식의 나무

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 61) < 1 then
			if GetSwitchCount(cnum, 1001) < 1 then 
				return 2,0,"Tolong aku... Siapapun tolong aku?",2,"Aku bisa menolongmu."
			else
				if GetSwitchCount(cnum, 9) < 1 then
					return 2,0,"Apa kamu membawa Leaf of Life?",32,"Ya.",33,"Info mengenai Leaf of Life."
				else
					AddSwitchCount(cnum,10,1) --Switch#10
					return 1,0,"Oh, seramnya kejahatan. Aku dapat merasakan datangnya kejahatan. Pergi temui Anez, sang peramal di Magirita (X:100,Y:100)"
				end
				
			end
		else
			return 3,0,"Cara untuk pemulihan. . .  Yang aku butuhkan?",12,"Ya, aku menemukan beberapa cara.",13,"Aku butuh lebih banyak waktu."
		end


	elseif req == 2 then
		if GetSwitchCount(cnum, 8) < 1 then
			return 1,0,". . ."
		
		else
			return 2,0,"Bertahun-tahun lamanya tidak pernah berbicara dengan manusia. Aku bukanlah pohon biasa. Hidup lebih dari 1000 tahun. Monster menyerangku agar dapat memperoleh kekuatanku. Kini aku lemah. Bawakan padaku 'Leaf of Life'. Agar aku dapat memperoleh kekuatanku lagi.",101,"Di mana aku dapat menemukannya?"
		end


	elseif req == 101 then
		StartQuest(cnum, 2)
		AddItemCount(cnum,354,-1)--구슬 뺏기
		AddItemCount(cnum,355,-1)
		AddItemCount(cnum,356,-1)
		AddSwitchCount(cnum, 1001, 1)
		return 1,0,"Dibagian selatan dataran Mekrita terdapat Leaf of Recovery. Kalahkan DooDoo agar mendapatkannya. Bawakan kembali padaku. Akan membantu kesehatanku. Tidak berguna untukmu."
		


	elseif req == 32 then
		if GetItemCount(cnum,357,0) == 0 then
			return 1,0,"Leaf of Life, aku membutuhkannya. DooDoo memilikinya."
		
		else
			AddMoney(cnum,3000) -- 3000GP 추가
			AddSwitchCount(cnum,9,1) -- Switch#9 회복의 잎사귀
			AddItemCount(cnum,357,-1)
			EndQuest(cnum, 2)
			return 1,0,"Aku akan menghargainya. Akan kuberikan 3000GP untukmu. Namun aku masih khawatir. Pergi temui Anez, sang peramal di Magirita (X:100,Y:100)"
		end



	elseif req == 33 then
		return 1,0,"Dibagian selatan dataran Mekrita terdapat Leaf of Life. Kalahkan DooDoo agar mendapatkannya. Bawakan kembali padaku. Akan membantu kesehatanku. Tidak berguna untukmu."



	elseif req == 12 then
		if GetItemCount(cnum, 1195, 0) < 1 then
			return 1,0,"Aku tidak dapat melihat jiwa pohon"
		else
			return 2,0,"Oh. Ingatanku . . .",22,"Gunakan kristal dan pohon"
		end


	elseif req == 13 then
		return 1,0,"Waktu.. Waspada. Para monster semakin kuat…"


	elseif req == 22 then
		AddItemCount(cnum, 378, -1)
		AddItemCount(cnum, 364, -1)
		AddItemCount(cnum, 370, -1)
		AddItemCount(cnum, 374, -1)
		AddItemCount(cnum, 379, -1)
		AddItemCount(cnum, 375, -1)		
		AddSwitchCount(cnum, 84, 1)
		return 1,0,"Terima kasih hero muda. Kamu telah mengembalikan ingatan dan kekuatanku, namun monster masih terlalu kuat. Jika kamu menemui Andeli di Twin Valley (X: 102 Y:142), dia akan memberitahukanmu dimana tempat yang mengendalikan monster. Aku akan memberikan Spirit of the Tree kepadamu. Dapat memperoleh kepercayaan dari Andeli. Simpanlah baik-baik"
	end

	return 0
 end