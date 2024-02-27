-- Decompiled using luadec 2.1 UNICODE
-- Command line was: quest57.lua 

NPC_QUEST_331 = function(cnum, reqNumber)
  local ruinpass = {1412, 8584}
  local req = reqNumber
  Lv = GetHeroLv(cnum)
  local checkruinpass = function(cnum)
    -- upvalues: ruinpass
    local ifhave = false
    for i = 1, #ruinpass do
      ifhave = ifhave or GetItemCount(cnum, ruinpass[i], 0) > 0
    end
    return ifhave
  end
  if req == 1 then
    if checkruinpass(cnum) then
      return 2, 0, "Informacoes NPC\n\n    Escolha uma opcao para entrar em um mapa especial, que vai dropar BOX GP", 2, "Entrar em mapa especial."
    else
      return 1, 0, "Informacoes NPC\n\n    Nao detectamos o TICKET Kambu em seu Inventario, por favor comprar no Shopping de Magirita x:96 y:106"
    end
  elseif req == 2 then
    return 6, 0, "Ola, escolha uma opcao cabivel ao seu level para voce fazer GP extramente facil em um mapa especial", 3, "[Lv. 51~100] [BOX GP  300k]-Animal", 4, "[Lv.101~140] [BOX GP 600k]-Animal", 5, "[Lv.141~200] [BOX GP 1kk]-Animal", 6, "[Lv.141~200] [BOX GP 1kk]-Dragon", 7, "[Lv.141~200] [BOX GP 1kk]-Mysterio"
  elseif req == 3 then
    if Lv > 50 and Lv < 101 then
      MoveZone(cnum, 9, 254)
    elseif Lv < 51 then
      return 1, 0, "Seu level passou do limite ou nao alcancou volte aqui quando estiver no level para entrar\n"
    else
      return 1, 0, "Se voce for de um level maior escolha outra opcao do seu level."
    end
  elseif req == 4 then
    if Lv > 100 and Lv < 141 then
      MoveZone(cnum, 10, 254)
    elseif Lv < 101 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是101级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 5 then
    if Lv > 140 and Lv < 201 then
      MoveZone(cnum, 11, 254)
    elseif Lv < 141 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是141级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 6 then
    if Lv > 140 and Lv < 201 then
      MoveZone(cnum, 12, 254)
    elseif Lv < 141 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是141级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 7 then
    if Lv > 140 and Lv < 201 then
      MoveZone(cnum, 13, 254)
    end
  elseif Lv < 141 then
    return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是141级.\n"
  else
    return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
  end
end

NPC_QUEST_332 = function(cnum, reqNumber)
  local ruinpass = {1412, 8584}
  local req = reqNumber
  Lv = GetHeroLv(cnum)
  local checkruinpass = function(cnum)
    -- upvalues: ruinpass
    local ifhave = false
    for i = 1, #ruinpass do
      ifhave = ifhave or GetItemCount(cnum, ruinpass[i], 0) > 0
    end
    return ifhave
  end
  if req == 1 then
    if checkruinpass(cnum) then
      return 2, 0, "Informacoes\n\n    你携带了[坎布地盘入场卷],我准许你进入我的地盘.", 2, "当然,我要进去咯."
    else
      return 1, 0, "Informacoes\n\n    你没有携带[坎布地盘入场卷],抱歉我不能让你进去.请先到杂货NPC购买入场卷再来进入吧"
    end
  elseif req == 2 then
    return 6, 0, "Ola, escolha uma opcao cabivel ao seu level para voce fazer GP extramente facil em um mapa especial", 3, "[Lv. 51~100] [BOX GP  300k]-Animal", 4, "[Lv.101~140] [BOX GP 600k]-Animal", 5, "[Lv.141~200] [BOX GP 1kk]-Animal", 6, "[Lv.141~200] [BOX GP 1kk]-Dragon", 7, "[Lv.141~200] [BOX GP 1kk]-Mysterio"
  elseif req == 3 then
    if Lv > 50 and Lv < 101 then
      MoveZone(cnum, 9, 254)
    elseif Lv < 51 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是51级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 4 then
    if Lv > 100 and Lv < 141 then
      MoveZone(cnum, 10, 254)
    elseif Lv < 101 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是101级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 5 then
    if Lv > 140 and Lv < 201 then
      MoveZone(cnum, 11, 254)
    elseif Lv < 141 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是141级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 6 then
    if Lv > 140 and Lv < 201 then
      MoveZone(cnum, 12, 254)
    elseif Lv < 141 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是141级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 7 then
    if Lv > 140 and Lv < 201 then
      MoveZone(cnum, 13, 254)
    end
  elseif Lv < 141 then
    return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是141级.\n"
  else
    return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
  end
end

