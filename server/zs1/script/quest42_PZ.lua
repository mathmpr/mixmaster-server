local ruinpass = {68, 69, 95, 96, 940, 1316, 3711, 8178, 8226, 8499, 8582, 8641}
local quest42moveto = function(cnum, req)
  local zone = req + 226
  if req == 18 then
    MoveZone(cnum, 118, 151)
  else
    MoveZone(cnum, zone, 253)
  end
end

local checkruinpass = function(cnum)
  -- upvalues: ruinpass
  local ifhave = false
  for i = 1, #ruinpass do
    ifhave = ifhave or GetItemCount(cnum, ruinpass[i], 0) > 0
  end
  return ifhave
end

NPC_QUEST_243 = function(cnum, reqNumber)
  -- upvalues: checkruinpass , quest42moveto
  local req = reqNumber
  if req == 1 then
    if checkruinpass(cnum) then
      return 3, 0, "Oi tudo bem, voce gostaria de viajar em nosso WARP VIP. Para isso compre o PZ em nosso shopping em magirita", 2, "Premium Zone[Baixa]", 3, "Premium Zone[Alta]"
    else
      return 1, 0, "Notamos que voce nao tem o TICKET PZ compre no shopping em magirita"
    end
  elseif req == 2 then
    return 4, 0, "Escolha um local para onde voce gostaria de ir.", 12, "Ruins of Magirita", 13, "Ruins of VeHerseba", 14, "Ruins of Rudis"
  elseif req == 3 then
    return 5, 0, "Escolha um local para onde voce gostaria de ir.", 15, "Ruins of Magirita", 16, "Ruins of VeHerseba", 17, "Ruins of Rudis", 18, "Ruins of Purmai"
  elseif req > 11 and req < 19 then
    quest42moveto(cnum, req)
  end
  return 0
end

NPC_QUEST_244 = function(cnum, reqNumber)
  -- upvalues: checkruinpass , quest42moveto
  local req = reqNumber
  if req == 1 then
    if checkruinpass(cnum) then
      return 3, 0, "Oi tudo bem, voce gostaria de viajar em nosso WARP VIP. Para isso compre o PZ em nosso shopping em magirita", 2, "Premium Zone[Baixa]", 3, "Premium Zone[Alta]"
    else
      return 1, 0, "Notamos que voce nao tem o TICKET PZ compre no shopping em magirita"
    end
  elseif req == 2 then
    return 4, 0, "Escolha um local para onde voce gostaria de ir.", 12, "Ruins of Magirita", 13, "Ruins of VeHerseba", 14, "Ruins of Rudis"
  elseif req == 3 then
    return 5, 0, "Escolha um local para onde voce gostaria de ir.", 15, "Ruins of Magirita", 16, "Ruins of VeHerseba", 17, "Ruins of Rudis", 18, "Ruins of Purmai"
  elseif req > 11 and req < 19 then
    quest42moveto(cnum, req)
  end
  return 0
end

NPC_QUEST_245 = function(cnum, reqNumber)
  -- upvalues: checkruinpass , quest42moveto
  local req = reqNumber
  if req == 1 then
    if checkruinpass(cnum) then
      return 3, 0, "Oi tudo bem, voce gostaria de viajar em nosso WARP VIP. Para isso compre o PZ em nosso shopping em magirita", 2, "Premium Zone[Baixa]", 3, "Premium Zone[Alta]"
    else
      return 1, 0, "Notamos que voce nao tem o TICKET PZ compre no shopping em magirita"
    end
  elseif req == 2 then
    return 4, 0, "Escolha um local para onde voce gostaria de ir.", 12, "Ruins of Magirita", 13, "Ruins of VeHerseba", 14, "Ruins of Rudis"
  elseif req == 3 then
    return 5, 0, "Escolha um local para onde voce gostaria de ir.", 15, "Ruins of Magirita", 16, "Ruins of VeHerseba", 17, "Ruins of Rudis", 18, "Ruins of Purmai"
  elseif req > 11 and req < 19 then
    quest42moveto(cnum, req)
  end
  return 0
end

NPC_QUEST_246 = function(cnum, reqNumber)
  -- upvalues: checkruinpass , quest42moveto
  local req = reqNumber
  if req == 1 then
    if checkruinpass(cnum) then
      return 3, 0, "Oi tudo bem, voce gostaria de viajar em nosso WARP VIP. Para isso compre o PZ em nosso shopping em magirita", 2, "Premium Zone[Baixa]", 3, "Premium Zone[Alta]"
    else
      return 1, 0, "Notamos que voce nao tem o TICKET PZ compre no shopping em magirita"
    end
  elseif req == 2 then
    return 4, 0, "Escolha um local para onde voce gostaria de ir.", 12, "Ruins of Magirita", 13, "Ruins of VeHerseba", 14, "Ruins of Rudis"
  elseif req == 3 then
    return 5, 0, "Escolha um local para onde voce gostaria de ir.", 15, "Ruins of Magirita", 16, "Ruins of VeHerseba", 17, "Ruins of Rudis", 18, "Ruins of Purmai"
  elseif req > 11 and req < 19 then
    quest42moveto(cnum, req)
  end
  return 0
end

NPC_QUEST_247 = function(cnum, reqNumber)
  -- upvalues: checkruinpass , quest42moveto
  local req = reqNumber
  if req == 1 then
    if checkruinpass(cnum) then
      return 3, 0, "Oi tudo bem, voce gostaria de viajar em nosso WARP VIP. Para isso compre o PZ em nosso shopping em magirita", 2, "Premium Zone[Baixa]", 3, "Premium Zone[Alta]"
    else
      return 1, 0, "Notamos que voce nao tem o TICKET PZ compre no shopping em magirita"
    end
  elseif req == 2 then
    return 4, 0, "Escolha um local para onde voce gostaria de ir.", 12, "Ruins of Magirita", 13, "Ruins of VeHerseba", 14, "Ruins of Rudis"
  elseif req == 3 then
    return 5, 0, "Escolha um local para onde voce gostaria de ir.", 15, "Ruins of Magirita", 16, "Ruins of VeHerseba", 17, "Ruins of Rudis", 18, "Ruins of Purmai"
  elseif req > 11 and req < 19 then
    quest42moveto(cnum, req)
  end
  return 0
end


