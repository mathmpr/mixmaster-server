 function NPC_QUEST_298(cnum,reqNumber) -- ´øÀü 7Ãş NPC
	local req = reqNumber

	if req == 1 then
		
		if GetHeroLv(cnum,1) < 80 then
			return 1,0,"MixMasters dengan level dibawah 80 tidak berhak pergi ke Dungeon dilantai 8."
		end

		if GetItemCount(cnum,939,0) == 0 then
			return 1,0,"Tiket masuk kedalam dungeon dibutuhkan untuk pergi ke Dungeon dilantai 8."
		end

		return 2,0,"Baiklah, aku rasa kamu layak. Terima kasih tiketnya.",2,"Pergi ke Dungeon lantai 8."

	elseif req == 2 then

		AddItemCount(cnum,939,-1) -- ´øÀü 8Ãş ÀÔÀå±Ç
		SetReturnTimer(cnum,3600,87)
		MoveZone(cnum,244,253)
		end
	return 0
end


 function NPC_QUEST_299(cnum,reqNumber) --´øÀü 8Ãş NPC
	local req = reqNumber

	if req == 1 then

		return 2,0,"Apakah kamu telah selesai MixMaster muda? Apa kamu ingin kembali ke VeHerseba?",2,"Pergi ke kota VeHerseba."

	elseif req == 2 then

		MoveZone(cnum,60,253)

		end
	return 0

end
