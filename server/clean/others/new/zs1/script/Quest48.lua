function NPC_QUEST_255(cnum, reqNumber)

	req = reqNumber

	if req == 1 then
		return 4,0,"My name is Shay. I am in charge of the Lunacy Dungeon's 5th floor. I think you look strong enough to go to 5th floor, but I need to test you, because sometimes some weaklings come here by using massive potions, without trying. The test is simple, bring me 5 of each different kind of enchanting items. If you come here by your own strength, it will not be hard for you at all.",2,"Daftar item Enchanting",3,"Berikan [item Enchanting].",4,"Pergi ke [Lunacy Dungeon 5th Floor]."


	elseif req == 2 then 
		return 1,0,"Item enchanting yang berbeda adalah Chisel of Archer, Chisel of Thief, Chisel of Valor, Chisel of Power, Chisel of Rapidity, Chisel of Accuray, Chisel of Fortune, Chisel of Life, Tear Star. Kamu dapat memperolehnya dibagian selatan Rudis."


	elseif req == 3 then
		if  GetSwitchCount(cnum, 53) > 0 then
			return 1,0,"Kamu telah lulus ujian, kamu tidak perlu mengulang ujian kembali."

		elseif        
      GetItemCount(cnum, 311, 0) < 5 or 
      GetItemCount(cnum, 312, 0) < 5 or GetItemCount(cnum, 313, 0) < 5 or 
			GetItemCount(cnum, 314, 0) < 5 or GetItemCount(cnum, 315, 0) < 5 or 
			GetItemCount(cnum, 316, 0) < 5 or GetItemCount(cnum, 317, 0) < 5 or 
			GetItemCount(cnum, 318, 0) < 5 or GetItemCount(cnum, 319, 0) < 5 then
			
			return 1,0,"Kamu sebaiknya bergegas mendapatkannya, kamu tentu tidak ingin disebut orang lemah bukan."

		else  

		        AddItemCount(cnum, 311, -5)
			AddItemCount(cnum, 312, -5)
			AddItemCount(cnum, 313, -5)
			AddItemCount(cnum, 314, -5)
			AddItemCount(cnum, 315, -5)
			AddItemCount(cnum, 316, -5)
			AddItemCount(cnum, 317, -5)
			AddItemCount(cnum, 318, -5)
			AddItemCount(cnum, 319, -5)

			AddSwitchCount(cnum, 53, 1)--스위치값 부여

			return 1,0,"Bagus sekali, mulai sekarang, cukup bicara padaku jika kamu ingin pergi ke lantai 5."
		end

		
	elseif req == 4 then
		if GetSwitchCount(cnum, 53) < 1 then
			return 1,0,"Kamu belum lulus ujian"
		else
			MoveZone(cnum, 95 ,102)--Move to 5th floor
		end
	end
end    
