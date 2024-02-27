function NPC_QUEST_288(cnum,reqNumber) 

req = reqNumber


	if req == 1 then
		ImageQuest(cnum, 2, 1,"Oh, halo pemuda!! Aku adalah ilmuwan jenius yang terkenal di dunia, Professor Jove. Hmm. Apa kamu petualang baru? Meski aku sangat sibuk sekarang, aku ingin meluangkan waktu denganmu. Ha Ha. Aku tahu, kamu sangat berterima kasih atas bantuanku!")

	elseif req == 2 then
		ImageQuest(cnum, 3, 1, "Kamu telah memilih perjalanan untuk menjadi seorang hero hebat bernama Mixmaster. Siapakah Mixmaster? Ahli dari segala ahli! Mixmaster merupakan seorang hero yang mengatur dunia. Mengatur semuanya! Kamu membutuhkan banyak benda karena kamu seorang pemula. Apakah kamu ingin belajar pengetahuan dasar petualangan?")
		
	elseif req == 3 then	
		ImageQuest(cnum, 4, 1, "* Panduan akan dilanjutkan jika kamu menekan selanjutnya. Jika kamu tidak ingin melanjutkan, harap pergi ke Warp Wizard, yang ditandai ikon ungu di map kiri atas.")

	elseif req == 4 then
		ImageQuest(cnum, 0, 2, "Hench berarti monster terlatih. Untuk membuat Hench kuat, kamu harus menggabungkan Hench level rendah menjadi satu. Setelah kerja keras menggabungkan, seorang novice sepertimu dapat menjadi seorang MixMaster! Apa kamu lebih ingin tahu? Kunjungilah Pooch (X: 125 Y:135) karena aku sangat sibuk. Percobaan hari ini dapat membuatku memenangkan Nobel prize!")

	else
		return 0
	end
end

   


function NPC_QUEST_312(cnum,reqNumber) 
	
req = reqNumber

item1 = GetItemCount(cnum, 259, 0)
item2 = GetItemCount(cnum, 259, 2)

