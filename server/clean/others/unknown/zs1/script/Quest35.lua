 function NPC_QUEST_307(cnum,reqNumber)-- 테스(믹스 가이드)
	local req = reqNumber

	if req == 1 then
	return 5,0,"Kamu adalah yang pertama disini. Ok, aku akan memberimu monster imut. Meski imut namun bertarung dengan baik.",2,"Menerima monster imut",3,"Berteman dengan monster",4,"Masukkan monster kedalam kotak",5,"Bagaimana mengevolusi monster dengan Mix"

	elseif req == 2 then

		if GetSwitchCount(cnum,42) > 0 then
			return 1,0,"Kamu hanya memiliki satu kesempatan mendapatkan Birdco."
		end

		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Aku tidak dapat memberitahumu pemula karena levelmu di atas 10. Kamu tidak dapat mengambil Quest Beginner's Guide."
		end

		if GetHench(cnum,1,4,1) > 2 then
		return 1,0,"Aku tidak dapat memberimu banyak Hench.. Bagaimana dengan berburu?"
		end

		if GetHeroLv(cnum,1) < 10 then
		AddHench(cnum,4,1) -- 버드코 수여
		AddSwitchCount(cnum,42,1)	
		return 1,0,"Wow~~ Kamu mendapatkan Birdco. Jika kamu ingin menjadi temannya Birdco, klik [Berteman dengan monster]."
		end

	elseif req == 3 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Kamu menggangguku. Pergilah berburu monster."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Pertama, tekan tombol [T] di keyboard. Dapatkah kamu melihat kotak Hench? Kamu dapat mengeluarkan Birdco dengan klik dua kali. Namun sebelumnya harus dipulihkan dulu di Mixbuilder."
		end
	
	elseif req == 4 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Sudah kukatakan, kamu tidak dapat bicara padaku karena levelmu diatas 10!"
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Kamu dapat menaruh Hench kedalam Hench Box dengan menariknya."
		end
	
	elseif req == 5 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Kamu harus membuat karakter baru agar dapat berbicara denganku."
		end

		if GetHeroLv(cnum,1) < 10 then		
		return 1,0,"Kamu dapat memperoleh teman monster baru dari pertempuran. Tanyakan Tai dibelakangku mengenai cara bertarung."
		end

	end

	return 0
end

   


 function NPC_QUEST_305(cnum,reqNumber)-- 타이(전투 가이드)
 	local req = reqNumber

	if req == 1 then
		if GetHench(cnum,1,4,1) < 1 then
			return 1,0,"Harap bicara kepada Tes dahulu."
		else
	return 6,0,"Bertarung dengan monster, kamu perlu dipersenjatai dengan senjata dan pelindung. Ayo! Ambil senjata dan pelindung!",2,"Belajar bagaimana mempersenjatai dengan item",3,"Belajar bagaimana bertarung",4,"Aku membawakanmu Drago.",5,"Aku mencampur Noa.",6,"Aku tidak dapat mencampurnya!"
	end

	elseif req == 2 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Aku tidak dapat memberitahumu pemula karena levelmu di atas 10. Kamu tidak dapat mengambil Quest Beginner's Guide."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Tekan tombol [U] di keyboard dan kamu dapat melihat senjata dan pelindung didalam Item Box. Kamu dapat memakainya dengan cara klik dua kali."
		end

	elseif req == 3 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Kamu menggangguku. Pergilah berburu monster."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Pointer mouse berubah menjadi palu ketika kamu mengarahkan ke monster diluar istana. Ini artinya mereka dapat menjadi lawanmu. Pergi dan dapatkanlah Core of Drago."
		end
	
	elseif req == 4 then

		if GetSwitchCount(cnum,14) > 1 then
		return 1,0,"Kamu hanya memiliki satu kali kesempatan. 300GP bukanlah uang yang banyak."
		end

		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Sudah kukatakan, kamu tidak dapat bicara padaku karena levelmu diatas 10!"
		end

		if GetHench(cnum,1,1,1) < 1 then
		return 1,0,"Kamu harusnya membawakanku Drago Core. Aku tidak butuh yang lainnya."
		end 

		if GetHench(cnum,1,1,1) > 0 then -- 드라고 확인
		AddSwitchCount(cnum,14,1) 
		AddMoney(cnum,300) ---- 믹스비용 추가
		return 1,0,"Wow! Kamu mendapatkan Drago Core. Drago dan Birdco sangat sesuai untuk dicampurkan. Temukan Mixbuilder dalam desa. Mixbuilder berada di (123,31). Aku akan memberimu 300GP untuk mencampurnya."
		end
	
	elseif req == 5 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Kamu harus membuat karakter baru agar dapat berbicara denganku."
		end

		if GetHench(cnum,1,17,1) < 1 then
		return 1,0,"Aku tidak melihat Noa. Apa kamu gagal mencampurnya?"
		end

		if GetHench(cnum,1,17,1) > 0 then
		return 1,0,"HH~Noa yang sangat imut. Selamat! Kamu telah berhasil diakui untuk menjadi seorang Mix Master!."  
		end

	elseif req == 6 then
		if GetHeroLv(cnum,1) > 10 then
		return 1,0,"Levelmu telah di atas 10... Hmmm... Aku lelah..."
		end

		if GetHeroLv(cnum,1) < 10 then
		return 1,0,"Untuk mencampurkan Core, jenis kelamin dari Core harus berbeda. Haruskah Drago betina jika Birdco jantan?"   
		end
	end


	return 0
end


