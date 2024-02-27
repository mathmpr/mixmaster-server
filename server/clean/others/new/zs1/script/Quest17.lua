function NPC_QUEST_295(cnum,reqNumber) 
	local req = reqNumber

 	if req == 1 then
	    	return 1, 0,"Beberapa minggu lalu, segerombolan monster menyerang Shrine of Goddess dan mencuri Necklace of Blessing, Goddess' Belt, dan Elf's Ring. Tolonglah kami dan temukan kembali harta itu! Defense Chief Actum sedang mencari sukarelawan di Mekrita Eastern Seashore (X:127 Y: 161)."
     	end

  	return 0
end






function NPC_QUEST_263(cnum,reqNumber) 

 	local req = reqNumber
	
 	if req == 1 then
		if GetSwitchCount(cnum, 1016) < 1 then
			if GetSwitchCount(cnum, 1015) < 1 then
		    		return 2,0,"Kamu tampaknya menjanjikan! Aku adalah Defense Chief, Actum. Shrine of Goddess telah diserang para monster. Masalahnya karena terlalu lama keadaan aman, para prajurit menjadi kurang latihan. Jika kamu bisa menemukan Necklace of Blessing, aku akan memberimu 1000GP. Mungkin Nosie dan Bebe yang mengambil Necklace of Blessing.",12,"Ok, aku akan membantumu."
			else
				return 2,0,"Apa kamu menemukan Necklace of Blessing?",2,"Ya."
			end
		else
			return 1,0,"Terima kasih atas bantuannya. Kamu memang berbakat. Tolong bantu juga temanku, Linny (X:214, Y:165). Ia ada di daerah Islaba Damp."
		end
			

	elseif req == 12 then
		
		if GetHeroLv(cnum,1) < 6 then        
			return 1,0,"Aku membutuhkan sukarelawan, namun tampaknya kamu masih kurang latihan. Datanglah kembali jika kamu di atas level 6."
		end
		
		StartQuest(cnum, 104)
		AddSwitchCount(cnum, 1015, 1)
		return 1,0,"Bagus, aku yakin padamu. Semoga berhasil."


 	elseif req == 2 then  
	
		if GetItemCount(cnum,178,0) == 0 then
			return 1,0,"Jika kamu tersesat saat menjalankan Quest, cukup klik tab Quest di kanan bawah layar untuk melihat informasi."
		end

		if GetSwitchCount(cnum, 3) < 1 then
			AddMoney(cnum,1000) 
			AddSwitchCount(cnum,3,1) 
			AddSwitchCount(cnum, 1016, 1)
			EndQuest(cnum, 104)
			return 1,0,"Bagus! Kamu lebih hebat dari yang kuduga. Temanku Linburn sedang mengejar harta yang lain, jika kamu menemuinya di Islaba Damp. Linburn (X:214, Y:165) merupakan yang terlemah. Dia dapat membuatmu terkejut dalam berbagai hal."
		else
			return 0
		
		end
	end
	return 0
end







function NPC_QUEST_220(cnum,reqNumber) 

local req = reqNumber
	if req == 1 then

		if GetSwitchCount(cnum, 1018) < 1 then		
		     	if GetSwitchCount(cnum,3) == 0 then
				return 1,0,"Kamu bisa membantuku? Sebenarnya... Aku sedang bertugas. Saat ini aku hanya dapat berbicara dengan prajurit lain. Bicaralah kepada Chief Actum di Mekrita Eastern Seashore dan tolonglah aku!"
		
			elseif GetSwitchCount(cnum, 1017) < 1 then
			    	return 2,0,"Kamu datang untuk menolongku? Oh, syukurlah! Aku kehilangan sabuk istimewa. Aku menduga CheezDogg dan Nars yang mencurinya, tapi mereka terlalu kuat untukku. Aku akan memberimu 1000GP jika kamu bisa membawanya kembali.",12,"Apa kamu lulus dari ujian prajurit?"

			else
				return 2,0,"Apa kamu temukan sabuknya?",2,"Ya."
			end
		else
			return 1,0,"Terima kasih! Kudengar Rowe juga membutuhkan bantuan. Tolong temui dan bantu dia ya?  Dia ada di pintu masuk Herseba (X:227, Y:62)."
		end


	elseif req == 12 then

		if GetHeroLv(cnum,1) < 6 then
			return 1,0,"Maaf, aku butuh seorang ksatria, bukan berandalan. Kembalilah lagi jika kamu sudah level 7・ atau 6 juga cukup."
		end

		StartQuest(cnum, 105)
		AddSwitchCount(cnum, 1017, 1)
		return 1,0,"Ayahku adalah komisaris dan・ Oh, aku benci menjadi seorang penakut. Tolong cepat bantu aku!"


	elseif req == 2 then

		if GetItemCount(cnum,179,0) == 0 then
			return 1,0,"Aku butuh pertolonganmu menemukan sabuknya, dari Nars atau CheezDogg! KUMOHON!"
		end

		if GetSwitchCount(cnum, 4) < 1 then
			AddMoney(cnum,1000) 
			AddSwitchCount(cnum,4,1) 
			AddSwitchCount(cnum,1018, 1)
			EndQuest(cnum, 105)
			return 1,0,"Terima kasih banyak, aku harus berlatih agar sehebat dirimu. Bawalah dan temui Rowe yang berada di pintu masuk Herseba (X:227, Y:62)."
		
		else
			return 0

		end
 	end	
	return 0
