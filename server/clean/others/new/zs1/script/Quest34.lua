function NPC_QUEST_256(cnum, reqNumber)

req = reqNumber

GetSkill4 = GetSkillMaxLevel(4)
GetSkill6 = GetSkillMaxLevel(6)
GetSkill8 = GetSkillMaxLevel(8)
GetSkill23 = GetSkillMaxLevel(23)
GetSkill25 = GetSkillMaxLevel(25)



GetSkillMoney9   = GetSkillLarningGold(9)
GetSkillMoney10 = GetSkillLarningGold(10)
GetSkillMoney11 = GetSkillLarningGold(11)
GetSkillMoney12 = GetSkillLarningGold(12)
GetSkillMoney13 = GetSkillLarningGold(13)
GetSkillMoney30 = GetSkillLarningGold(30)
GetSkillMoney31 = GetSkillLarningGold(31)



	if req == 1 then
		return 3,0,"Oh, kamu pasti orang terpilih yang mampu mencapai sejauh ini. Aku adalah sebuah Mirror yang diciptakan oleh Great King Jove. Aku diciptakan untuk mengajarkan skill tambahan kepada MixMaster kelas atas.",2,"Secondary Skill?",3,"Aku seorang kelas atas!!"

	elseif req == 2 then
		return 4,0,"Skill tambahan merupakan skill upgrade dari skill utama. Skill menjadi semakin kuat dan memperluas sasaran. Skill tambahan sangatlah sulit. Kamu tidak dapat mempelajarinya dalam semalam",12,"Skill apa saja?",13,"Persyaratan belajar?",1,"kembali"

	elseif req == 3 then
		return 9,0,"Skill apa yang membuatmu tertarik MixMaster muda?",22,"Holy Fire",23,"Healing Wave",24,"Shock Wave",25,"Power Deter",26,"Gravity Force",1,"kembali"

--스킬 설명 부분

	elseif req == 12 then
		return 2,0,"Aku mengerti, kamu menyukai Secondary Skill? Aku dapat mengajarkanmu Holy Fire, Healing Wave, Shock Wave sebagai skill area. Dan juga, terdapat Power Deter dan Gravity Force sebagai skill sasaran tunggal.",2,"kembali."

	elseif req == 13 then
		return 2,0,"Untuk mempelajari skill tambahan, kamu harus menguasai skill utama terlebih dahulu.",2,"kembali."



--스킬 적용 부분

--홀리 파이어
	elseif req == 22 then
		return 4,0,"Holy Fire merupakan sebuah skill serangan yang memanggil api berbahaya dari surga. Menyerang sasaran dan sekitarnya. . Apakah kamu ingin belajar Holy Fire? GP yang dibutuhkan untuk belajar Holy Fire adalah sejumlah "..GetSkillMoney13..".",202,"Ya",203,"Tidak",3,"kembali"

	elseif req == 202 then
		learn = LearnSkill(cnum, 13)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",3,"kembali"

		elseif learn == 2 then
			return 2,0,"Nomor skill salah",3,"kembali"

		elseif learn == 3 then
			return 2,0,"Maafkan aku pemuda, kamu harus menguasai Fire Breath sebelum dapat mempelajari ini. Kerumitannya akan menghancurkanmu.",3,"kembali"

		elseif learn == 4 then
			return 2,0,"Kamu harus menguasai Fire Breath  hingga "..GetSkill8.." agar dapat belajar Holy Fire wahai muridku.",3,"kembali"

		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill sejumlah "..GetSkillMoney13..".",3,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari skill."

		else
			return 0
		end



	elseif req == 203 then
		return 1,0,"Pilih dengan bijak MixMaster muda."

		
--힐링 웨이브
	elseif req == 23 then
		return 4,0,"Healing Wave adalah skill yang memulihkan kekuatan fisk Hero dan Hench di area tertentu. Apakah kamu ingin belajar Healing Wave? GP yang dibutuhkan untuk belajar adalah sejumlah "..GetSkillMoney12..".",212,"Ya",213,"Tidak",3,"kembali"

	elseif req == 212 then
		learn = LearnSkill(cnum, 12)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",3,"kembali"

		elseif learn == 2 then
			return 2,0,"Nomor skill salah",3,"kembali"

		elseif learn == 3 then
			return 2,0,"Healing dibutuhkan untuk mempelajari Healing Wave.",3,"kembali"

		elseif learn == 4 then
			return 2,0,"Kamu harus meningkatkan skill Healing hingga "..GetSkill6.." agar dapat belajar Healing Wave.",3,"kembali"

		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill sejumlah "..GetSkillMoney12..".",3,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari skill."

		else
			return 0

		end

	elseif req == 213 then
		return 1,0,"Pilih dengan bijak MixMaster muda."



--쇼크 스턴
	elseif req == 24 then
		return 4,0,"Shock Wave merupakan skill area luas dimana targetnya akan pingsan sesaat. Merupakan skill yang sangat kuat ketika dikelilingi musuh. Apakah kamu ingin belajar skill Shock Wave? GP yang dibutuhkan untuk belajar skill sejumlah "..GetSkillMoney11..".",222,"Ya",223,"Tidak",3,"kembali"

	elseif req == 222 then
		learn = LearnSkill(cnum, 11)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",3,"kembali"

		elseif learn == 2 then
			return 2,0,"Nomor skill salah",3,"kembali"

		elseif learn == 3 then
			return 2,0,"Stun dibutuhkan untuk mempelajari Shock Wave.",3,"kembali"

		elseif learn == 4 then
			return 2,0,"Kamu harus meningkatkan skill Stun hingga "..GetSkill4.." agar dapat belajar Shock Wave.",3,"kembali"

		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill sejumlah"..GetSkillMoney11..".",3,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari skill."
		else
			return 0

		end			


	elseif req == 223 then
		return 1,0,"Pilih dengan bijak MixMaster muda."



