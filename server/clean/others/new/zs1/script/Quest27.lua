function NPC_QUEST_250(cnum, reqNumber) -- 마지리타 밸러 조합 퀘스트 npc

req = reqNumber

name = GetHeroName(cnum)
	if req == 1 then
		if GetSwitchCount(cnum, 300) < 1 then -- 6
			if GetSwitchCount(cnum, 298) < 1 then -- 5
				if GetSwitchCount(cnum, 296) < 1 then -- 4
					if GetSwitchCount(cnum, 294) < 1 then -- 3
						if GetSwitchCount(cnum, 292) < 1 then -- 2
							if GetSwitchCount(cnum, 291) < 1 then -- 1
								return 2,0,"Selamat datang di Valor, satu-satunya guild terbesar di Magirita. Kamu datang untuk bergabung dengan kami, bukankah demikian??",2,"Satu-satunya? Apa yang terjadi pada Mixbuilder Guild?"

							else
								return 2,0,"Ujian masuk tidaklah sulit. Apakah kamu telah mencapai level 10?",52,"Yep"

							end
						else
							if GetSwitchCount(cnum, 293) < 1 then 
								if GetHeroLv(cnum) < 15 then
									return 1,0,"Kamu lambat. Kamu dapat menerima pekerjaan dari klien jika cepat meningkatkan level."

								else
									return 2,0,"Mari kita lihat. Wow, kamu beruntung ada yang membutuhkan seorang pemula. Jadi, bagaimana? Apa kamu ingin mengambilnya?",62,"Tentu."

								end
							else
								return 2,0,"Kumpulkan 10 Leathers of Rabie... Sangat mudah... Apa kamu telah selesai?",72,"Yep"

							end
						end
					else
						if GetSwitchCount(cnum, 295) < 1 then
							if GetHeroLv(cnum) < 20 then
								return 1,0,"Kamu lambat. Kamu dapat menerima pekerjaan dari klien jika cepat meningkatkan level."

							else
								return 2,0,"Mari kita lihat. Wow, kamu beruntung ada yang membutuhkan seorang pemula. Jadi, bagaimana? Apa kamu ingin mengambilnya?",82,"Tentu"

							end
						else
							return 2,0,"Apakah tidak apa-apa jika memetik buah?",102,"OK. Ini."
						end
					end
				else
					if GetSwitchCount(cnum, 297) < 1 then		
						if GetHeroLv(cnum) < 25 then
							return 1,0,"Kamu lambat. Kamu dapat menerima pekerjaan dari klien jika cepat meningkatkan level."

						else
							return 2,0,"Mari kita lihat. Wow, kamu beruntung ada yang membutuhkan seorang pemula. Jadi, bagaimana? Apa kamu ingin mengambilnya?",112,"Tentu"

						end
					else
						return 2,0,"Bagaimana caranya menjelajahi sebuah goa?",132,"Tidak ada yang aneh."

					end

				end
			else
				if GetHeroLv(cnum) < 25 then
					return 2,0,"Kamu lambat. Kamu dapat menerima pekerjaan dari klien jika cepat meningkatkan level."

				else
					return 2,0,"Kasus ini berasal dari Mixbuilder Guild, kutubuku. Tertulis 'Diantar ke Mixbuilder di Mekrita. Tidak boleh bertanya.' Apa yang mereka pikirkan? Mereka memiliki guild mereka sendiri...Hmm... Mereka membuatku penasaran. Apa isinya sesuatu yang terlarang?.",142,"Bagaimana aku melakukannya?"
	
				end
			end
		else
			return 1,0,"Tampaknya kita tidak akan sibuk untuk sementara waktu."
		
		end


			



	elseif req == 2 then
		return 2,0,"Jangan bandingkan kami dengan kutubuku. Valor Guild kami sangat tua dan terkenal, dimana anggotanya valor legendaris dan bodyguard bangsawan. Kami sangat berbeda dengan kutubuku.",12,"Ah...ya...."


	elseif req == 12 then
		return 2,0,"Bagaimana reaksimu? Aneh bukan... Nah, kamu tampak seperti pemula. Seiring waktu, kamu dapat mengenalinya. Ah~ kamu datang untuk bergabung dengan kami?",22,"Ya."


	elseif req == 22 then
		return 2,0,"Kamu beruntung. Kami biasanya hanya menerima orang memiliki persyaratan tinggi, namun kami menerima banyak pekerjaan. Sehingga kami mencari pemula untuk melakukan hal mudah. Kamu dapat menjadi anggota kami melalui test mudah.",32,"Apa test nya?"


	elseif req == 32 then
		return 2,0,"Kami hanya memeriksa kemampuan dasar. Pendeknya, kamu dapat langsung bergabung dengan kami jika telah level 10. Mudah bukan?",42,"OK. Sampai nanti."

	
	elseif req == 42 then
		AddSwitchCount(cnum, 291, 1)
		StartQuest(cnum, 138)

	elseif req == 52 then
		if GetHeroLv(cnum) < 10 then
			return 1,0,"Kamu tidak dapat menjalani kehidupan Valor jika kamu tidak dapat melakukan ini. Pulanglah dan belajar lebih keras."

		else
			AddItemCount(cnum, 4417, 1)--조합원 인증서
			AddSwitchCount(cnum, 292, 1)
			AddHeroExp(cnum, 600)
			EndQuest(cnum, 138)
			return 1,0,"Selamat. Sekarang,"..name.." adalah anggota dari Valor Guild kita. Kamu dapat menerima pekerjaan dari guild. Sebagai pemula, kamu akan mengambil banyak tugas. Namun jika kamu bekerja keras, kamu dapat menjadi asisten Valor tingkat tinggi. Nah, sampai ketemu nanti."

		end





	elseif req == 62 then
		AddSwitchCount(cnum, 293, 1)
		StartQuest(cnum, 139)
		return 1,0,"OK. Aku akan beritahu kasusnya. Seorang pria kaya ingin memiliki karpet terbuat dari kulit monster. Tugasnya adalah mendapatkan kulit monster spesial. Dengan kata lain, tugasmu adalah mendapatkan Leather of Rabie. Kamu dapat menemui Rabie di Fishcroll. Kamu harus melawan dan mengumpulkan 10 leathers.OK. Semoga berhasil."


	elseif req == 72 then
		if GetItemCount(cnum, 4418, 0) < 10 then	
			return 2,0,"Apa ini? Aku dapat membedakan antara Rabie dan lainnya."

		else
			AddItemCount(cnum, 4418, -10)
			AddHench(cnum, 101, 1)
			AddSwitchCount(cnum, 294, 1)
			AddHeroExp(cnum, 8000)
			EndQuest(cnum, 139)
			return 1,0,"Aku terima 10 Leather. Ini adalah bayarannya. Ini tidak terlalu bagus namun cukup untuk seorang pemula. Jangan kecewa. Saat kamu sudah level tinggi, kamu akan menerima bayaran besar. Kamu melakukan kerja bagus."

		end




	elseif req == 82 then
		return 2,0,"Baiklah. Aku akan memberitahukanmu tugas yang baru. Tugasnya adalah mendapatkan barang-barang untuk membuat potion dari Merchant in Magirita. Nama barangnya adalah Herb Fruit. Kamu harus mendapatkan Special Fruit di Owalljae Prairie. Kamu sebaiknya memeriksa setiap sudut karena sulit ditemukan. Dan...",92,"Dan.."


	elseif req == 92 then
		AddSwitchCount(cnum, 295, 1)
		StartQuest(cnum, 140)
		return 2,0,"Herb Fruit memiliki banyak berry, namun yang kita butuhkan adalah berry berusia sepuluh tahun lebih. Sangat sulit untuk membedakannya. Kamu harus bekerja seperti lebah. Terima kasih."


	elseif req == 102 then
		if GetItemCount(cnum, 4421, 0) < 1 then
			return 1,0,"Kamu salah mengambil... Ada beberapa orang yang tidak bekerja dengan baik tahun ini."

		else
			AddItemCount(cnum, 4421, -10)
			AddItemCount(cnum, 876, 1)
			AddSwitchCount(cnum, 296, 1)
			AddHeroExp(cnum, 23000)
			EndQuest(cnum, 140)
			return 1,0,"Oh~berry ini berusia lebih dari sepuluh tahun. Pasti kamu bekerja keras. Terima kasih banyak. Ini hadiah yang ditinggalkan oleh Merchant."

		end




	elseif req == 112 then
		return 2,0,"OK. Aku akan beritahu tugas baru. Kasus ini dari Herseba Guards. Dikatakan 'Kami mencari Valor yang mau menjelajahi Rojeta Dungeon. Kami akan menyiapkan akomodasi dan makanan. Dan kami akan memberi hadiah kepada yang memeriksa isi dari monumen.'..... Apakah mereka bodoh? Mereka yang seorang Guards tidak dapat melakukan hal tersebut...Apa? Aku tidak peduli. Aku hanya menerima pesanan. Apa kamu mau mencoba?",122,"Tentu."

	
	elseif req == 122 then
		AddSwitchCount(cnum, 297, 1)	
		StartQuest(cnum, 141)		
		return 1,0,"Baiklah. Rojeta Dungeon terletak di Herseba Village. Sangat mudah menemukannya. Jika kamu telah selesai, mampirlah dan aku akan beri kamu hadiah. Terima kasih."



	elseif req == 132 then
		if GetSwitchCount(cnum, 299) < 1 then
			return 1,0,"Sungguh? Mengapa aku belum menerima hadiah? Aku bukanlah orang yang mudah bicara tanpa tindakan."

		else
			AddItemCount(cnum, 875, 1)
			AddSwitchCount(cnum, 298, 1)
			AddHeroExp(cnum, 23000)
			EndQuest(cnum, 141)
			return 1,0,"Oh~Kini kamu tidak tampak seorang pemula. Ini hadiahnya. Aku belum membukanya. Periksalah.."

		end




	elseif req == 142 then
		return 2,0,"Hm.. Merupakan kebijakan guild untuk memastikan pengantaran. Meski memiliki bau busuk... Mudahnya adalah membawa kotak ini ke salah satu kutubuku di Mekrita.Maukah kamu melakukannya.?",152,"OK"


	elseif req == 152 then
		AddItemCount(cnum, 4422, 1)
		AddSwitchCount(cnum, 300, 1)
		StartQuest(cnum, 142)		
		return 1,0,"Ini kotaknya. Terdapat 2 Mixbuilder di Mekrita, namun tidak semuanya mau menerima. Carilah orang yang tepat. Kamu dapat memperoleh bayaran dari penerima asli. Kamu tidak perlu datang padaku lagi.."
	

	else
		return 1,0,"Error"

	end
