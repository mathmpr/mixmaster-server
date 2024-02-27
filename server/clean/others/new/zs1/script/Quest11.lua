 function NPC_QUEST_314(cnum,reqNumber) --NPC 경비병 프레딕(테이머즈 필드)
	local req = reqNumber

	if req == 1 then
		
		if GetSwitchCount(cnum,20) == 0 then
			return 1,0,"Tidak ada Magic Mirror. Silahkan menemui kepala desa bernama Irena di Cheseva Ruins."
		end

		return 2,0,"Aku telah menunggu. Aku tahu kamu tidak memiliki banyak waktu. Golden Glass Bottle adalah botol langka yang telah lama hilang di hutan. Pergilah ke hutan di masa lalu dan tangkaplah Torra. Aku akan mengantarkanmu ke tempatnya.",2,"Bawalah aku ke sana!"

	
	elseif req == 2 then

		if GetItemCount(cnum,375,0) == 0 then --마법의 거울
			return 1,0,"Dibutuhkan Magic Mirror untuk pergi hutan di masa lalu. Temui kepala desa bernama Irena di Cheseva Ruins dan bicaralah kepadanya."

		end

		MoveZone(cnum,246,101) --과거의 숲(246)

		end

	return 0
end


 function NPC_QUEST_315(cnum,reqNumber) -- NPC 예언자 프레딕(과거의 숲)
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 21) < 1 then
			if GetSwitchCount(cnum, 1012) < 1 then
				return 2,0,"Seekor binatang buas di tempat ini, mungkin memiliki Golden Glass Bottle.",12,"Aku mengerti."
			else
				return 2,0,"Mengapa tidak mulai mencari? Tidak akan ketemu kalau kamu berdiri saja di sini.",3,"Aku telah mendapatkan Golden Glass Bottle."
			end
		else
			return 3,0,"OK, kini kamu telah memiliki kristal dan botol untuk menyimpan kekuatan. Tapi kamu perlu sebuah pohon sebagai tunas Tree of Propagation.",4,"Pohon?",5,"Kembali ke VeHerseba."
		end

	elseif req == 12 then
		StartQuest(cnum, 12)
		AddSwitchCount(cnum, 1012, 1)
		return 1,0,"Akan kuberi sesuatu yang berharga jika kamu membawakanku Golden Glass Bottle."





	elseif req == 2 then

		MoveZone(cnum,67,253)

	elseif req == 3 then

		if GetItemCount(cnum,378,0) == 0 then -- 황금 유리병(378)
			return 1,0,"Aku tidak dapat menemukan Golden Glass Bottle. Tolong carikan."
		end

		if GetSwitchCount(cnum,21) > 0 then
			return 1,0,"Semoga berhasil menyelamatkan pohon itu. Kamu melakukan hal yang baik."
		end

		AddHeroFreePoint(cnum,5) -- 프리포인트 5점 추가
		AddSwitchCount(cnum,21,1) -- 황금 유리병의 switch 값
		EndQuest(cnum, 12)

		return 1,0,"Wow, selamat! Ini ada hadiah, 5 Stat Point gratis." 

	elseif req == 4 then

		return 1,0,"Temui Terry di persimpangan Desert Fork Road (X:120 Y:110). Dia memiliki pohon spesial yang dapat dipadukan dengan kristal sebagai tunas Tree of Propagation."
	
	elseif req == 5 then	
		MoveZone(cnum, 60 ,254)
		
	end
	return 0
end

		
	


	

	 