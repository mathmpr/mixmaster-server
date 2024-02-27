function NPC_QUEST_297(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 166) < 1 then
			return 3,0,"Halo, aku adalah Carrez. Apa kabar?",2,"Nah, Garrick yang memperkenalkanmu kepadaku..",3,"Tidak, maafkan aku."

		else
			return 3,0,"Apa kamu mendapatkannya?",101,"Ya",102,"[Info Quest.]"

		end


	elseif req == 2 then
		return 2,0,"Ah~ Kamu membutuhkan sesuatu dariku.",12,"Ya. Kamu adalah seorang pemburu."


	elseif req == 12 then
		return 2,0,"Hu~hu~ Aku dahulu sering berburu dalam Dungeon of Valor.",22,"Apa kamu tahu jenis bendanya?"


	elseif req == 22 then
		return 2,0,"Tentu. Aku sering mendapatkannya.",32,"Dapatkan kamu menjualnya?"


	elseif req == 32 then
		return 2,0,"Maaf, tidak aku jual. Namun, aku akan memberikannya jika kamu memenuhi permintaanku..",42,"Permintaan apa?"


	elseif req == 42 then
		if GetHeroLv(cnum) < 50 then
			return 1,0,"Kamu tampak lemah dan tidak meyakinkan. Kembalilah setelah mencapai  level 50."
		else
			return 2,0,"Aku akan memberimu tugas jika kamu berhasil mendapatkan Hunter's Symbol untuk levelmu.",52,"Hunter's Symbol?"
		end


	elseif req == 52 then
		return 2,0,"Ya. Bawakanlah Hunter's Symbol padaku. Kamu dapat memperolehnya dari Guild Representative.",62,"Ya, Aku akan mengambilkannya"


	elseif req == 62 then
		AddSwitchCount(cnum, 166, 1)
		StartQuest(cnum, 171)
		return 1,0,"Nah, aku harap begitu."




--레벨 선택
	elseif req == 101 then
		return 8,0,"Tentukan batasan level yang akan diambil",112,"Level 50",113,"Level 80",114,"Level 100",115,"Level 120",116,"Level 140",117,"Level 150",118,"Level 160"





--퀘스트 설명
	elseif req == 102 then
		return 1,0,"Dari sini kamu dapat melanjutkan Quest hingga 21 kali berdasarkan levelnya. Level minimum adalah 50 untuk Quest pertama. Dan dapat mengambil Quest sebanyak yang ditentukan ketika mencapai level 80,100,120,140,150,160. Quest-nya adalah mengambil Symbol yang sesuai dengan."





--50레벨 대

	elseif req == 112 then
		if GetHeroLv(cnum) < 50 then
			return 1,0,"Level sebaiknya di atas LV50."

		else
			if GetSwitchCount(cnum, 167) < 1 then
				if GetItemCount(cnum,8020, 0) < 1 then
					return 1,0,"Aku tidak melihat Hunter's Symbol (LV50)."
			
				else
					return 2,0,"Wow, kamu telah mendapatkan Hunter's Symbol (LV50). Aku akan menukarnya dengan jenis item yang kujanjikan.",202,"[Tukar sekarang]",203,"Tukar nanti"

				end


			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV50 karena kamu telah mengambilnya."


			end
		end


	elseif req == 202 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan.",302,"Dragon type Item",303,"Devil type Item",304,"Animal type Item",5,"Bird  type Item",306,"Berikutnya"


	elseif req == 306 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan.",312,"Insect type Item",313,"Plant type Item",314,"Mystery type Item",315,"Metal type Item",202,"Sebelumnya"


	elseif req == 302 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV50)."

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV50) dengan Dragon's Flame."
		
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV50 karena kamu telah mengambilnya."

			end

		end


	elseif req == 303 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV50)."

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV50) dengan Magic Book of Darkness."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV50 karena kamu telah mengambilnya."

			end

		end



	elseif req == 304 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV50) ."

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV50) dengan Unicorn's Horn."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV50 karena kamu telah mengambilnya."

			end
		end


	elseif req == 305 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV50)."

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV50) dengan Angel's Wing."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV50 karena kamu telah mengambilnya."

			end
		end



	elseif req == 312 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV50)."

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV50) dengan Insect Fossil."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV50 karena kamu telah mengambilnya."

			end
		end



	elseif req == 313 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV50)."

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV50) dengan Life Flower."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV50 karena kamu telah mengambilnya."

			end
		end


	elseif req == 314 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV50)."

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV50) dengan Soul's Crystal."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV50 karena kamu telah mengambilnya."

			end
		end



	elseif req == 315 then
		if GetItemCount(cnum,8020, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV50)."

		else
			if GetSwitchCount(cnum, 167) < 1 then
				AddSwitchCount(cnum, 167, 1)
				AddItemCount(cnum, 8020, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV50) dengan Strong Heart."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV50 karena kamu telah mengambilnya."

			end
		end






