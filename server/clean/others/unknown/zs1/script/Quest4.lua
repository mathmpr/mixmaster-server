function NPC_QUEST_266(cnum,reqNumber) -- 천상의 소리(루디스 남부의 애냐)

local req = reqNumber



	if req == 1 then
		if GetSwitchCount(cnum ,1003) < 1 then
			return 2,0,"Aku dapat memainkan suara indah dari surga dengan menyisir rambutku menggunakan Golden Brush ini. Keajaiban. Tidak ada yang dapat menahan emosinya saat mendengarkan suara ini.",2,"Golden Brush?"
		else
			if GetSwitchCount(cnum, 12) < 1 then
				return 2,0,"Apa kamu bawa sebuah harmonica?",13,"Ya"
			else
				return 1,0,"Mohon pergi ke pintu masuk Herseba dan temui Holden (X:195, Y:76). Holden akan memberitahumu bagaimana memakai Golden untuk menghilangkan ingatan. Dia yang memberitahuku tentang kabar tersebut."				
			end
 		end

	elseif req == 2 then
		return 2,0,"Oh Anez sang peramal yang menyuruhmu ke sini? Aku dengar kabar bahwa Golden Comb milikku dapat menghapus ingatan. Aku tidak mempercayainya. Golden Comb, sangat penting untukku. Aku membutuhkannya untuk menciptakan musik. Itu adalah hidupku! Namun aku tahu ini akan menolong dunia. Tolong bawakan aku sebuah Harmonica. Aku dengar suara Harmonica juga sangat mengagumkan",12,"Aku akan membawakannya untukmu."


	elseif req == 12 then
		StartQuest(cnum, 4)
		AddSwitchCount(cnum, 1003, 1)
		return 1,0,"Aku dengar suara dari Kurma's Harmonica adalah yang terbaik. Terletak di pinggir laut bagian barat Magirita."

	elseif req == 13 then

		if GetSwitchCount(cnum,11) == 0 then
			return 1,0,"*** Sebelum kamu melanjutkan dengan World Quest, kamu harus bicara dengan Anez di Magirita (X:100.Y:100)"
		end

		if GetSwitchCount(cnum,12) > 1 then
			return 1,0,"Kamu telah menunjukkanku Harmonica"
		end

		if CheckItemPocket(cnum,361,1) < 0 then
			return 1,0,"Harap sediakan ruang dalam Inventory"
		end
		

		if GetItemCount(cnum,362,0) < 1 then
			return 1,0,"Tidak, aku tidak dapat memberikanmu Golden Comb. Itu adalah hidupku. Mohon agar membawa alat penggantinya."
		end

		AddItemCount(cnum,362,-1) -- 하모니카 삭제	
		AddItemCount(cnum,361, 1) -- 금 빗 획득
		AddSwitchCount(cnum,12,1) -- Switch#10 금 빗
		AddMoney(cnum, 3000) -- 3000GP 추가
		EndQuest(cnum, 4)
		return 1,0,"Wow apakah ini sebuah Harmonica? Sejujurnya aku tidak pernah melihat sebelumnya. Wow dapat menghasilkan suara indah. Aku akan memberimu Golden Brush milikku dan ini hadiah 3000GP. Cobalah pergi dan bicara kepada Holden di pintu masuk Herseba tentang cara penggunaan sisirnya."

	end	
	return 0
 end
