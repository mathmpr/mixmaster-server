function NPC_QUEST_1152(cnum,reqNumber) -- °æºñº´
  req = reqNumber

  if req == 1 then
  money = GetMoney(cnum)
    if money < 100 then
      return 2, 0, "ÐÂµÄ³ÆºÅÒªÇóÈËÎïÉíÉÏÓÐ100 GPÒÔÉÏ²ÅÄÜÑ§°¡,¸Ï½ôÈ¥ÕõÇ®°É!"
	else
      return 10, 0, "Ola gostaria de mudar seu sub nick ?", 111, "Gostaria de Retirar",  20, "Sub Nick - 1", 4, "Sub Nick - 2", 12, "Sub Nick - 3", 28, "Sub Nick - 4", 36, "Sub Nick - 5", 44, "Sub Nick - 6", 52, "Sub Nick - 7", 60, "Sub Nick - 8"
	end 
	
	
  elseif req == 2 then
    SetSwitchCount(cnum, 532, 1)
  elseif req == 3 then
    return 1, 0, "²»»»Ã´£¿"
	
  elseif req == 111 then
    SetNickname(cnum, 0)
    return 1, 0, "Sub Nick Retirado com sucesso!"	
  elseif req == 4 then
    return 8, 0, "Escolha um Sub Nick", 5, "[Cabo]", 6, "[Sargento-Mor]", 7, "[Sargento-Chefe]", 8, "[Sargento-Ajudante]", 9, "[1ºSargento]", 10, "[2ºSargento]", 11, "[Furriel]"
  elseif req == 5 then
    SetNickname(cnum, 1)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 6 then
    SetNickname(cnum, 2)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 7 then
    SetNickname(cnum, 3)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 8 then
    SetNickname(cnum, 4)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 9 then
    SetNickname(cnum, 5)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 10 then
    SetNickname(cnum, 6)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 11 then
    SetNickname(cnum, 7)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 12 then
    return 8, 0, "Escolha um Sub Nick", 13, "[2º Furriel]", 14, "[Soldado Instruendo]", 15, "[Soldado Cadete]", 16, "[Aspirante Oficial]", 17, "[Alferes]", 18, "[É­ÁÖÖ®Íõ]", 19, "[¹úÍõÊ¹Õß]"
  elseif req == 13 then
    SetNickname(cnum, 8)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 14 then
    SetNickname(cnum, 9)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 15 then
    SetNickname(cnum, 10)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 16 then
    SetNickname(cnum, 11)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 17 then
    SetNickname(cnum, 12)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 18 then
    SetNickname(cnum, 66)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 19 then
    SetNickname(cnum, 73)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 20 then
    return 8, 0, "Escolha um Sub Nick", 21, "[Tenente]", 22, "[Capitao]", 23, "[Major]", 24, "[Tenente-Coronel]", 25, "[Coronel]", 26, "[Brigadeiro-General]", 27, "[Major-General]"
  elseif req == 21 then
    SetNickname(cnum, 13)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 22 then
    SetNickname(cnum, 14)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 23 then
    SetNickname(cnum, 15)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 24 then
    SetNickname(cnum, 16)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 25 then
    SetNickname(cnum, 17)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 26 then
    SetNickname(cnum, 18)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 27 then
    SetNickname(cnum, 19)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 28 then
    return 8, 0, "Ñ¡ÔñÄãÒª¸ü»»µÄ³ÆºÅ°É£¿", 29, "[Ê±¿ÕÂÃÐÐÕß]", 30, "[Á÷¶¯Ð¡Ì¯··]", 31, "[µØÓüÒýÂ·ÈË]", 32, "[ÀäÒû¿ìËÍ]", 33, "[³¬¼¶¿ìµÝÔ±]", 34, "[ÎÞµÐÐÒÔËÐÇ]", 35, "[´ò²»ËÀµÄÐ¡Ç¿]"
  elseif req == 29 then
    SetNickname(cnum, 52)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 30 then
    SetNickname(cnum, 53)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 31 then
    SetNickname(cnum, 54)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 32 then
    SetNickname(cnum, 57)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 33 then
    SetNickname(cnum, 58)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 34 then
    SetNickname(cnum, 60)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 35 then
    SetNickname(cnum, 61)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 36 then
    return 8, 0, "Ñ¡ÔñÄãÒª¸ü»»µÄ³ÆºÅ°É£¿", 37, "[ÒÔ¹¥´úÊØ]", 38, "[·çµÄÊ¹Õß]", 39, "[ÉñÓÓÖ®ÈË]", 40, "[Çéº£¹ý¿Í]", 41, "[´óÃ°ÏÕ¼Ò]", 42, "[ÉóÅÐÕß]", 43, "[ºìÒÂÖ÷½Ì]"
  elseif req == 37 then
    SetNickname(cnum, 63)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 38 then
    SetNickname(cnum, 64)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 39 then
    SetNickname(cnum, 65)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 40 then
    SetNickname(cnum, 68)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 41 then
    SetNickname(cnum, 69)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 42 then
    SetNickname(cnum, 72)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 43 then
    SetNickname(cnum, 76)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 44 then
    return 8, 0, "Ñ¡ÔñÄãÒª¸ü»»µÄ³ÆºÅ°É£¿", 45, "[×·Ñ°Õß]", 46, "[Ì½Ë÷Õß]", 47, "[¾ÈÊÀÖ÷]", 48, "[°®ÐÄ´óÊ¹]", 49, "[±¯ÉËµÄÈË]", 50, "[Ä§¾µ¾«Áé]", 51, "[Å®ÉñÊØÎÀ]"
  elseif req == 45 then
    SetNickname(cnum, 78)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 46 then
    SetNickname(cnum, 79)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 47 then
    SetNickname(cnum, 80)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 48 then
    SetNickname(cnum, 82)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 49 then
    SetNickname(cnum, 84)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 50 then
    SetNickname(cnum, 89)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 51 then
    SetNickname(cnum, 106)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 52 then
    return 8, 0, "Ñ¡ÔñÄãÒª¸ü»»µÄ³ÆºÅ°É£¿", 53, "[ÉÁÒ«Õß]", 54, "[¿àÃüµÄÐ¡µÜ]", 55, "[÷È»óÑý¾«]", 56, "[»ùÓÑÍÅ]", 57, "[ÂÜÀò¿Ø]", 58, "[¸ß¸»Ë§]", 59, "[°×¸»ÃÀ]"
  elseif req == 53 then
    SetNickname(cnum, 140)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 54 then
    SetNickname(cnum, 141)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 55 then
    SetNickname(cnum, 150)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 56 then
    SetNickname(cnum, 151)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 57 then
    SetNickname(cnum, 152)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 58 then
    SetNickname(cnum, 157)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 59 then
    SetNickname(cnum, 158)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 60 then
    return 8, 0, "Ñ¡ÔñÄãÒª¸ü»»µÄ³ÆºÅ°É£¿", 61, "[Í­Ê¥¶·Ê¿]", 62, "[°×ÒøÊ¥¶·Ê¿]", 63, "[»Æ½ðÊ¥¶·Ê¿]", 64, "[ÐÄÈçÖ¹Ë®]", 65, "[ÂÞÂüµÙ¿Ë]", 66, "[Çé±È½ð¼á]", 67, "[µ¥Éí¹«º¦]"
  elseif req == 61 then
    SetNickname(cnum, 164)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 62 then
    SetNickname(cnum, 165)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 63 then
    SetNickname(cnum, 166)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 64 then
    SetNickname(cnum, 168)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 65 then
    SetNickname(cnum, 171)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 66 then
    SetNickname(cnum, 170)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  elseif req == 67 then
    SetNickname(cnum, 167)
    return 1, 0, "Seu Sub-Nick Trocado com sucesso!"
  end
end