function NPC_QUEST_290(cnum,reqNumber) --  선물증정 NPC 무료 아이템 증정
	local req = reqNumber

	if req == 1 then
	return 2,0,"Halo. Aku membawa kabar baik. Apa itu? Aku akan memberikan item gratis untukmu~~",2,"Trial item",3,"Trial item2",4,"Trial item3"

	elseif req == 2 then

		return 9,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",12,"Mencoba mega power",13,"Mencoba skill power",14,"Mencoba double power",15,"Mencoba full mega power",16,"Mencoba full skill power",17,"Mencoba clouds",18,"Mencoba attack speed increase",19,"Mencoba recovery potion"

	elseif req == 3 then

		return 7,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",22,"Mencoba perubahan menjadi Drago",23,"Mencoba perubahan menjadi Devilco",24,"Mencoba perubahan menjadi Birdco",25,"Mencoba perubahan menjadi Flowco",26,"Mencoba perubahan menjadi Beasco",27,"Mencoba perubahan menjadi Inseco"

	elseif req == 4 then

		return 7,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",32,"Mencoba perubahan menjadi Metaco",33,"Mencoba perubahan menjadi Mysco",34,"Mencoba perubahan menjadi Mameo",35,"Mencoba perubahan menjadi MintRable",36,"Mencoba perubahan menjadi WildBuma",37,"Mencoba perubahan menjadi Manta"
	elseif req == 12 then

		if CheckItemPocket(cnum,900,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,22) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,900,1)
		AddSwitchCount(cnum,22,1)
		return 1,0,"Trial item untuk mega power membuat jumlah serangan hero meningkat 100% selama 5 menit."

	elseif req == 13 then

		if CheckItemPocket(cnum,897,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,23) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,897,1)
		AddSwitchCount(cnum,23,1)
		return 1,0,"Trial item untuk skill power membuat jumlah skill hero meningkat 100% selama 5 menit."

	elseif req == 14 then

		if CheckItemPocket(cnum,899,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,24) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,899,1)
		AddSwitchCount(cnum,24,1)
		return 1,0,"Trial item untuk double power membuat besarnya damage serangan hero meningkat 200% selama 5 menit."

	elseif req == 15 then

		if CheckItemPocket(cnum,901,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,25) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,901,1)
		AddSwitchCount(cnum,25,1)
		return 1,0,"Trial item untuk full mega power membuat jumlah serangan hero dan hench meningkat 100% selama 5 menit."

	elseif req == 16 then

		if CheckItemPocket(cnum,898,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,26) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,898,1)
		AddSwitchCount(cnum,26,1)
		return 1,0,"Trial item untuk full skill power membuat jumlah skill hero dan hench meningkat 100% selama 5 menit."

	elseif req == 17 then

		if CheckItemPocket(cnum,902,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,27) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,902 ,1)
		AddSwitchCount(cnum,27,1)
		return 1,0,"Trial item untuk clouds membuat hero dan semua hench menuju awan."

	elseif req == 18 then

		if CheckItemPocket(cnum,903,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,28) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,903,1)
		AddSwitchCount(cnum,28,1)
		return 1,0,"Trial item untuk scroll of attack speed increase membuat kecepatan serangan meningkat 2X selama 5 menit."

	elseif req == 19 then

		if CheckItemPocket(cnum,904,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,29) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,904,1)
		AddSwitchCount(cnum,29,1)
		return 1,0,"Trial item untuk recovery potion makes kecepatan pemulihan HP/MP hero dan semua hench meningkat 3X selama 5 menit."

	elseif req == 22 then

		if CheckItemPocket(cnum,909,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,30) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,909,1)
		AddSwitchCount(cnum,30,1)
		return 1,0,"Kamu dapat mengubah Drago Core menjadi Drago dengan klik dua kali."

	elseif req == 23 then

		if CheckItemPocket(cnum,910,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,31) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,910,1)
		AddSwitchCount(cnum,31,1)
		return 1,0,"Kamu dapat mengubah Devilco Core menjadi Devilco dengan klik dua kali"

	elseif req == 24 then

		if CheckItemPocket(cnum,912,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,32) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,912,1)
		AddSwitchCount(cnum,32,1)
		return 1,0,"Kamu dapat mengubah Birdco Core menjadi Birdco dengan klik dua kali."

	elseif req == 25 then

		if CheckItemPocket(cnum,914,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,33) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,914,1)
		AddSwitchCount(cnum,33,1)
		return 1,0,"Kamu dapat mengubah Flowco Core menjadi Flowco dengan klik dua kali."

	elseif req == 26 then

		if CheckItemPocket(cnum,911,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,34) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,911,1)
		AddSwitchCount(cnum,34,1)
		return 1,0,"Kamu dapat mengubah Beasco Core menjadi Beasco dengan klik dua kali."

	elseif req == 27 then

		if CheckItemPocket(cnum,913,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,35) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,913,1)
		AddSwitchCount(cnum,35,1)
		return 1,0,"Kamu dapat mengubah Inseco Core menjadi Inseco dengan klik dua kali."

	elseif req == 32 then

		if CheckItemPocket(cnum,916,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,36) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,916,1)
		AddSwitchCount(cnum,36,1)
		return 1,0,"Kamu dapat mengubah Metaco Core menjadi Metaco dengan klik dua kali."

	elseif req == 33 then

		if CheckItemPocket(cnum,915,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,37) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,915,1)
		AddSwitchCount(cnum,37,1)
		return 1,0,"Kamu dapat mengubah Measco Core menjadi Measco dengan klik dua kali."

	elseif req == 34 then

		if CheckItemPocket(cnum,908,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,38) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,908,1)
		AddSwitchCount(cnum,38,1)
		return 1,0,"Kamu dapat mengubah Mameo Core menjadi Mameo dengan klik dua kali."

	elseif req == 35 then

		if CheckItemPocket(cnum,905,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,39) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,905,1)
		AddSwitchCount(cnum,39,1)
		return 1,0,"Kamu dapat mengubah MintRable Core menjadi MintRable dengan klik dua kali."

	elseif req == 36 then

		if CheckItemPocket(cnum,906,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,40) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,906,1)
		AddSwitchCount(cnum,40,1)
		return 1,0,"Kamu dapat mengubah WildBuma Core menjadi WildBuma dengan klik dua kali."

	elseif req == 37 then

		if CheckItemPocket(cnum,907,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,41) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,907,1)
		AddSwitchCount(cnum,41,1)
		return 1,0,"Kamu dapat mengubah Manta Core menjadi Manta dengan klik dua kali.."
		
		end
	return 0
