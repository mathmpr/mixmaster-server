NPC_QUEST_323 = function(cnum, reqNumber)
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    return 5, 0, "Ola tudo bem\nSou um warp especial,posso te levar a lugares incriveis!", 2, "[Praia Especial-1]", 3, "[Praia Especial-2]", 4, "[Praia Suprema - 1]", 5, "[Praia Suprema - 2]"
  elseif req == 2 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 192, 254)
    elseif Lv < 51 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150\n  \n  \n \n"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 3 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 193, 254)
    elseif Lv < 101 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 4 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 194, 254)
    elseif Lv < 151 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
	  else
	  return 1,0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 5 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 195, 254)
	  elseif Lv < 101 then
	  return 1,0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    end
  else
    return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
  end
end

NPC_QUEST_324 = function(cnum, reqNumber)
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    return 5, 0, "Ola tudo bem\nSou um warp especial,posso te levar a lugares incriveis!", 2, "[Praia Especial-1]", 3, "[Praia Especial-2]", 4, "[Praia Suprema - 1]", 5, "[Praia Suprema - 2]"
  elseif req == 2 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 192, 254)
    elseif Lv < 51 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150\n  \n  \n \n"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 3 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 193, 254)
    elseif Lv < 101 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 4 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 194, 254)
    elseif Lv < 151 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
	  else
	  return 1,0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 5 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 195, 254)
	  elseif Lv < 101 then
	  return 1,0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    end
  else
    return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
  end
end

NPC_QUEST_325 = function(cnum, reqNumber)
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    return 5, 0, "Ola tudo bem\nSou um warp especial,posso te levar a lugares incriveis!", 2, "[Praia Especial-1]", 3, "[Praia Especial-2]", 4, "[Praia Suprema - 1]", 5, "[Praia Suprema - 2]"
  elseif req == 2 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 192, 254)
    elseif Lv < 51 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150\n  \n  \n \n"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 3 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 193, 254)
    elseif Lv < 101 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 4 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 194, 254)
    elseif Lv < 151 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
	  else
	  return 1,0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 5 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 195, 254)
	  elseif Lv < 101 then
	  return 1,0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    end
  else
    return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
  end
end

NPC_QUEST_326 = function(cnum, reqNumber)
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    return 5, 0, "Ola tudo bem\nSou um warp especial,posso te levar a lugares incriveis!", 2, "[Praia Especial-1]", 3, "[Praia Especial-2]", 4, "[Praia Suprema - 1]", 5, "[Praia Suprema - 2]"
  elseif req == 2 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 192, 254)
    elseif Lv < 51 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150\n  \n  \n \n"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 3 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 193, 254)
    elseif Lv < 101 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 4 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 194, 254)
    elseif Lv < 151 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
	  else
	  return 1,0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 5 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 195, 254)
	  elseif Lv < 101 then
	  return 1,0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    end
  else
    return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
  end
end

NPC_QUEST_327 = function(cnum, reqNumber)
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    return 5, 0, "Ola tudo bem\nSou um warp especial,posso te levar a lugares incriveis!", 2, "[Praia Especial-1]", 3, "[Praia Especial-2]", 4, "[Praia Suprema - 1]", 5, "[Praia Suprema - 2]"
  elseif req == 2 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 192, 254)
    elseif Lv < 51 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150\n  \n  \n \n"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 3 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 193, 254)
    elseif Lv < 101 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 4 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 194, 254)
    elseif Lv < 151 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
	  else
	  return 1,0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 5 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 195, 254)
	  elseif Lv < 101 then
	  return 1,0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    end
  else
    return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
  end
end

NPC_QUEST_328 = function(cnum, reqNumber)
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    return 5, 0, "Ola tudo bem\nSou um warp especial,posso te levar a lugares incriveis!", 2, "[Praia Especial-1]", 3, "[Praia Especial-2]", 4, "[Praia Suprema - 1]", 5, "[Praia Suprema - 2]"
  elseif req == 2 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 192, 254)
    elseif Lv < 51 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150\n  \n  \n \n"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 3 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 193, 254)
    elseif Lv < 101 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 4 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 194, 254)
    elseif Lv < 151 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
	  else
	  return 1,0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 5 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 195, 254)
	  elseif Lv < 101 then
	  return 1,0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    end
  else
    return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
  end
end

NPC_QUEST_329 = function(cnum, reqNumber)
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    return 5, 0, "Ola tudo bem\nSou um warp especial,posso te levar a lugares incriveis!", 2, "[Praia Especial-1]", 3, "[Praia Especial-2]", 4, "[Praia Suprema - 1]", 5, "[Praia Suprema - 2]"
  elseif req == 2 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 192, 254)
    elseif Lv < 51 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150\n  \n  \n \n"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 3 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 193, 254)
    elseif Lv < 101 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 4 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 194, 254)
    elseif Lv < 151 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
	  else
	  return 1,0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 5 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 195, 254)
	  elseif Lv < 101 then
	  return 1,0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    end
  else
    return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
  end
end

NPC_QUEST_330 = function(cnum, reqNumber)
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    return 5, 0, "Ola tudo bem\nSou um warp especial,posso te levar a lugares incriveis!", 2, "[Praia Especial-1]", 3, "[Praia Especial-2]", 4, "[Praia Suprema - 1]", 5, "[Praia Suprema - 2]"
  elseif req == 2 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 192, 254)
    elseif Lv < 51 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150\n  \n  \n \n"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 3 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 193, 254)
    elseif Lv < 101 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    else
      return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 4 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 194, 254)
    elseif Lv < 151 then
      return 1, 0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
	  else
	  return 1,0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
    end
  elseif req == 5 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 195, 254)
	  elseif Lv < 101 then
	  return 1,0, "Desculpe,mas você não tem o level requirido. Para entrar nesta zona precisa de level 150"
    end
  else
    return 1, 0, "ÄãµÄµÈ¼¶¹ý¸ß,ÒÑ¾­²»ÊÊºÏ½øÈëÕâ¸öÇøÓòÁË."
  end
end