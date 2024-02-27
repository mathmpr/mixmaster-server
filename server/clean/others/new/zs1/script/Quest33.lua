function NPC_QUEST_267(cnum, reqNumber)

req = reqNumber

GetSkill1 = GetSkillLarningGold(1)
GetSkill2 = GetSkillLarningGold(2)
GetSkill3 = GetSkillLarningGold(3)
GetSkill4 = GetSkillLarningGold(4)
GetSkill5 = GetSkillLarningGold(5)
GetSkill6 = GetSkillLarningGold(6)
GetSkill7 = GetSkillLarningGold(7)
GetSkill8 = GetSkillLarningGold(8)
GetSkill23 = GetSkillLarningGold(23)
GetSkill24 = GetSkillLarningGold(24)
GetSkill25 = GetSkillLarningGold(25)
GetSkill26 = GetSkillLarningGold(26)
GetSkill27 = GetSkillLarningGold(27)
GetSkill28 = GetSkillLarningGold(28)
GetSkill29 = GetSkillLarningGold(29)


	if req == 1 then
		return 3,0,"Skill level 1 termasuk Dodge, Counter dan Shield sebagai skill pertahanan, Fire Breath, Drain, Poison dan Blaze sebagai skill serangan, dan Stun, Strike, Healing, Purify, Slow, Freeze, Zeal dan Haste sebagai skill Magic.",52,"Apa yang dimaksud dengan belajar skill?",53,"belajar skill"

	



	elseif req == 52 then
		return 5,0,"Skill sangat penting untuk seorang MixMaster. Skill menggunakan MP dan akan membantumu dalam perjalanan menuju MixMaster terbaik.",62,"1. Belajar Skill",63,"2. Memperoleh Skill",64,"3. Menggunakan Skill",1,"kembali"

	elseif req == 53 then
		return 5,0,"Harap memilih skill",72,"Skill Pertahanan",73,"Skill Serangan",74,"Skill Magic",1,"kembali"


-- 스킬 설명 부분

	elseif req == 62 then
		return 2,0,"Tidak ada satupun MixMaster, tidak mengetahui skill, kecuali belajar dariku. Katakan apa yang ingin kamu pelajari dan kamu harus mengeluarkan biaya beberapa GP",52,"kembali"

	elseif req == 63 then
		return 2,0,"Dengan pengorbanan uang tidak dapat langsung menggunakan skill. Kamu harus mendapatkan SP point yang diperoleh ketika naik level. Kamu dapat memeriksa SP dalam window skill.",52,"kembali"

	elseif req == 64 then
		return 2,0,"Kamu dapat menggunakan skill melawan musuhmu dengan menggunakan MP. Tubuhmu tidak dapat menggunakan skill berurutan. Kamu harus beristirahat sebentar setelah menggunakannya. Kamu dapat menggunakannya dengan klik kanan skill yang kamu pilih kemudian klik sasaran.",52,"kembali"



	
--스킬 학습 부분

	elseif req == 72 then
		return 5,0,"Pilih skill yang ingin kamu pelajari",82,"1. Dodge",83,"2. Counter",84,"3. Shield",53,"kembali"

	elseif req == 73 then
		return 6,0,"Pilih skill yang ingin kamu pelajari",92,"1. Fire Breath",93,"2. Drain",94,"3. Poison",95,"4. Blaze",53,"kembali"

	elseif req == 74 then
		return 10,0,"Pilih skill yang ingin kamu pelajari",102,"1. Stun",103,"2. Strike",104,"3. Healing",105,"4. Purify",106,"5. Slow",107,"6. Freeze",108,"7. Zeal",109,"8. Haste",53,"kembali"



--방어형 스킬


--닷지
	elseif req == 82 then
		return 4,0,"Kamu telah memilih skill Dodge.",120,"penjelasan skill",121,"belajar skill",72,"kembali"

--카운터
	elseif req == 83 then
		return 4,0,"Kamu telah memilih skill Counter.",130,"penjelasan skill",131,"belajar skill",72,"kembali"

--실드
	elseif req == 84 then
		return 4,0,"Kamu telah memilih skill Shield.",140,"penjelasan skill",141,"belajar skill",72,"kembali"





--공격형 스킬

--브래스
	elseif req == 92 then
		return 4,0,"Kamu telah memilih skill Fire Breath.",150,"penjelasan skill",151,"belajar skill",73,"kembali"

--스내쳐
	elseif req == 93 then
		return 4,0,"Kamu telah memilih skill Drain.",160,"penjelasan skill",161,"belajar skill",73,"kembali"

