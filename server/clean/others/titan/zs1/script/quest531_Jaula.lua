NPC_QUEST_355 = function(cnum, reqNumber)
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    return 7, 0, "[NPC]@@Olá, deseja ir para um mapa a onde eu crio alguns monstros? Caso deseje ir só ir para uma jaula que corresponde seu level.", 2, "[Lv.1~50]   [Jaula 1]", 3, "[Lv.51~100]   [Jaula 2] ", 4, "[Lv.101~150]  [Jaula 3]", 5, "[Lv.151~200]  [Jaula 4]", 6, "[Lv.1~200]  [JAULA EVENTO BOX]", 7, "[Lv.1~200]  [JAULA EVENTO BOX]"
  elseif req == 2 then
    if Lv > 0 and Lv < 50 then
      MoveZone(cnum, 183, 254)
    else
      return 1, 0, "Desculpe, você já passou deste level."
    end
  elseif req == 3 then
    if Lv > 51 and Lv < 101 then
      MoveZone(cnum, 184, 254)
    elseif Lv < 101 then
      return 1, 0, "Desculpe, seu level esta abaixo do pedido.51 Ate 100"
    else
      return 1, 0, "Voce so podera entrar aqui no nivel 51, volte quanto estiver mais forte."
    end
  elseif req == 4 then
    if Lv > 101 and Lv < 151 then
      MoveZone(cnum, 185, 254)
    elseif Lv < 151 then
      return 1, 0, "Desculpe, seu level esta abaixo do pedido.101 Ate 150"
    else
      return 1, 0, "Voce so podera entrar aqui no nivel 101, volte quanto estiver mais forte."
    end
  elseif req == 5 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 186, 254)
    elseif Lv < 201 then
      return 1, 0, "Desculpe, seu level esta abaixo do pedido.151 Ate 200"
    end
  elseif req == 6 then
    if Lv > 150 and Lv < 201 then
      MoveZone(cnum, 213, 254)
    elseif Lv < 1 then
      return 1, 0, "Desculpe, seu level esta abaixo do pedido.151 Ate 200"
    end
  elseif req == 7 then
    if Lv > 1 and Lv < 201 then
      MoveZone(cnum, 214, 254)
    end
  elseif Lv < 151 then
    return 1, 0, "Desculpe, seu level esta abaixo do pedido.151 Ate 200"
  end
end