end




function NPC_QUEST_291(cnum,reqNumber) --  선물증정 NPC 무료 아이템 증정
	local req = reqNumber

	if req == 1 then
	return 2,0,"Halo. Aku membawa kabar baik. Apa itu? Aku akan memberikan item gratis untukmu~~~",2,"Trial item",3,"Trial item2",4,"Trial item3"

	elseif req == 2 then

		return 9,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",12,"Mencoba mega power",13,"Mencoba skill power",14,"Mencoba double power",15,"Mencoba full mega power",16,"Mencoba full skill power",17,"Mencoba clouds",18,"Mencoba attack speed increase",19,"Mencoba recovery potion"

	elseif req == 3 then

		return 7,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",22,"Mencoba perubahan menjadi Drago",23,"Mencoba perubahan menjadi Devilco",24,"Mencoba perubahan menjadi Birdco",25,"Mencoba perubahan menjadi Flowco",26,"Mencoba perubahan menjadi Beasco",27,"Mencoba perubahan menjadi Inseco"

	elseif req == 4 then

		return 7,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",32,"Mencoba perubahan menjadi Metaco",33,"Mencoba perubahan menjadi Mysco",34,"Mencoba perubahan menjadi Mameo",35,"Mencoba perubahan menjadi MintRable",36,"Mencoba perubahan menjadi WildBuma",37,"Mencoba perubahan menjadi Manta"
	elseif req == 12 then

		if CheckItemPocket(cnum,900,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,22) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,900,1)
		AddSwitchCount(cnum,22,1)
		return 1,0,"Trial item untuk mega power membuat jumlah serangan hero meningkat 100% selama 5 menit."

	elseif req == 13 then

		if CheckItemPocket(cnum,897,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,23) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,897,1)
		AddSwitchCount(cnum,23,1)
		return 1,0,"Trial item untuk skill power membuat jumlah skill hero meningkat 100% selama 5 menit."

	elseif req == 14 then

		if CheckItemPocket(cnum,899,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,24) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,899,1)
		AddSwitchCount(cnum,24,1)
		return 1,0,"Trial item untuk double power membuat besarnya damage serangan hero meningkat 200% selama 5 menit."

	elseif req == 15 then

		if CheckItemPocket(cnum,901,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,25) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,901,1)
		AddSwitchCount(cnum,25,1)
		return 1,0,"Trial item untuk full mega power membuat damage serangan hero dan hench meningkat 100% selama 5 menit."

	elseif req == 16 then

		if CheckItemPocket(cnum,898,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,26) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,898,1)
		AddSwitchCount(cnum,26,1)
		return 1,0,"Trial item untuk full skill power membuat jumlah skill hero dan hench meningkat 100% selama 5 menit."

	elseif req == 17 then

		if CheckItemPocket(cnum,902,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,27) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,902 ,1)
		AddSwitchCount(cnum,27,1)
		return 1,0,"Trial item untuk clouds membuat hero dan semua hench menuju awan."

	elseif req == 18 then

		if CheckItemPocket(cnum,903,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,28) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,903,1)
		AddSwitchCount(cnum,28,1)
		return 1,0,"Trial item untuk scroll of attack speed increase membuat kecepatan serangan meningkat 2X selama 5 menit."

	elseif req == 19 then

		if CheckItemPocket(cnum,904,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,29) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,904,1)
		AddSwitchCount(cnum,29,1)
		return 1,0,"Trial item untuk recovery potion makes kecepatan pemulihan HP/MP hero dan semua hench meningkat 3X selama 5 menit."

	elseif req == 22 then

		if CheckItemPocket(cnum,909,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,30) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,909,1)
		AddSwitchCount(cnum,30,1)
		return 1,0,"Kamu dapat mengubah Drago Core menjadi Drago dengan klik dua kali."

	elseif req == 23 then

		if CheckItemPocket(cnum,910,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,31) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,910,1)
		AddSwitchCount(cnum,31,1)
		return 1,0,"Kamu dapat mengubah Devilco Core menjadi Devilco dengan klik dua kali"

	elseif req == 24 then

		if CheckItemPocket(cnum,912,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,32) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,912,1)
		AddSwitchCount(cnum,32,1)
		return 1,0,"Kamu dapat mengubah Birdco Core menjadi Birdco dengan klik dua kali."

	elseif req == 25 then

		if CheckItemPocket(cnum,914,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,33) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,914,1)
		AddSwitchCount(cnum,33,1)
		return 1,0,"Kamu dapat mengubah Flowco Core menjadi Flowco dengan klik dua kali."

	elseif req == 26 then

		if CheckItemPocket(cnum,911,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,34) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,911,1)
		AddSwitchCount(cnum,34,1)
		return 1,0,"Kamu dapat mengubah Beasco Core menjadi Beasco dengan klik dua kali."

	elseif req == 27 then

		if CheckItemPocket(cnum,913,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,35) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,913,1)
		AddSwitchCount(cnum,35,1)
		return 1,0,"Kamu dapat mengubah Inseco Core menjadi Inseco dengan klik dua kali."

	elseif req == 32 then

		if CheckItemPocket(cnum,916,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,36) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,916,1)
		AddSwitchCount(cnum,36,1)
		return 1,0,"Kamu dapat mengubah Metaco Core menjadi Metaco dengan klik dua kali."

	elseif req == 33 then

		if CheckItemPocket(cnum,915,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,37) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,915,1)
		AddSwitchCount(cnum,37,1)
		return 1,0,"Kamu dapat mengubah Measco Core menjadi Measco dengan klik dua kali."

	elseif req == 34 then

		if CheckItemPocket(cnum,908,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,38) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,908,1)
		AddSwitchCount(cnum,38,1)
		return 1,0,"Kamu dapat mengubah Mameo Core menjadi Mameo dengan klik dua kali."

	elseif req == 35 then

		if CheckItemPocket(cnum,905,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,39) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,905,1)
		AddSwitchCount(cnum,39,1)
		return 1,0,"Kamu dapat mengubah MintRable Core menjadi MintRable dengan klik dua kali."

	elseif req == 36 then

		if CheckItemPocket(cnum,906,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,40) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,906,1)
		AddSwitchCount(cnum,40,1)
		return 1,0,"Kamu dapat mengubah WildBuma Core menjadi WildBuma dengan klik dua kali."

	elseif req == 37 then

		if CheckItemPocket(cnum,907,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,41) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,907,1)
		AddSwitchCount(cnum,41,1)
		return 1,0,"Kamu dapat mengubah Manta Core menjadi Manta dengan klik dua kali.."
		
		end
	return 0