hench1 = GetHench(cnum, 1, 1, 1)
hench2 = GetHench(cnum, 1, 2, 1)
hench3 = GetHench(cnum, 1, 13, 1)


	if req == 1 then
		if GetSwitchCount(cnum, 114) < 1 then
			if GetSwitchCount(cnum, 111) < 1 then
				if GetSwitchCount(cnum, 110) < 1 then		
					if GetSwitchCount(cnum, 109) < 1 then
						ImageQuest(cnum, 2, 1,"Halo! Aku Pooch, meski aku tidak tinggi, jangan mentertawaiku. Kemampuan Hench tidak dapat diukur dari tingginya! Baiklah, kamu disini untuk panduan. Percayalah, layak untuk diikuti. Karena aku akan memberimu senjata, pelindung dan hench pertama untukmu! Dengarkan baik-baik. Pertama-tama, penjelasan menu dikanan bawah.")
					else
						if item1 < 1 and item2 < 1 then
							ImageQuest(cnum, 0, 1,"Aku tidak melihat Soft Armour. Kamu dapat memperolehnya dari defence/weapon merchant. Mohon jangan dipakai dahulu.")
						else
							ImageQuest(cnum, 20, 15,"Kamu ingin memakai Soft Armour? Untuk memakainya, klik Soft armour dan tarik ke tempat yang sesuai kemudian taruh. Atau cukup klik dua kali bendanya. Kamu dapat melihat peningkatan evasion pada informasi karakter.")
						end
					end
				else
					if hench1 < 1 or hench2 < 1 then
						ImageQuest(cnum, 0, 1,"Bawakan aku Core dari Draco dan Devilco. Jika kamu sedang menggunakan mereka dalam pertempuran, harap lepas perlengkapannya dan kembalilah padaku.")
					else
						ImageQuest(cnum, 23, 18,"Apakah kamu tahu arti Hench? Hench adalah monster mulia yang diberikan kepada orang berbakat. Sebuah Core adalah jiwa dari Hench. Core yang kamu miliki saat ini telah mati. Kamu dapat menghidupkannya kembali dengan bantuan dari Mix Builder.")
					end				
				end
	
			else
				if hench3 < 1 then
					ImageQuest(cnum, 0, 1,"Ayo! Pergi dan gabungkan Draco dengan Devilco Core setelah mendapatkan dan menghidupkannya. Kamu seharusnya mendapat Imon dengan menggabungkan Draco dan Devilco. Pastikan Draco yang sebagai MAIN! Oh dan cukup tunjukkan hasilnya padaku dalam bentuk Core dalam Inventory!")
				else
					ImageQuest(cnum, 27, 23,"Selamat! Penggabungan pertama yang sukses! Kini, kamu dapat melihat info jika kamu klik tab Core dan klik nama monsternya!")
				end
			end

		else
			ImageQuest(cnum, 0, 1,"Aku telah mengajarkan yang perlu kamu ketahui. Semoga berhasil untuk menjadi MixMaster terbaik!")
		end






	elseif req == 2 then
		ImageQuest(cnum, 3, 3,"Mall : Kamu dapat membeli item melalui MixMall.")

	elseif req == 3 then
		ImageQuest(cnum, 4, 4,"Master : Kamu dapat menemukan informasi karakter Hero disini.")

	elseif req == 4 then
		ImageQuest(cnum, 5, 5,"Core : Window ini untuk Hench (monsters). Periksa disini jika kamu ingin melihat informasi Hench.")

	elseif req == 5 then
		ImageQuest(cnum, 6, 6,"Item : Window ini untuk item milikmu. Berhati-hatilah dengan jumlah yang bisa kamu bawa.")

	elseif req == 6 then
		ImageQuest(cnum, 7, 7,"Skill : Sesungguhnya menggunakan skill hebat sangat efektif dan diperlukan dalam petualangan")

	elseif req == 7 then
		ImageQuest(cnum, 8, 8,"Mess: Ini akan memberitahu dimana temanmu dalam game")

	elseif req == 8 then
		ImageQuest(cnum, 9, 9,"Quest : Kamu dapat memeriksa berbagai informasi Quest yang terdaftar disini.")

	elseif req == 9 then
		ImageQuest(cnum, 10, 10,"Map : Apa kamu tahu cara membaca peta? Terletak dikiri atas. Kamu dapat klik disini untuk menyembunyikan map.")

	elseif req == 10 then
		ImageQuest(cnum, 11, 11,"System : Kamu dapat mengubah pilihan game atau keluar. Kembali ke desa adalah yang digunakan ketika kamu KO dikalahkan monster. Dengan begitu akan membawamu kembali ketempat Resurection Wizard. Kamu juga dapat klik menu Deny untuk mengacuhkan MixMaster lain.")

	elseif req == 11 then
		ImageQuest(cnum, 12, 1,"Ada beberapa keterangan mengenai menu tab, harap dengarkan baik-baik.")

	

-- ¹æ¾î±¸ È¹µæ
	elseif req == 12 then
		ImageQuest(cnum, 13, 12,"Dalam tab MASTER, kamu dapat memeriksa LV, HP, MP, status kekuatan, dan experience dari karaktermu. Kamu mendapat 5 point ketika naik level. Kamu dapat meningkatkan statusmu dengan menggunakannya, dan karaktermu akan semakin kuat. Semua terserah kamu untuk menentukannya.")			

	elseif req == 13 then
		ImageQuest(cnum, 14, 13,"POWER membuat kekuatan serangan dan HP meningkat. QUICK meningkatkan kemampuat evasion ketika karakter diserang. ACCURACY meningkatkan tingkat akurasi dari serangan dan LUCK meningkatkan MP, tingkat pemulihan HP&MP dan efek skill. Kamu dapat memasukkan point status yang tersisa dengan menggunakan +.")
		
	elseif req == 14 then
		if GetSwitchCount(cnum, 109) < 1 then
			AddSwitchCount(cnum, 109, 1)
			AddMoney(cnum, 150)
		end
		
		ImageQuest(cnum, 0, 14,"Kini, dapatkah kamu menemukan defence item merchant dalam map diujung kiri? Seperti yang kamu lihat dalam gambar, kamu dapat menemukan lokasi NPC jika kamu menggerakkan mouse di map. Karaktermu dilambangkan ikon warna hijau. Aku akan memberimu beberapa GP. Kembalilah padaku setelah membeli Soft Armour dari defence item merchant. Mohon agar tidak dipakai dan bawalah dalam Inventorymu!")


