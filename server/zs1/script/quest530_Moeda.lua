NPC_QUEST_1153 = function(cnum, reqNumber)
  local resultmsg, req, name, type = nil
  req = reqNumber
  name = GetHeroName(cnum)
  money = GetMoney(cnum)
  Lv = GetHeroLv(cnum)
  JzPenqian = 1000000001
  fuqian = 1000000000
  if req == 1 then
    if GetHeroLv(cnum) > 149 then
      return 3, 0, "Deseja trocar seu dinheiro por moeda?", 11, "Desejo[Trocar]", 12, "Desejo [Saber mais]"
    else
      return 1, 0, "Ola Senhor: " .. name .. "..ÄãºÃ!!\n\nNão é possivel utilizar função pois seu level é 149 ou menor. Confira seu level:" .. Lv .. "\n\nDesculpe, você precisa estar level 150 ou maior.."
    end
  elseif req == 11 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 2, 0, "Opção de troca:\n\nOi tudo bem, sou um palhaço brincalhão e achei uma forma de fazer o seu GP virar uma moeda.\n\nEsta duvidando, clique ne uma opção que você vai olhar seu GP desaparecer e virar uma moeda de troca\n\n As opções abaixo vai te dar uma escolha para uma moeda.", 111, "[Moeda] 1kkk"
    else
      return 1, 0, "[Error]\n\nOla Senhor: " .. name .. "..!!\n\nDesculpe acho que seu level não esta compativel, precisa estar level 150 + verifique seu level >:" .. Lv .. "\n\nOu então pode ter acontecido que não achamos 1kkk no seu inventario, tente novamente quando você tiver 1kkk."
    end
  elseif req == 12 then
    if GetHeroLv(cnum) > 149 then
      return 2, 0, "Informação sobre a moeda:\n\nOla gostaria de saber algumas informações sobre a moeda, a moeda de troca tem uma simples função para você trocar uma grande quantidade de GP de uma forma rapida pois você pode vender e comprar a moeda pelo mesmo preço.", 222, "[Entendeu]"
    else
      return 1, 0, "ËµÃ÷:\n\nµÈ¼¶Ã»¹»..."
    end
  elseif req == 111 then
    if money < JzPenqian and GetHeroLv(cnum) > 149 then
      return 1, 0, "³ö´íÀ²!\n\nÄãÉíÉÏ²»×ãGP¶Ò»»"
    end
    if GetRemainPocket(cnum) < 1 then
      return 1, 0, "³ö´íÀ²!\n\nÄã±³°üÃ»ÓĞ×ã¹»µÄÎ»ÖÃ,Çë»ØÈ¥²Ö¿â,°Ñ²»ĞèÒªµÄµÀ¾ß·Å½ø²Ö¿â.ÔÙÀ´¶Ò»»°É!!!"
    end
    AddMoney(cnum, -fuqian)
    AddItemCount(cnum, 9482, 1)
    return 1, 0, "Trocado com sucesso, olhe a magica no seu inventario. ^^"
  elseif req == 222 then
    if GetItemCount(cnum, 8624, 0) < 100 then
      return 1, 0, "³ö´íÀ²!\n\nÁúÏµ:[ºìÉ«¹âĞü¸¡Ê¯-½á¾§Ìå]\n\n²»×ã100¸ö,ÇëÊÕ¼¯ºÃÔÙÀ´¶Ò»»°É..."
    end
    if GetItemCount(cnum, 8627, 0) < 100 then
      return 1, 0, "³ö´íÀ²!\n\n¶ñÄ§Ïµ:[»ÒÉ«¹âĞü¸¡Ê¯-½á¾§Ìå]\n\n²»×ã100¸ö,ÇëÊÕ¼¯ºÃÔÙÀ´¶Ò»»°É..."
    end
    if GetItemCount(cnum, 8630, 0) < 100 then
      return 1, 0, "³ö´íÀ²!\n\nÖ²ÎïÏµ:[À¶É«¹âĞü¸¡Ê¯-½á¾§Ìå]\n\n²»×ã100¸ö,ÇëÊÕ¼¯ºÃÔÙÀ´¶Ò»»°É..."
    end
    if GetItemCount(cnum, 8633, 0) < 100 then
      return 1, 0, "³ö´íÀ²!\n\nÉñÃØÏµ:[ÍÁ»ÆÉ«¹âĞü¸¡Ê¯-½á¾§Ìå]\n\n²»×ã100¸ö,ÇëÊÕ¼¯ºÃÔÙÀ´¶Ò»»°É..."
    end
    if GetItemCount(cnum, 8785, 0) < 100 then
      return 1, 0, "³ö´íÀ²!\n\nÊŞÏµ:[ÂÌÉ«¹âĞü¸¡Ê¯-½á¾§Ìå]\n\n²»×ã100¸ö,ÇëÊÕ¼¯ºÃÔÙÀ´¶Ò»»°É..."
    end
    if GetItemCount(cnum, 8788, 0) < 100 then
      return 1, 0, "³ö´íÀ²!\n\nÄñÏµ:[ÌìÀ¶É«¹âĞü¸¡Ê¯-½á¾§Ìå]\n\n²»×ã100¸ö,ÇëÊÕ¼¯ºÃÔÙÀ´¶Ò»»°É..."
    end
    if GetItemCount(cnum, 8791, 0) < 100 then
      return 1, 0, "³ö´íÀ²!\n\n³æÏµ:[×ÏÉ«¹âĞü¸¡Ê¯-½á¾§Ìå]\n\n²»×ã100¸ö,ÇëÊÕ¼¯ºÃÔÙÀ´¶Ò»»°É..."
    end
    if GetItemCount(cnum, 8794, 0) < 100 then
      return 1, 0, "³ö´íÀ²!\n\n»úĞµÏµ:[ÇàÂÌÉ«¹âĞü¸¡Ê¯-½á¾§Ìå]\n\n²»×ã100¸ö,ÇëÊÕ¼¯ºÃÔÙÀ´¶Ò»»°É..."
    end
    AddItemCount(cnum, 8624, -100)
    AddItemCount(cnum, 8627, -100)
    AddItemCount(cnum, 8630, -100)
    AddItemCount(cnum, 8633, -100)
    AddItemCount(cnum, 8785, -100)
    AddItemCount(cnum, 8788, -100)
    AddItemCount(cnum, 8791, -100)
    AddItemCount(cnum, 8794, -100)
    AddHeroFreePoint(cnum, 300)
    return 1, 0, "³É¹¦¶Ò»»ÈËÎïµãÊı:300^^"
  end
end