--포이즌
	elseif req == 94 then
		return 4,0,"Kamu telah memilih skill Poison.",310,"penjelasan skill",311,"belajar skill",73,"kembali"

--블레이즈
	elseif req == 95 then
		return 4,0,"Kamu telah memilih skill Blaze.",320,"penjelasan skill",321,"belajar skill",73,"kembali"




--마법형

--스턴
	elseif req == 102 then
		return 4,0,"Kamu telah memilih skill Stun.",170,"penjelasan skill",171,"belajar skill",74,"kembali"

--스트라이크
	elseif req == 103 then
		return 4,0,"Kamu telah memilih skill Strike.",180,"penjelasan skill",181,"belajar skill",74,"kembali"

--힐링
	elseif req == 104 then
		return 4,0,"Kamu telah memilih skill Healing.",190,"penjelasan skill",191,"belajar skill",74,"kembali"

--클린징
	elseif req == 105 then
		return 4,0,"Kamu telah memilih skill Purify.",330,"penjelasan skill",331,"belajar skill",74,"kembali"

--쏜
	elseif req == 106 then
		return 4,0,"Kamu telah memilih skill Slow.",340,"penjelasan skill",341,"belajar skill",74,"kembali"

--프리즈
	elseif req == 107 then
		return 4,0,"Kamu telah memilih skill Freeze.",350,"penjelasan skill",351,"belajar skill",74,"kembali"

--부스터
	elseif req == 108 then
		return 4,0,"Kamu telah memilih skill Zeal.",360,"penjelasan skill",361,"belajar skill",74,"kembali"

--무브레스
	elseif req == 109 then
		return 4,0,"Kamu telah memilih skill Haste.",370,"penjelasan skill",371,"belajar skill",74,"kembali"



--학습한 스킬 적용 부분


-- 닷지
	elseif req == 120 then
		return 2,0,"Dodge digunakan untuk menghindari serangan musuh.GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill1..".",82,"kembali"


	elseif req == 121 then
		return 4,0,"Apakah kamu ingin belajar Dodge? GP yang dibutuhkan untuk belajar Dodge adalah sejumlah "..GetSkill1..".",201,"Ya",202,"Tidak",82,"kembali"


	elseif req == 201 then

		learn = LearnSkill(cnum, 1)
	
		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",82,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",82,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill1..".",82,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Dodge."
		else
			return 0
		end


	elseif req == 202 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--카운터
	elseif req == 130 then
		return 2,0,"Counter secara otomatis membalas serangan ketika diserang musuh. GP yang dibutuhkan untuk belajar skill Counter adalah sejumlah "..GetSkill3..".",83,"kembali"


	elseif req == 131 then
		return 4,0,"Apakah kamu ingin belajar Counter? GP yang dibutuhkan untuk belajar Counter adalah sejumlah "..GetSkill3..".",211,"Ya",212,"Tidak",83,"kembali"


	elseif req == 211 then

		learn = LearnSkill(cnum, 3)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",83,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",83,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill3..".",83,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Counter."
		else
			return 0
		end

	elseif req == 212 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."



