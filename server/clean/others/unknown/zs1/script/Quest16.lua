function NPC_QUEST_316(cnum, reqNumber)

req = reqNumber

id1= 174
id2= 175
id3= 176
id4= 177

name1 ="The Past"
name2= "The Present"
name3= "The Future"
name4="The Chaos"

targetitem = 170 -- 워프링

resultmsg=nil

        count1 = GetItemCount(cnum,id1,0)
        if count1 == 0 then
            resultmsg = name1
        end
 
        count2 = GetItemCount(cnum,id2,0)
        if count2 == 0 then
            if resultmsg == nil then
                resultmsg = name2
            else
                resultmsg = resultmsg..","..name2
            end
        end
 
        count3 = GetItemCount(cnum,id3,0)
        if count3 == 0 then
            if resultmsg == nil then
                resultmsg = name3
            else
                resultmsg = resultmsg..","..name3
            end
        end
        count4 = GetItemCount(cnum,id4,0)
        if count4 == 0 then
            if resultmsg == nil then
                resultmsg = name4
            else
                resultmsg = resultmsg..","..name4
            end
        end



	if req == 1 then
		if GetSwitchCount(cnum, 1026) < 1 then
			if GetSwitchCount(cnum, 1014) < 1 then
				return 2,0,"",2,"Aku akan membawakannya."
			else
				return 2,0,"Apakah kamu mendapatkannya?",12,"Ya."
			end
		else
			return 3,0,"Aku akan mengembalikanmu ke desa. Desa mana yang ingin kamu tuju?",3,"Ke Magirita",4,"Ke VeHerseba"
		end

	elseif req == 2 then
		StartQuest(cnum, 102)
		AddSwitchCount(cnum, 1014, 1)				
		return 1,0,"Aku akan menunggumu."

	

	elseif req == 12 then
	        if resultmsg ~= nil then
	        	return 1,0, "Tidak ada peta "..resultmsg.." of Magirita."
	        end
		-- 지도 다 뺏기

		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		-- 워프링 넣어주기
		AddItemCount(cnum,targetitem,1)

		AddSwitchCount(cnum, 2, 1)
		AddSwitchCount(cnum, 1026, 1)
		EndQuest(cnum, 102)
		return 1,0,"Selamat! Kamu telah membuktikan bahwa kamu memiliki kemampuan untuk menjadi seorang Mix Master."

	-- 아이템 체크후 마을로소환
    elseif req == 3 then
		if GetItemCount(cnum,targetitem,0) > 0  then 
			--AddSwitchCount(cnum,2,1)
			MoveZone(cnum,57,101)
			return 0
		else
			return 2,0,"Apa kamu ingin menyerah?",5,"Tugas ini sedikit sulit untukku."
		end

    elseif req == 4 then
		if GetItemCount(cnum,targetitem,0) > 0  then 
		--	AddSwitchCount(cnum,2,1)
			MoveZone(cnum,60,101)
			return 0
		else
			return 2,0,"Apa kamu ingin menyerah?",5,"Tugas ini sedikit sulit untukku."
		end	

	
    elseif req == 5 then
		return 2,0,"Jika kamu menyerah sekali, kamu tidak dapat kembali lagi ke sini. Yakin ingin menyerah?",7,"Ya, aku menyerah… Selamat tinggal."


    elseif req == 6 then
		return 2,0,"Jika kamu menyerah sekali, kamu tidak dapat kembali lagi ke sini. Yakin ingin menyerah?",7,"Ya, aku menyerah… Selamat tinggal."


    elseif req == 7 then
		-- 다 뺏고 내보내기
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		AddSwitchCount(cnum,2,1)
		MoveZone(cnum,57,101)
		return 0
    elseif req == 8 then
		-- 다 뺏고 내보내기
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		AddSwitchCount(cnum,2,1)
	                MoveZone(cnum,60,101)
		return 0
	
	end 				
end