--80레벨 대

	elseif req == 113 then
		if GetHeroLv(cnum) < 80 then
			return 1,0,"Level sebaiknya di atas LV80."
		
		else
			if GetSwitchCount(cnum, 168) < 1 then
				if GetItemCount(cnum,8021, 0) < 1 then
					return 1,0,"Aku tidak melihat Hunter's Symbol (LV80)."
			
				else
					return 2,0,"Wow, kamu telah mendapatkan Hunter's Symbol (LV80). Aku akan menukarnya dengan jenis item yang kujanjikan.",212,"[Tukar sekarang]",213,"Tukar nanti"

				end
	

			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV80 karena kamu telah mengambilnya dua kali."
		

			end
		end



	elseif req == 212 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan.",322,"Dragon type Item",323,"Devil type Item",324,"Animal type Item",325,"Bird  type Item",326,"Berikutnya"


	elseif req == 326 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan.",332,"Insect type Item",333,"Plant type Item",334,"Mystery type Item",335,"Metal type Item",212,"Sebelumnya"


	elseif req == 322 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol  (LV80)."

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol  (LV80) dengan Dragon's Flame."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV80 karena kamu telah mengambilnya dua kali."
			
			end
		end



	elseif req == 323 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol  (LV80)."

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol  (LV80) dengan Magic Book of Darkness."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV80 karena kamu telah mengambilnya dua kali."
			
			end
		end



	elseif req == 324 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV80)."

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV80) dengan Unicorn's Horn."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV80 karena kamu telah mengambilnya dua kali."
			
			end
		end



	elseif req == 325 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV80)."

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV80) dengan Angel's Wing."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV80 karena kamu telah mengambilnya dua kali."
			
			end
		end



	elseif req == 332 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV80)."

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV80) dengan Insect Fossil."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV80 karena kamu telah mengambilnya dua kali."
			
			end
		end


	elseif req == 333 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV80)."

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV80) dengan Life Flower."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV80 karena kamu telah mengambilnya dua kali."
			
			end
		end



	elseif req == 334 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV80)."

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV80) dengan Soul's Jewelry."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV80 karena kamu telah mengambilnya dua kali."
			
			end
		end



	elseif req == 335 then
		if GetItemCount(cnum,8021, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV80)."

		else
			if GetSwitchCount(cnum, 168) < 1 then
				AddSwitchCount(cnum, 168, 1)
				AddItemCount(cnum, 8021, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV80) dengan Strong Heart."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV80 karena kamu telah mengambilnya dua kali."
			
			end
		end




--100레벨 대

	elseif req == 114 then
		if GetHeroLv(cnum) < 100 then
			return 1,0,"Level sebaiknya di atas LV100."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				if GetItemCount(cnum,8022, 0) < 1 then
					return 1,0,"Aku tidak melihat Hunter's Symbol (LV100)."
			
				else
					return 2,0,"Wow, kamu telah mendapatkan Hunter's Symbol (LV100). Aku akan menukarnya dengan jenis item yang kujanjikan.",222,"[Tukar sekarang]",223,"Tukar nanti"

				end


			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV100 karena kamu telah mengambilnya tiga kali."


			end
		end




	elseif req == 222 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan",342,"Dragon type Item",343,"Devil type Item",344,"Animal type Item",345,"Bird type Item",346,"Berikutnya"


	elseif req == 346 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan",352,"Insect type Item",353,"Plant type Item",354,"Mystery type Item",355,"Mera type Item",222,"Berikutnya"



	elseif req == 342 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV100)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV100) dengan Drangon's Flame."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV100 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 343 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV100)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV100) dengan Magic Book of Darkness."

			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV100 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 344 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV100)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV100) dengan Unicorn's Horn."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV100 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 345 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV100)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV100) dengan Angel's Wing."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV100 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 352 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV100)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV100) dengan Insect Fossil."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV100 karena kamu telah mengambilnya tiga kali."

			end
		end


	elseif req == 353 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV100)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV100) dengan Life Flower."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV100 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 354 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV100)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV100) dengan Soul's Crystal."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV100 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 355 then
		if GetItemCount(cnum,8022, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV100)."

		else
			if GetSwitchCount(cnum, 169) < 1 then
				AddSwitchCount(cnum, 169, 1)
				AddItemCount(cnum, 8022, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV100) dengan Strong Heart."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV100 karena kamu telah mengambilnya tiga kali."

			end
		end


