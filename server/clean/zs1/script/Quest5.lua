function NPC_QUEST_270(cnum,reqNumber) -- 황금새의 비밀(올딘)--헤르세바 입구
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1004) < 1 then
			return 2,0,"Golden Comb? Oh maaf itu hanya dapat digunakan oleh manusia. Bukan sebuah pohon. Namun aku tahu caranya menghapus ingatan dari pohon. Bantulah aku maka akan kuberitahu caranya. Aku membesarkan seekor burung bernama 'Elly'. Elly dimiliki oleh King of Magirita. Elly telah menyelamatkan banyak nyawa tak berdosa dengan memperingatkan melalui suaranya yang kencang sebelum monster menyerang kota. Aku sangat bangga terhadap Elly",2,"Ok, silahkan lanjutkan."
		else
			if GetSwitchCount(cnum, 13) < 1 then
				return 2,0,"Apa kamu membawa Golden Bird Sculpture?",13,"Ya"
			else
				return 1,0,"Nah, aku tahu airmata Shira dapat menolongmu. Pergilah ke kota VeHerseba (X:75 Y:60) dan bicaralah dengan Shira."
			end
		end
	
	elseif req == 2 then
		return 2,0,"Akhirnya setelah bertahun-tahun, monster dapat mengetahuinya . . Monster mengerikan. Mereka membuatnya jadi batu hingga kini menjadi patung. Tolong bawakan aku Elly's Sculpture dengan mengalahkan Monoeye. Aku dengar mereka berada disekitar sini.",12,"Oh menyedihkan, aku akan membantumu."

	elseif req == 12 then
		StartQuest(cnum, 5)
		AddSwitchCount(cnum, 1004, 1) 
		return 1,0,"Aku akan menunggumu. Terima kasih banyak."


	elseif req == 13 then
		if GetSwitchCount(cnum,12) == 0 then
			return 1,0,"*** Sebelum kamu lanjutkan dengan World Quest, kamu harus bicara dengan Alena di Fishscroll (X:180.Y:123)"
		end

		if GetSwitchCount(cnum,13) > 0 then
			return 1,0,"Oh mengagumkan! Sculpture of Phoenix. Ini adalah Elly! Terima kasih banyak! Ini kuberi hadiah [dapat 5 point]."
		end
		
		if GetItemCount(cnum,363,0) == 0 then
			return 1,0,"Aku rasa itu lelucon yang buruk."
		end

		AddHeroFreePoint(cnum,5)  -- 프리포인트 5점 추가
		AddSwitchCount(cnum,13,1) -- 황금새 조각상
		EndQuest(cnum, 5)
		return 1,0,"Oh! Elly yang cantik, diubah menjadi patung seperti ini… namun aku tidak dapat terus bersedih, bawalah patung ini. Aku cukup bahagia bahwa dia telah terlepas dari kejahatan monster. Ini kuberi hadiah [dapat 5 point]."

	end
	return 0
 end
		

