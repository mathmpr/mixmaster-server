function NPC_QUEST_234(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Halo! Aku adalah Monez. Tugasku adalah mengirim orang ke tempat lain. Karena kamu seorang MixMaster baru, kamu akan pergi ke Magirita. Temanku di setiap kota juga dapat memindahkanmu ke berbagai tempat. Semoga berhasil!",2,"Pergi ke Magirita."

	elseif req == 2 then
		MoveZone(cnum, 57, 254)
		SetReviveZone(cnum, 57)
		
	else
		return 0
	end
end