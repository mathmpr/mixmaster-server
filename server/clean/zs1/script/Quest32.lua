function NPC_QUEST_261(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 216) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"Selamat datang to Ruins of Sinan. Aku keturunan terakhir Sinan. Aku ingin kamu membantuku. Seluruh sejarah hebat Sinan terkubur disini. Suatu hari dulu, ada beberapa monster kuat yang datang dan menyerbu tempat ini. Mereka terlalu kuat untuk aku hadapi. Aku mencari seorang hero untuk membantuku melawan monster tersebut, namun tampaknya kamu belum cukup kuat membantuku. Kembalilah setelah kamu menjadi semakin kuat"


			else
				return 2,0,"Selamat datang to Ruins of Sinan. Aku keturunan terakhir Sinan. Aku ingin kamu membantuku. Seluruh sejarah hebat Sinan terkubur disini. Suatu hari dulu, ada beberapa monster kuat yang datang dan menyerbu tempat ini. Mereka terlalu kuat untuk aku hadapi. Aku mencari seorang hero untuk membantuku melawan monster tersebut. Aku tahu ini merepotkan. Tapi, bisakah kamu membunuh monster tersebut?",2,"Kamu ingin aku membunuh monster itu?"


			end
		else
			return 4,0,"Apa kamu memiliki bukti?",32,"Ini dia.",33,"Tidak",34,"Informasi Quest"

		end


	elseif req == 2 then
		return 2,0,"Aku ingin kamu membunuh pimpinan monsternya. Kalahkan Cupids dan Ninja Girls dipintu masuk Ruins of Sinan dan bawakan aku bukti kamu telah mengalahkannya",12,"Apa buktinya?"


	elseif req == 12 then
		return 2,0,"Kamu dapat membawakan aku Cupid Arrows dan Hair of Ninja Girls sebagai bukti, aku ingin kamu membawakan 20 Cupid Arrows dan 3 Ninja Girls hair",22,"OK."


	elseif req == 22 then
	  StartQuest(cnum, 168)
		AddSwitchCount(cnum, 216, 1)



	elseif req == 32 then
		return 5,0,"Harap memilih batasan level karaktermu",42,"120-129",43,"130-139",44,"140-149",45,"150 or higher"



	elseif req == 42 then
		if GetItemCount(cnum, 4365, 0) < 20 or GetItemCount(cnum, 4364, 0) < 3 then
			return 1,0,"Kamu belum menyelesaikannya, aku yakin kamu dapat melakukannya"


		else
			
			if GetSwitchCount(cnum, 217) < 1 then

				if GetHeroLv(cnum) < 120 or GetHeroLv(cnum) >= 130 then
					return 1,0,"Batas level tidak sesuai."

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddSwitchCount(cnum, 217, 1)
					AddHeroExp(cnum, 6000000)
					EndQuest(cnum, 168)
				end

			else

				if GetHeroLv(cnum) < 120 or GetHeroLv(cnum) >= 130 then
					return 1,0,"Batas level tidak sesuai."

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddHeroExp(cnum, 600000)
				end

			end
			return 1,0,"Kamu berhasil. Terima kasih atas bantuanmu. Namun, mereka memiliki hidup abadi dan akan muncul kembali lagi dan lagi. Dapatkah kamu terus membantuku? Aku akan memberimu EXP sebagai hadiah"
		end



	elseif req == 43 then
		if GetItemCount(cnum, 4365, 0) < 20 or GetItemCount(cnum, 4364, 0) < 3 then
			return 1,0,"Kamu belum menyelesaikannya, aku yakin kamu dapat melakukannya"


		else
			
			if GetSwitchCount(cnum, 218) < 1 then

				if GetHeroLv(cnum) < 130 or GetHeroLv(cnum) >= 140 then
					return 1,0,"Batas level tidak sesuai."

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddSwitchCount(cnum, 218, 1)
					AddHeroExp(cnum, 20000000)
					EndQuest(cnum, 168)
				end

			else

				if GetHeroLv(cnum) < 130 or GetHeroLv(cnum) >= 140 then
					return 1,0,"Batas level tidak sesuai."

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddHeroExp(cnum, 2000000)
				end

			end
			return 1,0,"Kamu berhasil. Terima kasih atas bantuanmu. Namun, mereka memiliki hidup abadi dan akan muncul kembali lagi dan lagi. Dapatkah kamu terus membantuku? Aku akan memberimu EXP sebagai hadiah"
		end



	elseif req == 44 then
		if GetItemCount(cnum, 4365, 0) < 20 or GetItemCount(cnum, 4364, 0) < 3 then
			return 1,0,"Kamu belum menyelesaikannya, aku yakin kamu dapat melakukannya"


		else
			
			if GetSwitchCount(cnum, 219) < 1 then

				if GetHeroLv(cnum) < 140 or GetHeroLv(cnum) >= 150 then
					return 1,0,"Batas level tidak sesuai."

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddSwitchCount(cnum, 219, 1)
					AddHeroExp(cnum, 80000000)
					EndQuest(cnum, 168)
				end

			else

				if GetHeroLv(cnum) < 140 or GetHeroLv(cnum) >= 150 then
					return 1,0,"Batas level tidak sesuai."

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddHeroExp(cnum, 8000000)
				end

			end
			return 1,0,"Kamu berhasil. Terima kasih atas bantuanmu. Namun, mereka memiliki hidup abadi dan akan muncul kembali lagi dan lagi. Dapatkah kamu terus membantuku? Aku akan memberimu EXP sebagai hadiah"
		end



	elseif req == 45 then
		if GetItemCount(cnum, 4365, 0) < 20 or GetItemCount(cnum, 4364, 0) < 3 then
			return 1,0,"Kamu belum menyelesaikannya, aku yakin kamu dapat melakukannya"


		else
			
			if GetSwitchCount(cnum, 220) < 1 then

				if GetHeroLv(cnum) < 150 then
					return 1,0,"Batas level tidak sesuai."

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddSwitchCount(cnum, 220, 1)
					AddHeroExp(cnum, 100000000)
					EndQuest(cnum, 168)
				end

			else

				if GetHeroLv(cnum) < 150 then
					return 1,0,"Batas level tidak sesuai."

				else 
					AddItemCount(cnum, 4365, -20)			
					AddItemCount(cnum, 4364, -3)
					AddHeroExp(cnum, 10000000)
				end

			end
			return 1,0,"Kamu berhasil. Terima kasih atas bantuanmu. Namun, mereka memiliki hidup abadi dan akan muncul kembali lagi dan lagi. Dapatkah kamu terus membantuku? Aku akan memberimu EXP sebagai hadiah"
		end
	

	elseif req == 34 then
		return 1,0,"Kamu dapat membawakan aku Cupid Arrows dan Hair of Ninja Girls sebagai bukti, aku ingin kamu membawakan 20 Cupid Arrows dan 3 Ninja Girls hair"

	else
		return 0

	end
end	







