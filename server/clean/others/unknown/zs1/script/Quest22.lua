function NPC_QUEST_253(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 174) < 1 then
			return 2,0,"Halo, apa kamu datang untuk mengambil Hunter's Symbol?",2,"Ya"
		
		else
			return 3,0,"Apa kamu mendapatkan Chisel??",52,"Ya, aku mendapatkannya.",53,"Bagaimana aku dapat memperolehnya?"

		end



	elseif req == 2 then
		return 2,0,"Nah, kamu harus membuktikan bahwa kamu seorang hunter.",12,"Bagaimana aku melakukannya?"


	elseif req == 12 then
		return 2,0,"Sangat mudah. Apa kamu tahu bahwa Chisel yang membuat item enchant?",22,"Itu adalah sesuatu yang umum."


	elseif req == 22 then
		return 2,0,"Bagus. Yang harus dibuktikan adalah cukup membawa Chisel.",32,"Chisel apa yang harus aku bawa?"


	elseif req == 32 then
		return 2,0,"Hunter's Symbol terdiri dari 7 tahap. Tahapnya adalah level 50, 80, 100, 120, 140, 150, 160. Sesuai level, jumlah Chisels berbeda. Level 50 hanya membutuhkan satu dari tiap jenis. Seiring peningkatan level, jumlah Chisel yang kamu butuhkan semakin banyak. Sehingga kamu membutuhkan 7 Chisel saat level 160.",42,"Itu saja?"


	elseif req == 42 then
		AddSwitchCount(cnum, 174, 1)
		StartQuest(cnum, 172)
		return 1,0,"Ya, pergi dan bawakanlah padaku. Aku akan menunggumu."


	elseif req == 52 then
		return 8,0,"Symbol apa yang ingin kamu tukarkan?",62,"LV50 Symbol",63,"LV80 Symbol",64,"LV100 Symbol",65,"LV120 Symbol",66,"LV140 Symbol",67,"LV150 Symbol",68,"LV160 Symbol"


	elseif req == 53 then
		return 1,0,"Kamu dapat memperoleh Chisel dari NPC Munett di selatan Rudis. Sebaiknya kamu menyiapkan Core karena dia sangat suka sekali dengan Core."


	elseif req == 62 then
		if GetHeroLv(cnum) < 50 then
			return 1,0,"Level sebaiknya di atas LV50."

		elseif GetSwitchCount(cnum, 175) > 0 then
			return 1,0,"Kesempatan menukarmu hanya sekali dengan LV50 Symbol."

		elseif GetItemCount(cnum, 311, 0) < 1 or GetItemCount(cnum, 312, 0) < 1 or GetItemCount(cnum, 313, 0) < 1 or GetItemCount(cnum, 314, 0) < 1 or GetItemCount(cnum, 315, 0) < 1 or GetItemCount(cnum, 316, 0) < 1 or GetItemCount(cnum, 317, 0) < 1 or GetItemCount(cnum, 318, 0) < 1 then
			return 1,0,"Kamu harus membawa lebih banyak Chisel.."

		else
			if GetSwitchCount(cnum, 175) < 1 then
				AddItemCount(cnum, 311, -1)
				AddItemCount(cnum, 312, -1)
				AddItemCount(cnum, 313, -1)
				AddItemCount(cnum, 314, -1)
				AddItemCount(cnum, 315, -1)
				AddItemCount(cnum, 316, -1)
				AddItemCount(cnum, 317, -1)
				AddItemCount(cnum, 318, -1)
				AddItemCount(cnum, 8020, 1)
				AddSwitchCount(cnum, 175, 1)
				EndQuest(cnum, 172)
				return 1,0,"Aku akan menukar LV50 Symbol dengan Chisels ."
			else
				return 1,0,"Kesempatan menukarmu hanya sekali dengan LV50 Symbol."
			end

		end


	elseif req == 63 then
		if GetHeroLv(cnum) < 80 then
			return 1,0,"Level sebaiknya diatas LV80."

		elseif GetSwitchCount(cnum, 176) > 0 then
			return 1,0,"Kesempatan menukarmu hanya sekali dengan LV80 Symbol."

		elseif GetItemCount(cnum, 311, 0) < 2 or GetItemCount(cnum, 312, 0) < 2 or GetItemCount(cnum, 313, 0) < 2 or GetItemCount(cnum, 314, 0) < 2 or GetItemCount(cnum, 315, 0) < 2 or GetItemCount(cnum, 316, 0) < 2 or GetItemCount(cnum, 317, 0) < 2 or GetItemCount(cnum, 318, 0) < 2 then
			return 1,0,"Kamu harus membawa lebih banyak Chisel.."

		else
			if GetSwitchCount(cnum, 176) < 2 then
				AddItemCount(cnum, 311, -2)
				AddItemCount(cnum, 312, -2)
				AddItemCount(cnum, 313, -2)
				AddItemCount(cnum, 314, -2)
				AddItemCount(cnum, 315, -2)
				AddItemCount(cnum, 316, -2)
				AddItemCount(cnum, 317, -2)
				AddItemCount(cnum, 318, -2)
				AddItemCount(cnum, 8021, 1)
				AddSwitchCount(cnum,176, 1)
				EndQuest(cnum, 172)
				return 1,0,"Aku akan menukar LV80 Symbol dengan Chisels ."
			else
				return 1,0,"Kesempatan menukarmu hanya sekali dengan LV80 Symbol."
			end

		end


	elseif req == 64 then
		if GetHeroLv(cnum) < 100 then
			return 1,0,"Level sebaiknya di atas LV100."

		elseif GetSwitchCount(cnum, 177) > 0 then
			return 1,0,"Kesempatan menukarmu hanya sekali dengan LV100 Symbol."


		elseif GetItemCount(cnum, 311, 0) < 3 or GetItemCount(cnum, 312, 0) < 3 or GetItemCount(cnum, 313, 0) < 3 or GetItemCount(cnum, 314, 0) < 3 or GetItemCount(cnum, 315, 0) < 3 or GetItemCount(cnum, 316, 0) < 3 or GetItemCount(cnum, 317, 0) < 3 or GetItemCount(cnum, 318, 0) < 3 then
			return 1,0,"Kamu harus membawa lebih banyak Chisel.."

		else
			if GetSwitchCount(cnum, 177) < 3 then
				AddItemCount(cnum, 311, -3)
				AddItemCount(cnum, 312, -3)
				AddItemCount(cnum, 313, -3)
				AddItemCount(cnum, 314, -3)
				AddItemCount(cnum, 315, -3)
				AddItemCount(cnum, 316, -3)
				AddItemCount(cnum, 317, -3)
				AddItemCount(cnum, 318, -3)
				AddItemCount(cnum, 8022, 1)
				AddSwitchCount(cnum,177, 1)
				EndQuest(cnum, 172)
				return 1,0,"Aku akan menukar LV100 Symbol dengan Chisels ."
			else
				return 1,0,"Kesempatan menukarmu hanya sekali dengan LV100 Symbol."
			end
		end


	elseif req == 65 then
		if GetHeroLv(cnum) < 120 then
			return 1,0,"Level sebaiknya di atas LV120."

		elseif GetSwitchCount(cnum, 178) > 0 then
			return 1,0,"Kesempatan menukarmu hanya sekali dengan LV120 Symbol."

		elseif GetItemCount(cnum, 311, 0) < 4 or GetItemCount(cnum, 312, 0) < 4 or GetItemCount(cnum, 313, 0) < 4 or GetItemCount(cnum, 314, 0) < 4 or GetItemCount(cnum, 315, 0) < 4 or GetItemCount(cnum, 316, 0) < 4 or GetItemCount(cnum, 317, 0) < 4 or GetItemCount(cnum, 318, 0) < 4 then
			return 1,0,"Kamu harus membawa lebih banyak Chisel.."

		else
			if GetSwitchCount(cnum, 178) < 3 then
				AddItemCount(cnum, 311, -4)
				AddItemCount(cnum, 312, -4)
				AddItemCount(cnum, 313, -4)
				AddItemCount(cnum, 314, -4)
				AddItemCount(cnum, 315, -4)
				AddItemCount(cnum, 316, -4)
				AddItemCount(cnum, 317, -4)
				AddItemCount(cnum, 318, -4)
				AddItemCount(cnum, 8023, 1)
				AddSwitchCount(cnum,178, 1)
				EndQuest(cnum, 172)
				return 1,0,"Aku akan menukar LV120 Symbol dengan Chisels ."
			else
				return 1,0,"Kesempatan menukarmu hanya sekali dengan LV120 Symbol."
			
			end

		end


	elseif req == 66 then
		if GetHeroLv(cnum) < 140 then
			return 1,0,"Level sebaiknya di atas LV140."

		elseif GetSwitchCount(cnum, 179) > 0 then
			return 1,0,"Kesempatan menukarmu hanya sekali dengan LV140 Symbol."


		elseif GetItemCount(cnum, 311, 0) < 5 or GetItemCount(cnum, 312, 0) < 5 or GetItemCount(cnum, 313, 0) < 5 or GetItemCount(cnum, 314, 0) < 5 or GetItemCount(cnum, 315, 0) < 5 or GetItemCount(cnum, 316, 0) < 5 or GetItemCount(cnum, 317, 0) < 5 or GetItemCount(cnum, 318, 0) < 5 then
			return 1,0,"Kamu harus membawa lebih banyak Chisel.."

		else
			if GetSwitchCount(cnum, 179) < 4 then
				AddItemCount(cnum, 311, -5)
				AddItemCount(cnum, 312, -5)
				AddItemCount(cnum, 313, -5)
				AddItemCount(cnum, 314, -5)
				AddItemCount(cnum, 315, -5)
				AddItemCount(cnum, 316, -5)
				AddItemCount(cnum, 317, -5)
				AddItemCount(cnum, 318, -5)
				AddItemCount(cnum, 8024, 1)
				AddSwitchCount(cnum,179, 1)
				EndQuest(cnum, 172)
				return 1,0,"Aku akan menukar LV140 Symbol dengan Chisels ."
			else
				return 1,0,"Kesempatan menukarmu hanya sekali dengan LV140 Symbol."				

			end

		end



	elseif req == 67 then
		if GetHeroLv(cnum) < 150 then
			return 1,0,"Level sebaiknya di atas LV150."


		elseif GetSwitchCount(cnum, 180) > 0 then
			return 1,0,"Kesempatan menukarmu hanya sekali dengan LV150 Symbol."



		elseif GetItemCount(cnum, 311, 0) < 6 or GetItemCount(cnum, 312, 0) < 6 or GetItemCount(cnum, 313, 0) < 6 or GetItemCount(cnum, 314, 0) < 6 or GetItemCount(cnum, 315, 0) < 6 or GetItemCount(cnum, 316, 0) < 6 or GetItemCount(cnum, 317, 0) < 6 or GetItemCount(cnum, 318, 0) < 6 then
			return 1,0,"Kamu harus membawa lebih banyak Chisel.."

		else
			if GetSwitchCount(cnum, 180) < 4 then
				AddItemCount(cnum, 311, -6)
				AddItemCount(cnum, 312, -6)
				AddItemCount(cnum, 313, -6)
				AddItemCount(cnum, 314, -6)
				AddItemCount(cnum, 315, -6)
				AddItemCount(cnum, 316, -6)
				AddItemCount(cnum, 317, -6)
				AddItemCount(cnum, 318, -6)
				AddItemCount(cnum, 8025, 1)
				AddSwitchCount(cnum,180, 1)
				EndQuest(cnum, 172)
				return 1,0,"Aku akan menukar LV150 Symbol dengan Chisels ."
			else			
				return 1,0,"Kesempatan menukarmu hanya sekali dengan LV150 Symbol."
		
			end
		end


	elseif req == 68 then
		if GetHeroLv(cnum) < 160 then
			return 1,0,"Level sebaiknya di atas LV160."

		elseif GetSwitchCount(cnum, 181) > 0 then
			return 1,0,"Kesempatan menukarmu hanya sekali dengan LV160 Symbol."

		elseif GetItemCount(cnum, 311, 0) < 7 or GetItemCount(cnum, 312, 0) < 7 or GetItemCount(cnum, 313, 0) < 7 or GetItemCount(cnum, 314, 0) < 7 or GetItemCount(cnum, 315, 0) < 7 or GetItemCount(cnum, 316, 0) < 7 or GetItemCount(cnum, 317, 0) < 7 or GetItemCount(cnum, 318, 0) < 7 then
			return 1,0,"Kamu harus membawa lebih banyak Chisel.."

		else
			if GetSwitchCount(cnum, 181) < 4 then			
				AddItemCount(cnum, 311, -7)
				AddItemCount(cnum, 312, -7)
				AddItemCount(cnum, 313, -7)
				AddItemCount(cnum, 314, -7)
				AddItemCount(cnum, 315, -7)
				AddItemCount(cnum, 316, -7)
				AddItemCount(cnum, 317, -7)
				AddItemCount(cnum, 318, -7)
				AddItemCount(cnum, 8026, 1)
				AddSwitchCount(cnum,181, 1)
				EndQuest(cnum, 172)
				return 1,0,"Aku akan menukar LV160 Symbol dengan Chisels ."
			else
				return 1,0,"Kesempatan menukarmu hanya sekali dengan LV160 Symbol."

			end			

		end

	else
		return 0

	end
end