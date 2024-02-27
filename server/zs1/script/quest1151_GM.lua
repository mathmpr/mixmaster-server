function NPC_QUEST_1151(cnum,reqNumber) -- Âí³ÇGMÍ¼´«ËÍÓÃ

  local resultmsg, req, name, type = nil
  req = reqNumber
  name = GetHeroName(cnum)
  type = GetHeroType(cnum)
  if req == 1 then
    if GetHeroOpClass(cnum) >= 188 then
      return 2, 0, "Oi GM/ADM:" .. name .. "\nAqui voce pode pegar algumas recompencas.", 2, "Seja bem vindo GM"
    else
      return 1, 0, "A cidade de magirita e um lindo lugar."
    end
	

  elseif req == 2 then
    return 6, 0, "Nome:[" .. name .. "]\n \nAcesso:[" .. cnum .. "]\n \nClass:[" .. GetHeroOpClass(cnum) .. "]", 3, "Power Potion", 4, "Pegar Book", 5, "Attack Speed", 6, "Mapa Especial", 7, "Attack Speed"
    elseif req == 3 then
      AddItemCount(cnum, 8638, 999)
	return 1, 0, "Power Potion"
    elseif req == 4 then
       AddItemCount(cnum, 9483, 1)
      return 1, 0, "Você ganhou book 100%"
    elseif req == 5 then
       AddItemCount(cnum, 8234, 999)
      return 1, 0, "Você Ganhou Atack Speed"
    elseif req == 6 then
       MoveZone(cnum, 255, 254)
      	elseif req == 7 then
	AddItemCount(cnum, 8234, 999)
	return 1, 0, "Você Ganhou Atack Speed"
    end
    return 0
  end


function NPC_QUEST_1168(cnum,reqNumber) -- Âí³ÇGMÍ¼´«ËÍÓÃ

  local resultmsg, req, name, type = nil
  req = reqNumber
  name = GetHeroName(cnum)
  type = GetHeroType(cnum)
  if req == 1 then
    if GetHeroOpClass(cnum) >= 188 then
      return 2, 0, "Oi GM/ADM:" .. name .. "\nAqui voce podera escolher alguns cores.", 2, "Pegar Cores"
    else
      return 1, 0, "A cidade de magirita e um lindo lugar."
    end
	

  elseif req == 2 then
    return 9, 0, "Nome:[" .. name .. "]\n \nAcesso:[" .. cnum .. "]\n \nClass:[" .. GetHeroOpClass(cnum) .. "]", 3, "Boss Normais", 4, "Chaos Boss", 5, "AncientThreeWolves", 6, "FireflyBirds", 7, "FairyDish", 8, "ToxicWoman", 9, "MechanicalWarrior", 10, "Scepter Wizards"

    elseif req == 3 then
      	AddHench(cnum, 1507, 1)
	AddHench(cnum, 1517, 1)
	AddHench(cnum, 1527, 1)
	AddHench(cnum, 1537, 1)
	AddHench(cnum, 1547, 1)
	AddHench(cnum, 1557, 1)
	AddHench(cnum, 1567, 1)
	AddHench(cnum, 1577, 1)	
	AddHench(cnum, 1587, 1)
	AddHench(cnum, 1597, 1)
	AddHench(cnum, 1607, 1)
	AddHench(cnum, 1617, 1)
	return 1, 0, "Aqui esta alguns cores para voce, volte sempre quando precisar de algum."
    elseif req == 4 then
      	AddHench(cnum, 1308, 1)
	AddHench(cnum, 1318, 1)
	AddHench(cnum, 1278, 1)
	AddHench(cnum, 1268, 1)
	AddHench(cnum, 1258, 1)
	AddHench(cnum, 1248, 1)
	AddHench(cnum, 1238, 1)
	AddHench(cnum, 1228, 1)	
	AddHench(cnum, 1218, 1)
	AddHench(cnum, 1208, 1)
      return 1, 0, "Aqui esta alguns cores para voce, volte sempre quando precisar de algum."
    elseif req == 5 then
       AddHench(cnum, 1916, 1)
      return 1, 0, "Ancient Three Wolves"
    elseif req == 6 then
       AddHench(cnum, 1917, 1)
	return 1, 0, "FireflyBirds"
      	elseif req == 7 then
	AddHench(cnum, 1918, 1)
	return 1, 0, "FairyDish"
      	elseif req == 8 then
	AddHench(cnum, 1919, 1)
	return 1, 0, "ToxicWoman"
	      	elseif req == 9 then
	AddHench(cnum, 1920, 1)
	return 1, 0, "MechanicalWarrior"
	      	elseif req == 10 then
	AddHench(cnum, 1921, 1)
	return 1, 0, "Scepter Wizards"
  	end
    return 0
  end