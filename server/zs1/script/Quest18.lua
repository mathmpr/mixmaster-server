 function NPC_QUEST_242(cnum,reqNumber) -- �³�Ÿ(�ɼ� ���� ������ NPC)
	local req = reqNumber

	if req == 1 then
		return 9,0,"Ei, somos conhecidos como Encantadores gêmeos! Trabalhamos duro todos os dias para fortalecer as coisas. Posso adicionar opções a ele. Quer saber mais?",2,"Chisel of Archer",3,"Chisel of Thief",4,"Chisel of Valor",5,"Chisel of Power",6,"Chisel of Rapidity",7,"Chisel of Accuracy",8,"Chisel of Fortune",9,"Chisel of Life"

	elseif req == 2 then
		return 3,0,"Chisel of Archer menambah 1 tingkat ketepatan namun tidak 100% berhasil. Sebuah Pumped's Core dibutuhkan. Namun ingat bahwa Core tersebut akan hilang. Yakin ingin menukarnya?",12,"Ya, aku ingin menukarnya.",13,"Bagaimana menggunakan Chisel of Archer?"

	elseif req == 3 then
		return 3,0,"Chisel of Thief meningkatkan 1 kemampuan Evasion namun tidak 100% berhasil. Dapat ditukarkan dengan menggunakan sebuah Ballza Core. Namun ingat bahwa Core tersebut akan hilang. Yakin ingin menukarnya?",22,"Ya, aku ingin menukarnya.",23,"Bagaimana menggunakan Chisel of Thief?"

	elseif req == 4 then
		return 3,0,"Chisel of Valor meningkatkan 1 kekuatan serangan namun tidak 100% berhasil. Dapat ditukarkan dengan sebuah Rainova Core. Ingat bahwa kamu tidak akan melihat Hench milikmu lagi. Yakin ingin menukarnya?",32,"Ya, aku ingin menukarnya.",33,"Bagaimana menggunakan Chisel of Valor?" 
	
	elseif req == 5 then
		return 3,0,"Chisel of Power meningkatkan 1 kekuatan namun tidak 100% berhasil. Dapat ditukarkan dengan sebuah Lausta Core. Ingat bahwa Hench tersebut akan hilang. Yakin ingin menukarnya?",42,"Ya, aku ingin menukarnya.",43,"Bagaimana menggunakan Chisel of Power?"

	elseif req == 6 then
		return 3,0,"Chisel of Rapidity meningkatkan 2 kecepatan namun tidak 100%. Sebuah BeetlePete dibutuhkan untuk mendapatkan Chisel of Rapidity. Ingat bahwa kamu tidak akan melihat Hench milikmu lagi. Yakin ingin menukarnya?",52,"Ya, aku ingin menukarnya.",53,"Bagaimana menggunakan Chisel of Rapidity?"

	elseif req == 7 then
		return 3,0,"Chisel of Accuracy meningkatkan 1 akurasi namun tidak 100% berhasil. Aku akan menukarnya dengan sebuah Thunderbird Core. Namun ingat bahwa Hench tersebut akan hilang. Yakin ingin menukarnya?",62,"Ya, aku ingin menukarnya.",63,"Bagaimana menggunakan Chisel of Accuracy?"

	elseif req == 8 then
		return 3,0,"Chisel of Fortune meningkatkan 1 Luck namun tidak 100% berhasil. Sebuah Chikaki Core dibutuhkan untuk mendapatkan Chisel of Fortune. Namun aku akan mengambil Core tersebut. Yakin ingin menukarnya?",72,"Ya, aku ingin menukarnya.",73,"Bagaimana menggunakan Chisel of Fortune?"

	elseif req == 9 then
		return 3,0,"Chisel of Life aumenta 2 HP, mas não tem 100% de sucesso. É necessário um Amazonez. Mas vou pegar o Core. Tem certeza que deseja trocá-lo?",82,"Ya, aku ingin menukarnya.",83,"Cara menggunakan Chisel of Life"







	elseif req == 12 then

	  if GetSwitchCount(cnum, 1026) > 0 then
			return 1,0,"Penukaran Chisel of Archer hanya tersedia sekali."
		end
		

		if GetHench(cnum,1,81,1) > 1 then --������� 81
			return 1,0,"Jika kamu memiliki lebih dari 2 Pumped dalam Inventory, kamu tidak dapat menukarkannya. Mengapa tidak kamu simpan terlebih dahulu?"
		end

		if GetHench(cnum,1,81,1) < 1 then
			return 1,0,"Kamu hanya perlu membawa Pumped, yang lainnya tidak perlu." 
		end   

		if CheckItemPocket(cnum,311,1) < 0 then
                	return 1,0,"Karena Inventory penuh, kamu tidak dapat menukarnya. Mohon kosongkan terlebih dulu."
               	end
	
		AddHench(cnum,81,-1) --������� ��������
		AddItemCount(cnum,311,1) -- �û��� �� �߰�
		AddSwitchCount(cnum, 1026 ,1)
		return 1,0,"A troca foi bem sucedida."

	elseif req == 13 then
		return 1,0,"Jika kamu klik dua kali benda enchant dalam Inventory dan klik benda yang ingin ditambahkan option. Maka benda tersebut akan memiliki option setelahnya."





	elseif req == 22 then

    if GetSwitchCount(cnum, 1027) > 0 then
			return 1,0,"O resgate do Chisel of Thief só está disponível uma vez."
		end

		if GetHench(cnum,1,270,1) > 1 then 
			return 1,0,"JSe você tiver mais de 2 bolas em seu inventário, não poderá trocá-las."
		end

		if GetHench(cnum,1,270,1) < 1 then
			return 1,0,"Você só precisa trazer Ballza, não precisa de mais nada."
		end   

		if CheckItemPocket(cnum,313,1) < 0 then
               		return 1,0,"Como o inventário está cheio, você não pode trocá-lo. Por favor, esvazie-o primeiro."
                end
	
		AddHench(cnum,270,-1) --��ķ�� ��������
		AddItemCount(cnum,313,1) -- ������ �� �߰�
		AddSwitchCount(cnum, 1027 ,1)
		return 1,0,"Penukaran berhasil dilakukan."

	elseif req == 23 then
		return 1,0,"Jika kamu klik dua kali enchant dalam Inventory dan klik benda yang ingin diperkuat, maka benda itu akan memiliki enchant setelahnya."






	elseif req == 32 then

	  if GetSwitchCount(cnum, 1028) > 0 then
			return 1,0,"Penukaran Chisel of Valor hanya tersedia sekali."
		end

		if GetHench(cnum,1,109,1) > 1 then 
			return 1,0,"Jika kamu memiliki lebih dari 2 Rainova dalam Inventory, kamu tidak dapat menukarkannya."
		end

		if GetHench(cnum,1,109,1) < 1 then
			return 1,0,"Kamu hanya perlu membawa Rainova. Yang lainnya tidak perlu." 
		end   

		if CheckItemPocket(cnum,312,1) < 0 then
                    	return 1,0,"Karena Inventory penuh, kamu tidak dapat menukarnya. Mohon kosongkan terlebih dulu."	
		end
	
		AddHench(cnum,109,-1) --���̳�� ��������
		AddItemCount(cnum,312,1) -- ����� �� �߰�
		AddSwitchCount(cnum, 1028 ,1)
		return 1,0,"Penukaran berhasil dilakukan."

	elseif req == 33 then
		return 1,0,"Jika kamu klik dua kali enchant dalam Inventory dan klik benda yang ingin diperkuat, maka benda itu akan memiliki enchant setelahnya."






	elseif req == 42 then

	  if GetSwitchCount(cnum, 1029) > 0 then
			return 1,0,"Penukaran Power Chisel hanya tersedia sekali."
		end

		if GetHench(cnum,1,37,1) > 1 then 
			return 1,0,"Jika kamu memiliki lebih dari 2 Lausta dalam Inventory, kamu tidak dapat menukarkannya."
		end

		if GetHench(cnum,1,37,1) < 1 then
			return 1,0,"Kamu hanya perlu membawa Lausta, yang lainnya tidak perlu." 
		end   

		if CheckItemPocket(cnum,314,1) < 0 then
                	return 1,0,"Karena Inventory penuh, kamu tidak dapat menukarnya. Mohon kosongkan terlebih dulu."
                end
	
		AddHench(cnum,37,-1) --�׶��� ��������
		AddItemCount(cnum,314,1) -- ���� �� �߰�
		AddSwitchCount(cnum, 1029 ,1)
		return 1,0,"Penukaran berhasil dilakukan."

	elseif req == 43 then
		return 1,0,"Jika kamu klik dua kali enchant dalam Inventory dan klik benda yang ingin diperkuat, maka benda itu akan memiliki enchant setelahnya."






	elseif req == 52 then

	  if GetSwitchCount(cnum, 1030) > 0 then
			return 1,0,"Penukaran Rapidity Chisel hanya tersedia sekali."
		end

		if GetHench(cnum,1,173,1) > 1 then 
			return 1,0,"Jika kamu memiliki lebih dari 2 BeetlePete dalam Inventory, kamu tidak dapat menukarkannya."
		end 

		if GetHench(cnum,1,173,1) < 1 then
			return 1,0,"Kamu hanya perlu membawa BeetlePete, yang lainnya tidak perlu." 
		end  

		if CheckItemPocket(cnum,315,1) < 0 then
                    	return 1,0,"Karena Inventory penuh, kamu tidak dapat menukarnya. Mohon kosongkan terlebih dulu."
                end
	
		AddHench(cnum,173,-1) --��Ʋ��Ʋ ��������
		AddItemCount(cnum,315,1) -- ��ø�� �� �߰�
		AddSwitchCount(cnum, 1030 ,1)
		return 1,0,"Penukaran berhasil dilakukan."

	elseif req == 53 then
		return 1,0,"Jika kamu klik dua kali enchant dalam Inventory dan klik benda yang ingin diperkuat, maka benda itu akan memiliki enchant setelahnya."







	elseif req == 62 then

    if GetSwitchCount(cnum, 1031) > 0 then
			return 1,0,"Penukaran Accuracy Chisel hanya tersedia sekali."
		end

		if GetHench(cnum,1,145,1) > 1 then 
			return 1,0,"Jika kamu memiliki lebih dari 2 Thunderbird dalam Inventory, kamu tidak dapat menukarkannya."
		end 

		if GetHench(cnum,1,145,1) < 1 then
			return 1,0,"Kamu hanya perlu membawa Thunderbird, yang lainnya tidak perlu." 
		end  

		if CheckItemPocket(cnum,316,1) < 0 then
                    	return 1,0,"Karena Inventory penuh, kamu tidak dapat menukarnya. Mohon kosongkan terlebih dulu."
                end
	
		AddHench(cnum,145,-1) --������� ��������
		AddItemCount(cnum,316,1) -- ��Ȯ�� �� �߰�
		AddSwitchCount(cnum, 1031 ,1)
		return 1,0,"Penukaran berhasil dilakukan."

	elseif req == 63 then
		return 1,0,"Jika kamu klik dua kali enchant dalam Inventory dan klik benda yang ingin diperkuat, maka benda itu akan memiliki enchant setelahnya."






	elseif req == 72 then

    if GetSwitchCount(cnum, 1032) > 0 then
			return 1,0,"Penukaran Fortune Chisel hanya tersedia sekali."
		end

		if GetHench(cnum,1,242,1) > 1 then 
			return 1,0,"Jika kamu memiliki lebih dari 2 Chikaki dalam Inventory, kamu tidak dapat menukarkannya."
		end

		if GetHench(cnum,1,242,1) < 1 then
			return 1,0,"Kamu hanya perlu membawa Chikaki, yang lainnya tidak perlu." 
		end   

		if CheckItemPocket(cnum,317,1) < 0 then
                    	return 1,0,"Karena Inventory penuh, kamu tidak dapat menukarnya. Mohon kosongkan terlebih dulu."
                end
	
		AddHench(cnum,242,-1) --���ϰ� ��������
		AddItemCount(cnum,317,1) -- ����� �� �߰�
		AddSwitchCount(cnum, 1032 ,1)
		return 1,0,"Penukaran berhasil dilakukan."

	elseif req == 73 then
		return 1,0,"Jika kamu klik dua kali enchant dalam Inventory dan klik benda yang ingin diperkuat, maka benda itu akan memiliki enchant setelahnya."







	elseif req == 82 then

    if GetSwitchCount(cnum, 1033) > 0 then
			return 1,0,"Penukaran Life Chisel hanya tersedia sekali."
		end

		if GetHench(cnum,1,196,1) > 1 then 
			return 1,0,"Jika kamu memiliki lebih dari 2 Amazonez dalam Inventory, kamu tidak dapat menukarkannya."
		end

		if GetHench(cnum,1,196,1) < 1 then
			return 1,0,"Kamu hanya perlu membawa Amazonez, yang lainnya tidak perlu." 
		end  

		if CheckItemPocket(cnum,318,1) < 0 then
                    	return 1,0,"Karena Inventory penuh, kamu tidak dapat menukarnya. Mohon kosongkan terlebih dulu."
                end
	
		AddHench(cnum,196,-1) --ŲŸ���� ��������
		AddItemCount(cnum,318,1) -- ������ �� �߰�
		AddSwitchCount(cnum, 1033 ,1)
		return 1,0,"Penukaran berhasil dilakukan."

	elseif req == 83 then
		return 1,0,"Jika kamu klik dua kali enchant dalam Inventory dan klik benda yang ingin diperkuat, maka benda itu akan memiliki enchant setelahnya."
	end

	return 0
