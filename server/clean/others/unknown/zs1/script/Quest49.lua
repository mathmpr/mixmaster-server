function NPC_QUEST_208(cnum,reqNumber) -- 리인커네 던전 이동 NPC- 데이브

req = reqNumber


	if req == 1 then
		return 3,0,"Halo! Aku penjaga pintu dari Reincurne dungeon bernama Dave. Reincurne dungeon merupakan tempat yang sangat berbahaya. Terserah kamu ingin pergi atau tidak. Apa kamu tetap ingin pergi?",2,"Ya",3,"Tidak"


	elseif req == 2 then
		return 2,0,"Kamu sungguh berani",12,"Mulai!",13,"lain waktu"


	elseif req == 12 then
		MoveZone(cnum, 150, 101)
		return 0


	elseif req == 13 then
		return 1,0,"Kamu telah mengambil keputusan bijak. Reincurne Dungeon sangat berbahaya bahkan Warrior terhebat pun tidak dapat bertahan didalamnya. Monster didalamnya terlalu sangat kuat."

	else
		return 0
	end
end



function NPC_QUEST_209(cnum,reqNumber) -- 리인커네 던전 이동 NPC- 데이브

req = reqNumber


	if req == 1 then
		return 2,0,"Aku lihat gerakanmu tadi, aku terkesan. Kamu memiliki potensi tinggi. Apa kamu ingin kembali ke kota untuk memulihkan?",2,"Pergi ke VeHerseba."

	elseif req == 2 then
		MoveZone(cnum, 60, 254)

	else
		return 0
	end
end