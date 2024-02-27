NPC_QUEST_742 = function(cnum, reqNumber)
  local resultmsg, req, name, type = nil
  req = reqNumber
  name = GetHeroName(cnum)
  type = GetHeroType(cnum)
  money = GetMoney(cnum)
  Lv = GetHeroLv(cnum)
  Penqian = 500000001
  JzPenqian = 500000000
  local kalongwangID = {1501, 1502, 1503, 1504, 1505, 1506, 1507, 830}
  local Jckalongwang = function(cnum)
    -- upvalues: kalongwangID
    local ifhave = false
    for i = 1, #kalongwangID do
      ifhave = ifhave or GetHench(cnum, 1, kalongwangID[i], 0) > 0
    end
    return ifhave
  end
  local diteID = {1581, 1582, 1583, 1584, 1585, 1586, 1587, 343}
  local Jcdite = function(cnum)
    -- upvalues: diteID
    local ifhave = false
    for i = 1, #diteID do
      ifhave = ifhave or GetHench(cnum, 1, diteID[i], 0) > 0
    end
    return ifhave
  end
  local yelingID = {1811, 1812, 1813, 1814, 1815, 1816, 1817, 1818}
  local Jcyeling = function(cnum)
    -- upvalues: yelingID
    local ifhave = false
    for i = 1, #yelingID do
      ifhave = ifhave or GetHench(cnum, 1, yelingID[i], 0) > 0
    end
    return ifhave
  end
  local shuangtoulangID = {1521, 1522, 1523, 1524, 1525, 1526, 1527, 1012}
  local Jcshuangtoulang = function(cnum)
    -- upvalues: shuangtoulangID
    local ifhave = false
    for i = 1, #shuangtoulangID do
      ifhave = ifhave or GetHench(cnum, 1, shuangtoulangID[i], 0) > 0
    end
    return ifhave
  end
  local chaorenxingID = {1831, 1832, 1833, 1834, 1835, 1836, 1837, 1838}
  local Jcchaorenxing = function(cnum)
    -- upvalues: chaorenxingID
    local ifhave = false
    for i = 1, #chaorenxingID do
      ifhave = ifhave or GetHench(cnum, 1, chaorenxingID[i], 0) > 0
    end
    return ifhave
  end
  local anubisiID = {1511, 1512, 1513, 1514, 1515, 1516, 1517, 840}
  local Jcanubisi = function(cnum)
    -- upvalues: anubisiID
    local ifhave = false
    for i = 1, #anubisiID do
      ifhave = ifhave or GetHench(cnum, 1, anubisiID[i], 0) > 0
    end
    return ifhave
  end
  local fenghuangID = {1531, 1532, 1533, 1534, 1535, 1536, 1537, 1056}
  local Jcfenghuang = function(cnum)
    -- upvalues: fenghuangID
    local ifhave = false
    for i = 1, #fenghuangID do
      ifhave = ifhave or GetHench(cnum, 1, fenghuangID[i], 0) > 0
    end
    return ifhave
  end
  local cjnvwangID = {1641, 1642, 1643, 1644, 1645, 1646, 1647, 1059}
  local Jccjnvwang = function(cnum)
    -- upvalues: cjnvwangID
    local ifhave = false
    for i = 1, #cjnvwangID do
      ifhave = ifhave or GetHench(cnum, 1, cjnvwangID[i], 0) > 0
    end
    return ifhave
  end
  local hongjinID = {1541, 1542, 1543, 1544, 1545, 1546, 1547, 1038}
  local Jchongjin = function(cnum)
    -- upvalues: hongjinID
    local ifhave = false
    for i = 1, #hongjinID do
      ifhave = ifhave or GetHench(cnum, 1, hongjinID[i], 0) > 0
    end
    return ifhave
  end
  local heifuchongID = {1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808}
  local Jcheifuchong = function(cnum)
    -- upvalues: heifuchongID
    local ifhave = false
    for i = 1, #heifuchongID do
      ifhave = ifhave or GetHench(cnum, 1, heifuchongID[i], 0) > 0
    end
    return ifhave
  end
  local shirenshuID = {1551, 1552, 1553, 1554, 1555, 1556, 1557, 852}
  local Jcshirenshu = function(cnum)
    -- upvalues: shirenshuID
    local ifhave = false
    for i = 1, #shirenshuID do
      ifhave = ifhave or GetHench(cnum, 1, shirenshuID[i], 0) > 0
    end
    return ifhave
  end
  local cjjubiID = {1651, 1652, 1653, 1654, 1655, 1656, 1657, 1060}
  local Jccjjubi = function(cnum)
    -- upvalues: cjjubiID
    local ifhave = false
    for i = 1, #cjjubiID do
      ifhave = ifhave or GetHench(cnum, 1, cjjubiID[i], 0) > 0
    end
    return ifhave
  end
  local wushiwangID = {1561, 1562, 1563, 1564, 1565, 1566, 1567, 866}
  local Jcwushiwang = function(cnum)
    -- upvalues: wushiwangID
    local ifhave = false
    for i = 1, #wushiwangID do
      ifhave = ifhave or GetHench(cnum, 1, wushiwangID[i], 0) > 0
    end
    return ifhave
  end
  local cjguimianID = {1621, 1622, 1623, 1624, 1625, 1626, 1627, 342}
  local Jccjguimian = function(cnum)
    -- upvalues: cjguimianID
    local ifhave = false
    for i = 1, #cjguimianID do
      ifhave = ifhave or GetHench(cnum, 1, cjguimianID[i], 0) > 0
    end
    return ifhave
  end
  local quzujianID = {1571, 1572, 1573, 1574, 1575, 1576, 1577, 1051}
  local Jcquzujian = function(cnum)
    -- upvalues: quzujianID
    local ifhave = false
    for i = 1, #quzujianID do
      ifhave = ifhave or GetHench(cnum, 1, quzujianID[i], 0) > 0
    end
    return ifhave
  end
  local cjhuiniuID = {1631, 1632, 1633, 1634, 1635, 1636, 1637, 1061}
  local Jccjhuiniu = function(cnum)
    -- upvalues: cjhuiniuID
    local ifhave = false
    for i = 1, #cjhuiniuID do
      ifhave = ifhave or GetHench(cnum, 1, cjhuiniuID[i], 0) > 0
    end
    return ifhave
  end
  if req == 1 then
    if GetHeroLv(cnum) > 149 then
      return 9, 0, "Mude o Level do seu BOSS\n\nInformações:\n\nAtençãoo quando mudar o level de um boss não tenha dois do mesmo tipo no inventario de cores, pois um pode desaparecer.\n\n[Mudar Level]Quando mudar o level o tipo pode mudar.", 2, "[TIPO] Dragon", 3, "[TIPO] Animal", 4, "[TIPO] Bird", 5, "[TIPO] Devil", 6, "[TIPO] Insect", 7, "[TIPO] Plant", 9, "[TIPO] Mysteri", 8, "[TIPO] Metal"
    else
      return 1, 0, "[Error]\n\nOla tudo-bem:" .. name .. "..O seu level e insuficiente!!\n\nnao podemos oferecer um suporte para este level.:" .. Lv .. "\n\nVenha quanto tiver level 150+.."
    end
  elseif req == 2 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 5, 0, "Mudar level tipo dragão", 21, "Mudar Level: [Lv180]Wang Hai mad attack", 22, "Mudar Level: [Lv185]Garugon", 23, "Mudar Level: [Lv200]KingGarugon", 24, "Mudar Level: [Lv200]NeoDittSanta"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 21 then
    if GetHench(cnum, 1, 876, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 876, -1)
      AddHench(cnum, 876, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "Jiu Cong! Recrute o controle remoto ¯±¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Ï®º£¿ñÁú],ou voce nao tem o gp necessario"
    end
  elseif req == 22 then
    if GetHench(cnum, 1, 285, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 285, -1)
      AddHench(cnum, 285, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "Jiu Cong! Recrute o controle remoto Yangkun^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Garugon],ou voce nao tem o gp necessario"
    end
  elseif req == 23 then
    if Jckalongwang(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1501, -1)
      AddHench(cnum, 1502, -1)
      AddHench(cnum, 1503, -1)
      AddHench(cnum, 1504, -1)
      AddHench(cnum, 1505, -1)
      AddHench(cnum, 1506, -1)
      AddHench(cnum, 1507, -1)
      AddHench(cnum, 830, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 830, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingGarugon],ou voce nao tem o gp necessario"
    end
  elseif req == 24 then
    if Jcdite(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1581, -1)
      AddHench(cnum, 1582, -1)
      AddHench(cnum, 1583, -1)
      AddHench(cnum, 1584, -1)
      AddHench(cnum, 1585, -1)
      AddHench(cnum, 1586, -1)
      AddHench(cnum, 1587, -1)
      AddHench(cnum, 343, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 343, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoDittSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 3 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 4, 0, "ÇëÑ¡Ôñ¶Ò»»µÄÊÞÏµ³èÎï", 31, "Mudar Level: [Lv180]Thunder Tiger", 32, "Mudar Level: [Lv198]Hellfard", 33, "Mudar Level: [Lv200]NeoPongo"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 31 then
    if GetHench(cnum, 1, 878, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 878, -1)
      AddHench(cnum, 878, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Thunder Tiger],ou voce nao tem o gp necessario"
    end
  elseif req == 32 then
    if Jcshuangtoulang(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1521, -1)
      AddHench(cnum, 1522, -1)
      AddHench(cnum, 1523, -1)
      AddHench(cnum, 1524, -1)
      AddHench(cnum, 1525, -1)
      AddHench(cnum, 1526, -1)
      AddHench(cnum, 1527, -1)
      AddHench(cnum, 1012, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1012, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Hellfard],ou voce nao tem o gp necessario"
    end
  elseif req == 33 then
    if Jcchaorenxing(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1831, -1)
      AddHench(cnum, 1832, -1)
      AddHench(cnum, 1833, -1)
      AddHench(cnum, 1834, -1)
      AddHench(cnum, 1835, -1)
      AddHench(cnum, 1836, -1)
      AddHench(cnum, 1837, -1)
      AddHench(cnum, 1838, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1838, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPongo],ou voce nao tem o gp necessario"
    end
  elseif req == 4 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 4, 0, "ÇëÑ¡Ôñ¶Ò»»µÄÄñÏµ³èÎï", 41, "Mudar Level: [Lv180]Eagle Wings", 42, "Mudar Level: [Lv197]Phoenix", 43, "Mudar Level: [Lv200]NeoKallinAngel"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 41 then
    if GetHench(cnum, 1, 877, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 877, -1)
      AddHench(cnum, 877, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Eagle Wings],ou voce nao tem o gp necessario"
    end
  elseif req == 42 then
    if Jcfenghuang(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1531, -1)
      AddHench(cnum, 1532, -1)
      AddHench(cnum, 1533, -1)
      AddHench(cnum, 1534, -1)
      AddHench(cnum, 1535, -1)
      AddHench(cnum, 1536, -1)
      AddHench(cnum, 1537, -1)
      AddHench(cnum, 1056, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1056, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Phoenix],ou voce nao tem o gp necessario"
    end
  elseif req == 43 then
    if Jccjnvwang(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1641, -1)
      AddHench(cnum, 1642, -1)
      AddHench(cnum, 1643, -1)
      AddHench(cnum, 1644, -1)
      AddHench(cnum, 1645, -1)
      AddHench(cnum, 1646, -1)
      AddHench(cnum, 1647, -1)
      AddHench(cnum, 1059, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1059, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoKallinAngel],ou voce nao tem o gp necessario"
    end
  elseif req == 5 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 3, 0, "ÇëÑ¡Ôñ¶Ò»»µÄ¶ñÄ§Ïµ³èÎï", 51, "Mudar Level: [Lv196]Anubis", 52, "Mudar Level: [Lv200]Coconut Spirit"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 51 then
    if Jcanubisi(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1511, -1)
      AddHench(cnum, 1512, -1)
      AddHench(cnum, 1513, -1)
      AddHench(cnum, 1514, -1)
      AddHench(cnum, 1515, -1)
      AddHench(cnum, 1516, -1)
      AddHench(cnum, 1517, -1)
      AddHench(cnum, 840, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 840, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Anubis],ou voce nao tem o gp necessario"
    end
  elseif req == 52 then
    if Jcyeling(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1811, -1)
      AddHench(cnum, 1812, -1)
      AddHench(cnum, 1813, -1)
      AddHench(cnum, 1814, -1)
      AddHench(cnum, 1815, -1)
      AddHench(cnum, 1816, -1)
      AddHench(cnum, 1817, -1)
      AddHench(cnum, 1818, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1818, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Coconut Spirit],ou voce nao tem o gp necessario"
    end
  elseif req == 6 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 4, 0, "ÇëÑ¡Ôñ¶Ò»»µÄÀ¥³æÏµ³èÎï", 61, "Mudar Level: [Lv183]NipperKing", 62, "Mudar Level: [Lv196]CutterMartins", 63, "Mudar Level: [Lv200]Neo Tomahawk"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 61 then
    if GetHench(cnum, 1, 550, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 550, -1)
      AddHench(cnum, 550, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NipperKing],ou voce nao tem o gp necessario"
    end
  elseif req == 62 then
    if Jchongjin(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1541, -1)
      AddHench(cnum, 1542, -1)
      AddHench(cnum, 1543, -1)
      AddHench(cnum, 1544, -1)
      AddHench(cnum, 1545, -1)
      AddHench(cnum, 1546, -1)
      AddHench(cnum, 1547, -1)
      AddHench(cnum, 1038, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1038, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[CutterMartins],ou voce nao tem o gp necessario"
    end
  elseif req == 63 then
    if Jcheifuchong(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1801, -1)
      AddHench(cnum, 1802, -1)
      AddHench(cnum, 1803, -1)
      AddHench(cnum, 1804, -1)
      AddHench(cnum, 1805, -1)
      AddHench(cnum, 1806, -1)
      AddHench(cnum, 1807, -1)
      AddHench(cnum, 1808, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1808, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Tomahawk],ou voce nao tem o gp necessario"
    end
  elseif req == 7 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 3, 0, "ÇëÑ¡Ôñ¶Ò»»µÄÖ²ÎïÏµ³èÎï", 71, "Mudar Level: [Lv197]Napenthes", 72, "Mudar Level: [Lv200]Neo Garlingz"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 71 then
    if Jcshirenshu(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1551, -1)
      AddHench(cnum, 1552, -1)
      AddHench(cnum, 1553, -1)
      AddHench(cnum, 1554, -1)
      AddHench(cnum, 1555, -1)
      AddHench(cnum, 1556, -1)
      AddHench(cnum, 1557, -1)
      AddHench(cnum, 852, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 852, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Napenthes],ou voce nao tem o gp necessario"
    end
  elseif req == 72 then
    if Jccjjubi(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1651, -1)
      AddHench(cnum, 1652, -1)
      AddHench(cnum, 1653, -1)
      AddHench(cnum, 1654, -1)
      AddHench(cnum, 1655, -1)
      AddHench(cnum, 1656, -1)
      AddHench(cnum, 1657, -1)
      AddHench(cnum, 1060, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1060, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Garlingz],ou voce nao tem o gp necessario"
    end
  elseif req == 8 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 4, 0, "ÇëÑ¡Ôñ¶Ò»»µÄ»úÐµÏµ³èÎï", 81, "Mudar Level: [Lv180]EarthquakeGround", 82, "Mudar Level: [Lv199]Destroyer", 83, "Mudar Level: [Lv200]Neo BlackNity"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 81 then
    if GetHench(cnum, 1, 879, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 879, -1)
      AddHench(cnum, 879, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[EarthquakeGroundRhino],ou voce nao tem o gp necessario"
    end
  elseif req == 82 then
    if Jcquzujian(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1571, -1)
      AddHench(cnum, 1572, -1)
      AddHench(cnum, 1573, -1)
      AddHench(cnum, 1574, -1)
      AddHench(cnum, 1575, -1)
      AddHench(cnum, 1576, -1)
      AddHench(cnum, 1577, -1)
      AddHench(cnum, 1051, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1051, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Destroyer],ou voce nao tem o gp necessario"
    end
  elseif req == 83 then
    if Jccjhuiniu(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1631, -1)
      AddHench(cnum, 1632, -1)
      AddHench(cnum, 1633, -1)
      AddHench(cnum, 1634, -1)
      AddHench(cnum, 1635, -1)
      AddHench(cnum, 1636, -1)
      AddHench(cnum, 1637, -1)
      AddHench(cnum, 1061, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1061, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo BlackNity],ou voce nao tem o gp necessario"
    end
  elseif req == 9 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 4, 0, "ÇëÑ¡Ôñ¶Ò»»µÄÉñÃØÏµ³èÎï", 91, "Mudar Level: [Lv185]Soul Eater", 92, "Mudar Level: [Lv198]RoofTileGeneral", 93, "Mudar Level: [Lv200]Neo Paparong"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 91 then
    if GetHench(cnum, 1, 549, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 549, -1)
      AddHench(cnum, 549, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Soul Eater],ou voce nao tem o gp necessario"
    end
  elseif req == 92 then
    if Jcwushiwang(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1561, -1)
      AddHench(cnum, 1562, -1)
      AddHench(cnum, 1563, -1)
      AddHench(cnum, 1564, -1)
      AddHench(cnum, 1565, -1)
      AddHench(cnum, 1566, -1)
      AddHench(cnum, 1567, -1)
      AddHench(cnum, 866, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 866, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[RoofTileGeneral],ou voce nao tem o gp necessario"
    end
  elseif req == 93 then
    if Jccjguimian(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1621, -1)
      AddHench(cnum, 1622, -1)
      AddHench(cnum, 1623, -1)
      AddHench(cnum, 1624, -1)
      AddHench(cnum, 1625, -1)
      AddHench(cnum, 1626, -1)
      AddHench(cnum, 1627, -1)
      AddHench(cnum, 342, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 342, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    end
  else
    return 1, 0, "Error!\n\nNao achamos nenhum[Neo Paparong],ou voce nao tem o gp necessario"
  end
  return 0
end


