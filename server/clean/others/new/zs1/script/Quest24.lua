function NPC_QUEST_265(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) > 1 or GetHeroType(cnum) < 1 then
			return 1,0,"Apa kamu melihat tuan muda kami? Aku mendengar dia berada dikota ini, namun aku tidak dapat menemukannya."

		else
			if GetSwitchCount(cnum, 312) < 1  and GetSwitchCount(cnum, 313) < 1 then --6
				if GetSwitchCount(cnum, 310) < 1 then --5
					if GetSwitchCount(cnum, 308) < 1 then --4
						if GetSwitchCount(cnum, 306) < 1 then --3
							if GetSwitchCount(cnum, 304) < 1 then -- 2
								if GetSwitchCount(cnum, 303) < 1 then --1
      						return	2, 0,"Sungguh senang melihatmu kembali tuan muda. Sudah lama sejak kita terakhir berjumpa.",2,"Ya. Sudah lama."
								else
  									if GetHeroLv(cnum) < 10 then
  										return	1, 0,"Kamu tidak memenuhi persyaratan. Kamu tidak dapat menjadi seorang Patriarch saat ini."

                    elseif GetRemainPocket(cnum) < 1 then
										return 1,0,"Tidak ada ruang dalam Inventory milikmu."

	  								else
  								   		AddItemCount(cnum, 4427, 1)
									    	AddSwitchCount(cnum, 304, 1)
									    	AddHeroExp(cnum, 600)
								    		EndQuest(cnum, 120)
  										return	1, 0,"Selamat! Kamu telah menyelesaikan ujian pertama. Namun ini hanya permulaan. Ini adalah Successor's Ring yang akan kuberikan kepadamu sebagai bukti kamu telah menyelesaikan ujian pertama. Kamu harus menyimpannya agar dapat melanjutkan ke tahap berikutnya. Jangan menghilangkannya."  										      
  									end
  								end -- 1끝

  							else
								if GetSwitchCount(cnum, 305) < 1 then
									if GetHeroLv(cnum) < 30 then -- 30레벨 이하 일 때
										return	1, 0,"Harap mempersiapkan diri untuk ujian berikutnya."
									elseif GetItemCount(cnum, 4427, 0) < 1 then
										return 1,0,"Di mana Successor's ring yang diberikan kepada tuan muda? Kamu tidak dapat melanjutkan ujian tanpanya."

 									else --30레벨 이상일 때
										return	2,0,"Selamat datang tuan muda. Tuan telah memberi anda ujian kedua.",62,"Apakah kali ini?"
									end

								else
									if GetItemCount( cnum, 4432, 0 ) < 10 then --불 개수가 10개 미만 일 때
										return	1, 0,"Kamu tidak memenuhi persyaratan. Kamu tidak dapat menjadi seorang Patriarch saat ini."

									else -- 뿔 개수가 10개 이상일 때
										return	2,0, "Selamat! Kamu telah menyelesaikan ujian kedua. Ini adalah Successor's Ring yang akan kuberikan kepadamu sebagai bukti kamu telah menyelesaikan ujian kedua. Kamu harus menyimpannya agar dapat melanjutkan ke tahap berikutnya. Jangan menghilangkannya. Dan aku juga menyiapkan sedikit kejutan untukmu! Seekor Fennecus baru lahir!",150,"Aku tidak membutuhkan seekor peliharaan?"
									end
								end

   							end--2끝

  						else
	  						if GetSwitchCount(cnum, 307) < 1 then --퀘 3 조건 시작
			      			if GetHeroLv(cnum) < 50 then -- 50레벨 미만일 때
  									return	1,0,"Harap mempersiapkan diri untuk ujian berikutnya."

								elseif GetItemCount(cnum, 4428, 0) < 1 then
									return 1,0,"Di mana Successor's ring yang diberikan kepada tuan muda? Kamu tidak dapat melanjutkan ujian tanpanya."

								else
									return	2,0,"Selamat datang tuan muda. Tuan telah memberi anda ujian ketiga.",82,"Apakah kali ini?"

								end
	
  							else
  								if GetSwitchCount( cnum, 315 ) < 1 then --베헤르세바 주변 맵에 있는 오아시스 근처 NPC 클릭 여부(안햇을 경우)
  									return	1, 0, "Kamu tidak memenuhi persyaratan. Kamu tidak dapat menjadi seorang Patriarch saat ini."

                  elseif GetRemainPocket(cnum) < 1 then
									return 1,0,"Tidak ada ruang dalam Inventory milikmu."

	  							else --베헤르세바 주변 맵에 있는 오아시스 근처 NPC를 클릭 했을 경우
  		    					AddSwitchCount( cnum, 308, 1 )
  									AddItemCount( cnum, 4428, -1 )
  									AddItemCount( cnum, 4429, 1 )
									AddHeroExp(cnum, 100000)
									EndQuest(cnum, 122)
  									return	1,0,"Selamat! Kamu telah menyelesaikan ujian ketiga. Ini adalah Successor's Ring yang akan kuberikan kepadamu sebagai bukti kamu telah menyelesaikan ujian ketiga. Kamu harus menyimpannya agar dapat melanjutkan ke tahap berikutnya. Jangan menghilangkannya."
  								end			
   							end
	  					end --3 끝
	  					
					else
						if GetSwitchCount(cnum, 309) < 1 then
							if GetHeroLv(cnum) < 70 then                		
								return 1,0,"Harap mempersiapkan diri untuk ujian berikutnya."

							elseif GetItemCount(cnum, 4429, 0) < 1 then
								return 1,0,"Dimana Successor's ring yang diberikan kepada tuan muda? Kamu tidak dapat melanjutkan ujian tanpanya."

							else
								return	2,0,"Selamat datang tuan muda. Tuan telah memberi anda ujian keempat.",92,"Apakah kali ini?"	          
  							end  							
						else
							if GetItemCount( cnum, 4433 , 0) < 1 then --메탈리카 몬스터 사냥 후 완주의 증표의 여부 확인
	  							return	1,0, "Kamu tidak memenuhi persyaratan. Kamu tidak dapat menjadi seorang Patriarch saat ini."

	  						else
  								return	2,0,"Selamat! Kamu telah menyelesaikan ujian keempat. Ini adalah Successor's Ring yang akan kuberikan kepadamu sebagai bukti kamu telah menyelesaikan ujian keempat. Kamu harus menyimpannya agar dapat melanjutkan ke tahap berikutnya. Jangan menghilangkannya. Sebagai hadiah, aku akan menukar Fennecus milikmu dengan yang lebih kuat.",162,"Berita bagus!"
							end			
						end
					end -- 4끝

				else
					if GetSwitchCount(cnum, 314) > 0 then
						return 1,0,"Selamat! Patriarch."
				
				else
					if GetSwitchCount(cnum, 311) < 1 then
						if GetHeroLv(cnum) < 90 then
							return	1,0,"Harap mempersiapkan diri untuk ujian berikutnya."

						elseif GetItemCount(cnum, 4430, 0) < 1 and GetItemCount(cnum, 4431, 0) < 1 then
							return 1,0,"Dimana Successor's ring yang diberikan kepada tuan muda? Kamu tidak dapat melanjutkan ujian tanpanya."
	   				else
							return	2,0,"Selamat datang tuan muda. Tuan telah memberi anda ujian kelima.",102,"Apakah kali ini?"
						end
					else
						if GetHench(cnum, 1, 281, 80) < 1 and GetHench(cnum, 1, 282, 80) < 1 then -- 80헨치의 소유 여부 확인
							return	1,0, "Kamu tidak memenuhi persyaratan. Kamu tidak dapat menjadi seorang Patriarch saat ini."

						else
							AddItemCount( cnum, 4431, -1 )
  						return 2,0,"Selamat! Kamu telah menyelesaikan ujian kelima. Ini adalah Successor's Ring yang akan kuberikan kepadamu sebagai bukti kamu telah menyelesaikan ujian kelima. Kamu harus menyimpannya agar dapat melanjutkan ke tahap berikutnya. Jangan menghilangkannya."
						end
					end
				end
			end --5 끝
				
			else
				if GetSwitchCount(cnum, 314) > 0 then
					return 1,0,"Selamat! Patriarch."
				else
					return 2,0,"Selamat! Kamu telah menyelesaikan ujian kelima. Ini adalah Successor's Ring yang akan kuberikan kepadamu sebagai bukti kamu telah menyelesaikan ujian kelima. Kamu harus menyimpannya agar dapat melanjutkan ke tahap berikutnya. Jangan menghilangkannya."
				end
			end
		end







	elseif req == 2 then
		return 2,0,"Ya. Sudah lama sejak kamu meninggalkan rumah.",12,"Mengapa kamu disini?"


	elseif req == 12 then
		return 2,0,"Aku membawa pesan dari Tuanku. Tuanku ingin memberikan kesempatan kepada seluruh anaknya untuk mengikuti ujian sebagai penerus.",22,"Apakah itu berarti aku juga memiliki kesempatan tersebut?"


	elseif req == 22 then
		return	2,0,"Tentu saja. Kamu dapat menjadi seorang Patriarch jika kamu berhasil menyelesaikan seluruh ujian yang disiapkan oleh Tuanku.",32,"Ujian?"


	elseif req == 32 then
		return	2,0, "Tuanku berkata bahwa siapapun anaknya yang berhasil menyelesaikan ujian berhak menjadi seorang Patriarch. Ujian terdiri dari 6 tahap, dan kamu harus menyelesaikan seluruhnya untuk menjadi seorang Patriarch.",42, "Jadi, apa yang harus kulakukan sekarang?"


	elseif req == 42 then
		return	2,0, "Nah, aku akan memberitahu ujian pertama. Tuanku ingin mengetahui apakah kamu memiliki kemampuan dasar bertahan hidup di gurun atau tidak. Kembalilah setelah kamu mencapai LV 10.",52, "Oke. Aku mengerti."
	
	elseif req == 52 then
		StartQuest(cnum, 120)
		AddSwitchCount(cnum, 303, 1) --퀘 1 수락

	elseif req == 62 then
		return	2,0, "Sekarang. aku akan memberitahu ujian kedua. Tuanku ingin mengetahui apakah kamu memiliki kekuatan untuk melindungi keluarga dari bahaya monster gurun. Pergilah ke padang RollingCores dan kalahkan BattleDragon. Bawakan 10x horns of BattleDragon sebagai bukti. Semoga berhasil!",72,"Oke. Aku akan mencobanya."
				
	elseif req == 72 then
		StartQuest(cnum, 121)
		AddSwitchCount(cnum, 305, 1) --퀘 2 수락

	elseif req == 82 then
		StartQuest(cnum, 122)
		AddSwitchCount(cnum, 307 ,1)
		return	1,0,"Nah, aku akan memberitahu ujian ketiga. Tuanku ingin mengetahui apakah kamu dapat menemukan air diwilayah gurun. Terdapat beberapa oasis didekat Veherseva, namun sebagian besar tercemar. Pergi dan temukan oasis yang aman lalu kembali padaku. Kamu dapat mengetahui kondisi oasis dengan memeriksa tanaman disekitarnya. Semoga berhasil!"



	elseif req == 92 then
		StartQuest(cnum, 123)
		AddSwitchCount(cnum, 309 ,1)
		return	1,0, "Kini, aku akan memberitahu ujian kelima. Tuanku ingin mengetahui apakah kamu memiliki kemampuan untuk meredakan bahaya atau tidak. Jika kamu pergi ke Herseva town, kamu akan temukan dungeon yang dinamakan Rojeta Dungeon. Jelajahi hingga tingkat 9 bawah tanah dan lawanlah CrimsonMetal. Bawakan bagian tangan CrimsonMetal sebagai bukti penjelajahan. Semoga berhasil!"




	elseif req == 102 then
		return 2,0, "Nah, aku akan memberitahu ujian kelima. Tuanku ingin menguji kegagahanmu. Jika kamu memiliki hench diatas LV 80, maka ujian akan selesai dengan mudah. Jika kamu tidak punya, kamu harus membawakan sebuah Core diatas LV 80.",152,"Hm. Sepertinya terlalu luas pilihannya?"	


	elseif req == 152 then
		return 2,0,"Hm.. Aku setuju denganmu. Aku yang akan menentukan beberapa hench untuk ujian.",153,"Bagus."


	elseif req == 153 then
		StartQuest(cnum, 124)
		AddSwitchCount(cnum, 311 ,1)
		return 1,0,"Coba pikir sejenak. Hench diatas LV 80... Aku tahu! NeoSoul dan WingStormer! Bawakan salah satu Core dari NeoSoul atau WingStormer kepadaku."


	elseif req == 142 then
		if GetHench(cnum, 1, 538, 1) < 1 then
			return 1,0,"Kamu harus mengembalikan Fennecus yang kuberi sebelumnya. Oh, kamu tidak memilikinya. Harap bawakan kepadaku."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"Tidak ada ruang dalam Inventory Core."

    elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Tidak ada ruang dalam Inventory Core."


		else
			AddItemCount(cnum, 4430, -1)
			AddItemCount(cnum, 4431, 1)
			AddHeroExp(cnum, 5000000)
			AddSwitchCount(cnum, 314, 1)
			AddHench(cnum, 538, -1)
			AddHench(cnum, 494, 1)
			EndQuest(cnum, 124)
			EndQuest(cnum, 125)
			return 1,0,"Rommel dinamakan setelah jenderal terkenal di wilayah African. Sesuai namanya dia akan membantumu selama petualangan."
		end


