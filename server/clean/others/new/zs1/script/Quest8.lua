 function NPC_QUEST_202(cnum,reqNumber) --NPC 고든(바람의 던전 안내자) - 베헤르세바 남부지역
	local req, id1, count1

	id1 = 368 --바람의 신발	
	
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1007) < 1 then
			return 2,0,"Oh kamu memiliki Chaos Cube dan the Gloves of Elf. Kamu pasti kesini untuk alasan tertentu. Dengan menggunakan Chaos Cube bersama Ring of Rain, kamu dapat memulihkan apapun yang telah hilang dimasa lalu. Namun tentu kamu harus sangat kuat karena harus memasuki Dungeon of Wind",3,"Beritahu aku mengenai Dungeon."
		else
			return 2,0,"Apa kamu membawa shoes of the Wind?",4,"Ya, aku membawanya."
		end
		



	elseif req == 3 then

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"Pertama, kamu memerlukan Chaos Cube. Dengan begitu kamu layak masuk ke Dungeon of Wind."
		end

		return 2,0,"Kamu harus memiliki tubuh kuat untuk masuk kedalam batasan Dungoen of the Wind. Jika tidak cukup kuat, angin dalam Dungeon akan menghempaskanmu ke tempat tidak jelas.",101,"Aku yakin untuk masuk."



	elseif req == 101 then
		StartQuest(cnum, 8)
		AddSwitchCount(cnum, 1007, 1) 
		return 1,0,"Hmm, maafkan aku MixMaster muda, aku rasa levelmu tidak cukup tinggi untuk menahan angin dalam Dungeon. NAMUN, Shoes of the Wind mungkin dapat membantumu. Kamu dapat memperolehnya dengan melawan big licker disekitar sini."




	elseif req == 4 then

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"*** Sebelum kamu lanjutkan dengan World Quest, kamu harus bicara dengan Harley di Rollingcores (X:153.Y:100)"
		end

		if GetItemCount(cnum,368,0) == 0 then --바람의 신발(368)
			return 1,0,"Tidak, itu tidak benar. Kamu harus menemukan sepatu dari big licker."
		end
		
		EndQuest(cnum, 8)
		return 2,0,"Bagus. Namun aku harus memperingatimu, meski kamu memakai Shoes of Wind, kamu tidak dapat berada didalam dungeon untuk waktu lama. Kemungkinan kamu akan terhempas keluar. Aku akan masuk bersamamu. Apa kamu siap untuk masuk?",5,"Ya"

	elseif req == 5 then

		count1 = GetItemCount(cnum,id1,0)

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"Harly mengetahui tentang Chaos Cube. Coba kamu temukan Harly."
		end

		if GetItemCount(cnum,368,0) == 0 then --바람의 신발
			return 1,0,"Kamu membutuhkan Shoes of the Wind agar dapat memasuki dungeon."
		end
	
		AddItemCount(cnum,id1,-count1)  --바람의 신발
		SetReturnTimer(cnum,180,66) 
		MoveZone(cnum,247,101) --바람의 던전 247
		end
		
	return 0
end


 function NPC_QUEST_203(cnum,reqNumber) --NPC 고든(바람의 던전안)
	local req,id1,id2, id3,count1,count2,count3

	id1 = 338 --바람의 신발
	id2 = 369 --비의 반지
	id3 = 366 --카오스 큐브

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1008) < 1 then
			return 2,0,"Mendapatkan Ring of the Rain sangat sulit. Meski kamu memiliki shoes of the Wind, namun daya tahan sepatu hanya selama beberapa menit. Angin kuat dalam dungeon akan menghempaskanmu ke Magirita. Mohon agar mendapatkan Ring of the Rain sebelum waktunya berakhir.",12,"Bagaimana aku menemukannya?"
		else
			if GetSwitchCount(cnum, 17) < 1 then
				return 2,0,"Apa kamu menemukan cincinnya?",2,"Ya"
			else
				return 2,0,"Akhirnya kamu dapat keluar dari dungeon of the Wind. Apa kamu ingin pergi sekarang?",14,"Ya"
			end
		end			

	elseif req == 12 then
		return 2,0,"Salah satu monster disini pasti memilikinya. Kalahkan mereka dan dapatkan benda tersebut!",13,"Ayo kita mulai!"

	elseif req == 13 then
		StartQuest(cnum, 9)
		AddSwitchCount(cnum, 1008, 1)
		return 1,0,"Ingat, waktu adalah penentu!"
		
	elseif req == 14 then
		MoveZone(cnum, 66, 254)

		
	elseif req == 2 then

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"Apa kamu telah temui Harly di daerah Rollingcores?"
		end

		if GetItemCount(cnum,369, 0) == 0 then -- 비의 반지(369)
			return 1,0,"Jika kamu menangkap monster dalam dungeon ini, kamu mungkin menemukan Ring of the Rain. Lalu bawalah padaku, aku akan menunjukkan cara menggunakannya."
		end

		return 2,0,"Oh! Kamu telah memperoleh Ring of the Rain. Ring of the Rain dan Chaos Cube dapat membuat foto yang Shira hilangkan. Ayo kita gabungkan Ring of the Rain dan Chaos Cube.",3,"Mix"

	elseif req == 3 then

		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		count3 = GetItemCount(cnum,id3,0)

		if GetSwitchCount(cnum,17) > 0 then
			return 1,0,"Kamu dapat memperoleh foto keluarga Shira hanya sekali."
		end

		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"Apa kamu telah temui Harly di daerah Rollingcores?"
		end

		if GetItemCount(cnum,366,0) == 0 then --카오스 큐브(366)
			return 1,0,"Kamu dapat membuat foto keluarga Shira jika kamu memiliki Chaos Cube."
		end

		if GetItemCount(cnum,369,0) == 0 then --비의 반지(369)
			return 1,0,"Kamu dapat membuat foto keluarga Shira jika kamu memiliki Ring of the Rain."
		end
		
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Tasmu sepertinya penuh. Kamu harus merapihkannya!"
		end

		AddItemCount(cnum,id1,-count1) -- 바람의 신발
		AddItemCount(cnum,id2,-count2) --비의 반지(369)
		AddItemCount(cnum,id3,-count3) --카오스 큐브(366) 
		AddItemCount(cnum,371,1) --쉬라의 가족사진(371)
		AddSwitchCount(cnum,17,1)
		EndQuest(cnum, 9)
		return 1,0,"Ini untukmu! Ini adalah foto keluarga Shira. Tunjukkanlah kepada Shira di VeHerseba. Dia akan sangat senang dan sedih secara bersamaan."

	end
	return 0
end


 

		