end



function NPC_QUEST_292(cnum,reqNumber) --  선물증정 NPC 무료 아이템 증정
	local req = reqNumber

	if req == 1 then
	return 2,0,"Halo. Aku membawa kabar baik. Apa itu? Aku akan memberikan item gratis untukmu~~~",2,"Trial item",3,"Trial item2",4,"Trial item3"

	elseif req == 2 then

		return 9,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",12,"Mencoba mega power",13,"Mencoba skill power",14,"Mencoba double power",15,"Mencoba full mega power",16,"Mencoba full skill power",17,"Mencoba clouds",18,"Mencoba attack speed increase",19,"Mencoba recovery potion"

	elseif req == 3 then

		return 7,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",22,"Mencoba perubahan menjadi Drago",23,"Mencoba perubahan menjadi Devilco",24,"Mencoba perubahan menjadi Birdco",25,"Mencoba perubahan menjadi Flowco",26,"Mencoba perubahan menjadi Beasco",27,"Mencoba perubahan menjadi Inseco"

	elseif req == 4 then

		return 7,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",32,"Mencoba perubahan menjadi Metaco",33,"Mencoba perubahan menjadi Mysco",34,"Mencoba perubahan menjadi Mameo",35,"Mencoba perubahan menjadi MintRable",36,"Mencoba perubahan menjadi WildBuma",37,"Mencoba perubahan menjadi Manta"
	elseif req == 12 then

		if CheckItemPocket(cnum,900,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,22) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,900,1)
		AddSwitchCount(cnum,22,1)
		return 1,0,"Trial item untuk mega power membuat jumlah serangan hero meningkat 100% selama 5 menit."

	elseif req == 13 then

		if CheckItemPocket(cnum,897,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,23) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,897,1)
		AddSwitchCount(cnum,23,1)
		return 1,0,"Trial item untuk skill power membuat jumlah skill hero meningkat 100% selama 5 menit."

	elseif req == 14 then

		if CheckItemPocket(cnum,899,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,24) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,899,1)
		AddSwitchCount(cnum,24,1)
		return 1,0,"Trial item untuk double power membuat besarnya damage serangan hero meningkat 200% selama 5 menit."

	elseif req == 15 then

		if CheckItemPocket(cnum,901,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,25) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,901,1)
		AddSwitchCount(cnum,25,1)
		return 1,0,"Trial item untuk full mega power membuat damage serangan hero dan hench meningkat 100% selama 5 menit."

	elseif req == 16 then

		if CheckItemPocket(cnum,898,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,26) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,898,1)
		AddSwitchCount(cnum,26,1)
		return 1,0,"Trial item untuk full skill power membuat jumlah skill hero dan hench meningkat 100% selama 5 menit."

	elseif req == 17 then

		if CheckItemPocket(cnum,902,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,27) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,902 ,1)
		AddSwitchCount(cnum,27,1)
		return 1,0,"Trial item untuk clouds membuat hero dan semua hench menuju awan."

	elseif req == 18 then

		if CheckItemPocket(cnum,903,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,28) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,903,1)
		AddSwitchCount(cnum,28,1)
		return 1,0,"Trial item untuk scroll of attack speed increase membuat kecepatan serangan meningkat 2X selama 5 menit."

	elseif req == 19 then

		if CheckItemPocket(cnum,904,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,29) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,904,1)
		AddSwitchCount(cnum,29,1)
		return 1,0,"Trial item untuk recovery potion makes kecepatan pemulihan HP/MP hero dan semua hench meningkat 3X selama 5 menit."

	elseif req == 22 then

		if CheckItemPocket(cnum,909,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,30) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,909,1)
		AddSwitchCount(cnum,30,1)
		return 1,0,"Kamu dapat mengubah Drago Core menjadi Drago dengan klik dua kali."

	elseif req == 23 then

		if CheckItemPocket(cnum,910,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,31) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,910,1)
		AddSwitchCount(cnum,31,1)
		return 1,0,"Kamu dapat mengubah Devilco Core menjadi Devilco dengan klik dua kali"

	elseif req == 24 then

		if CheckItemPocket(cnum,912,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,32) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,912,1)
		AddSwitchCount(cnum,32,1)
		return 1,0,"Kamu dapat mengubah Birdco Core menjadi Birdco dengan klik dua kali."

	elseif req == 25 then

		if CheckItemPocket(cnum,914,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,33) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,914,1)
		AddSwitchCount(cnum,33,1)
		return 1,0,"Kamu dapat mengubah Flowco Core menjadi Flowco dengan klik dua kali."

	elseif req == 26 then

		if CheckItemPocket(cnum,911,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,34) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,911,1)
		AddSwitchCount(cnum,34,1)
		return 1,0,"Kamu dapat mengubah Beasco Core menjadi Beasco dengan klik dua kali."

	elseif req == 27 then

		if CheckItemPocket(cnum,913,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,35) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,913,1)
		AddSwitchCount(cnum,35,1)
		return 1,0,"Kamu dapat mengubah Inseco Core menjadi Inseco dengan klik dua kali."

	elseif req == 32 then

		if CheckItemPocket(cnum,916,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,36) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,916,1)
		AddSwitchCount(cnum,36,1)
		return 1,0,"Kamu dapat mengubah Metaco Core menjadi Metaco dengan klik dua kali."

	elseif req == 33 then

		if CheckItemPocket(cnum,915,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,37) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,915,1)
		AddSwitchCount(cnum,37,1)
		return 1,0,"Kamu dapat mengubah Measco Core menjadi Measco dengan klik dua kali."

	elseif req == 34 then

		if CheckItemPocket(cnum,908,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,38) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,908,1)
		AddSwitchCount(cnum,38,1)
		return 1,0,"Kamu dapat mengubah Mameo Core menjadi Mameo dengan klik dua kali."

	elseif req == 35 then

		if CheckItemPocket(cnum,905,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,39) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,905,1)
		AddSwitchCount(cnum,39,1)
		return 1,0,"Kamu dapat mengubah MintRable Core menjadi MintRable dengan klik dua kali."

	elseif req == 36 then

		if CheckItemPocket(cnum,906,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,40) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,906,1)
		AddSwitchCount(cnum,40,1)
		return 1,0,"Kamu dapat mengubah WildBuma Core menjadi WildBuma dengan klik dua kali."

	elseif req == 37 then

		if CheckItemPocket(cnum,907,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,41) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,907,1)
		AddSwitchCount(cnum,41,1)
		return 1,0,"Kamu dapat mengubah Manta Core menjadi Manta dengan klik dua kali.."
		
		end
	return 0