--120레벨 대

	elseif req == 115 then
		if GetHeroLv(cnum) < 120 then
			return 1,0,"Level sebaiknya di atas LV120."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				if GetItemCount(cnum,8023, 0) < 1 then
					return 1,0,"Aku tidak melihat Hunter's Symbol (LV120)."
			
				else
					return 2,0,"Wow, kamu telah mendapatkan Hunter's Symbol (LV120). Aku akan menukarnya dengan jenis item yang kujanjikan.",232,"[Tukar sekarang]",233,"Tukar nanti"

				end


			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV120 karena kamu telah mengambilnya tiga kali."


			end
		end



	elseif req == 232 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan",362,"Dragon type Item",363,"Devil type Item",364,"Animal type Item",365,"Bird type Item",366,"Berikutnya"


	elseif req == 366 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan",372,"Insect type Item",373,"Plant type Item",374,"Mystery type Item",375,"Mera type Item",232,"Berikutnya"



	elseif req == 362 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV120)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV120) dengan Drangon's Flame."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV120 karena kamu telah mengambilnya tiga kali."

			end

		end



	elseif req == 363 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV120)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV120) dengan Magic Book of Darkness."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV120 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 364 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV120)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV120) dengan Unicorn's Horn."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV120 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 365 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV120)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV120) dengan Angel's Wing."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV120 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 372 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV120)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV120) dengan Insect Fossil."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV120 karena kamu telah mengambilnya tiga kali."

			end
		end


	elseif req == 373 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV120)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV120) dengan Life Flower."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV120 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 374 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV120)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV120) dengan Soul's Crystal."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV120 karena kamu telah mengambilnya tiga kali."

			end
		end



	elseif req == 375 then
		if GetItemCount(cnum,8023, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV120)."

		else
			if GetSwitchCount(cnum, 170) < 1 then
				AddSwitchCount(cnum, 170, 1)
				AddItemCount(cnum, 8023, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV120) dengan Strong Heart."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV120 karena kamu telah mengambilnya tiga kali."

			end
		end


--140레벨 대

	elseif req == 116 then
		if GetHeroLv(cnum) < 140 then
			return 1,0,"Level sebaiknya di atas LV140."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				if GetItemCount(cnum,8024, 0) < 1 then
					return 1,0,"Aku tidak melihat Hunter's Symbol (LV140)."
			
				else
					return 2,0,"Wow, kamu telah mendapatkan Hunter's Symbol (LV140). Aku akan menukarnya dengan jenis item yang kujanjikan.",242,"[Tukar sekarang]",243,"Tukar nanti"

				end


			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV140 karena kamu telah mengambilnya empat kali."


			end
		end



	elseif req == 242 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan",382,"Dragon type Item",383,"Devil type Item",384,"Animal type Item",385,"Bird type Item",386,"Berikutnya"


	elseif req == 386 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan",392,"Insect type Item",393,"Plant type Item",394,"Mystery type Item",395,"Mera type Item",242,"Berikutnya"



	elseif req == 382 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV140)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV140) dengan Drangon's Flame."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV140 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 383 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV140)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV140) dengan Magic Book of Darkness."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV140 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 384 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV140)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV140) dengan Unicorn's Horn."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV140 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 385 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV140)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV140) dengan Angel's Wing."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV140 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 392 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV140)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV140) dengan Insect Fossil."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV140 karena kamu telah mengambilnya empat kali."

			end
		end


	elseif req == 393 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV140)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV140) dengan Life Flower."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV140 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 394 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV140)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV140) dengan Soul's Crystal."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV140 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 395 then
		if GetItemCount(cnum,8024, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV140)."

		else
			if GetSwitchCount(cnum, 171) < 1 then
				AddSwitchCount(cnum, 171, 1)
				AddItemCount(cnum, 8024, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV140) dengan Strong Heart."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV140 karena kamu telah mengambilnya empat kali."

			end
		end


