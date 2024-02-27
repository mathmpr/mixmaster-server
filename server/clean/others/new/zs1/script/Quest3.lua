  function NPC_QUEST_262(cnum,reqNumber) -- 점성술사 아네스
	local resultmsg,req,itemname1,itemname2,itemname3,id1,id2,id3,count1,count2,count3
	
	itemname1 ="Apple"
	itemname2 ="Pear"
	itemname3 ="Grape"

	id1=358
	id2=359
	id3=360
	
	req=reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1002) < 1 then
			return 2,0,"Kamu yang memberikan daun kepada Tree of Propagation? Mungkin itu takdirmu. Memberikan Leaf of Life kepada pohon tersebut merupakan kesalahan besar. Karena membangkitkan ingatan lama, ingatan mengenai monster yang kuat. Sulit dipercaya namun ingatan dari Tree of Propagation dapat dan telah memperkuat monster. Aku akan bertanya kepada Northern Cross mengenai keberuntunganmu.",2,"Northern Cross?"
		else
			if GetSwitchCount(cnum, 11)< 1 then
				return 2,0,"Apa kamu telah persiapkan pelayanan religi?",13,"Ya, aku sudah."
			else
				return 1,0,"Bintang akan mengantarkanmu menemui Alena di Southern Rudis (X:96, Y191). Sepertinya dia memiliki sesuatu untuk membantumu. Meski kamu memilih jalan yang panjang. Ikuti hatimu, dan takdirmu akan terpenuhi. Aku memiliki keyakinan atas pilihan Northern Cross."
			end
		end

	elseif req == 2 then
		return 2,0,"Northern Cross adalah salah satu bintang suci Magirita. Bintang terkuat diantara yang lainnya. Kamu perlu menemukan bentuk persembahan untuk membantumu. Bawalah sebuah apel, pir dan anggur. Sumping dan Bota di West of Magirita mungkin memilikinya. Aku tahu mereka suka memakan buah-buah ini.",12,"Aku akan kembali dengan benda tersebut."
	
	elseif req == 12 then
		StartQuest(cnum, 3)
		AddSwitchCount(cnum, 1002, 1)
		return 1,0,"Cepatlah, monster semakin kuat"



	elseif req == 13 then
		if GetSwitchCount(cnum,10) == 0 then
		return 1,0,"*** Sebelum kamu lanjutkan dengan World Quest, kamu harus berbicara dengan Propagation of Tree di Mekrita Eastern seashore (X:161.Y:170)"
		end
	 
 		if GetSwitchCount(cnum,11) > 0 then
		return 1,0,"Aku telah mendapatkan buahnya. Sebuah hadiah [dapat 5 point] diberikan kepadamu."
		end

		count1 = GetItemCount(cnum,358,0)
		if count1 == 0 then
			resultmsg = itemname1
		end

		count2 = GetItemCount(cnum,359,0)
		if count2 == 0 then
			if resultmsg == nil then
				resultmsg = itemname2
			else
				resultmsg = resultmsg..","..itemname2
			end
		end
	
		count3 = GetItemCount(cnum,360,0)
		if count3 == 0 then
			if resultmsg == nil then
				resultmsg = itemname3
			else
				resultmsg = resultmsg..","..itemname3
			end
		end

		if resultmsg~=nil then
			return 1,0,"Tidak ada"..resultmsg..""
		end

		AddItemCount(cnum,358,-1)
		AddItemCount(cnum,359,-1)
		AddItemCount(cnum,360,-1)

		AddHeroFreePoint(cnum,5)
		AddSwitchCount(cnum,11,1)
		EndQuest(cnum, 3)
		return 1,0,"The Northern Cross', bintang dari Magirita telah mengatakan bahwa ingatan sang pohon telah membangkitkan sisi jahat dalam monster. Sang pohon tidak mengetahuinya. Merupakan takdirmu menanganinya. Aku akan membantumu dalam perjalanan. Ini kuberi hadiah, [dapat 5 free point]."
	
	end	
	return 0

end