function NPC_QUEST_322(cnum, reqNumber) --펜릴 퀘스트

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) < 2 or GetHeroType(cnum) > 2 then
			return 1,0,"Mengapa ia tidak datang? Aku khawatir dia bertemu dengan bahaya."

		else
			if GetSwitchCount(cnum, 329) < 1 then --6
				if GetSwitchCount(cnum, 327) < 1 then --5
					if GetSwitchCount(cnum, 325) < 1 then --4
						if GetSwitchCount(cnum, 323) < 1 then --3
							if GetSwitchCount(cnum, 321) < 1 then --2
								if GetSwitchCount(cnum, 320) < 1 then --1
		      							return	2, 0,"Oh. Selamat datang keponakanku Penril! Aku dengar kamu telah lulus dari Valor school tahun ini. Apa kamu lulus ujian terakhirnya?",2,"Ya, aku melakukannya. Terlalu mudah bagiku."

	  							else
  									if GetItemCount( cnum, 4437, 0 ) < 10 then --퀘 1 완료 조건 구분 - 뿔 10개
  										return	1,0,"Jika kamu menginginkan hench, kamu harus bekerja lebih keras."

	  								else
  										AddItemCount( cnum, 4437, -10 ) --드라코 뿔 10개 회수
  										AddItemCount( cnum, 4438, 1 ) -- 잘 했어요 도장 1
										AddSwitchCount(cnum, 321, 1)
										AddHeroExp(cnum, 600)		
										EndQuest(cnum, 126)
  										return	1,0, "Oh. Kamu telah berhasil mengumpulkan yang aku minta. Tugas pertama tidak begitu sulit, benar? Aku akan memberikan tugas yang lebih sulit untuk berikutnya. Ini kuberikan sebuah stempel Well-Done. Jika kamu mengumpulkan 6 buah, aku akan memberikan sebuah hench sebagai hadiah. Aku akan memanggilmu untuk tugas yang berikutnya. Jangan menjadi pemalas dan bersiaplah untuk tugas berikutnya."
  									end
  								end--1퀘 끝
	   						else
  								if GetHeroLv(cnum) < 30 then --퀘 2 수락 조건 검사
  									return	1,0,"Bersabarlah dan bersiaplah untuk tugas selanjutnya. Tugas berikutnya akan lebih sulit."
  
  
  								else
  									if GetSwitchCount(cnum, 322) < 1 then -- 퀘 2 처름 받을 때
  										return	2,0,"Tampaknya sudah tiba untuk tugas kedua. Jangan gugup. Aku tidak akan membahayakan keponakanku. Hahaha.",52,"Aku sangat berharap demikian."
  	
  									else
  										return	2,0,"Aku ingin memakai pakaian yang terbuat dari kulit Aquaping. Nah, apakah kamu telah mengumpulkan kulitnya?",92,"Ya. Aku telah selesai."
  		
  									end
   								end
		      					end
      						else
      							if GetSwitchCount(cnum, 324) < 1 then --퀘 3 수락 여부 판단
		      						if GetHeroLv(cnum) < 50 then -- 줴 3 수행 조건 판단.
      									return	1,0,"Bersabarlah dan bersiaplah untuk tugas selanjutnya. Tugas berikutnya akan lebih sulit."

								else
      									return	2,0, "Tampaknya sudah tiba untuk tugas ketiga. Apa yang pernah kuceritakan kepadamu mengenai tugas-tugas ini, namun jujur sepertinya sedikit merepotkan.",102,"....."

								end
      							else
      								return	2,0,"Aku ingin memakai topi yang terbuat dari bulu Pheonix. Nah, apakah kamu telah mengumpulkan bulu tersebut?",162,"Ya. Aku telah selesai."
       							end
       						end
	    				else
						if GetSwitchCount(cnum, 326) < 1 then --퀘 4 수락 여부 판다.
							if GetHeroLv(cnum) < 70 then -- 퀘 4 수락 조건 판다.
							        return	1,0,"Bersabarlah dan bersiaplah untuk tugas selanjutnya. Tugas berikutnya akan lebih sulit."
	      				        	else
				        	        	return	2,0,"Oh. Selamat datang. Tampaknya sekarang waktunya untuk tugas keempat.",172,"hmm..."
	
		      					end



						else
							return	2,0,"Ah.. Aku ingin menghilangkan kerutan ini. Apakah kamu telah mengumpulkan sengat dari BloodStinger?",232,"Ya, aku telah menyelesaikannya."

						end
					end

				else
					if GetSwitchCount(cnum, 328) < 1 then -- 퀘 5 수락 여부 판다.
						if GetHeroLv(cnum) < 90 then -- 퀘 5 수락 조건 판다.
							return 1,0,"Bersabarlah dan bersiaplah untuk tugas selanjutnya. Tugas berikutnya akan lebih sulit."

						else
							return	2,0,"Nah, tampaknya sudah tiba untuk tugas kelima. Kerja bagus! Kamu telah melakukannya dengan hebat hingga sekarang. Hanya tinggal 2 tugas tersisa. Semoga berhasil!",242,"Ya. Aku akan mencoba yang terbaik."
						end

					else
						return	2,0, "Bagaimana? Tidak mudah bukan? Apakah kamu membawa Plate of BlazeRhino?",312, "Ya, aku melakukannya."
								
					end
				end
		
			else
				if GetSwitchCount(cnum, 331) > 0 then
					return 1,0,"Sekarang, jangan ganggu aku lagi dan pergilah berpetualang."

				else
					if GetSwitchCount(cnum, 330) < 1 then
						if GetHeroLv(cnum) < 110 then
							return	1,0,"Bersabarlah dan bersiaplah untuk tugas selanjutnya. Tugas berikutnya akan lebih sulit."
						else
							return	2,0,"Akhirnya, waktunya untuk tugas terakhir. Aku harap kamu mendapatkan lebih dari sekedar hench namun juga pengalaman lain melalui tugas-tugas yang kuberikan kepadamu.",322,"Terima kasih. Aku tidak akan mengecewakanmu."

						end
					else
						return	2,0,"Aku tidak dapat tenang sebelum menyelesaikan tugas darimu. Tidak dapatkah dipercepat?",392,"Itu tidaklah mudah."
	
					end
				end
			end
		end

	
	
	
	
	elseif req == 2 then
		return	2,0,"Selamat! Dikatakan air tenang sangat dalam. Lulus dari Valor school berarti dimulainya hidup baru. Jangan menjadi sombong dan curahkan hidupmu agar menjadi seorang Valor yang hebat.",12,"Terima kasih, paman. Namun, mengapa kamu disini?"


	elseif req == 12 then
		return	2,0,"Oh. Aku ingin memberikanmu hadiah kelulusan. Seperti yang kamu tahu bahwa waktu muda dulu aku juga seorang Valor hebat, dan berhasil mengumpulkan Core langka. Aku tidak membutuhkan Core tersebut karena kini aku bukan seorang Valor, namun mungkin berguna untukmu.",22,"Oh. Terima kasih!."


	elseif req == 22 then
		return	2,0,"Jangan senang dulu. Aku tidak bilang akan memberikan begitu saja. Aku akan memberikanmu 6 tugas untuk menguji dan melatih kemampuanmu. Jika kamu dapat menyelesaikan keenamnya, maka aku akan memberikanmu Core tersebut.",32,"Oke. Apa yang harus aku lakukan?"


	elseif req == 32 then
		return	2,0, "Hmm... Aku tidak dapat memberikan tugas sulit dari awal. Oke. Pertama kita uji kemampuan dasarmu. Terdapat banyak Dracos diluar kota. Lawan Draco dan bawakan aku 10 horns of Darco sebagai bukti.",42, "Oke. Itu mudah."
			
	elseif req == 42 then
		AddSwitchCount( cnum, 320, 1 ) --퀘 1 수락
		StartQuest(cnum, 126)
		return	1,0, "Nah, ini baru permulaan. Aku harap dapat segera bertemu denganmu kembali!"





	elseif req == 52 then
		return	2,0,"Aku akan memberitahu tugas kedua. Jika kamu berlatih keras di Valor school, kamu seharusnya dapat dengan mudah menyelesaikan tugas kedua ini. Apa kamu pernah mendengar monster yang disebut Aquaping? Sangat terkenal karena penampilannya yang manis.",62,"Oh, aku pernah melihatnya."


	elseif req == 62 then
		return	2,0, "Mereka terkenal bukan karena hanya lucu namun kulitnya yang halus. Aku sangat ingin memakai pakaian yang terbuat dari kulit Aquaping... Jadi, tugas kedua. Pergi ke Cheseva Ruins dan lawan Aquaping. Bawakan aku 5 kulit Aquaping untuk pakaianku.",72,"...."


	elseif req == 72 then
		return	2,0,"Mengapa kamu tidak menjawab? Apakah terlalu sulit untukmu?",82,"Hmm... Oke. Akan kulakukan."


	elseif req == 82 then
		StartQuest(cnum, 127)
		AddSwitchCount( cnum, 322, 1 ) --퀘 2 수락
		return	1,0,"Bagus. Berusahalah demi pakaian baruku. hahaha."		


	elseif req == 92 then
		if GetItemCount(cnum, 4444, 0 ) < 5 then
			return	1,0, "Aku harap kamu segera kembali."


		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"Tidak ada ruang dalam Inventory Core."


		else
			EndQuest(cnum, 127)
			AddItemCount( cnum, 4444, -5 ) -- 가죽 5개 회수
			AddItemCount( cnum, 4438, -1 ) -- 도장 1개짜리 회수
			AddItemCount( cnum, 4439, 1 ) -- 도장 2개짜리 지급
			AddSwitchCount( cnum, 323, 1 )
			AddHeroExp(cnum, 20000)
			AddHench(cnum, 539, 1)
			return	1,0,"Oh~! Hebat! Kamu berhasil. Kini aku dapat membuat pakaian dari kulit Aquaping ini. Kerja bagus! Sebagai hadiah aku akan memberimu sebuah hench dan stempel Well-Done. Jangan malas dan bersiaplah untuk tugas berikutnya."
		end




		
	elseif req == 102 then
		return	2,0,"Seperti yang kubilang sebelumnya, kamu harus lebih banyak tertawa. Kamu terlalu serius hingga terlihat kaku.",112, "Cukup beritahu aku tugas berikutnya."


	elseif req == 112 then
		return	2,0,"Apa? Kamu lebih menginginkan tugas daripada berbicara padaku? Menyedihkan. Semua karena sistem pendidikan sekolah yang tidak benar. Mereka seharusnya mengajarkan kesopanan sebelum mengajar.",122,"Huh...."


	elseif req == 122 then
		return	2,0, "Jangan mendesah terlalu sering. Aku akan memberitahukanmu tugas ketiga. Apa kamu pernah mendengar monster Phoenix? Sangat menarik dengan bulu merahnya.",132, "Aku pernah melihatnya dalam buku."


	elseif req == 132 then
		return	2,0, "Bagus! Maka tak perlu dijelaskan lagi. Tugasmu adalah pergi ke Valcan Access Road dan lawanlah Pheonix kemudian bawakan aku 20 feather of Pheonix. Aku tahu mungkin ini terlalu banyak, namun aku membutuhkan setidaknya 20 bulu untuk membuat topi.",142, "Topi?"
			
	
	elseif req == 142 then
		return	2,0,"Oops... Setelah membuat pakaian dari kulit Aquaping, aku pikir topi dari bulu Pheonix akan serasi dengan pakaiannya... Bagaimana? Jangan bilang kamu tidak dapat melakukannya...",152,"Tidak masalah..."


	elseif req == 152 then
		StartQuest(cnum, 128)
		AddSwitchCount( cnum, 324, 1) --퀘 3 수락
		return	1,0, "Jangan khawatir mengenaiku. Pergi dan lawanlah mereka secepatnya. hahaha..."



	elseif req == 162 then
		if GetItemCount( cnum, 4445, 0 ) < 20 then --퀘 3 완료 조건 판단.(필요 아템 20개 여부)
			return 1,0,"Topi merahku telah menunggu!!! Cepat!!!"
    
		else
			EndQuest(cnum, 128)
			AddItemCount(cnum, 4445, -20) -- 퀘 3 필요 아템 회수
			AddItemCount(cnum, 4439, -1) -- 도장 2개짜리 회수     
			AddItemCount(cnum, 4440, 1) -- 도장 3개짜리 지급
     			AddSwitchCount(cnum, 325, 1)
			AddHeroExp(cnum, 100000)
			return 1,0,"Ah, akhirnya aku mendapatkan feathers of Pheonix. Kini aku dapat membuat topi. Kerja bagus! Aku akan memberimu stempel Well-Done sebagai hadiah. Jangan malas dan bersiaplah untuk tugas selanjutnya."
		end





	elseif req == 172 then
		return	2,0,"Kali ini bukan untuk mencari bahan pakaian atau topi. Aku jamin kali ini serius.",182,"Hm..."


	elseif req == 182 then
		return	2,0, "Memalukan. Tidak mempercayaiku....  Ini semua karena pendidikan yang salah!",192, "Paman, katakan jujur padaku."
			
	
	elseif req == 192 then
		return	2,0, "Menyedihkan. Kamu semakin menjadi pemuda yang kaku. Aku akan mengatakan yang sejujurnya. Hahaha..",202, "Apakah kali ini?"
			
	
	elseif req == 202 then
		return	2,0, "Aku menyadari kerutan di wajahku saat aku mandi kemarin…tidakkah menyedihkan?",212, "Lalu?"
			
	
	elseif req == 212 then
		return	2,0, "Aku dengar bahwa sengat dari Bloodstinger dapat mengobati kerutan. Kamu tahu apa yang harus kamu lakukan…benar?",222, "Huh... Oke."
	
		
	elseif req == 222 then
		StartQuest(cnum, 129)
		AddSwitchCount( cnum, 326, 1 ) --퀘 4 수락
		return	1,0, "Hebat. Kamu keponakan hebat. Pergi ke Valcan Valley dan lawan BloodStinger. Aku membutuhkan 10 stings of Bloodstinger."			
	

	elseif req == 232 then
		if GetItemCount(cnum, 4446, 0) < 10 then -- 퀘 완료 조건 판다. (침 10개)
			return	1,0,"Jika kamu tidak segera datang maka aku harus hidup memakai topeng selamanya."

		elseif GetHench(cnum, 1 , 539, 1) < 1 then
			return 1,0,"Aku akan memberimu sebuah hench baru. Kembalikan hench yang kemarin kuberikan."


		else
			EndQuest(cnum, 129)
			AddItemCount(cnum, 4446, -10) --침 10개 회수
			AddItemCount(cnum, 4440, -1) -- 도장 3개짜리 회수
			AddItemCount(cnum, 4441, 1) -- 도장 4개짜리 지급
			AddSwitchCount(cnum, 327, 1)
			AddHeroExp(cnum, 400000)
			AddHench(cnum, 539, -1)
			AddHench(cnum, 540, 1)
			return 1,0,"Bagus! Ini adalah sengat dari Bloodstinger... Wow! Besar!! Kerja bagus! Ini adalah stempet Well-Done untuk sekarang. Aku juga telah menyiapkan hench baru dibandingkan yang kemarin. Aku akan menggunakan yang lama sebagai koleksi."
		end





		
	elseif req == 242 then
		return	2,0, "Sungguh, aku sangat bangga padamu melihat kemajuanmu menjalankan tugas-tugasku. Aku akan memberikanmu tugas kelima.",252, "Apakah kali ini?"
				

	elseif req == 252 then
		return	2,0, "Bukan permintaan pribadi. Kamu seorang Valor terlatih. Aku tidak dapat memberimu seperti tugas sebelumnya.",262,"Dapatkah aku mempercayaimu?"
			
	
	elseif req == 262 then
		return	2,0, "Dengar. Apa kamu tahu mengenai White Prairi? Salah satu tempat sulit di daerah utara gurun. Dan kamu harus pergi kesana.",272,"Apa kamu akan membuat keponakanmu terbunuh?"
	
			
	elseif req == 272 then
		return	2,0, "Tidak. Meski sulit, orang dapat bertahan hidup disana. Tidak ada bahaya seperti yang kamu pikirkan.",282,"Lalu. Apa yang harus aku lakukan?"
				

	elseif req == 282 then
		return	2,0, "Dikatakan disana terdapat monster yang disebut BlazeRhino yang memiliki pelat dibagian ekor dengan api yang selalu menyala.",292, "Oh. BlazeRhino adalah sasarannya?"
				

	elseif req == 292 then
		return	2,0, "Ya. Kamu harus berburu BlazeRhino dan bawakan Plate of BlazeRhino.",302,"Plate of BlazeRhino..."
				

	elseif req == 302 then
		StartQuest(cnum, 130)
		AddSwitchCount( cnum, 328, 1 ) --퀘 5 수락
		return	1,0,"Ya. Kamu harus membawa Plate of BlazeRhino untuk tugas ini. BlazeRhino adalah monster yang kuat, berhati-hatilah saat melawannya."

				
	elseif	req == 312 then
		if GetItemCount(cnum, 4447, 0) < 1 then -- 퀘 완료 조건 판다. (화뿔소 1개)
			return	1,0,"Tidak mudah bukan? Jangan salahkan aku, kamu yang meminta tugas normal dibandingkan permintaan pribadiku. Haha..."    

		else
			EndQuest(cnum, 130)
			AddItemCount(cnum, 4447, -1) --화뿔소 1개 회수
			AddItemCount(cnum, 4441, -1) -- 도장 4개짜리 회수
			AddItemCount(cnum, 4442, 1) -- 도장 5개짜리 회수
			AddSwitchCount( cnum, 329, 1 ) --퀘 5 수락
			AddHeroExp(cnum, 1000000)
			return 1,0,"Oh. Kamu telah menyelesaikannya? Aku akan memberikan yang lebih sulit untukmu. Namun kerja bagus.  Aku akan memberimu stempel Well-Done sebagai hadiah."
		end



		
	elseif req == 322 then
		return	2,0, "Tidak penting siapa yang memulainya terlebih dahulu. Yang utama adalah aku tidak dapat istirahat untuk menyiapkan tugasmu.",332, "....."
				

	elseif req == 332 then
		return	2,0, "Kamu tidak mengikuti saranku dengan serius. Lebih baik kita selesaikan tugas-tugas ini.",342,"Apakah kali ini?"
			
	
	elseif req == 342 then
		return	2,0, "Karena ini yang terakhir. Aku menyiapkan yang sangat sulit.",352,"Sungguh? Aku tidak takut.."
				

	elseif req == 352 then
		return	2,0, "Apakah kamu pernah mendengar Artreia continent? Tugas terakhir akan ada di Artreia continent.",362,"Itu sangat jauh..."
			
	
	elseif req == 362 then
		return	2,0, "Jangan khawatir. Anggap saja sedang bertamasya. Pemandangan Artreia sangat indah, sungguh sayang jika dilewatkan. Monster yang harus kamu cari adalah Fairudo yang berada diWhite Seashore of Artreia.",372,"Hm.. Apakah sangat kuat?."
				

	elseif req == 372 then
		return	2,0, "Maaf tapi memang benar. Sangat kuat oleh karena itu hati-hati saat berburu. Kamu harus membawa kembali crown of Fariudo sebagai bukti.",382, "Oke. Aku mengerti."
				

	elseif req == 382 then
		AddSwitchCount( cnum, 330, 1 ) --퀘 6 수락
		StartQuest(cnum, 131)
		return	1,0,"Karena ini tugas terakhir. Aku harap kamu melakukan yang terbaik. Semoga berhasil!"
				

	elseif req == 392 then
		if GetItemCount( cnum, 4448, 0 ) < 1 then -- 퀘 6 완료 조건 판단(페어드래곤 왕관 여부 판단)
			return	1,0, "Kamu belum memenuhi syarat! Cobalah lagi!!!"


		elseif GetHench(cnum, 1 , 540, 1) < 1 then
			return 1,0,"Aku akan memberi sebuah hench. Bawa kembali hench yang kemarin aku berikan."


		else
			EndQuest(cnum, 131)
			AddItemCount(cnum, 4448, -1) --페어드래곤 1개 회수
			AddItemCount(cnum, 4442, -5) -- 잘 했어요 도장 5개 회수
			AddSwitchCount(cnum, 331, 1)
			AddHeroExp(cnum, 6000000)
			AddHench(cnum, 540, 1)
			AddHench(cnum, 495, 1)
			return	1,0,"Bagus! Aku sekarang bebas! Kerja bagus! Aku harap kita tidak berjumpa dalam waktu dekat. Aku harap ia dapat membantu dalam petualanganmu. Tolong kembalikan yang kemarin aku berikan untuk aku jadikan koleksi."
		end			
	else

		return 1,0,"Error1"
	end
end
    
