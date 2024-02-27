function NPC_QUEST_218(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Apakah kamu datang untuk mendengar beritanya? Aku adalah orang yang membuat Snowfield dengan membawa salju dari Artreia. Aku mencontoh Purmai. Meski buatan, nyaris tidak memiliki kekurangan. Sebaliknya, lebih baik daripada padang salju sesungguhnya~",2,"Apa yang lebih baik?"

	
	elseif req == 2 then
		return 3,0,"Bahkan, aku melepaskan beberapa monster lemah di Snowfield. Namun, jumlah mereka meningkat pesat. Kini, orang tidak dapat membedakannya. Dapatkah kamu membantuku?",12,"Tentu, mengapa tidak?",13,"Tidak, aku tak bisa"


	elseif req == 12 then
		return 2,0,"Terima kasih banyak.",22,"[Pergi ke Summer Snowfield]"


	elseif req == 13 then
		return 1,0,"Ye...OK."


	elseif req == 22 then
		MoveZone(cnum, 115, 254)

	else
		return 0

	end
end


function NPC_QUEST_254(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Halo, apakah kamu yang akan menolong kami. Aku telah mendengar tentangmu. Apa ada yang bisa kami bantu?",2,"Aku ingin kembali."

	

	elseif req == 2 then
		return 2,0,"Apa kamu ingin kembali? Sekarang sangat dingin. Jika memungkinkan, kami harap kamu datang kembali dan menolong kami.",12,"[Kembali ke Mekrita]"



	elseif req == 12 then
		MoveZone(cnum, 59, 254)


	else
		return 0

	end
end