--실드
	elseif req == 140 then
		return 2,0,"Shield adalah skill yang mengurangi damage dari serangan musuh. GP yang dibutuhkan untuk belajar Shield adalah sejumlah "..GetSkill7..".",84,"kembali"


	elseif req == 141 then
		return 4,0,"Apakah kamu ingin belajar Shield? GP yang dibutuhkan untuk belajar Shield adalah sejumlah "..GetSkill7..".",221,"Ya",222,"Tidak",84,"kembali"


	elseif req == 221 then

		learn = LearnSkill(cnum, 7)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",84,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",84,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill7..".",84,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Shield."
		else
			return 0
		end


	elseif req == 222 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--브래스
	elseif req == 150 then
		return 2,0,"Fire Breath merupakan serangan jarak jauh yang melemparkan bola api kearah sasaran. GP yang dibutuhkan untuk belajar skill Fire Breath adalah sejumlah "..GetSkill8..".",92,"kembali"


	elseif req == 151 then
		return 4,0,"Apakah kamu ingin belajar Fire Breath? GP yang dibutuhkan untuk belajar Fire Breath adalah sejumlah "..GetSkill8..".",231,"Ya",232,"Tidak",92,"kembali"


	elseif req == 231 then
		learn = LearnSkill(cnum, 8)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",92,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",92,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill8..".",92,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Fire Breath."
		else
			return 0
		end

	elseif req == 232 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--스내쳐
	elseif req == 160 then
		return 2,0,"Drain adalah skill yang menyerap HP lawan. GP yang dibutuhkan untuk belajar Drain adalah sejumlah "..GetSkill5..".",93,"kembali"


	elseif req == 161 then
		return 4,0,"Apakah kamu ingin belajar Drain? GP yang dibutuhkan untuk belajar Drain adalah sejumlah "..GetSkill5..".",241,"Ya",242,"Tidak",93,"kembali"


	elseif req == 241 then
		learn = LearnSkill(cnum, 5)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",93,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",93,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill5..".",93,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Drain."
		else
			return 0
		end


	elseif req == 242 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--포이즌
	elseif req == 310 then
		return 2,0,"Poison secara terus menerus memberikan damage kepada pemain dalam PVP selama beberapa saat. GP yang dibutuhkan untuk belajar skill Poison adalah sejumlah "..GetSkill23..".",94,"kembali"


	elseif req == 311 then
		return 4,0,"Apakah kamu ingin belajar Poison? GP yang dibutuhkan untuk belajar Poison adalah sejumlah "..GetSkill23..".",401,"Ya",402,"Tidak",94,"kembali"


	elseif req == 401 then
		learn = LearnSkill(cnum, 23)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",94,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",94,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill23..".",94,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Poison."
		else
			return 0
		end


	elseif req == 402 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--블레이즈
	elseif req == 320 then
		return 2,0,"Blaze secara terus menerus memberikan damage kepada pemain dalam PVP selama beberapa saat. GP yang dibutuhkan untuk belajar skill Blaze adalah sejumlah "..GetSkill24..".",95,"kembali"


	elseif req == 321 then
		return 4,0,"Apakah kamu ingin belajar Blaze? GP yang dibutuhkan untuk belajar Blaze adalah sejumlah "..GetSkill24..".",411,"Ya",412,"Tidak",95,"kembali"


	elseif req == 411 then
		learn = LearnSkill(cnum, 24)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",95,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",95,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill24..".",95,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Blaze."
		else
			return 0
		end


	elseif req == 412 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."



--스턴
	elseif req == 170 then
		return 2,0,"Stun adalah skill yang membuat sasaran menjadi pingsan sesaat. GP yang dibutuhkan untuk belajar skill Stun adalah sejumlah "..GetSkill4..".",102,"kembali"


	elseif req == 171 then
		return 4,0,"Apakah kamu ingin belajar Stun? GP yang dibutuhkan untuk belajar Stun adalah sejumlah "..GetSkill4..".",251,"Ya",252,"Tidak",102,"kembali"


	elseif req == 251 then

		learn = LearnSkill(cnum, 4)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",102,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",102,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill4..".",102,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Stun."
		else
			return 0
		end

	elseif req == 252 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."



