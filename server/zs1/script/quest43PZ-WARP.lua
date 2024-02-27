NPC_QUEST_236 = function(cnum, reqNumber)
  local req = reqNumber
  if req == 1 then
    return 4, 0, "Ola Gostaria de viagar para algum lugar mais forte ou mais fraco?", 2, "[Ve-Herseba]Baixo", 3, "[Rudis]", 4, "Voltar para cidade"
  elseif req == 2 then
    MoveZone(cnum, 239, 253)
  elseif req == 3 then
    MoveZone(cnum, 240, 253)
  elseif req == 4 then
    MoveZone(cnum, 57, 253)
  end
  return 0
end

NPC_QUEST_237 = function(cnum, reqNumber)
  local req = reqNumber
  if req == 1 then
    return 4, 0, "Ola Gostaria de viagar para algum lugar mais forte ou mais fraco?", 2, "[Magirita]Baixo", 3, "[Rudis]Baixo", 4, "Voltar para cidade"
  elseif req == 2 then
    MoveZone(cnum, 238, 253)
  elseif req == 3 then
    MoveZone(cnum, 240, 253)
  elseif req == 4 then
    MoveZone(cnum, 57, 253)
  end
  return 0
end

NPC_QUEST_238 = function(cnum, reqNumber)
  local req = reqNumber
  if req == 1 then
    return 4, 0, "Ola Gostaria de viagar para algum lugar mais forte ou mais fraco?", 2, "[Magirita]Baixo", 3, "[Rudis]Baixo", 4, "Voltar para cidade"
  elseif req == 2 then
    MoveZone(cnum, 239, 253)
  elseif req == 3 then
    MoveZone(cnum, 238, 253)
  elseif req == 4 then
    MoveZone(cnum, 57, 253)
  end
  return 0
end

NPC_QUEST_239 = function(cnum, reqNumber)
  local req = reqNumber
  if req == 1 then
    return 5, 0, "Ola Gostaria de viagar para algum lugar mais forte ou mais fraco?", 2, "[Ve-Herseba]Alto", 3, "[Rudis]Alto", 4, "[Purmai]Alto", 5, "Voltar para cidade"
  elseif req == 2 then
    MoveZone(cnum, 242, 253)
  elseif req == 3 then
    MoveZone(cnum, 243, 253)
  elseif req == 4 then
    MoveZone(cnum, 118, 151)
  elseif req == 5 then
    MoveZone(cnum, 57, 253)
  end
  return 0
end

NPC_QUEST_240 = function(cnum, reqNumber)
  local req = reqNumber
  if req == 1 then
    return 5, 0, "Ola Gostaria de viagar para algum lugar mais forte ou mais fraco?", 2, "[Magirita]Alto", 3, "[Rudis]Alto", 4, "[Purmai]Alto", 5, "Voltar para cidade"
  elseif req == 2 then
    MoveZone(cnum, 241, 253)
  elseif req == 3 then
    MoveZone(cnum, 243, 253)
  elseif req == 4 then
    MoveZone(cnum, 118, 151)
  elseif req == 5 then
    MoveZone(cnum, 57, 253)
  end
  return 0
end

NPC_QUEST_241 = function(cnum, reqNumber)
  local req = reqNumber
  if req == 1 then
    return 5, 0, "Ola Gostaria de viagar para algum lugar mais forte ou mais fraco?", 2, "[Magirita]Alto", 3, "[Ve-Herseba]Alto", 4, "[Purmai]Alto", 5, "Voltar para cidade"
  elseif req == 2 then
    MoveZone(cnum, 241, 253)
  elseif req == 3 then
    MoveZone(cnum, 242, 253)
  elseif req == 4 then
    MoveZone(cnum, 118, 151)
  elseif req == 5 then
    MoveZone(cnum, 57, 253)
  end
  return 0
end

NPC_QUEST_273 = function(cnum, reqNumber)
  local req = reqNumber
  if req == 1 then
    return 5, 0, "Ola Gostaria de viagar para algum lugar mais forte ou mais fraco?", 2, "[Ve-Herseba]Alto", 3, "[Magirita]Alto", 4, "[Rudis]Alto", 5, "Voltar para cidade"
  elseif req == 2 then
    MoveZone(cnum, 242, 253)
  elseif req == 3 then
    MoveZone(cnum, 241, 253)
  elseif req == 4 then
    MoveZone(cnum, 243, 253)
  elseif req == 5 then
    MoveZone(cnum, 57, 253)
  end
  return 0
end


