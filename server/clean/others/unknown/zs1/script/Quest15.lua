function NPC_QUEST_221(cnum, reqNumber)

local resultmsg, itemname1, itemname2, itemname3, id1, id2, id3, count1, count2, count3

itemname1 = "Love"
itemname2 = "Wisdom"
itemname3 = "Valor"

id1 = 171
id2 = 172
id3 = 173

count1 = GetItemCount(cnum, id1,0)
count2 = GetItemCount(cnum, id2,0)
count3 = GetItemCount(cnum, id3,0)



req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1013) < 1 then
			return 2,0,"",2,"Aku pasti mendapatkannya!"
		else
			return 2,0,"Apakah kamu mendapatkannya?",12,"Ya."
		end

	


	elseif req == 2 then
		AddSwitchCount(cnum, 1013, 1)
		StartQuest(cnum, 101)
		return 1,0,"Para monster akan menghancurkan segelnya. Cepatlah!"



	elseif req == 12 then
		if GetSwitchCount(cnum, 2) > 0 then
			return 1,0,"Aku minta maaf, tapi itu satu-satunya kesempatan karena terlalu berbahaya."

		else


			if count1 <= 0 then
				return 1,0,"Tidak ada"..itemname1.."of Jove."

			elseif count2 <= 0 then
				return 1,0,"Tidak ada"..itemname2.."of Jove."

			elseif count3 <= 0 then
				return 1,0,"Tidak ada"..itemname3.."of Jove."

			else
				AddItemCount(cnum, id1, -count1)
				AddItemCount(cnum, id2, -count2)
				AddItemCount(cnum, id3, -count3)
				MoveZone(cnum, 69, 101)
				EndQuest(cnum, 101)
				return 0
			end
		end
	end
end


function NPC_QUEST_222(cnum, reqNumber)

local resultmsg, itemname1, itemname2, itemname3, id1, id2, id3, count1, count2, count3

itemname1 = "Love"
itemname2 = "Wisdom"
itemname3 = "Valor"

id1 = 171
id2 = 172
id3 = 173

count1 = GetItemCount(cnum, id1,0)
count2 = GetItemCount(cnum, id2,0)
count3 = GetItemCount(cnum, id3,0)



req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1013) < 1 then
			return 2,0,"",2,"Aku pasti mendapatkannya!"
		else
			return 2,0,"Apakah kamu mendapatkannya?",12,"Ya."
		end

	


	elseif req == 2 then
		AddSwitchCount(cnum, 1013, 1)
		StartQuest(cnum, 101)
		return 1,0,"Para monster akan menghancurkan segelnya. Cepatlah!"



	elseif req == 12 then
		if GetSwitchCount(cnum, 2) > 0 then
			return 1,0,"Aku minta maaf, tapi itu satu-satunya kesempatan karena terlalu berbahaya."

		else


			if count1 <= 0 then
				return 1,0,""..itemname1.." of Jove tidak ada."

			elseif count2 <= 0 then
				return 1,0,""..itemname2.." of Jove tidak ada."

			elseif count3 <= 0 then
				return 1,0,""..itemname3.." of Jove tidak ada."

			else
				AddItemCount(cnum, id1, -count1)
				AddItemCount(cnum, id2, -count2)
				AddItemCount(cnum, id3, -count3)
				MoveZone(cnum, 69, 101)
				EndQuest(cnum, 101)
				return 0
			end
		end
	end
end				
				