end









function NPC_QUEST_217(cnum,reqNumber) 

local req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 1020) < 1 then		
			if GetSwitchCount(cnum,3) == 0 then
				return 1,0,"Aku sedang bertugas. Saat ini aku hanya dapat berbicara dengan prajurit lain. Bicaralah kepada Chief Actum di Mekrita Eastern Seashore jika kamu ingin bergabung denganku."
		
	
			elseif GetSwitchCount(cnum,4) == 0 then 
				return 1,0,"Oh, kamu ingin membantuku? Temui Linburn yang berada di Islaba Damp. Dia lebih membutuhkan pertolonganmu."
		

			elseif GetSwitchCount(cnum, 1019) < 1 then
				return 2,0,"Oh, kamu anggota baru, tolong aku! Aku telah diserang monster. Aku membutuhkan 'Ring of Elf' untuk menyembuhkan luka ini. Aku melihat 'Mitra' dan 'Deepsuffer' mengambilnya. Bisakah kamu merebutnya dari mereka?",12,"Bertahanlah, aku akan segera merebutnya!"

			else
				return 2,0,"Apa kamu menemukan Ring of Elf?",2,"Ya."

			end
		else
			return 1,0,"Terima kasih telah menyelamatkanku! Kini temui Cherrish (X:47 Y:158) yang berada di Rudis. Dia akan memberimu Blessing of Goddess."

		end


	elseif req == 12 then

		if GetHeroLv(cnum,1) < 6 then
			return 1,0,"Terima kasih atas tawarannya, namun tidaklah mudah mendapatkan Ring of Elf dengan keadaanmu sekarang. Kamu membutuhkan latihan lagi. Datanglah jika kamu sudah lebih kuat. Jika levelmu di atas 6, maka kamu dapat membantuku."
		end

		StartQuest(cnum, 106)
		AddSwitchCount(cnum, 1019, 1)
		return 1,0,"Cepatlah... Tubuhku semakin lemah・"



	 elseif req == 2 then

		if GetItemCount(cnum,180,0) == 0 then
			return 1,0,"Tolong... Bawakan aku... Cincinnya... Ku . .. mohon . ."
		end

		if GetSwitchCount(cnum, 5) < 1 then
		       	AddMoney(cnum,1000) 
			AddSwitchCount(cnum,5,1) 
			AddSwitchCount(cnum, 1020, 1)
			EndQuest(cnum, 106)
			return 1,0,"Oh, terima kasih・ Aku merasa lebih baik! Kamu akhirnya menemukan ketiga harta. Kini temui Cherrish yang berada di Rudis, desa para Elf (X:47 Y:158). Dia akan memberimu Blessing of Goddess."
		
		else
			return 0

		end
 	end	
	return 0
end




function NPC_QUEST_296(cnum,reqNumber) 
	local resultmsg,req,itemname1,itemname2,itemname3,id1,id2,id3,count1,count2,count3

	itemname1 = "Ring of Blessing"
	itemname2 = "Belt of Goddess"
	itemname3 = "Ring of Elf"

	id1 = 178 
	id2 = 179
	id3 = 180

    req = reqNumber

    if req == 1 then

   	 	return 2, 0,"Oh, pemberani! Apa kamu ingin menanyakan sesuatu padaku? Aku sedang mencari seseorang yang dapat merebut kembali harta suci. Apakah benar kamu yang membawanya? Aku akan memberimu berkah [gratis 15 poin] atas nama para dewa.",2, "Ya, aku memiliki semuanya."
    elseif req == 2 then
		if GetSwitchCount(cnum,6) > 0 then
			return 1,0, "Blessing of Goddess [gratis 15 poin] sudah bersamamu."
		end

		count1 = GetItemCount(cnum,id1,0)
		if count1 == 0 then 
			resultmsg = itemname1 
		end
		
		count2 = GetItemCount(cnum,id2,0)
		if count2 == 0 then 
			if resultmsg == nil then 
				resultmsg = itemname2 
			else 
				resultmsg = resultmsg..","..itemname2
			end
		end

		count3 = GetItemCount(cnum,id3,0)
		if count3 == 0 then
			if resultmsg == nil then 
				resultmsg = itemname3 
			else 
				resultmsg = resultmsg..","..itemname3
			end
		end
    

		if resultmsg ~= nil then
			return 1,0, "Tidak ada"..resultmsg
		end

		        AddItemCount(cnum,id1,-count1)
		        AddItemCount(cnum,id2,-count2)
		        AddItemCount(cnum,id3,-count3)

		

       		AddHeroFreePoint(cnum,15)
	                AddSwitchCount(cnum,6,1) 
	                return 1,0,"Aku menghormatimu atas nama sang Dewi, aku juga berdoa dia akan senang dengan pilihanku." 
	end 			
	return 0
end 
