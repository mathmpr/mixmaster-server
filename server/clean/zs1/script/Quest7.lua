 function NPC_QUEST_319(cnum,reqNumber) -- NPC할리(카오스 큐브)-롤링 코어즈 필드
	local req, id1, count1

	id1 = 367

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1006) < 1 then
			return 2,0,"Oh aku rasa kamu memerlukan sesuatu. Apa kamu ingin mendapatkan Crystal of Golden Tear milik Shira? Hanya satu cara menyentuh hati Shira. Menemukan foto keluarga yang telah dia hilangkan.",2,"Penjelasan mengenai foto"
		else
			if GetSwitchCount(cnum, 16) < 1 then
				return 2,0,"Apa kamu mengetahui tentang Elf's Gloves?",3,"Ya"
			else
				return 1,0,"Sekarang, temui Gorden di wilayah selatan VeHerseba (X:199 Y:122). Gorden adalah penjaga dari Dungeon of the Wind, kamu hanya bisa mendapatkan Ring of Rain dari sana. Semoga berhasil, Dungeon disana sangat berbahaya."			
			end
		end	

	elseif req == 2 then

		if GetSwitchCount(cnum,15) == 0 then
			return 1,0,"Mengapa tidak kamu temui Shira di VeHerseva (X:75, Y:58) dahulu."
		end
	
		return 2,0,"Chaos Cube adalah sebuah harta misterius. Dengan menggunakan Ring of Rain, dapat menemukan benda hilang. Aku memiliki Chaos Cube namun kamu membutuhkan Gloves of Elf untuk menangani kekuatan magicnya",12,"Aku akan menemukan Elf's Gloves."

	elseif req == 12 then
		StartQuest(cnum, 7)
		AddSwitchCount(cnum, 1006, 1)
		return 1,0,"Kamu dapat memperoleh Elf's Gloves jika kamu mengalahkan monster di wilayah Rollingcores."


	elseif req == 3 then

		count1 = GetItemCount(cnum,id1,0)

		if GetSwitchCount(cnum,16) > 0 then
			return 1,0,"Aku tidak memiliki Chaos Cube lain."
		end
	
		if GetSwitchCount(cnum,15) == 0 then
			return 1,0,"*** Sebelum kamu lanjutkan dengan World Quest, kamu harus bicara dengan Shira di VeHerseba (X:75.Y:60)"
		end

		if GetItemCount(cnum,367,0) == 0 then -- 요정의 장갑(367)
			return 1,0,"JANGAN BERBOHONG KEPADA SEORANG PERAMAL!!! ~Zap!~"
		end

		AddSwitchCount(cnum,16,1)
		AddItemCount(cnum,id1,-count1) --요정의 장갑
		AddItemCount(cnum,366,1) --카오스 큐브
		EndQuest(cnum, 7)
		return 1,0,"Kamu telah bawakan aku Gloves of Elf, kini kamu dapat memiliki Chaos Cube."

	end
	return 0
end
