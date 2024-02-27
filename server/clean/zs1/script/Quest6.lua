 function NPC_QUEST_259(cnum,reqNumber) -- 쉬라의 눈물 (베헤르세바)
	local req,id1,id2,id3,id4,count1,count2,count3,count4
	
	id1 = 361 --금 빗
	id2 = 363 --황금새 조각상
	id3 = 365 --쉬라의 반지
	id4 = 373 --희망의 지팡이
	
	Switch1 = GetSwitchCount(cnum, 1010)
	Switch2 = GetSwitchCount(cnum, 18)
	Switch3 = GetSwitchCount(cnum, 17)
	Switch4 = GetSwitchCount(cnum, 1005)
	Switch5 = GetSwitchCount(cnum, 19)

	local req = reqNumber

	if req == 1 then

		if Switch5 < 1 then
			if Switch1 < 1 then
				if Switch2 < 1 then
					if Switch3 < 1 then
						if Switch4 < 1 then
							return 2,0,"Halo disana, kamu ingin tahu bagaimana cara menggunakan sisir untuk menghapus ingatan pohon? Aku tidak yakin 100% namun 3 air mata yang mengkristal dikatakan memiliki kekuatan khusus untuk menghidupkan tanaman dan hewan. Apa kamu ingin mengambil tear crystal dariku?",3,"Ya, aku mau."
						else
							if GetSwitchCount(cnum, 15) < 1 then
								return 2,0,"Apa kamu membawakanku, cincinku yang hilang?",4,"Ya"
							else
								return 1,0,"Ok, sekarang kristal ke 2. Aku tidak tahu bagaimana aku bisa menangis. Oh aku ada ide! Jika kamu pergi ke tempat Rollingcores (X:153 Y:93) dan menemukan Harly, dia dikenal pandai menemukan barang hilang. Beberapa orang mengatakan dia seorang paranormal."
							end
						end
					else
						return 2,0,"Apa kamu masih punya pertanyaan untukku?",12,"Berikan foto keluarga."
					end
				else
					return 1,0,"Sekarang yang terakhir, Crystal of Angel's Tear. Ini sulit karena aku harus menangis bahagia. Hmmmm mungkin sebaiknya pergi dan menemui Manpeace di dataran Owalljae (X:106 Y: 82). Namun sebaiknya berhati-hati, karena Manpeace tak terduga."
				end
			else
				return 2,0,"Apa kamu mendapatkan Cane of Hope?",8,"Ya, ini dia."
			end
		else
			if GetSwitchCount(cnum,19) == 0 then
				return 1,0,"Kamu tidak mengumpulkan seluruh tiga tear crystals. Maaf, aku tidak dapat memberikan informasi apapun."
			end

			if GetItemCount(cnum,364,0) == 0 then  --붉은색 눈물결정(364) 
				return 1,0,"Tidak ada Crystal of Devil's Tear."
			end

			if GetItemCount(cnum,370,0) == 0 then  --주황색 눈물결정(370) 
				return 1,0,"Tidak ada Crystal of Golden Tear."
			end

			if GetItemCount(cnum,374,0) == 0 then  --노란색 눈물결정(374)
				return 1,0,"Tidak ada Crystal of Angel's Tear."  
			end

			return 1,0,"Kamu harus mendapatkan golden glass bottle untuk menyimpan kristal, jika tidak maka akan kehilangan kekuatan magisnya. Golden glass bottle merupakan sebuah botol berharga dan telah disembunyikan. Pergi temui Irena yang merupakan kepala desa dari Cheseva ruins (X: 150 Y: 95). Dia akan memberitahumu dimana kamu dapat menemukan yang kamu cari."
			
		end		

	elseif req == 3 then

		if GetSwitchCount(cnum, 13) == 0 then
			return 1,0,"*** Sebelum kamu lanjut dengan World Quest, kamu harus bicara dengan Holden di Herseba Entrance (X:195.Y:76)"
		end

		if GetSwitchCount(cnum, 13) > 0 then
			return 2,0,"Hmmmm, aku rasa kamu harus membuatku menangis dulu. Emosi ku telah hancur semenjak monster menyerang keluargaku.Aku punya ide, saat serangan monster dan aku juga kehilangan cincin berhargaku. Yang dapat membuatku menangis. Dapatkah kamu menemukan cincinku. Monsternya menyerupai kura-kura jahat.",101,"Aku akan mengambilkannya kembali untukmu."
		end

	elseif req == 101 then
		StartQuest(cnum, 6)
		AddSwitchCount(cnum, 1005, 1)
		return 1,0,"Meski lewat bertahun-tahun namun memikirkan serangan tersebut tetap membuatku menangis."		
	


	elseif req == 4 then

		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		count3 = GetItemCount(cnum,id3,0)

		if GetSwitchCount(cnum, 13) == 0 then
			return 1,0,"Mengapa tidak kamu temui Holden di Herseba Entrance."
		end

		if GetSwitchCount(cnum, 15) > 0 then
			return 1,0,"Satu Crystal of Devil's Tear cukup untukku. Namun, aku tidak memiliki sesuatu untuk diberikan kepadamu."
		end

		if GetItemCount(cnum,365, 0) == 0 then -- 쉬라의 반지
			return 1,0,"Pergi dan bawakanlah cincinku?"
		end

		if GetItemCount(cnum, 361, 0) == 0 then -- 금 빗
			return 1,0,"Kamu tidak punya Golden Brush, mengapa kamu tidak punya?"
		end

		if GetItemCount(cnum, 363, 0) == 0 then --황금새 조각상
			return 1,0,"Suara indah Elly sangat terkenal di dunia, benar bukan? Umm… Nah, apa kamu membuang patungnya?"
		end

		AddMoney(cnum,5000) 
		AddSwitchCount(cnum,15,1) -- 붉은 눈물결정에 대한 스위치 값
		AddItemCount(cnum,id1,-count1) -- 금 빗(361)
		AddItemCount(cnum,id2,-count2) --황금새 조각상(363)
		AddItemCount(cnum,id3,-count3) --쉬라의 반지(365)
		AddItemCount(cnum,364,1) --붉은 눈물결정(364)
		EndQuest(cnum, 6)
		return 1,0,"Kerja bagus! Ini adalah cincin yang telah kuhilangkan selama tahunan. Oh, kenangannya. ~Shira menangis dan air matanya mengkristal~ Terima kasih banyak. Ambillah Crystal of Devil's Tear ini. Aku juga akan memberimu 5000GP sebagai hadiah."



	elseif req == 12 then
		if GetSwitchCount(cnum, 17) < 1 then
			return 1,0,"Aku tak tahu mengapa kamu disini tapi bukankah kamu harus melakukan sesuatu. Mengapa kamu tidak pergi mengerjakannya?"						

		elseif GetItemCount(cnum, 371, 0) < 1 then
			return 1,0,"Aku tak tahu mengapa kamu disini tapi bukankah kamu harus melakukan sesuatu. Mengapa kamu tidak pergi mengerjakannya?"			

		else
			AddMoney(cnum,10000)
			AddItemCount(cnum,370,1) -- 주황색 눈물결정(370)
			AddItemCount(cnum,371,-1)
			AddSwitchCount(cnum,18,1) -- 주황색 눈물결정에 대한 스위치 값
			return 1,0,"Bagaimana kamu menemukan foto keluargaku? Monster telah membakarnya, aku tidak percaya. Oh, ini membuatku menangis. Namun juga sangat bahagia. Ambillah ini, ini adalah Crystal of Golden Tear. Terima kasih, ini tidak banyak namun ambillah uang ini."
		end



	elseif req == 8 then

		count4 = GetItemCount(cnum,id4,0)

		if GetSwitchCount(cnum,19) > 0 then
			return 1,0,"Kamu hanya dapat memiliki satu Crystal of Angel's Tear.  Harap temui kepala desa bernama Irena di Cheseva ruins."
		end
	
		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Kamu dapat memperoleh Crystal of Angel's Tear setelah mendapatkan Crystal of Golden Tear."
		end

		if GetItemCount(cnum,373,0) == 0 then -- 희망의 지팡이(373)
			return 1,0,"Jika kamu menemukan Manpeace yang berada di padang rumput Owalljae, kamu dapat memperoleh keinginanmu."
		end 
	
		AddItemCount(cnum,id4,-count4) -- 희망의 지팡이(373)
		AddItemCount(cnum,374,1) --노란색 눈물결정(374) 
		AddMoney(cnum,12000)
		AddSwitchCount(cnum,19,1) -- 노란색 눈물결정에 대한 스위치 값
		return 1,0,"Oh aku tidak dapat menangis terus. Keluargaku adalah bagian masa lalu. Terima kasih banyak. Aku akan memberimu 12000GP sebagai hadiah. Kamu akhirnya dapat mengumpulkan 3 airmata kristal."

	end
	return 0
end

		
	