end



function NPC_QUEST_287(cnum,reqNumber) -- ����Ÿ(���׷��̵� ������ NPC)
 local req = reqNumber

	if req == 1 then
		return 2,0,"Hei, aku adalah salah seorang dari Enchant Twins. Aku dapat membuat Tear Star.",2,"Apa itu Tear Star?"

	elseif req == 2 then
		return 3,0,"Tear Star dapat meningkatkan option untuk tiap benda. Sehingga option tambahan yang dibuat oleh saudaraku, dapat ditingkatkan dengan Tear Star. Aku membutuhkan sisik Greentail untuk membuatnya. Apa kamu ingin menukar GreenTail dengan Tear Star?",12,"Ya, aku ingin menukarnya.",13,"Cara menggunakan Tear Star"

	elseif req == 12 then

    if GetSwitchCount(cnum, 1034) > 0 then
			return 1,0,"Penukaran Tear Star hanya tersedia sekali."
		end

		if GetHench(cnum,1,45,1) > 1 then 
			return 1,0,"Jika memiliki lebih dari dua Greentail dalam Inventory, kamu tidak dapat menukarkannya. Mengapa tidak kamu simpan terlebih dahulu?"
		end

		if GetHench(cnum,1,45,1) < 1 then
			return 1,0,"Kamu hanya perlu membawa Greentail. Yang lainnya tidak diperlukan." 
		end  

		if CheckItemPocket(cnum,319,1) < 0 then
                    	return 1,0,"Karena Inventory penuh, kamu tidak dapat menukarnya. Mohon kosongkan terlebih dulu."
                end
	
		AddHench(cnum,45,-1) --�׸����� ��������
		AddItemCount(cnum,319,1) -- Ƽ�Ÿ �߰�
		AddSwitchCount(cnum, 1034, 1)
		return 1,0,"Penukaran berhasil dilakukan."

	elseif req == 13 then
		return 1,0,"Klik dua kali pada Tear Star dalam Inventory dan klik benda yang ingin kamu upgrade."
	end

	return 0
end




		



	
		