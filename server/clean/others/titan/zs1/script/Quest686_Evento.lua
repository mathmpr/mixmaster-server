function NPC_QUEST_686(cnum, reqNumber)

req = reqNumber

item1 = GetItemCount(cnum, 9620, 0)



	if req == 1 then
		return 4,0,"Eu irei trocar o ticket por status",2,"Mashimaro",3,"Kambu",4,"FIre HornMameo",5,"Trocar 30 Tickets"



	elseif req == 2 then
		return 8,0,"Ola, voce tem algum ticket Mashimaro para me entregar ?",10,"Mashimaro Exchange Ticket (Lv.40)",11,"Mashimaro Exchange Ticket (Lv.60)",12,"Mashimaro Exchange Ticket (Lv.80)",13,"Mashimaro Exchange Ticket (Lv.80)",14,"Mashimaro Exchange Ticket (Lv.100)",15,"Mashimaro Exchange Ticket (Lv.120)"


	elseif req == 10 then
	if item1 < 10 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 9620, -10)
		AddHeroFreePoint(cnum,100)
		return 1,0,"Troca Realizada."
		end

	elseif req == 11 then
	if item1 < 20 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 9620, -20)
		AddHeroFreePoint(cnum,200)
		return 1,0,"Troca Realizada."
		end

	elseif req == 12 then
	if item1 < 30 then
		return 1,0, "Procure os tickets e volte"
		else
		AddItemCount(cnum, 9620, -30)
		AddHeroFreePoint(cnum,300)
		return 1,0,"Troca Realizada."
		end



	else
		return 0

	end

end
