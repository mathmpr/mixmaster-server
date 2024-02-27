function NPC_QUEST_264(cnum, reqNumber)

req = reqNumber

name = GetHeroName(cnum)


	if req == 1 then
		if GetSwitchCount(cnum, 84) < 1 then
			return 1,0,"Mau apa anak kecil sepertimu di sini!? Pulang ke rumah, di sini berbahaya!"

		elseif GetItemCount(cnum, 1195, 0) < 1 then
			return 1,0,"Kamu datang dari jauh. Aku tak tahu apa yang membuatmu datang ke sini.. Tapi setelah urusanmu selesai, sebaiknya kamu pergi secepatnya."

		else
			result = GetSwitchCount(cnum, 86)

				
			if result < 1 then

				if GetSwitchCount(cnum, 85) < 1 then
					return 2,0,"Oh, Soul of the Tree!? Kamu pasti seorang pahlawan! Jika kamu bisa memperoleh Soul of Tree dari Terry, kamu pasti memiliki kemampuan hebat. Dengarkan baik-baik dan aku akan menceritakan di mana monster jahat SESUNGGUHNYA.",12,"Tolong katakan padaku."

				else
					StartQuest(cnum, 14)
					return 3,0,"Kamu telah menemukannya??",72,"Ya, aku menemukannya.",73,"Tidak, agak sulit ya."
				end
			else
				return 2,0,"Kini, kita telah menyelesaikan seluruh persiapan untuk pergi ke Malediction. Apakah kamu ingin pergi sekarang?",82,"Berangkat menuju daratan Malediction."
			end
		end

	elseif req == 12 then
		return 2,0,"",22,"Silahkan meneruskan."

	elseif req == 22 then
		return 2,0,"Aku telah menjaga ketiga benda suci ini bertahun - tahun. Namun beberapa minggu lalu aku diserang  dan dua benda suci telah dicuri. Mereka menyergap saat malam tiba. Aku tidak pernah gagal selama 22 tahun namun mereka telah menghancurkan kebanggaan dan harga diriku...",32,"Aku turut menyesal mendengarnya."

	elseif req == 32 then
		return 2,0,"Tapi tidak ada waktu untuk murung! Yang harus kamu lakukan adalah membawa kembali dua benda tersebut. Aku bisa saja melakukannya sendiri, namun aku harus melindungi benda ketiga.",42,"Aku akan melakukannya untukmu."

	elseif req == 42 then
		return 2,0,"Oh, terimakasih! Sangat lega mendengar seorang pahlawab sepertimu mempercayaiku…",52,"Tolong berikan padaku informasinya."

	elseif req == 52 then
		return 2,0,"Aku tidak dapat melihat monster mana yang menyerangku, namun aku mendengar suara mekanik kencang dan merasakan tanah bergetar. Hanya itu yang kutahu…",62,"Ok, aku mengerti."

	elseif req == 62 then
		StartQuest(cnum, 14)
		AddSwitchCount(cnum, 85, 1)
		return 1,0,"Semoga berhasil dan berhati-hatilah."
		
	elseif req == 72 then

		if GetItemCount(cnum, 1201, 0) < 1 or GetItemCount(cnum, 1202, 0) < 1 then
			return 1,0,"Aku tidak melihat kamu membawanya. Tidak ada waktu untuk bermain - main. Tolong bawakan kepadaku secepatnya."

		else
			AddItemCount(cnum,1201, -1)
			AddItemCount(cnum,1202, -1)
			AddSwitchCount(cnum, 86, 1) -- 종료 스위치값 후에 저주의 땅으로 이동하는데 사용한다. 
			EndQuest(cnum, 14)
			return 1,0,"Hebat! Kamu berhasil mendapatkannya. Meski sulit dengan hanya sedikit informasi yang kuberikan, tapi kamu melakukan yang terbaik. Aku sangat menghargai bantuanmu."
		end
	
	elseif req == 82 then
		return 1,0,"[Quest berikut sedang dalam proses]"
	end
end
