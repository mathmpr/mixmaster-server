function NPC_QUEST_248(cnum, reqNumber)

req = reqNumber

name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 317) < 1 then			
			if GetSwitchCount(cnum, 316) < 1 then
				return 2,0,"Halo, aku Roy anggota dari Mixbuilder Guild. Aku disini untuk mempromosikan guild kami.",2,"Tugas seperti apa yang dapat aku ambil?"

			else
				return 2,0,"Ah~ Kamu pasti "..name.." yang mengambil test masuk. Apa kamu datang untuk menyelesaikan test? Atau ada hal lain yang ingin kamu lakukan?",32,"Aku disini untuk menyelesaikan test"

			end
		
		else
			if GetSwitchCount(cnum, 318) < 1 then			
				if GetHeroLv(cnum) < 20 then
					return 1,0,"Selamat datang, apakah giliranmu menyenangkan?"


				else
					return 2,0,"Selamat datang, kamu mampir tepat disaat aku membutuhkanmu.",42,"Apa kamu memiliki masalah?"

				end
			else
				return 2,0,"Bagaimana dengan kasusku?",62,"Ini contohnya."

			end

		end

		


	elseif req == 2 then
		return 2,0,"Kami menerima anggota baru setelah test sederhana."..name.."Bagaimana kalau menjadi bagian dari guild besar?",12,"Apa yang dapat kulakukan?"

	
	elseif req == 12 then
		return 2,0,"Pertama-tama, kami akan memberimu sertifikat anggota baru. Sertifikat ini mengijinkanmu menerima tugas dari guild. Ada tugas mudah hingga ada yang sulit, namun semakin bahaya tugasnya maka semakin besar bayarannya. Apa kamu ingin mengambil test masuk?",22,"Bagus"



	elseif req == 22 then
		AddSwitchCount(cnum, 316, 1)
		StartQuest(cnum, 143)
		return 1,0,"Kamu sangat bijak menentukan pilihan. Nah, aku akan memberikan informasi test. Merupakan hal umum bahwa persyaratan dalam Mixbuilder Guild yaitu pengalaman mencampur. Test kali ini yaitu membuat PoochDev dari campuran. Saat kamu keluar dari desa, kamu dapat berburu monster. Kamu tidak perlu khawatir mengenai barangnya. OK. Terima kasih"








	elseif req == 32 then
		if GetHench(cnum, 1, 61 ,1) < 1 then
			return 1,0,"Hm.. Aku belum membuat PoochDev. Meski aku bukan seorang mixbuilder hebat, aku dapat membuatnya."

		else
			AddHench(cnum, 61, -1)
			AddItemCount(cnum, 4435, 1)
			AddSwitchCount(cnum, 317, 1)
			AddHeroExp(cnum, 600)
			EndQuest(cnum, 143)
			return 1,0,"Wow. Kamu melakukan kerja bagus untuk seorang pemula meskipun tugasnya mudah. Selamat!"..name.."merupakan anggota baru Mixbuilder Guild. Aku harap dapat berteman denganmu. Ini sertifikatnya. Untuk mengambil tugas dari guild, kamu memerlukan sertifikatnya. Jangan sampai hilang! Sampai jumpa."

		end




	elseif req == 42 then
		return 2,0,"Aku baru saja ingin mencari anggota karena ada tugas. Apa kamu ingin menerima tugas ini? Tugas yang mudah.",52,"Aku ingin mendengar tugasnya."


	elseif req == 52 then
		AddSwitchCount(cnum, 318, 1)
		StartQuest(cnum, 144)
		return 1,0,"Tugas ini dari Mutant Lab. Sekarang ini terdapat monster aneh yang ditemukan disekitar Owalljae Prairie dan Tamer's Field. Beberapa penelitian mengatakan bahwa penampilannya seperti Mutant Douba dari kejauhan namun sangat berbeda jika dilihat dari dekat. Lab menantikan kemungkinan lahirnya mutant baru. Tugasnya adalah mengambil contoh Mutant Douba. Mungkin akan lama menyelesaikan tugas ini karena kamu harus mencari di padang luas. Terima kasih.."





	elseif req == 62 then
		if GetItemCount(cnum, 4436, 0) < 1 then
			return 1,0,"Apa ini? Apa ini contohnya? Tanaman macam apa ini?"

		else
			AddSwitchCount(cnum, 319, 1)
			AddHench(cnum, 29, 1)
			AddHeroExp(cnum, 8100)
			AddItemCount(cnum, 4436, -1)
			EndQuest(cnum, 144)
			return 1,0,"Oh~Ini contoh dari monster mutant. Sekilas tampak sama dengan monster biasa. Nah, peneliti akan menanganinya. Terima kasih. Ini hadiahnya. Hench dan exp. Aku akan menghubungimu untuk yang berikutnya."

		end

	else
		return 1,0,"error"

	end
end