-- 퀘스트 추가 사항
	elseif req == 150 then
		return 2,0,"Meskipun baru lahir, tetap dapat membantumu karena mewarisi kepintaran darah Fennecus.",151,"Terima kasih."


	elseif req == 151 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Tidak ada ruang dalam Inventory Core."

    elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"Tidak ada ruang dalam Inventorymu."

		else
			AddItemCount(cnum, 4427, -1)
			AddItemCount(cnum, 4432, -10)
			AddSwitchCount(cnum, 306, 1)
			AddItemCount(cnum, 4428, 1)
			AddHeroExp(cnum, 20000)
			AddHench(cnum, 537, 1)
			EndQuest(cnum, 121)
			return 1,0,"Harap mempersiapkan diri untuk ujian berikutnya."
		end



	elseif req == 162 then
		return 2,0,"Aku telah mempersiapkan yang telah berkembang kali ini. Aku rasa akan sesuai dengan levelmu saat ini. Oh, tolong kembalikan yang baru lahir sebelumnya.",163,"Terima kasih."



	elseif req == 163 then
		if GetHench(cnum, 1, 537, 1) < 1 then
			return 1,0,"Kamu harus mengembalikan Fennecus yang kuberi sebelumnya. Oh, kamu tidak memilikinya. Harap bawakan kepadaku."

   	elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"Tidak ada ruang dalam Inventory milikmu."

		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Tidak ada ruang dalam Inventory Core."

		else
			AddItemCount( cnum, 4433, -1 )
			AddItemCount( cnum, 4429, -1 )
			AddItemCount( cnum, 4430, 1 )
			AddSwitchCount(cnum, 310, 1)
			AddHeroExp(cnum, 400000)
			AddHench(cnum, 537, -1)
			AddHench(cnum, 538, 1)
			EndQuest(cnum, 123)
			return 1,0,"Harap mempersiapkan diri untuk ujian berikutnya."
		end

	else
		return 1,0,"Error1"
	end
