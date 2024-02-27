function NPC_QUEST_207(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) < 3 then
			return 1,0,"Aku sangat merindukannya. Mengapa ia tidak datang?"

		else

			if GetSwitchCount(cnum, 277) < 1 then --6
				if GetSwitchCount(cnum, 275) < 1 then --5
					if GetSwitchCount(cnum, 273) < 1 then --4
						if GetSwitchCount(cnum, 271) < 1 then --3
							if GetSwitchCount(cnum, 269) < 1 then --2
								if GetSwitchCount(cnum, 268) < 1 then --1
		      							return 2,0,"Selamat datang. Kamu pasti elf yang menggunakan pistol sebagai senjata. Aku akan memperkenalkan diriku. Namaku adalah Damoah, dan aku mengelola toko loak di Majirita.",2,"Senang bertemu denganmu."
      
      								else
      									return 2,0,"Nah, apa kamu membawa Control Unit Platforms?",42,"Ya, aku membawanya."
      
      								end
      							else
      								if GetHeroLv(cnum) < 30 then
      									return 1,0,"Perakitan control unit platform belum selesai. Aku akan memanggilmu jika sudah selesai."
      
      
      								else
      									if GetSwitchCount(cnum, 270) < 1 then
      										return 2,0,"Selamat datang. Aku sedang menunggumu. Aku telah selesai merakit control unit platform. Kita masih punya banyak pekerjaan menanti namun awalnya tampak bagus.",52,"Apa yang harus aku lakukan selanjutnya?"
      
      									else
      										return 2,0,"Apa kamu membawa Input Devices?",72,"Ya, aku melakukannya."
      	
      									end
       								end
		      					end
      						else
	      						if GetSwitchCount(cnum, 272) < 1 then
			      					if GetHeroLv(cnum) < 50 then
      									return 1,0,"Perakitan Input device belum selesai. Aku akan memanggilmu jika sudah selesai."
      
      								else
      									return 2,0,"Selamat datang. Aku sedang menunggumu. Control unit hampir selesai diperbaiki. Kita dapat melanjutkan ke tahap berikutnya jika memiliki Control Lever.",82,"Apa yang harus aku lakukan selanjutnya?"
      
      								end
      							else
      								return 2,0,"Apa kamu membawa bagian Control Lever?",102,"Ya, aku melakukannya."
      
      							end
      	
      						end
    					else
						if GetSwitchCount(cnum, 274) < 1 then
							if GetHeroLv(cnum) < 70 then                		
						                return 1,0,"Aku belum punya rencana untuk langkah berikutnya. Aku akan memanggilmu jika telah siap. Beristirahatlah dahulu."
      
      						        else
						                return 2,0,"Selamat datang. Aku sedang menunggumu. Nah, sudah saatnya untuk langkah berikutnya. Kita harus memperbaiki bagian sendi, namun terlalu banyak bagian yang hilang. Aku tidak yakin harus memulai dari mana.",112,"Apa yang harus aku lakukan selanjutnya?"
              
              						end
						else
							return 3,0,"Apa kamu membawa seluruh bagian yang kami butuhkan?",132,"Ya, aku melakukannya.",133,"Informasi Bagian Yang Dibutuhkan."

						end
					end
				else
					if GetHeroLv(cnum) < 90 then
						return 1,0,"Aku belum punya rencana untuk langkah berikutnya. Aku akan memanggilmu jika telah siap. Beristirahatlah dahulu."
            
					else
						if GetSwitchCount(cnum, 276) < 1 then
							return 2,0,"Selamat datang. Aku sedang menunggumu. Nah, sudah saatnya untuk langkah berikutnya.",142,"Apa yang harus aku lakukan selanjutnya?"
	
						else
							return 3,0,"Nah, apa kamu membawa iron dan steel seperti yang kuminta?",162,"Ya, aku melakukannya.",163,"Informasi Quest"
	
						end
					end
				end
			else
		
				if GetSwitchCount(cnum, 279) > 0 then
					return 1,0,"Aku harap monster ini akan berguna dalam petualanganmu."

				else

					if GetSwitchCount(cnum, 278) < 1 then
						if GetHeroLv(cnum) < 110 then
							return 1,0,"Aku belum punya rencana untuk langkah berikutnya. Aku akan memanggilmu jika telah siap. Beristirahatlah dahulu."

						else
							return 2,0,"Selamat datang. Aku sedang menunggumu. Armour juga hampir selesai. Satu hal terakhir yang perlu dilakukan yaitu memberi jiwa kedalam armour.",172,"Menambahkan jiwa?"

						end
					else

						return 3,0,"Nah, apa kamu menemukan Sistana's Soul?",192,"Ya, aku melakukannya.",193,"Informasi Quest"
				
					end
	
				end
			end
		end







	elseif req == 2 then
		return 2,0,"Aku sedang mencarimu untuk meminta bantuan. Salah satu temanku menemukan sebuah Core dari monster logam dari dungeon, namun dia berkata bahwa benda itu tidak bergerak meski telah diubah menjadi hench.",12,"Itu aneh."


	elseif req == 12 then
		return 2,0,"Benarkan? Ketika aku memeriksanya, aku mengetahui bahwa itu rusak karena cidera yang menumpuk. Oleh karena itu, maukah kamu membantuku mengumpulkan bagiannya yang rusak?",22,"Bagaimana aku dapat menolongmu?"


	elseif req == 22 then
		return 2,0,"Hebat. Aku rasa aku menemukan orang yang tepat. Pertama kita harus memperbaiki control unit. Menurut penelitianku kamu dapat memperoleh control unit platform dari Nippa di Mekrita Central Prairie. Kita membutuhkan 6. Ayo kita mulai.",32,"Oke."


	elseif req == 32 then
		StartQuest(cnum, 132)
		AddSwitchCount(cnum, 268, 1)






	
	elseif req == 42 then
		if GetItemCount(cnum, 4410, 0) < 6 then
			return 1,0,"Mengumpulkan bagian control unit platform bukanlah tugas sulit. Kamu sebaiknya bergegas! Apa? Kamu lupa bagaimana mendapatkannya? Kamu dapat memperolehnya dari monster bernama Nippa di Mekrita Central Prairie."

		else
			AddItemCount(cnum, 4410, -6)
			AddSwitchCount(cnum, 269, 1)
			AddHeroExp(cnum, 600)
			EndQuest(cnum, 132)
			return 1,0,"Bagus. Kamu membawa bagian control unit platform. Tidak sulit bukan? Aku akan mulai merakit bagian control unit ini. Aku akan memanggilmu jika aku telah siap untuk proses selanjutnya."

		end






	elseif req == 52 then
		return 2,0,"Aku membutuhkan 2 bagian lagi untuk control unit, yaitu input devices dan control lever. Menurut penelitianku kamu dapat memperoleh input devices dari AncientKilla di Rollingcores Field. Kita membutuhkan 2.",62,"Oke. Aku mengerti."


	elseif req == 62 then
		StartQuest(cnum, 133)
		AddSwitchCount(cnum, 270, 1)






	elseif req == 72 then
		if GetItemCount(cnum, 4411, 0) < 2 then
			return 1,0,"Aku tidak melihat input device. Jangan bilang kamu akan menyerah. Apa kamu lupa cara mendapatkannya? Kamu dapat memperolehnya dari AncientKilla di Rollingcores Field."

		else
			AddItemCount(cnum, 4411, -2)
			AddSwitchCount(cnum, 271, 1)
			AddHeroExp(cnum, 20000)
			EndQuest(cnum, 133)
			return 1,0,"Bagus. Kamu membawa input devices. Tidak sama persis namun aku dapat mengakalinya. Aku akan memanggilmu jika aku telah siap untuk proses selanjutnya."
		end







	elseif req == 82 then
		return 2,0,"Langkah berikutnya, aku membutuhkan control lever untuk menyelesaikan memperbaiki control unit. Menurut penelitianku kamu dapat memperolehnya dari Gamerika di Fork Road.",92,"Oke. Aku mengerti."
		

	elseif req == 92 then
		StartQuest(cnum, 134)
		AddSwitchCount(cnum, 272, 1)




	elseif req == 102 then
		if GetItemCount(cnum, 4412, 0) < 1 then 
			return 1,0,"Aku tidak melihat control lever. Jangan bilang kamu akan menyerah. Apa kamu lupa cara mendapatkannya? Kamu dapat memperolehnya dari Gamerika di Fork Road."


		else

			return 2,0,"Bagus. Kamu telah membawa seluruh bagian untuk control unit. Kini kita dapat menyelesaikan perbaikan control unit. Tunggu sebentar.",200,"Ya."



		end



	elseif req == 112 then
		return 2,0,"Aku akan memperbaiki langsung dari seluruh bagian, aku membutuhkan 1 Soulbraker's Middle Part, 2 Soulbraker's Leg Parts dan sebuah Wing of Ayaya. Kamu dapat menemukan Soulbraker dan Ayaya di Twin Valley dan Valcan Valley.",122,"Oke. Aku mengerti."


	elseif req == 122 then
		StartQuest(cnum, 135)
		AddSwitchCount(cnum, 274, 1)
		


	elseif req == 200 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Tidak ada ruang dalam Inventory Core."

		else
			AddHench(cnum, 541, 1)
			AddItemCount(cnum, 4412, -1)
			AddSwitchCount(cnum, 273, 1)
			AddHeroExp(cnum, 100000)
			EndQuest(cnum, 134)
			return 1,0,"Aku berhasil memindahkan MechaOstrich dengan control unit yang kubuat atas bantuanmu. Masih membutuhkan beberapa upgrade namun masih cukup membantu dirimu sekarang. Kamu dapat menyimpannya. Aku akan memanggilmu jika aku telah siap untuk proses selanjutnya. Beristirahatlah sejenak."
		end		


	elseif req == 132 then
		if GetItemCount(cnum, 4414, 0) < 1 then
			return 1,0,"Aku tidak melihat Soulbraker's Middle Part. Jangan bilang kamu akan menyerah. Apa kamu lupa cara mendapatkannya? Kamu dapat memperolehnya dari Twin Valley dan Valcan Valley."

		elseif GetItemCount(cnum, 4415, 0) < 2 then
			return 1,0,"Aku tidak melihat Soulbraker's Leg Parts. Jangan bilang kamu akan menyerah. Apa kamu lupa cara mendapatkannya? Kamu dapat memperolehnya dari Twin Valley dan Valcan Valley."

		elseif GetItemCount(cnum, 4416, 0) < 1 then
			return 1,0,"Aku tidak melihat Wing of Ayaya. Jangan bilang kamu akan menyerah. Apa kamu lupa cara mendapatkannya? Kamu dapat memperolehnya dari Twin Valley dan Valcan Valley."		
      
		else
			return 2,0,"Sempurna. Bagian ini cukup sesuai sebagai pengganti. Kerja bagus. Aku dapat merakit bentuk MechaOstrich dengan bagian ini. Apakah kamu membawa MechaOstrich yang kuberikan sebelumnya? Tolong berikan kembali padaku.",134,"Berikan MechaOstrich"
		end


	elseif req == 133 then
		return 1,0,"Soulbraker : Soulbraker's Middle Parts *1, Soulbraker's Leg Parts *2@ Ayaya : Wing of Ayaya *2"


	elseif req == 134 then
		if GetHench(cnum, 1, 541, 1) < 1 then
			return 1,0,"Aku tidak melihat MechaOstrich. Di mana?"


		else
			EndQuest(cnum, 135)
			AddItemCount(cnum, 4414, -1)
			AddItemCount(cnum, 4415, -2)
			AddItemCount(cnum, 4416, -1)
			AddSwitchCount(cnum, 275, 1)
			AddHench(cnum, 541, -1)
			AddHench(cnum, 542, 1)
			AddHeroExp(cnum, 400000)
			return 1,0,"Bagus. Meski masih membutuhkan upgrade namun lebih baik dari yang sebelumnya. Kamu dapat menyimpannya. Aku akan memanggilmu jika aku telah siap untuk proses selanjutnya. Beristirahatlah sejenak."


		end


	elseif req == 142 then
		return 2,0,"Aku akan upgrade armour dari MechOstrish dari yang sebelumnya. Untuk itu, aku membutuhkan beberapa metal. Namun aku telah kehabisan bahan. Aku ingin kamu mengumpulkan metal tersebut.",143,"Tentu. Aku akan membantumu."


	elseif req == 143 then
		return 2,0,"Pertama-tama kita membutuhkan beberapa metal untuk armour seperti iron dan steel. Karena tidak ada cara selain mengambilnya dari monster, sebaiknya kamu memilih monster yang kuat untuk armour.",144,"Contohnya?"


	elseif req == 144 then
		return 2,0,"Hmm... NeoSoul? Aku rasa NeoSoul sudah cukup untuk armour. Kamu dapat menemukan NeoSoul di White Prairie. Bawakan 10 Irons dan 5 Steels dari NeoSoul.",145,"Oke. Aku mengerti."


	elseif req == 145 then
		StartQuest(cnum, 136)
		AddSwitchCount(cnum, 276, 1)



	elseif req == 162 then
		if GetItemCount(cnum, 105, 0) < 10 or GetItemCount(cnum, 106, 0) < 5 then
			return 1,0,"Aku tidak melihat iron dan steel. Jangan bilang kamu akan menyerah. Apa kamu lupa cara mendapatkannya? Kamu dapat memperolehnya dari NeoSoul di White Prairie."
    
		else
			EndQuest(cnum, 136)
			AddItemCount(cnum, 105, -10)
			AddItemCount(cnum, 106, -10)
			AddSwitchCount(cnum, 277, 1)
			AddHeroExp(cnum, 1000000)      
			return 1,0,"Kerja bagus. Kini aku dapat membuat armour yang lebih kuat untuk MechaOstrich. Aku memerlukan bantuanmu untuk terakhir kali. Aku akan memanggilmu jika aku telah siap. Beristirahatlah sejenak."
		end



	elseif req == 163 then
		return 1,0,"Lawan NeoSoul di White Prairie. Setelah mengumpulkan 10 Iron dan 5 Steel bicaralah dengan Quest NPC yang ditunjuk."





	elseif req == 172 then
		return 2,0,"Nah. Orang Sinan dahulu menggunakan benda 'Soul' sebagai benda terakhir dalam merakit armour dari monster metalik. Aku tidak yakin bagaimana cara kerjanya, namun memang benar kepadatan armour meningkat drastis dengan menambahkan soul kedalam armour. Aku ingin menambahkan soul kedalam MechOstrich. Tolong bantu aku.",182,"Tentu. Aku akan melakukan yang terbaik."


	elseif req == 182 then
   	return 2,0,"Kita membutuhkan benda yang disebut 'Sistana's Soul'. Karena tidak ada yang menjual benda soul, kamu harus mendapatkannya dengan melawan monster kelas atas.",183,"Monster kelas atas?"


	elseif req == 183 then
		return 2,0,"Aku telah mencari informasi. Kamu dapat memperoleh Sistana's soul dari NeoAyaya di White Seashore",184,"White Seashore?"


	elseif req == 184 then
		return 2,0,"Ya. White Seashore terletak jauh di sebuah daratan bernama Atreia. Akan menjadi perjalanan panjang. Karena NeoAyaya merupakan monster kelas atas, kamu harus berhati-hati ketika melawannya.",185,"Oke. Kamu dapat mempercayaiku."


	elseif req == 185 then
		StartQuest(cnum, 137)
		AddSwitchCount(cnum, 278, 1)
		return 1,0,"Semoga berhasil! Semoga selamat dalam perjalanan."


    
	elseif req == 192 then
		if GetItemCount(cnum, 107, 0) < 1 then
			return 1,0,"Aku tidak melihat Sistana's soul. Jangan bilang kamu akan menyerah. Apa kamu lupa cara mendapatkannya? Kamu dapat memperolehnya dari NeoAyaya di White Seashore of Atreia Continent."
    
		else

			return 2,0,"Bagus! Kamu membawakan bagian akhir dari MechaOstrich. Nah, biarkan aku menangani MechaOstrich.",194,"Berikan MechaOstrich"
		end

	elseif req == 193 then
		return 1,0,"Lawan NewAyaya di White Seashore dari Atreia continent. Setelah mengumpulkan *1 Sistana's Soul bicaralah kepada Quest NPC yang ditunjuk."



	elseif req == 194 then
		if GetHench(cnum, 1, 542, 1 ) < 1 then
			return 1,0,"Aku tidak melihat MechaOstrich. Dimana?"

		else
			EndQuest(cnum, 137)
			AddItemCount(cnum, 107, -1)
			AddHench(cnum, 542, -1)
			AddHench(cnum, 496, 1)
			AddSwitchCount(cnum, 279, 1)
			AddHeroExp(cnum, 6000000)
			return 1,0,"Akhirnya selesai!!! Bagaimana? Menjadi terlihat lebih kuat, bukan? Aku akan memberikan ini untukmu. Aku harap dapat membantumu menjadi seorang Mix Master yang hebat!"
		end

	else
		return 1,0,"Error1"
	end
end
    