--¹«±â¿Í ÄÚ¾î È¹µæ

	elseif req == 20 then

		ImageQuest(cnum, 21, 28,"Seluruh item dipakai dengan cara yang sama. Terdapat empat jenis senjata: Sword, Knuckle, Bow, dan Gun. Hanya satu jenis senjata yang dapat dipakai tiap karakter. Ditt menggunakan sword, Jin menggunakan knuckle, Penril menggunakan bow dan Phoy menggunakan gun.")		

	elseif req == 21 then
		ImageQuest(cnum, 22, 16,"Pertarungan akan dimulai setelah kamu klik monster. Sebagian besar monster tidak akan menyerang kecuali diserang lebih dulu. Namun hati-hati, beberapa monster agresif dan akan mengejarmu. Agar bertahan hidup, konsentrasi pada jumlah HP-mu, yaitu ikon dengan wajahmu dikanan atas. Warna merah merupakan HP dan biru adalah MP. Kamu akan mati jika HP menjadi nol. Apa kamu ingin mencoba melawan monster?")

	elseif req == 22 then
		
		if GetSwitchCount(cnum, 110) < 1 then
			if GetRemainPocket(cnum) < 1 then
				ImageQuest(cnum, 0, 1,"Aku seharusnya memberimu senjata setelah pembicaraan mengenai Core. Namun tidak ada ruang dalam Inventorymu. Dapatkah kamu kembali setelah membereskan Inventorymu?")
			
			else
				Type = GetHeroType(cnum)
		
				if Type == 0 then
					AddItemCount(cnum, 189, 1)
				
				elseif Type == 1 then
					AddItemCount(cnum, 199, 1)
		
				elseif Type == 3 then
					AddItemCount(cnum, 209, 1)
		
				elseif Type == 2 then
					AddItemCount(cnum, 219, 1)
					
				else
					return 0
				end
				
				AddSwitchCount(cnum, 110, 1)
				ImageQuest(cnum, 0, 17,"Ketika mengalahkan monster, mereka dapat menjatuhkan yang disebut CORE. Bawakanlah kepadaku. Jika kamu pergi ke tenggara dari sini, kamu akan menemui banyak Draco dan Devilco. Kamu dapat menangkapnya dan membawakannya untukku. Ini senjata pertama untukmu. Ingat, hanya dengan membawanya tidak akan membantumu. Kamu harus memakainya." )
			end
		end
		