end



function NPC_QUEST_268(cnum, reqNumber) -- 로제타 던전 4층 비석 npc

req = reqNumber

	if req == 1 then
		return 2,0,"Ada sebuah monumen tua di ujung. Beberapa isinya terukir.",2,"Periksa isinya."


	elseif req == 2 then
		return 2,0,"Apa maksudnya monumen? Aku sangat sibuk menggalli Dungeon…Aku belum selesai menggali di 4th basement. Hm... Siapa yang membiarkan aku melakukan hal bodoh seperti ini!",12,"Mengingat isinya"


	elseif req == 12 then
		AddSwitchCount(cnum, 299, 1)


	else
		return 1,0,"error"

	end
end



function NPC_QUEST_311(cnum, reqNumber)--메크리타에 있는 믹스빌더 퀘스트 npc

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 300) < 1 then
			return 1,0,"Kapan datangnya? Ini telat."

		else
			return 2,0,"Ah~kamu pasti pengantarnya. Aku telah lama menunggumu..Apa kamu mendapatkan bendanya?",2,"Tentu"

		end

	elseif req == 2 then
		if GetItemCount(cnum, 4422, 0) < 1 then		
			return 1,0,"Dimana bendanya? Jika kamu menghilangkannya, kontrak kita batal. Aku tidak akan membayarmu."

		else
			return 2,0,"Oh, Ini yang aku cari-cari. Terima kasih. Ini hadiahnya. Selamat menikmati~Mungkin aku juga....",12,"Apa?"

		end

	elseif req == 12 then
		AddItemCount(cnum, 4422, -1)
		AddHeroExp(cnum, 23000)--경험치 주는 부분
		EndQuest(cnum, 142)
                return 1,0,"Kamu akan mengerti jika kamu semakin dewasa. Ini exp sebagai hadiah. Terima kasih~"

	else
		return 1,0,"error"

	end
end



function NPC_QUEST_320(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"Aku menemukan Herb Fruit Tree yang memiliki wangi harum. Tampaknya belum tersentuh manusia karena tidak terdapat bekas luka atau memar. Ada banyak buah. Bagaimana aku melakukannya?",2,"Petik buahnya."


	elseif req == 2 then
		random = SetRandom(cnum, 1, 1000)

		if random < 501 then
			AddItemCount(cnum, 4419, 1)
			return 1,0,"Aku mendapatkan Herb Fruit belum matang. Tidak dapat dimakan atau digunakan sebagai obat."

		elseif random >= 501 and random < 901 then
			AddItemCount(cnum, 4420, 1)
			return 1,0,"Aku mendapatkan Herb Fruit matang. Mungkin lezat. Namun, tidak dapat digunakan sebagai obat."

		else
			AddItemCount(cnum, 4421, 1)
			return 1,0,"Aku mendapatkan Herb Fruit cukup matang. Mungkin lezat namun baik digunakan untuk obat."
		end
	else
		return 1,0,"error"

	end
end