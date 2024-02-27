 function NPC_QUEST_224(cnum,reqNumber) --NPC 맨피스
	local req,id1,count1
	
	id1 = 372 --요정의 날개

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1010) < 1 then
			if GetSwitchCount(cnum, 1009) < 1 then
				if GetSwitchCount(cnum,18) == 0 then
					return 1,0,"Siapa kamu? Aku hanya berbicara dengan teman Shira. Dimana dia? Kamu bodoh, dia ada di VeHerseba."
				end	
		
				return 2,0,"Apa? Shira mengirimmu kepadaku? Demi airmatanya? Oh dia pasti membutuhkan Cane of Hope milikku. Apa kamu tahu itu adalah cane khusus.",2,"Beritahu aku mengenai Cane."
			else
				return 3,0,"Apa kamu membawa Wing?",3,"Kamu sebaiknya memiliki cane",4,"Aku memiliki Wing of Fairy."
			end
		else
			return 1,0,"Harap temui Shira sekarang."
		end


	elseif req == 2 then

		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Kamu dapat bicara padaku jika kamu memiliki Crystal of Golden Tear. Maaf tapi aku harus pergi karena disini terlalu dingin…"
		end

		return 2,0,"Memberikan harapan. Apa kamu tidak tahu apa-apa? Dia mungkin ingin menyudahi kesedihannya. Karena aku orang baik, jika kamu memberiku barang mahal seperti Wing of Fairy, aku akan memberimu Cane of Hope.",12,"Ok, siapa yang memilikinya?"


	elseif req == 12 then
		StartQuest(cnum, 10)
		AddSwitchCount(cnum, 1009, 1)		
		return 1,0,"Bagaimana aku tahu siapa yang memilikinya. Aku pernah melihat monster membawanya."




	elseif req == 3 then
		
		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Aku sibuk saat ini. Pergilah."
		end

		return 1,0,"Kuperingatkan, meski kamu membawakanku Wing of Fairy, tidak berarti kamu dapat memperoleh Cane of Hope. Tergantung seberapa mahal dijual."

	elseif req == 4 then

		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"Jika kamu tidak memiliki Crystal of Angel's Tear. Pergilah."
		end

		if GetItemCount(cnum,372,0) == 0 then --요정의 날개(372)
			return 1,0,"Aku akan menembakmu dengan busur dan panah ini jika kamu membohongiku lagi."
		end

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Sebaiknya lebih dari satu unit Inventory."
		end

		random = SetRandom(cnum,0,100)

		if random < 24 then
			AddItemCount(cnum,302,1) -- 힐링포션
			AddItemCount(cnum,id1,-1) --요정의 날개(372)
			return 1,0,"Oh maaf, sepertinya aku menghilangkan cane. Maukah kamu mencari sayap lainnya selagi aku mencari cane?"

		elseif random >=24 and random < 30 then
			AddItemCount(cnum,303,1) -- 나이스 힐링포션
			AddItemCount(cnum,id1,-1) --요정의 날개(372)
			return 1,0,"hmmm.. Aku dapat memberimu cane yang sama, namun aku lupa yang mana yang kamu inginkan. Dan dimana aku menaruhnya. Maaf!"

		elseif random >=30 and random <60 then
			AddItemCount(cnum,304,1) -- 모어 힐링포션
			AddItemCount(cnum,id1,-1) --요정의 날개(372)
			return 1,0,"Bawakan aku Wing of Fairy lagi dan aku pasti akan memberikannya kepadamu."

		elseif random >=60 and random <100 then
			AddItemCount(cnum,373,1) ---희망의 지팡이
			AddItemCount(cnum,id1,-1) --요정의 날개(372)
			AddSwitchCount(cnum, 1010, 1)
			EndQuest(cnum, 10)
			return 1,0,"Ohh aku membuatmu bosan. Ini dia Cane of Hope. Pergi dan bantulah Shira."
		end

	end

	return 0
end


		