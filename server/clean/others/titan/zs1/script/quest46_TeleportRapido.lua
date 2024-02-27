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

function NPC_QUEST_284(cnum,reqNumber) ---Lunacy Dungeon 3rd floor warp NPC
	local req = reqNumber

	if req == 1 then
		return 3,0,"Kamu tampaknya ketakutan terhadap monster. Harap memilih tujuan.",2,"[Pergi ke Lunacy Dungeon Entrance]",3,"[Pergi ke Rudis]"

	elseif req == 2 then

		if GetItemCount(cnum,1050,0) == 0 then
			return 1,0,"Jika kamu tidak memiliki Tiket masuk Lunatic World, kamu tidak dapat pindah ke [Lunacy Dungeon Entrance]"
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

		if GetItemCount(cnum,1050,0) == 0 then
			return 1,0,"Jika kamu tidak memiliki Tiket masuk Lunatic World, kamu tidak dapat pindah ke [Lunacy Dungeon Entrance]."
		end
		MoveZone(cnum,75,254)

	elseif req == 3 then

		MoveZone(cnum,67,254)

		end
	return 0
end

function NPC_QUEST_283(cnum,reqNumber) ---原来2层,改为PC传送那里的

req = reqNumber
Lv = GetHeroLv(cnum)

if req == 1 then
	return 7,0,"Vamos fazer algumas viagem rapidas?",2,"[Purmai]",3,"[Elysion 1st floor]",4,"[Lunacy Dungeon L1]",5,"[Lunacy Dungeon L5]",6,"[Valor Dungeon L1]",7,"[Valor Dungeon L4]"

	elseif req == 2 then
    if Lv > 0 and Lv < 201 then --> 八荤
      MoveZone(cnum,111,254)
        else --> 酒匆版快
      return 1,0,"你的等级过高,已经不适合进入这个区域了."
		end

	elseif req == 3 then

    if Lv > 51 and Lv < 201 then --> 八荤
      MoveZone(cnum,103,254)
        else --> 酒匆版快
      if Lv < 51 then
        return 1,0,"Este lugar requer level 51 para poder entrar.\n  \n  \n \n             "
      else
      return 1,0,"你的等级过高,已经不适合进入这个区域了."
      end
    end

	elseif req == 4 then
 		if Lv > 101 and Lv < 201 then --> 八荤
      MoveZone(cnum,91,254)
		else --> 酒匆版快
      if Lv < 101 then
        return 1,0,"Este lugar querer level 101 para poder entrar."
      else
      return 1,0,"你的等级过高,已经不适合进入这个区域了."
      end
		end

	elseif req == 5 then
 		if Lv > 151 and Lv < 201 then --> 八荤
      MoveZone(cnum,95,254)
		else --> 酒匆版快
      if Lv < 151 then
        return 1,0,"Este lugar requer level 151 para poder entrar"
      end
		end

	elseif req == 6 then
 		if Lv > 101 and Lv < 201 then --> 八荤
      MoveZone(cnum,96,254)
		else --> 酒匆版快
      if Lv < 151 then
        return 1,0,"Este lugar requer level 101 para poder entrar"
      end
		end

	elseif req == 7 then
    if Lv > 151 and Lv < 201 then --> 八荤
      MoveZone(cnum,99,254)
        else --> 酒匆版快
      return 1,0,"Este lugar requer level 151 para poder entrar"
		end
	 end
	end