end



function NPC_QUEST_310(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"Kamu dapat melihat beberapa tanaman rumput didekat oasis."

		else
			return 2,0,"Kamu dapat melihat beberapa tanaman rumput didekat oasis. Apa yang akan kamu lakukan?",2,"Kumpulkan beberapa contoh."

		end

	elseif req == 2 then
		return 1,0,"Tampaknya sehat, namun bukan karena pengaruh oasis. Kamu harus menemukan oasis yang lain."

	else
		return 1,0,"Error"

	end
end


function NPC_QUEST_309(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"Kamu dapat melihat beberapa tanaman rumput didekat oasis."

		else
			return 2,0,"Kamu dapat melihat beberapa tanaman rumput didekat oasis. Apa yang akan kamu lakukan?",2,"Kumpulkan beberapa contoh"

		end


	elseif req == 2 then
		return 1,0,"Tampaknya sehat, namun bukan karena pengaruh oasis. Kamu harus menemukan oasis yang lain."

	else
		return 1,0,"Error"

	end
end


function NPC_QUEST_308(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then		
			return 1,0,"Kamu dapat melihat beberapa tanaman rumput didekat oasis."

		else
			return 2,0,"Kamu dapat melihat beberapa tanaman rumput didekat oasis. Apa yang akan kamu lakukan?",2,"Kumpulkan beberapa contoh"

		end

	elseif req == 2 then
		AddSwitchCount(cnum, 315, 1)
		return 1,0,"Tanamannya tampak sehat karena oasis. Kamu telah menemukan oasis yang bersih!"

	else
		return 1,0,"Error"

	end
end