--스트라이크
	elseif req == 180 then
		return 2,0,"Strike adalah skill yang memberikan damage kritis. GP yang dibutuhkan untuk belajar Strike adalah sejumlah "..GetSkill2..".",103,"kembali"


	elseif req == 181 then
		return 4,0,"Apakah kamu ingin belajar Strike? GP yang dibutuhkan untuk belajar Strike skill adalah sejumlah "..GetSkill2..".",261,"Ya",262,"Tidak",103,"kembali"


	elseif req == 261 then
		learn = LearnSkill(cnum, 2)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",103,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",103,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill2..".",103,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Strike."
		else
			return 0
		end

	elseif req == 262 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--힐링
	elseif req == 190 then
		return 2,0,"Healing adalah skill yang memulihkan HP sasaran. GP yang dibutuhkan untuk belajar Healing adalah sejumlah "..GetSkill6..".",104,"kembali"


	elseif req == 191 then
		return 4,0,"Apakah kamu ingin belajar Heal? GP yang dibutuhkan untuk belajar Healing adalah sejumlah "..GetSkill6..".",271,"Ya",272,"Tidak",104,"kembali"


	elseif req == 271 then
		learn = LearnSkill(cnum, 6)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",104,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",104,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill6..".",104,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Healing."
		else
			return 0
		end

	elseif req == 272 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--클린징
	elseif req == 330 then
		return 2,0,"Purify adalah skill yang menyembuhkan sasaran dari racun. GP yang dibutuhkan untuk belajar Purify adalah sejumlah "..GetSkill25..".",105,"kembali"


	elseif req == 331 then
		return 4,0,"Apakah kamu ingin belajar Purify? GP yang dibutuhkan untuk belajar Purify adalah sejumlah "..GetSkill25..".",421,"Ya",422,"Tidak",105,"kembali"


	elseif req == 421 then
		learn = LearnSkill(cnum, 25)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",105,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",105,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill25..".",105,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Purify."
		else
			return 0
		end


	elseif req == 422 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--쏜
	elseif req == 340 then
		return 2,0,"Slow adalah skill yang memperlambat gerakan sasaran untuk beberapa saat. GP yang dibutuhkan untuk belajar Slow adalah sejumlah "..GetSkill26..".",106,"kembali"


	elseif req == 341 then
		return 4,0,"Apakah kamu ingin belajar Slow? GP yang dibutuhkan untuk belajar Slow adalah sejumlah "..GetSkill26..".",431,"Ya",432,"Tidak",106,"kembali"


	elseif req == 431 then
		learn = LearnSkill(cnum, 26)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",106,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",106,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill26..".",106,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Slow."
		else
			return 0
		end


	elseif req == 432 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--프리즈
	elseif req == 350 then
		return 2,0,"Freeze adalah skill yang mengurangi kecepatan serangan sasaran untuk beberapa saat. GP yang dibutuhkan untuk belajar Freeze adalah sejumlah "..GetSkill27..".",107,"kembali"


	elseif req == 351 then
		return 4,0,"Apakah kamu ingin belajar Freeze? GP yang dibutuhkan untuk belajar Freeze adalah sejumlah "..GetSkill27..".",441,"Ya",442,"Tidak",107,"kembali"


	elseif req == 441 then
		learn = LearnSkill(cnum, 27)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",107,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",107,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill27..".",107,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Freeze."
		else
			return 0
		end


	elseif req == 442 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--부스터
	elseif req == 360 then
		return 2,0,"Zeal adalah skill yang meningkatkan kecepatan serangan sasaran untuk beberapa saat. GP yang dibutuhkan untuk belajar Zeal adalah sejumlah "..GetSkill28..".",108,"kembali"


	elseif req == 361 then
		return 4,0,"Apakah kamu ingin belajar Zeal? GP yang dibutuhkan untuk belajar Zeal adalah sejumlah "..GetSkill28..".",451,"Ya",452,"Tidak",108,"kembali"


	elseif req == 451 then
		learn = LearnSkill(cnum, 28)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",108,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",108,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill28..".",108,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Zeal."
		else
			return 0
		end


	elseif req == 452 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."


--무브레스
	elseif req == 370 then
		return 2,0,"Haste adalah skill yang meningkatkan kecepatan gerakan sasaran untuk beberapa saat. GP yang dibutuhkan untuk belajar Haste adalah sejumlah "..GetSkill29..".",109,"kembali"


	elseif req == 371 then
		return 4,0,"Apakah kamu ingin belajar Haste? GP yang dibutuhkan untuk belajar Haste adalah sejumlah "..GetSkill29..".",461,"Ya",462,"Tidak",109,"kembali"


	elseif req == 461 then
		learn = LearnSkill(cnum, 29)

		if learn == 1 then
			return 2,0,"Kamu telah mempelajari skill.",109,"kembali"

		elseif learn == 2 then
			return 2,0,"Daftar skill salah",109,"kembali"
		
		elseif learn == 5 then
			return 2,0,"GP tidak mencukupi. GP yang dibutuhkan untuk belajar skill Dodge adalah sejumlah "..GetSkill29..".",109,"kembali"

		elseif learn == 0 then
			return 1,0,"Kamu telah mempelajari Haste."
		else
			return 0
		end


	elseif req == 462 then
		return 1,0,"Ya. Harap membuat keputusan setelah memikirkannya."



	elseif req == 502 then
		return 4,0,"Sembilan skill baru telah ditambahkan. Kami telah menyiapkan event agar kamu dapat mengatur ulang skill dengan gratis. Hanya tersedia sekali untuk tiap karakter. Apa kamu ingin memulai prosesnya?",701,"Ya, aku mau",702,"Tidak, terima kasih.",1,"kembali"




		
--스킬 초기화 작업		
	elseif req == 701 then	

		switch1 = GetSwitchCount(cnum, 242)

		
		if switch1 > 0 then
			return 1,0,"Kamu telah memulai skill. Hanya tersedia satu kali."
			
		else
			skillpoint = ClearHeroSkill(cnum)			
			
			if skillpoint == 0 then
				return 1,0,"Tidak ada point untuk dimulai."
			else
				AddSwitchCount(cnum, 242, 1)
				return 1,0,"Pengaturan ulang skill telah selesai. Selamat menikmati event ini."
			end
		end
	
	elseif req == 702 then
		return 1,0,"Harap mengambil keputusan setelah memikirkannya."
			
		
	else
		return 1,0,"Proses pengaturan ulang skill tidak selesai dengan normal."				
	end	
end