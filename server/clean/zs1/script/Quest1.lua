function NPC_QUEST_210(cnum,reqNumber)

local req, id1, id2, id3,count1,count2,count3
local req = reqNumber
local resultmsg,name1,name2,name3
id1=354
id2=355
id3=356
name1="sumber suara"
name2="gema"
name3="suara angin"


count1 = GetItemCount(cnum,354,0)

if count1 == 0 then
	resultmsg = name1
end

count2 = GetItemCount(cnum,355,0)

if count2 == 0 then
	if resultmsg == nil then
		resultmsg = name2
	else
		resultmsg = resultmsg..","..name2
	end
end

count3 = GetItemCount(cnum, 356,0)

if count3 == 0 then
	if resultmsg == nil then
		resultmsg = name3
	else
		resultmsg = resultmsg..","..name3
	end
end


	if req == 1 then
		if GetSwitchCount(cnum, 1000) < 1 then
			return 2,0,"Tree of Propagation mulai lemah. Kekuatannya dapat melemahkan monster. Saat ini kekuatan monster menjadi semakin besar tiap hari. Apa kamu tahu siapa yang dapat menyelesaikan masalah ini!?",2,"Aku akan menolongmu!"
		else
			if GetSwitchCount(cnum, 7) < 1 then
				return 2,0,"Apa kamu telah mendapatkan semua manik - manik? Jika lupa, kamu bisa memeriksanya pada bagian 'Quest' di kanan bawah.",12,"Ya"
			else
				return 1,0,"Kamu telah mendapatkan seluruh manik pohon. Sekarang, temukan Tree of Propagation di wilayah Timur Mekrita Seashore (X: 169, Y:169)."
			end

		end

	elseif req == 2 then
		return 2,0,"Jangan konyol, lihat dirimu. Ok, akan kuceritakan kisahnya dan kamu dapat meneruskannya. Dahulu kala, aku menemukan sebuah buku ketika melakukan perjalanan. Judul buku tersebut, 'Secret of the Growth'. Saat aku membaca buku itu, aku menemukan rahasia menakjubkan!",3,"Apa rahasianya?"

	elseif req == 3 then
		return 2,0,"Salah satu kalimatnya amat menarik. Dikatakan, 'Aku telah berhasil menjinakkan, dan kini kamu dapat membuat monster bertumbuh dengan cepat'. Aku curiga bahwa sang penulis telah menyerang Tree of Propagation.",4,"Wow. Menakutkan."

	elseif req == 4 then
		return 2,0,"Tepat sekali! Jika kita tidak melakukan sesuatu, kita akan dikelilingi oleh banyak monster. Aku tak meminta kamu untuk membantuku, namun tolong carikan seseorang untuk membantuku?",5,"Aku akan menolongmu!"

	elseif req == 5 then
		return 2,0,"Astaga, kamu keras kepala. Ok, aku akan memberikan tes. Pertama, pergi dan kumpulkan manik - manik dari Pee, Manglock, dan Metalocks. Setelah kamu kumpulkan, bawalah kepadaku. Oh, semoga aku tidak melakukan kesalahan yang dapat membahayakan dirimu.",6,"Aku akan mencarinya sekarang."

	elseif req == 6 then
		StartQuest(cnum, 1)
		AddSwitchCount(cnum, 1000, 1)
		return 1,0,"Oh bagus, kamu masih hidup. Aku lupa mengatakan bahwa kamu harus membunuh Pee, Manglock, dan Metalocks."



	elseif req == 12 then
		if resultmsg ~= nil then
			return 1,0,"Jangan menipuku seperti itu. Tidak ada "..resultmsg..""
		else
			if GetSwitchCount(cnum, 7) < 1 then
				AddSwitchCount(cnum, 7, 1)
				AddSwitchCount(cnum, 8, 1)
				AddMoney(cnum, 3000)
				EndQuest(cnum, 1)
			end

			return 1,0,"Astaga, kamu hebat sekali! Kamu telah mengumpulkan ketiganya. Sungguh luar biasa.. Banyak yang gagal melakukan hal ini. Kini aku percaya padamu. Pergi dan bicaralah kepada Tree of Propagation yang terletak di Timur Mekrita Seashore (X: 169, Y:169). Manik - manik itu dapat membantumu berbicara dengan Pohon tersebut. Ooh! Aku akan memberimu uang, agar dapat membantumu dan sebagai permintaan maaf karena tidak mempercayaimu!"
		end
	else
		return 0
	end
end