NPC_QUEST_333 = function(cnum, reqNumber)
  local ruinpass = {1412, 8584}
  local req = reqNumber
  Lv = GetHeroLv(cnum)
  local checkruinpass = function(cnum)
    -- upvalues: ruinpass
    local ifhave = false
    for i = 1, #ruinpass do
      ifhave = ifhave or GetItemCount(cnum, ruinpass[i], 0) > 0
    end
    return ifhave
  end
  if req == 1 then
    if checkruinpass(cnum) then
      return 2, 0, "Informacoes\n\n    你携带了[坎布地盘入场卷],我准许你进入我的地盘.", 2, "当然,我要进去咯."
    else
      return 1, 0, "Informacoes\n\n    你没有携带[坎布地盘入场卷],抱歉我不能让你进去.请先到杂货NPC购买入场卷再来进入吧"
    end
  elseif req == 2 then
    return 6, 0, "Ola, escolha uma opcao cabivel ao seu level para voce fazer GP extramente facil em um mapa especial", 3, "[Lv. 51~100] [BOX GP  300k]-Animal", 4, "[Lv.101~140] [BOX GP 600k]-Animal", 5, "[Lv.141~200] [BOX GP 1kk]-Animal", 6, "[Lv.141~200] [BOX GP 1kk]-Dragon", 7, "[Lv.141~200] [BOX GP 1kk]-Mysterio"
  elseif req == 3 then
    if Lv > 50 and Lv < 101 then
      MoveZone(cnum, 9, 254)
    elseif Lv < 51 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是51级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 4 then
    if Lv > 100 and Lv < 141 then
      MoveZone(cnum, 10, 254)
    elseif Lv < 101 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是101级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 5 then
    if Lv > 140 and Lv < 201 then
      MoveZone(cnum, 11, 254)
    elseif Lv < 141 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是141级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 6 then
    if Lv > 140 and Lv < 201 then
      MoveZone(cnum, 12, 254)
    elseif Lv < 141 then
      return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是141级.\n"
    else
      return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
    end
  elseif req == 7 then
    if Lv > 140 and Lv < 201 then
      MoveZone(cnum, 13, 254)
    end
  elseif Lv < 141 then
    return 1, 0, "你需要继续努力升级,这个GP地盘的最低等级要求是141级.\n"
  else
    return 1, 0, "你的等级过高,已经不适合进入这个GP地盘了."
  end
end

NPC_QUEST_334 = function(cnum, reqNumber)
  req = reqNumber
  if req == 1 then
    return 4, 0, "Informacoes\n    Voce gostaria de voltar para uma cidade? escolha uma opcao para viajar!", 2, "Magirita", 3, "Mekrita", 4, "Herseba"
  elseif req == 2 then
    MoveZone(cnum, 57, 254)
  elseif req == 3 then
    MoveZone(cnum, 59, 254)
  elseif req == 4 then
    MoveZone(cnum, 63, 254)
  else
    return 0
  end
end

NPC_QUEST_335 = function(cnum, reqNumber)
  req = reqNumber
  if req == 1 then
    return 4, 0, "Informacoes\n    Voce gostaria de voltar para uma cidade? escolha uma opcao para viajar!", 2, "Magirita", 3, "Mekrita", 4, "Herseba"
  elseif req == 2 then
    MoveZone(cnum, 57, 254)
  elseif req == 3 then
    MoveZone(cnum, 59, 254)
  elseif req == 4 then
    MoveZone(cnum, 63, 254)
  else
    return 0
  end
end

NPC_QUEST_336 = function(cnum, reqNumber)
  req = reqNumber
  if req == 1 then
    return 4, 0, "Informacoes\n    Voce gostaria de voltar para uma cidade? escolha uma opcao para viajar!", 2, "Magirita", 3, "Mekrita", 4, "Herseba"
  elseif req == 2 then
    MoveZone(cnum, 57, 254)
  elseif req == 3 then
    MoveZone(cnum, 59, 254)
  elseif req == 4 then
    MoveZone(cnum, 63, 254)
  else
    return 0
  end
end

NPC_QUEST_337 = function(cnum, reqNumber)
  req = reqNumber
  if req == 1 then
    return 4, 0, "Informacoes\n    Voce gostaria de voltar para uma cidade? escolha uma opcao para viajar!", 2, "Magirita", 3, "Mekrita", 4, "Herseba"
  elseif req == 2 then
    MoveZone(cnum, 57, 254)
  elseif req == 3 then
    MoveZone(cnum, 59, 254)
  elseif req == 4 then
    MoveZone(cnum, 63, 254)
  else
    return 0
  end
end

NPC_QUEST_338 = function(cnum, reqNumber)
  req = reqNumber
  if req == 1 then
    return 4, 0, "Informacoes\n    Voce gostaria de voltar para uma cidade? escolha uma opcao para viajar!", 2, "Magirita", 3, "Mekrita", 4, "Herseba"
  elseif req == 2 then
    MoveZone(cnum, 57, 254)
  elseif req == 3 then
    MoveZone(cnum, 59, 254)
  elseif req == 4 then
    MoveZone(cnum, 63, 254)
  else
    return 0
  end
end