end




function NPC_QUEST_293(cnum,reqNumber) --  선물증정 NPC 무료 아이템 증정
	local req = reqNumber

	if req == 1 then
	return 2,0,"Halo. Aku membawa kabar baik. Apa itu? Aku akan memberikan item gratis untukmu~~~",2,"Trial item",3,"Trial item2",4,"Trial item3"

	elseif req == 2 then

		return 9,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",12,"Mencoba mega power",13,"Mencoba skill power",14,"Mencoba double power",15,"Mencoba full mega power",16,"Mencoba full skill power",17,"Mencoba clouds",18,"Mencoba attack speed increase",19,"Mencoba recovery potion"

	elseif req == 3 then

		return 7,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",22,"Mencoba perubahan menjadi Drago",23,"Mencoba perubahan menjadi Devilco",24,"Mencoba perubahan menjadi Birdco",25,"Mencoba perubahan menjadi Flowco",26,"Mencoba perubahan menjadi Beasco",27,"Mencoba perubahan menjadi Inseco"

	elseif req == 4 then

		return 7,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",32,"Mencoba perubahan menjadi Metaco",33,"Mencoba perubahan menjadi Mysco",34,"Mencoba perubahan menjadi Mameo",35,"Mencoba perubahan menjadi MintRable",36,"Mencoba perubahan menjadi WildBuma",37,"Mencoba perubahan menjadi Manta"
	elseif req == 12 then

		if CheckItemPocket(cnum,900,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,22) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,900,1)
		AddSwitchCount(cnum,22,1)
		return 1,0,"Trial item untuk mega power membuat jumlah serangan hero meningkat 100% selama 5 menit."

	elseif req == 13 then

		if CheckItemPocket(cnum,897,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,23) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,897,1)
		AddSwitchCount(cnum,23,1)
		return 1,0,"Trial item untuk skill power membuat jumlah skill hero meningkat 100% selama 5 menit."

	elseif req == 14 then

		if CheckItemPocket(cnum,899,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,24) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,899,1)
		AddSwitchCount(cnum,24,1)
		return 1,0,"Trial item untuk double power membuat besarnya damage serangan hero meningkat 200% selama 5 menit."

	elseif req == 15 then

		if CheckItemPocket(cnum,901,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,25) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,901,1)
		AddSwitchCount(cnum,25,1)
		return 1,0,"Trial item untuk full mega power membuat damage serangan hero dan hench meningkat 100% selama 5 menit."

	elseif req == 16 then

		if CheckItemPocket(cnum,898,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,26) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,898,1)
		AddSwitchCount(cnum,26,1)
		return 1,0,"Trial item untuk full skill power membuat jumlah skill hero dan hench meningkat 100% selama 5 menit."

	elseif req == 17 then

		if CheckItemPocket(cnum,902,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,27) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,902 ,1)
		AddSwitchCount(cnum,27,1)
		return 1,0,"Trial item untuk clouds membuat hero dan semua hench menuju awan."

	elseif req == 18 then

		if CheckItemPocket(cnum,903,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,28) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,903,1)
		AddSwitchCount(cnum,28,1)
		return 1,0,"Trial item untuk scroll of attack speed increase membuat kecepatan serangan meningkat 2X selama 5 menit."

	elseif req == 19 then

		if CheckItemPocket(cnum,904,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,29) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,904,1)
		AddSwitchCount(cnum,29,1)
		return 1,0,"Trial item untuk recovery potion makes kecepatan pemulihan HP/MP hero dan semua hench meningkat 3X selama 5 menit."

	elseif req == 22 then

		if CheckItemPocket(cnum,909,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,30) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,909,1)
		AddSwitchCount(cnum,30,1)
		return 1,0,"Kamu dapat mengubah Drago Core menjadi Drago dengan klik dua kali."

	elseif req == 23 then

		if CheckItemPocket(cnum,910,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,31) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,910,1)
		AddSwitchCount(cnum,31,1)
		return 1,0,"Kamu dapat mengubah Devilco Core menjadi Devilco dengan klik dua kali"

	elseif req == 24 then

		if CheckItemPocket(cnum,912,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,32) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,912,1)
		AddSwitchCount(cnum,32,1)
		return 1,0,"Kamu dapat mengubah Birdco Core menjadi Birdco dengan klik dua kali."

	elseif req == 25 then

		if CheckItemPocket(cnum,914,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,33) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,914,1)
		AddSwitchCount(cnum,33,1)
		return 1,0,"Kamu dapat mengubah Flowco Core menjadi Flowco dengan klik dua kali."

	elseif req == 26 then

		if CheckItemPocket(cnum,911,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,34) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,911,1)
		AddSwitchCount(cnum,34,1)
		return 1,0,"Kamu dapat mengubah Beasco Core menjadi Beasco dengan klik dua kali."

	elseif req == 27 then

		if CheckItemPocket(cnum,913,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,35) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,913,1)
		AddSwitchCount(cnum,35,1)
		return 1,0,"Kamu dapat mengubah Inseco Core menjadi Inseco dengan klik dua kali."

	elseif req == 32 then

		if CheckItemPocket(cnum,916,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,36) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,916,1)
		AddSwitchCount(cnum,36,1)
		return 1,0,"Kamu dapat mengubah Metaco Core menjadi Metaco dengan klik dua kali."

	elseif req == 33 then

		if CheckItemPocket(cnum,915,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,37) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,915,1)
		AddSwitchCount(cnum,37,1)
		return 1,0,"Kamu dapat mengubah Measco Core menjadi Measco dengan klik dua kali."

	elseif req == 34 then

		if CheckItemPocket(cnum,908,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,38) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,908,1)
		AddSwitchCount(cnum,38,1)
		return 1,0,"Kamu dapat mengubah Mameo Core menjadi Mameo dengan klik dua kali."

	elseif req == 35 then

		if CheckItemPocket(cnum,905,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,39) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,905,1)
		AddSwitchCount(cnum,39,1)
		return 1,0,"Kamu dapat mengubah MintRable Core menjadi MintRable dengan klik dua kali."

	elseif req == 36 then

		if CheckItemPocket(cnum,906,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,40) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,906,1)
		AddSwitchCount(cnum,40,1)
		return 1,0,"Kamu dapat mengubah WildBuma Core menjadi WildBuma dengan klik dua kali."

	elseif req == 37 then

		if CheckItemPocket(cnum,907,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,41) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,907,1)
		AddSwitchCount(cnum,41,1)
		return 1,0,"Kamu dapat mengubah Manta Core menjadi Manta dengan klik dua kali.."
		
		end
	return 0