--ÄÚ¾î È¹µæ ÈÄ
	elseif req == 23 then
		ImageQuest(cnum, 24, 19,"Jika kamu pergi ke Mix Builder dan memintanya untuk memulihkan Core milikmu. Maka untuk pertama kalinya, kamu dapat bertarung bersama Hench milikmu. Apa kamu lihat warna hitam dan merah? Itu artinya mereka mati. Ketika hidup, mereka memiliki warna lain!" )


	elseif req == 24 then
		ImageQuest(cnum, 25, 20,"Nah, sebelum kamu pergi, aku akan mengajarkan bagaimana membuat Hench yang kuat. Kamu dapat menggunakan sistem yang disebut MIX. Kamu membutuhkan Mix Builder untuk hal ini. Kamu  membutuhkan setidaknya 2 Hench. Hati-hatilah karena ada bagian sebagai MAIN dan SUB saat menggabungkan. Jadi meski dengan 2 Henc yang sama lagi, jika urutannya tidak sesuai, maka hasilnya akan berbeda!" )


	elseif req == 25 then
		ImageQuest(cnum, 26, 21,"Jangan lupa! Kamu hanya dapat menggabungkan Hench dengan jenis kelamin yang berbeda. Kamu harus bicara dengan penduduk dan MixMaster lain untuk mengetahui Mix Formula, karena jumlahnya ratusan! Mohon agar hati-hati sebelum menggabungkan. Apa kamu ingin menggabungkan?")


	elseif req == 26 then
		if GetSwitchCount(cnum, 111) < 1 then
			AddSwitchCount(cnum, 111, 1)
			AddMoney(cnum, 1000)
		end
		
		ImageQuest(cnum, 0, 22,"Kamu bisa gagal dalam menggabungkan sesuai dengan tingkat kesuksesan. Penggabungan merupakan proses yang sulit untuk para Hench. Jika mereka bukanlah Hench terlatih, mereka dapat mati saat proses penggabungan. Latihlah mereka sebelum penggabungan. Kini, pergi dan buatlah Imon dengan menggabungkan Draco sebagai MAIN dan Devilco sebagai SUB. Ini 1000GP. Cobalah!")


--¹Í½º ÈÄ
	elseif req == 27 then
		ImageQuest(cnum, 28, 24,"Sekarang, menggunakan Core sebagai Hench, kamu dapat klik dua kali atau menarik mereka ke window dengan 1, 2 atau 3. Seperti yang kamu lihat diatas. Kamu dapat menggunakan hingga 3 Core sebagai Hench dan membantumu dalam pertarungan. Hati-hati terhadap HP mereka yang berada di kanan atas!")


	elseif req == 28 then
		ImageQuest(cnum, 29, 25,"Tiap Hench memiliki skill masing-masing tergantung clannya, yaitu Dragon, Metal, Devil, Plant, Insect, Beast, Bird dan Mystery.. Sepertinya.. Bagaimanapun juga tiap Hench dapat menggunakan skill. Cara terbaik menggunakannya adalah melalui tombol singkat disebelah kanan. Kamu dapat mengaturnya dengan menarik skill kedalam window tersebut. Dan menggunakannya dengan menekan tombol singkatnya. Kamu juga dapat menggunakan window ini untuk skill kamu sendiri serta potion!")


--¿öÇÁ, ºÎÈ° ¸¶¹ý»ç ¼³¸í ºÎºÐ

	elseif req == 29 then
		ImageQuest(cnum, 30, 26,"Sekarang, Resurrection Point. Wizard yang di atas adalah Wizard of Ressurection. Kamu dapat memilih ingin dihidupkan kembali dikota mana dengan bicara padanya. Sebaiknya kamu bicara dengannya terlebih dahulu sebelum bertempur, agar mempermudah dirimu. Ketika kamu mati, tekan Go to Village pada System Menu dan kamu akan dihidupkan kembali di ressurection point terakhir.")


	elseif req == 30 then
		ImageQuest(cnum, 31, 27,"Warp Wizard, Monez adalah wizard yang dapat memindahkan kamu ke banyak tempat. Sebuah Warp Ring dibutuhkan untuk perpindahan. Kamu dapat memperoleh Warp Ring dari MixMall, atau dengan memenangkan event. Untuk mengetahui event yang berlangsung, lihat di bagian Event&News dari website kami secara rutin!")


	elseif req == 31 then
		if GetSwitchCount(cnum, 112) < 1 then
			AddSwitchCount(cnum, 112, 1)
			AddSwitchCount(cnum, 114, 1)	
		end
		
		ImageQuest(cnum, 0, 1,"OK waktunya makan siang untukku! Aku telah cukup mengajarimu. Sekarang, jika kamu pergi ke Warp Wizard, dia akan mengirimmu ke kota Magirita. Aku harap kita dapat bertemu lagi nanti! Dan semoga saat itu kamu sudah menjadi MixMaster yang hebat. Semoga berhasil!" )

	else
		return 0
	end
end