--스피릿 위큰
	elseif req == 25 then
		return 4,0,"Power Deter adalah skill yang memberi damage dan sekaligus melambatkan lawan dalam waktu yang sama. Kamu harus menguasai Dodge, Strike, Drain dan Shield sebelum mempelajari Power Deter. Apakah kamu ingin belajar Power Deter? GP yang dibutuhkan untuk belajar adalah sejumlah "..GetSkillMoney9..".",232,"Ya",233,"Tidak",3,"kembali"

	elseif req == 232 then
		learn = LearnSkill(cnum, 9)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",3,"kembali"

		elseif learn == 2 then
			return 2,0,"Nomor skill salah",3,"kembali"

		elseif learn == 3 then
			return 2,0,"Kamu harus menguasai Dodge, Strike, Counter, Drain dan Shield agar dapat belajar Power Deter.",3,"kembali"

		elseif learn == 4 then
			return 2,0,"Kamu harus menguasai Dodge, Strike, Counter, Drain dan Shield agar dapat belajar Power Deter.",3,"kembali"

		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill sejumlah"..GetSkillMoney9..".",3,"kembali"

		elseif learn == 0 then
			LearnSkill(cnum, 9)
			return 1,0,"Kamu telah mempelajari skill."
		else 
			return 0
		end


	elseif req == 233 then
		return 1,0,"Pilih dengan bijak MixMaster muda."


--슬로우 포스
	elseif req == 26 then
		return 4,0,"Gravity Force adalah skill yang memberi damage dan sekaligus memperlambat lawan. Kamu harus menguasai Dodge, Strike, Drain dan Shield to learn Gravity Force. Apakah kamu ingin belajar Gravity Force? GP yang dibutuhkan untuk belajar Gravity Force adalah sejumlah "..GetSkillMoney10..".",242,"Ya",243,"Tidak",3,"kembali"
		
	elseif req == 242 then

		learn = LearnSkill(cnum, 10)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",3,"kembali"

		elseif learn == 2 then
			return 2,0,"Nomor skill salah",3,"kembali"

		elseif learn == 3 then
			return 2,0,"Kamu harus menguasai Dodge, Strike, Drain dan Shield agar dapat belajar Gravity Force.",3,"kembali"

		elseif learn == 4 then
			return 2,0,"Kamu harus menguasai Dodge, Strike, Drain dan Shield agar dapat belajar Gravity Force. .",3,"kembali"

		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill sejumlah"..GetSkillMoney10..".",3,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari skill."
		else
			return 0
		end


	elseif req == 243 then
		return 1,0,"Pilih dengan bijak MixMaster muda."


--클린징 웨이브
	elseif req == 27 then
		return 4,0,"Cleansing Wave merupakan skill area luas yang menyembuhkan Hero dan anggota disekitarnya. Apakah kamu ingin belajar Cleansing Wave? GP yang dibutuhkan untuk belajar skill sejumlah "..GetSkillMoney30..".",252,"Ya",253,"Tidak",3,"kembali"

	elseif req == 252 then
		learn = LearnSkill(cnum, 30)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",3,"kembali"

		elseif learn == 2 then
			return 2,0,"Nomor skill salah",3,"kembali"

		elseif learn == 3 then
			return 2,0,"Kamu membutuhkan skill Purify agar dapat belajar Cleansing Wave.",3,"kembali"

		elseif learn == 4 then
			return 2,0,"Kamu harus meningkatkan skill Purify hingga "..GetSkill25.." agar dapat belajar Cleansing Wave.",3,"kembali"

		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill sejumlah"..GetSkillMoney10..".",3,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari skill."
		else
			return 0

		end			


	elseif req == 253 then
		return 1,0,"Pilih dengan bijak MixMaster muda."


--포이즌 쇼크
	elseif req == 28 then
		return 4,0,"Poison Shock sebuah skill serangan luas yang menyerang musuh dan monster sekitar dengan racun. Apakah kamu ingin belajar Poison Shock? GP yang dibutuhkan untuk belajar adalah sejumlah "..GetSkillMoney31.."",262,"Ya",263,"Tidak",3,"kembali"

	elseif req == 262 then
		learn = LearnSkill(cnum, 31)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",3,"kembali"

		elseif learn == 2 then
			return 2,0,"Nomor skill salah",3,"kembali"

		elseif learn == 3 then
			return 2,0,"Kamu membutuhkan skill Poison agar dapat belajar Poison Shock.",3,"kembali"

		elseif learn == 4 then
			return 2,0,"Kamu harus meningkatkan skill Poison hingga "..GetSkill23.." agar dapat belajar Poison Shock.",3,"kembali"

		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill sejumlah"..GetSkillMoney10..".",3,"kembali"

		elseif learn == 0 then

			return 1,0,"Kamu telah mempelajari skill."
		else
			return 0

		end			


	elseif req == 263 then
		return 1,0,"Harap memutuskan setelah memikirkannya."


	else
		return 1,0,"Pesan error"
	end
end