end




function NPC_QUEST_294(cnum,reqNumber) --  선물증정 NPC 무료 아이템 증정
	local req = reqNumber

	if req == 1 then
	return 2,0,"Halo. Aku membawa kabar baik. Apa itu? Aku akan memberikan item gratis untukmu~~~",2,"Trial item",3,"Trial item2",4,"Trial item3"

	elseif req == 2 then

		return 9,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",12,"Mencoba mega power",13,"Mencoba skill power",14,"Mencoba double power",15,"Mencoba full mega power",16,"Mencoba full skill power",17,"Mencoba clouds",18,"Mencoba attack speed increase",19,"Mencoba recovery potion"

	elseif req == 3 then

		return 7,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",22,"Mencoba perubahan menjadi Drago",23,"Mencoba perubahan menjadi Devilco",24,"Mencoba perubahan menjadi Birdco",25,"Mencoba perubahan menjadi Flowco",26,"Mencoba perubahan menjadi Beasco",27,"Mencoba perubahan menjadi Inseco"

	elseif req == 4 then

		return 7,0,"Harap diingat. Kamu hanya dapat menerimanya sekali, yang lebih sedikit dari item mall~OK! Ambil satu persatu.",32,"Mencoba perubahan menjadi Metaco",33,"Mencoba perubahan menjadi Mysco",34,"Mencoba perubahan menjadi Mameo",35,"Mencoba perubahan menjadi MintRable",36,"Mencoba perubahan menjadi WildBuma",37,"Mencoba perubahan menjadi Manta"
	elseif req == 12 then

		if CheckItemPocket(cnum,900,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,22) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,900,1)
		AddSwitchCount(cnum,22,1)
		return 1,0,"Trial item untuk mega power membuat jumlah serangan hero meningkat 100% selama 5 menit."

	elseif req == 13 then

		if CheckItemPocket(cnum,897,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,23) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,897,1)
		AddSwitchCount(cnum,23,1)
		return 1,0,"Trial item untuk skill power membuat jumlah skill hero meningkat 100% selama 5 menit."

	elseif req == 14 then

		if CheckItemPocket(cnum,899,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,24) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,899,1)
		AddSwitchCount(cnum,24,1)
		return 1,0,"Trial item untuk double power membuat besarnya damage serangan hero meningkat 200% selama 5 menit."

	elseif req == 15 then

		if CheckItemPocket(cnum,901,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,25) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,901,1)
		AddSwitchCount(cnum,25,1)
		return 1,0,"Trial item untuk full mega power membuat damage serangan hero dan hench meningkat 100% selama 5 menit."

	elseif req == 16 then

		if CheckItemPocket(cnum,898,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,26) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,898,1)
		AddSwitchCount(cnum,26,1)
		return 1,0,"Trial item untuk full skill power membuat jumlah skill hero dan hench meningkat 100% selama 5 menit."

	elseif req == 17 then

		if CheckItemPocket(cnum,902,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,27) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,902 ,1)
		AddSwitchCount(cnum,27,1)
		return 1,0,"Trial item untuk clouds membuat hero dan semua hench menuju awan."

	elseif req == 18 then

		if CheckItemPocket(cnum,903,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,28) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,903,1)
		AddSwitchCount(cnum,28,1)
		return 1,0,"Trial item untuk scroll of attack speed increase membuat kecepatan serangan meningkat 2X selama 5 menit."

	elseif req == 19 then

		if CheckItemPocket(cnum,904,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,29) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,904,1)
		AddSwitchCount(cnum,29,1)
		return 1,0,"Trial item untuk recovery potion makes kecepatan pemulihan HP/MP hero dan semua hench meningkat 3X selama 5 menit."

	elseif req == 22 then

		if CheckItemPocket(cnum,909,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,30) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,909,1)
		AddSwitchCount(cnum,30,1)
		return 1,0,"Kamu dapat mengubah Drago Core menjadi Drago dengan klik dua kali."

	elseif req == 23 then

		if CheckItemPocket(cnum,910,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,31) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,910,1)
		AddSwitchCount(cnum,31,1)
		return 1,0,"Kamu dapat mengubah Devilco Core menjadi Devilco dengan klik dua kali"

	elseif req == 24 then

		if CheckItemPocket(cnum,912,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,32) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,912,1)
		AddSwitchCount(cnum,32,1)
		return 1,0,"Kamu dapat mengubah Birdco Core menjadi Birdco dengan klik dua kali."

	elseif req == 25 then

		if CheckItemPocket(cnum,914,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,33) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,914,1)
		AddSwitchCount(cnum,33,1)
		return 1,0,"Kamu dapat mengubah Flowco Core menjadi Flowco dengan klik dua kali."

	elseif req == 26 then

		if CheckItemPocket(cnum,911,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,34) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,911,1)
		AddSwitchCount(cnum,34,1)
		return 1,0,"Kamu dapat mengubah Beasco Core menjadi Beasco dengan klik dua kali."

	elseif req == 27 then

		if CheckItemPocket(cnum,913,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,35) > 0 then
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,913,1)
		AddSwitchCount(cnum,35,1)
		return 1,0,"Kamu dapat mengubah Inseco Core menjadi Inseco dengan klik dua kali."

	elseif req == 32 then

		if CheckItemPocket(cnum,916,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,36) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,916,1)
		AddSwitchCount(cnum,36,1)
		return 1,0,"Kamu dapat mengubah Metaco Core menjadi Metaco dengan klik dua kali."

	elseif req == 33 then

		if CheckItemPocket(cnum,915,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,37) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,915,1)
		AddSwitchCount(cnum,37,1)
		return 1,0,"Kamu dapat mengubah Measco Core menjadi Measco dengan klik dua kali."

	elseif req == 34 then

		if CheckItemPocket(cnum,908,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,38) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,908,1)
		AddSwitchCount(cnum,38,1)
		return 1,0,"Kamu dapat mengubah Mameo Core menjadi Mameo dengan klik dua kali."

	elseif req == 35 then

		if CheckItemPocket(cnum,905,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,39) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,905,1)
		AddSwitchCount(cnum,39,1)
		return 1,0,"Kamu dapat mengubah MintRable Core menjadi MintRable dengan klik dua kali."

	elseif req == 36 then

		if CheckItemPocket(cnum,906,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,40) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,906,1)
		AddSwitchCount(cnum,40,1)
		return 1,0,"Kamu dapat mengubah WildBuma Core menjadi WildBuma dengan klik dua kali."

	elseif req == 37 then

		if CheckItemPocket(cnum,907,1) < 0 then 
			return 1,0,"Harap mengosongkan Inventory."
		end

		if GetSwitchCount(cnum,41) > 0 then 
			return 1,0,"Kamu hanya bisa mendapatkan trial item sekali."
		end

		AddItemCount(cnum,907,1)
		AddSwitchCount(cnum,41,1)
		return 1,0,"Kamu dapat mengubah Manta Core menjadi Manta dengan klik dua kali.."
		
		end
	return 0
end