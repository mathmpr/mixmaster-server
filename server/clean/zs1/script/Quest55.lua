function NPC_QUEST_272(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Sudah lama aku tidak melihat pengunjung. Apa yang bisa kubantu?",2,"Aku ingin pergi ke Silent Forest"

	elseif req == 2 then
		return 2,0,"OK. Ini adalah hadiah khusus untukmu, aku akan memberimu warp gratis ke Silent Forest. Apa kamu ingin pergi sekarang?",12,"Warp"


	elseif req == 12 then
		MoveZone(cnum, 113, 110)


	else
		return 0


	end
end
