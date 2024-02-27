
function NPC_QUEST_282(cnum,reqNumber) ---Lunacy Dungeon 1st floor warp NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Kamu tampaknya ketakutan terhadap monster. Harap memilih tujuan.",2,"[Pergi ke Lunacy Dungeon Entrance]",3,"[Pergi ke Rudis]"

	elseif req == 2 then
	
		if GetItemCount(cnum,1050,0) == 0 then -- Lunatic world admission ticket
			return 1,0,"Jika kamu tidak memiliki Tiket masuk Lunatic World, kamu tidak dapat pindah ke [Lunacy Dungeon Entrance]."
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end



function NPC_QUEST_283(cnum,reqNumber) ---Lunacy Dungeon 2nd floor warp NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Kamu tampaknya ketakutan terhadap monster. Harap memilih tujuan.",2,"[Pergi ke Lunacy Dungeon Entrance]",3,"[Pergi ke Rudis]"

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- Lunatic world admission ticket
			return 1,0,"Jika kamu tidak memiliki Tiket masuk Lunatic World, kamu tidak dapat pindah ke [Lunacy Dungeon Entrance]."
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end



function NPC_QUEST_284(cnum,reqNumber) ---Lunacy Dungeon 3rd floor warp NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Kamu tampaknya ketakutan terhadap monster. Harap memilih tujuan.",2,"[Pergi ke Lunacy Dungeon Entrance]",3,"[Pergi ke Rudis]"

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- Lunatic world admission ticket
			return 1,0,"Jika kamu tidak memiliki Tiket masuk Lunatic World, kamu tidak dapat pindah ke [Lunacy Dungeon Entrance]."
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end



function NPC_QUEST_285(cnum,reqNumber) ---Lunacy Dungeon 4th floor warp NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Kamu tampaknya ketakutan terhadap monster. Harap memilih tujuan.",2,"[Pergi ke Lunacy Dungeon Entrance]",3,"[Pergi ke Rudis]"

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then -- Lunatic world admission ticket
			return 1,0,"Jika kamu tidak memiliki Tiket masuk Lunatic World, kamu tidak dapat pindah ke [Lunacy Dungeon Entrance]."
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end