--150레벨 대

	elseif req == 117 then
		if GetHeroLv(cnum) < 150 then
			return 1,0,"Level sebaiknya di atas LV150."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				if GetItemCount(cnum,8025, 0) < 1 then
					return 1,0,"Aku tidak melihat Hunter's Symbol (LV150)."
			
				else
					return 2,0,"Wow, kamu telah mendapatkan Hunter's Symbol (LV150). I'll exchage the Symbol with type item as promise .",252,"[Tukar sekarang]",253,"Tukar nanti"

				end


			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV150 karena kamu telah mengambilnya empat kali."


			end

		end

	elseif req == 252 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan",402,"Dragon type Item",403,"Devil type Item",404,"Animal type Item",405,"Bird type Item",406,"Berikutnya"


	elseif req == 406 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan",412,"Insect type Item",413,"Plant type Item",414,"Mystery type Item",415,"Mera type Item",252,"Berikutnya"



	elseif req == 402 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV150)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV150) dengan Drangon's Flame."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV150 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 403 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV150)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV150) dengan Magic Book of Darkness."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV150 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 404 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV150)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV150) dengan Unicorn's Horn."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV150 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 405 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV150)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV150) dengan Angel's Wing."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV150 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 412 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV150)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV150) dengan Insect Fossil."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV150 karena kamu telah mengambilnya empat kali."

			end
		end


	elseif req == 413 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV150)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV150) dengan Life Flower."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV150 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 414 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV150)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV150) dengan Soul's Crystal."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV150 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 415 then
		if GetItemCount(cnum,8025, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV150)."

		else
			if GetSwitchCount(cnum, 172) < 1 then
				AddSwitchCount(cnum, 172, 1)
				AddItemCount(cnum, 8025, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV150) dengan Strong Heart."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV150 karena kamu telah mengambilnya empat kali."

			end
		end



--160레벨 대

	elseif req == 118 then
		if GetHeroLv(cnum) < 160 then
			return 1,0,"Level sebaiknya di atas LV160."

		else
			if GetSwitchCount(cnum, 173) < 1 then

				if GetItemCount(cnum,8026, 0) < 1 then
					return 1,0,"Aku tidak melihat Hunter's Symbol (LV160)."
			
				else
					return 2,0,"Wow, kamu telah mendapatkan Hunter's Symbol (LV160). Aku akan menukarnya dengan jenis item yang kujanjikan.",262,"[Tukar sekarang]",263,"Tukar nanti"

				end


			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV160 karena kamu telah mengambilnya empat kali."


			end
		end



	elseif req == 262 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan",422,"Dragon type Item",423,"Devil type Item",424,"Animal type Item",425,"Bird type Item",426,"Berikutnya"


	elseif req == 426 then
		return 6,0,"Tentukan jenis item yang ingin kamu tukarkan",432,"Insect type Item",433,"Plant type Item",434,"Mystery type Item",435,"Mera type Item",262,"Berikutnya"



	elseif req == 422 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV160)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4286, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV160) dengan Drangon's Flame."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV160 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 423 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV160)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4287, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV160) dengan Magic Book of Darkness."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV160 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 424 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV160)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4288, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV160) dengan Unicorn's Horn."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV160 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 425 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV160)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4289, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV160) dengan Angel's Wing."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV160 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 432 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV160)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4290, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV160) dengan Insect Fossil."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV160 karena kamu telah mengambilnya empat kali."

			end
		end


	elseif req == 433 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV160)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4291, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV160) dengan Life Flower."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV160 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 434 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV160)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4292, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV160) dengan Soul's Crystal."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV160 karena kamu telah mengambilnya empat kali."

			end
		end



	elseif req == 435 then
		if GetItemCount(cnum,8026, 0) < 1 then
			return 1,0,"Aku tidak melihat Hunter's Symbol (LV160)."

		else
			if GetSwitchCount(cnum, 173) < 1 then
				AddSwitchCount(cnum, 173, 1)
				AddItemCount(cnum, 8026, -1)
				AddItemCount(cnum, 4293, 1)
				EndQuest(cnum, 171)
				return 1,0,"Aku telah menukarkan Hunter's Symbol (LV160) dengan Strong Heart."
			else
				return 1,0,"Kamu tidak dapat mengambil Quest LV160 karena kamu telah mengambilnya empat kali."

			end
		end

	else
		return 0

	end
end