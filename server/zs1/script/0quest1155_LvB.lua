NPC_QUEST_1155 = function(cnum, reqNumber)
  local resultmsg, req, name, type = nil
  req = reqNumber
  name = GetHeroName(cnum)
  type = GetHeroType(cnum)
  money = GetMoney(cnum)
  Lv = GetHeroLv(cnum)
  Penqian = 500000001
  JzPenqian = 500000000
  local ycylmtID = {1321, 1322, 1323, 1324, 1325, 1326, 1327, 1328}
  local Jcycylmt = function(cnum)
    -- upvalues: ycylmtID
    local ifhave = false
    for i = 1, #ycylmtID do
      ifhave = ifhave or GetHench(cnum, 1, ycylmtID[i], 0) > 0
    end
    return ifhave
  end
  local ycyxlmtID = {1931, 1932, 1933, 1934, 1935, 1936, 1937, 1938}
  local Jcycyxlmt = function(cnum)
    -- upvalues: ycyxlmtID
    local ifhave = false
    for i = 1, #ycyxlmtID do
      ifhave = ifhave or GetHench(cnum, 1, ycyxlmtID[i], 0) > 0
    end
    return ifhave
  end
  local ycypxID = {1331, 1332, 1333, 1334, 1335, 1336, 1337, 1338}
  local Jcycypx = function(cnum)
    -- upvalues: ycypxID
    local ifhave = false
    for i = 1, #ycypxID do
      ifhave = ifhave or GetHench(cnum, 1, ycypxID[i], 0) > 0
    end
    return ifhave
  end
  local ycyxpxID = {1941, 1942, 1943, 1944, 1945, 1946, 1947, 1948}
  local Jcycyxpx = function(cnum)
    -- upvalues: ycyxpxID
    local ifhave = false
    for i = 1, #ycyxpxID do
      ifhave = ifhave or GetHench(cnum, 1, ycyxpxID[i], 0) > 0
    end
    return ifhave
  end
  local ycyzhuID = {1341, 1342, 1343, 1344, 1345, 1346, 1347, 1348}
  local Jcycyzhu = function(cnum)
    -- upvalues: ycyzhuID
    local ifhave = false
    for i = 1, #ycyzhuID do
      ifhave = ifhave or GetHench(cnum, 1, ycyzhuID[i], 0) > 0
    end
    return ifhave
  end
  local ycybjsID = {1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958}
  local Jcycybjs = function(cnum)
    -- upvalues: ycybjsID
    local ifhave = false
    for i = 1, #ycybjsID do
      ifhave = ifhave or GetHench(cnum, 1, ycybjsID[i], 0) > 0
    end
    return ifhave
  end
  local ycyniaoID = {1351, 1352, 1353, 1354, 1355, 1356, 1357, 1358}
  local Jcycyniao = function(cnum)
    -- upvalues: ycyniaoID
    local ifhave = false
    for i = 1, #ycyniaoID do
      ifhave = ifhave or GetHench(cnum, 1, ycyniaoID[i], 0) > 0
    end
    return ifhave
  end
  local ycytuyingID = {1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968}
  local Jcycytuying = function(cnum)
    -- upvalues: ycytuyingID
    local ifhave = false
    for i = 1, #ycytuyingID do
      ifhave = ifhave or GetHench(cnum, 1, ycytuyingID[i], 0) > 0
    end
    return ifhave
  end
  local ycytuziID = {1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368}
  local Jcycytuzi = function(cnum)
    -- upvalues: ycytuziID
    local ifhave = false
    for i = 1, #ycytuziID do
      ifhave = ifhave or GetHench(cnum, 1, ycytuziID[i], 0) > 0
    end
    return ifhave
  end
  local ycyxhmID = {1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978}
  local Jcycyxhm = function(cnum)
    -- upvalues: ycyxhmID
    local ifhave = false
    for i = 1, #ycyxhmID do
      ifhave = ifhave or GetHench(cnum, 1, ycyxhmID[i], 0) > 0
    end
    return ifhave
  end
  local ycydouziID = {1371, 1372, 1373, 1374, 1375, 1376, 1377, 1378}
  local Jcycydouzi = function(cnum)
    -- upvalues: ycydouziID
    local ifhave = false
    for i = 1, #ycydouziID do
      ifhave = ifhave or GetHench(cnum, 1, ycydouziID[i], 0) > 0
    end
    return ifhave
  end
  local ycylanyeID = {1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988}
  local Jcycylanye = function(cnum)
    -- upvalues: ycylanyeID
    local ifhave = false
    for i = 1, #ycylanyeID do
      ifhave = ifhave or GetHench(cnum, 1, ycylanyeID[i], 0) > 0
    end
    return ifhave
  end
  local ycybangID = {1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388}
  local Jcycybang = function(cnum)
    -- upvalues: ycybangID
    local ifhave = false
    for i = 1, #ycybangID do
      ifhave = ifhave or GetHench(cnum, 1, ycybangID[i], 0) > 0
    end
    return ifhave
  end
  local ycyshinuID = {1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998}
  local Jcycyshinu = function(cnum)
    -- upvalues: ycyshinuID
    local ifhave = false
    for i = 1, #ycyshinuID do
      ifhave = ifhave or GetHench(cnum, 1, ycyshinuID[i], 0) > 0
    end
    return ifhave
  end
  local ycykanbuID = {1391, 1392, 1393, 1394, 1395, 1396, 1397, 1398}
  local Jcycykanbu = function(cnum)
    -- upvalues: ycykanbuID
    local ifhave = false
    for i = 1, #ycykanbuID do
      ifhave = ifhave or GetHench(cnum, 1, ycykanbuID[i], 0) > 0
    end
    return ifhave
  end
  local ycyxkanbuID = {2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008}
  local Jcycyxkanbu = function(cnum)
    -- upvalues: ycyxkanbuID
    local ifhave = false
    for i = 1, #ycyxkanbuID do
      ifhave = ifhave or GetHench(cnum, 1, ycyxkanbuID[i], 0) > 0
    end
    return ifhave
  end
  if req == 1 then
    if GetHeroLv(cnum) > 149 then
      return 9, 0, "Mude o Level do seu BOSS\n\nInforma珲es:\n\nAten玢oo quando mudar o level de um boss n鉶 tenha dois do mesmo tipo no inventario de cores, pois um pode desaparecer.\n\[Mudar Level]Quando mudar o level o tipo pode mudar.", 1000, "[TIPO] Dragon", 1002, "[TIPO] Animal", 1003, "[TIPO] Bird", 1001, "[TIPO] Devil", 1004, "[TIPO] Insect", 1005, "[TIPO] Plant", 1006, "[TIPO] Mysteri", 1007, "[TIPO] Metal"
    else
      return 1, 0, "[Error]\n\nOla tudo-bem:" .. name .. "..O seu level e insuficiente!!\n\nnao podemos oferecer um suporte para este level.:" .. Lv .. "\n\nVenha quanto tiver level 150+.."
    end
  elseif req == 1000 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 3, 0, "Mudar o Level do tipo dragon", 2, "Mudar Level: NeoMashimaro", 3, "Mudar Level: SmallMashimaro"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 2 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 9, 0, "Mudar o Level do Tipo Dragon", 21, "Mudanca de Level:[Lv165]NeoMashimaro", 22, "Mudanca de Level:[Lv170]NeoMashimaro", 23, "Mudanca de Level:[Lv175]NeoMashimaro", 24, "Mudanca de Level:[Lv180]NeoMashimaro", 25, "Mudanca de Level:[Lv185]NeoMashimaro", 26, "Mudanca de Level:[Lv190]NeoMashimaro", 27, "Mudanca de Level:[Lv195]NeoMashimaro", 28, "Mudanca de Level:[Lv200]NeoMashimaro"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 21 then
    if Jcycylmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1321, -1)
      AddHench(cnum, 1322, -1)
      AddHench(cnum, 1323, -1)
      AddHench(cnum, 1324, -1)
      AddHench(cnum, 1325, -1)
      AddHench(cnum, 1326, -1)
      AddHench(cnum, 1327, -1)
      AddHench(cnum, 1328, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1321, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到165的[NeoMashimaro]"
    end
  elseif req == 22 then
    if Jcycylmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1321, -1)
      AddHench(cnum, 1322, -1)
      AddHench(cnum, 1323, -1)
      AddHench(cnum, 1324, -1)
      AddHench(cnum, 1325, -1)
      AddHench(cnum, 1326, -1)
      AddHench(cnum, 1327, -1)
      AddHench(cnum, 1328, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1322, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到170的[NeoMashimaro]"
    end
  elseif req == 23 then
    if Jcycylmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1321, -1)
      AddHench(cnum, 1322, -1)
      AddHench(cnum, 1323, -1)
      AddHench(cnum, 1324, -1)
      AddHench(cnum, 1325, -1)
      AddHench(cnum, 1326, -1)
      AddHench(cnum, 1327, -1)
      AddHench(cnum, 1328, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1323, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMashimaro],ou voce nao tem o gp necessario"
    end
  elseif req == 24 then
    if Jcycylmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1321, -1)
      AddHench(cnum, 1322, -1)
      AddHench(cnum, 1323, -1)
      AddHench(cnum, 1324, -1)
      AddHench(cnum, 1325, -1)
      AddHench(cnum, 1326, -1)
      AddHench(cnum, 1327, -1)
      AddHench(cnum, 1328, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1324, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到180的[NeoMashimaro]"
    end
  elseif req == 25 then
    if Jcycylmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1321, -1)
      AddHench(cnum, 1322, -1)
      AddHench(cnum, 1323, -1)
      AddHench(cnum, 1324, -1)
      AddHench(cnum, 1325, -1)
      AddHench(cnum, 1326, -1)
      AddHench(cnum, 1327, -1)
      AddHench(cnum, 1328, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1325, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到185的[NeoMashimaro]"
    end
  elseif req == 26 then
    if Jcycylmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1321, -1)
      AddHench(cnum, 1322, -1)
      AddHench(cnum, 1323, -1)
      AddHench(cnum, 1324, -1)
      AddHench(cnum, 1325, -1)
      AddHench(cnum, 1326, -1)
      AddHench(cnum, 1327, -1)
      AddHench(cnum, 1328, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1326, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到190的[NeoMashimaro]"
    end
  elseif req == 27 then
    if Jcycylmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1321, -1)
      AddHench(cnum, 1322, -1)
      AddHench(cnum, 1323, -1)
      AddHench(cnum, 1324, -1)
      AddHench(cnum, 1325, -1)
      AddHench(cnum, 1326, -1)
      AddHench(cnum, 1327, -1)
      AddHench(cnum, 1328, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1327, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到195的[NeoMashimaro]"
    end
  elseif req == 28 then
    if Jcycylmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1321, -1)
      AddHench(cnum, 1322, -1)
      AddHench(cnum, 1323, -1)
      AddHench(cnum, 1324, -1)
      AddHench(cnum, 1325, -1)
      AddHench(cnum, 1326, -1)
      AddHench(cnum, 1327, -1)
      AddHench(cnum, 1328, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1328, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到200的[NeoMashimaro]"
    end
  elseif req == 3 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 9, 0, "Mudar Level do Tipo Dragon", 31, "Mudanca de Level:[Lv165]SmallMashimaro", 32, "Mudanca de Level:[Lv170]SmallMashimaro", 33, "Mudanca de Level:[Lv175]SmallMashimaro", 34, "Mudanca de Level:[Lv180]SmallMashimaro", 35, "Mudanca de Level:[Lv185]SmallMashimaro", 36, "Mudanca de Level:[Lv190]SmallMashimaro", 37, "Mudanca de Level:[Lv195]SmallMashimaro", 38, "Mudanca de Level:[Lv200]SmallMashimaro"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 31 then
    if Jcycyxlmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1931, -1)
      AddHench(cnum, 1932, -1)
      AddHench(cnum, 1933, -1)
      AddHench(cnum, 1934, -1)
      AddHench(cnum, 1935, -1)
      AddHench(cnum, 1936, -1)
      AddHench(cnum, 1937, -1)
      AddHench(cnum, 1938, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1931, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[SmallMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到165的[SmallMashimaro]"
    end
  elseif req == 32 then
    if Jcycyxlmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1931, -1)
      AddHench(cnum, 1932, -1)
      AddHench(cnum, 1933, -1)
      AddHench(cnum, 1934, -1)
      AddHench(cnum, 1935, -1)
      AddHench(cnum, 1936, -1)
      AddHench(cnum, 1937, -1)
      AddHench(cnum, 1938, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1932, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[SmallMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到170的[SmallMashimaro]"
    end
  elseif req == 33 then
    if Jcycyxlmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1931, -1)
      AddHench(cnum, 1932, -1)
      AddHench(cnum, 1933, -1)
      AddHench(cnum, 1934, -1)
      AddHench(cnum, 1935, -1)
      AddHench(cnum, 1936, -1)
      AddHench(cnum, 1937, -1)
      AddHench(cnum, 1938, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1933, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[SmallMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到175的[SmallMashimaro]"
    end
  elseif req == 34 then
    if Jcycyxlmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1931, -1)
      AddHench(cnum, 1932, -1)
      AddHench(cnum, 1933, -1)
      AddHench(cnum, 1934, -1)
      AddHench(cnum, 1935, -1)
      AddHench(cnum, 1936, -1)
      AddHench(cnum, 1937, -1)
      AddHench(cnum, 1938, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1934, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[SmallMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到180的[SmallMashimaro]"
    end
  elseif req == 35 then
    if Jcycyxlmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1931, -1)
      AddHench(cnum, 1932, -1)
      AddHench(cnum, 1933, -1)
      AddHench(cnum, 1934, -1)
      AddHench(cnum, 1935, -1)
      AddHench(cnum, 1936, -1)
      AddHench(cnum, 1937, -1)
      AddHench(cnum, 1938, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1935, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[SmallMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到185的[SmallMashimaro]"
    end
  elseif req == 36 then
    if Jcycyxlmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1931, -1)
      AddHench(cnum, 1932, -1)
      AddHench(cnum, 1933, -1)
      AddHench(cnum, 1934, -1)
      AddHench(cnum, 1935, -1)
      AddHench(cnum, 1936, -1)
      AddHench(cnum, 1937, -1)
      AddHench(cnum, 1938, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1936, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[SmallMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到190的[SmallMashimaro]"
    end
  elseif req == 37 then
    if Jcycyxlmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1931, -1)
      AddHench(cnum, 1932, -1)
      AddHench(cnum, 1933, -1)
      AddHench(cnum, 1934, -1)
      AddHench(cnum, 1935, -1)
      AddHench(cnum, 1936, -1)
      AddHench(cnum, 1937, -1)
      AddHench(cnum, 1938, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1937, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[SmallMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到195的[SmallMashimaro]"
    end
  elseif req == 38 then
    if Jcycyxlmt(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1931, -1)
      AddHench(cnum, 1932, -1)
      AddHench(cnum, 1933, -1)
      AddHench(cnum, 1934, -1)
      AddHench(cnum, 1935, -1)
      AddHench(cnum, 1936, -1)
      AddHench(cnum, 1937, -1)
      AddHench(cnum, 1938, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1938, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[SmallMashimaro],ou voce nao tem o gp necessario\n\n所以兑换不到200的[SmallMashimaro]"
    end
  elseif req == 1001 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 3, 0, "Mudar level tipo Devil", 102, "Mudar Level: Crabs", 103, "Mudar Level: Small Crabs"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 102 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 9, 0, "Mudar Level do Tipo Devil", 121, "Mudanca de Level:[Lv165]Crabs", 122, "Mudanca de Level:[Lv170]Crabs", 123, "Mudanca de Level:[Lv175]Crabs", 124, "Mudanca de Level:[Lv180]Crabs", 125, "Mudanca de Level:[Lv185]Crabs", 126, "Mudanca de Level:[Lv190]Crabs", 127, "Mudanca de Level:[Lv195]Crabs", 128, "Mudanca de Level:[Lv200]Crabs"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 121 then
    if Jcycypx(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1331, -1)
      AddHench(cnum, 1332, -1)
      AddHench(cnum, 1333, -1)
      AddHench(cnum, 1334, -1)
      AddHench(cnum, 1335, -1)
      AddHench(cnum, 1336, -1)
      AddHench(cnum, 1337, -1)
      AddHench(cnum, 1338, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1331, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到165的[Crabs]"
    end
  elseif req == 122 then
    if Jcycypx(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1331, -1)
      AddHench(cnum, 1332, -1)
      AddHench(cnum, 1333, -1)
      AddHench(cnum, 1334, -1)
      AddHench(cnum, 1335, -1)
      AddHench(cnum, 1336, -1)
      AddHench(cnum, 1337, -1)
      AddHench(cnum, 1338, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1332, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到170的[Crabs]"
    end
  elseif req == 123 then
    if Jcycypx(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1331, -1)
      AddHench(cnum, 1332, -1)
      AddHench(cnum, 1333, -1)
      AddHench(cnum, 1334, -1)
      AddHench(cnum, 1335, -1)
      AddHench(cnum, 1336, -1)
      AddHench(cnum, 1337, -1)
      AddHench(cnum, 1338, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1333, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到175的[Crabs]"
    end
  elseif req == 124 then
    if Jcycypx(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1331, -1)
      AddHench(cnum, 1332, -1)
      AddHench(cnum, 1333, -1)
      AddHench(cnum, 1334, -1)
      AddHench(cnum, 1335, -1)
      AddHench(cnum, 1336, -1)
      AddHench(cnum, 1337, -1)
      AddHench(cnum, 1338, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1334, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到180的[Crabs]"
    end
  elseif req == 125 then
    if Jcycypx(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1331, -1)
      AddHench(cnum, 1332, -1)
      AddHench(cnum, 1333, -1)
      AddHench(cnum, 1334, -1)
      AddHench(cnum, 1335, -1)
      AddHench(cnum, 1336, -1)
      AddHench(cnum, 1337, -1)
      AddHench(cnum, 1338, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1335, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到185的[Crabs]"
    end
  elseif req == 126 then
    if Jcycypx(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1331, -1)
      AddHench(cnum, 1332, -1)
      AddHench(cnum, 1333, -1)
      AddHench(cnum, 1334, -1)
      AddHench(cnum, 1335, -1)
      AddHench(cnum, 1336, -1)
      AddHench(cnum, 1337, -1)
      AddHench(cnum, 1338, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1336, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到190的[Crabs]"
    end
  elseif req == 127 then
    if Jcycypx(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1331, -1)
      AddHench(cnum, 1332, -1)
      AddHench(cnum, 1333, -1)
      AddHench(cnum, 1334, -1)
      AddHench(cnum, 1335, -1)
      AddHench(cnum, 1336, -1)
      AddHench(cnum, 1337, -1)
      AddHench(cnum, 1338, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1337, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到195的[Crabs]"
    end
  elseif req == 128 then
    if Jcycypx(cnum) and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1331, -1)
      AddHench(cnum, 1332, -1)
      AddHench(cnum, 1333, -1)
      AddHench(cnum, 1334, -1)
      AddHench(cnum, 1335, -1)
      AddHench(cnum, 1336, -1)
      AddHench(cnum, 1337, -1)
      AddHench(cnum, 1338, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1338, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到200的[Crabs]"
    end
  elseif req == 103 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 9, 0, "Mudar Level do Tipo Devil", 131, "Mudanca de Level:[Lv165]Small Crabs", 132, "Mudanca de Level:[Lv170]Small Crabs", 133, "Mudanca de Level:[Lv175]Small Crabs", 134, "Mudanca de Level:[Lv180]Small Crabs", 135, "Mudanca de Level:[Lv185]Small Crabs", 136, "Mudanca de Level:[Lv190]Small Crabs", 137, "Mudanca de Level:[Lv195]Small Crabs", 138, "Mudanca de Level:[Lv200]Small Crabs"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 131 then
    if Jcycyxpx(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1941, -1)
      AddHench(cnum, 1942, -1)
      AddHench(cnum, 1943, -1)
      AddHench(cnum, 1944, -1)
      AddHench(cnum, 1945, -1)
      AddHench(cnum, 1946, -1)
      AddHench(cnum, 1947, -1)
      AddHench(cnum, 1948, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1941, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Small Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到165的[Small Crabs]"
    end
  elseif req == 132 then
    if Jcycyxpx(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1941, -1)
      AddHench(cnum, 1942, -1)
      AddHench(cnum, 1943, -1)
      AddHench(cnum, 1944, -1)
      AddHench(cnum, 1945, -1)
      AddHench(cnum, 1946, -1)
      AddHench(cnum, 1947, -1)
      AddHench(cnum, 1948, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1942, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Small Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到170的[Small Crabs]"
    end
  elseif req == 133 then
    if Jcycyxpx(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1941, -1)
      AddHench(cnum, 1942, -1)
      AddHench(cnum, 1943, -1)
      AddHench(cnum, 1944, -1)
      AddHench(cnum, 1945, -1)
      AddHench(cnum, 1946, -1)
      AddHench(cnum, 1947, -1)
      AddHench(cnum, 1948, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1943, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Small Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到175的[Small Crabs]"
    end
  elseif req == 134 then
    if Jcycyxpx(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1941, -1)
      AddHench(cnum, 1942, -1)
      AddHench(cnum, 1943, -1)
      AddHench(cnum, 1944, -1)
      AddHench(cnum, 1945, -1)
      AddHench(cnum, 1946, -1)
      AddHench(cnum, 1947, -1)
      AddHench(cnum, 1948, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1944, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Small Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到180的[Small Crabs]"
    end
  elseif req == 135 then
    if Jcycyxpx(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1941, -1)
      AddHench(cnum, 1942, -1)
      AddHench(cnum, 1943, -1)
      AddHench(cnum, 1944, -1)
      AddHench(cnum, 1945, -1)
      AddHench(cnum, 1946, -1)
      AddHench(cnum, 1947, -1)
      AddHench(cnum, 1948, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1945, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Small Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到185的[Small Crabs]"
    end
  elseif req == 136 then
    if Jcycyxpx(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1941, -1)
      AddHench(cnum, 1942, -1)
      AddHench(cnum, 1943, -1)
      AddHench(cnum, 1944, -1)
      AddHench(cnum, 1945, -1)
      AddHench(cnum, 1946, -1)
      AddHench(cnum, 1947, -1)
      AddHench(cnum, 1948, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1946, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Small Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到190的[Small Crabs]"
    end
  elseif req == 137 then
    if Jcycyxpx(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1941, -1)
      AddHench(cnum, 1942, -1)
      AddHench(cnum, 1943, -1)
      AddHench(cnum, 1944, -1)
      AddHench(cnum, 1945, -1)
      AddHench(cnum, 1946, -1)
      AddHench(cnum, 1947, -1)
      AddHench(cnum, 1948, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1947, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Small Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到195的[Small Crabs]"
    end
  elseif req == 138 then
    if Jcycyxpx(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1941, -1)
      AddHench(cnum, 1942, -1)
      AddHench(cnum, 1943, -1)
      AddHench(cnum, 1944, -1)
      AddHench(cnum, 1945, -1)
      AddHench(cnum, 1946, -1)
      AddHench(cnum, 1947, -1)
      AddHench(cnum, 1948, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1948, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Small Crabs],ou voce nao tem o gp necessario\n\n所以兑换不到200的[Small Crabs]"
    end
  elseif req == 1002 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 3, 0, "Mudar Level do Tipo Animal", 202, "Mudar Level: PigWarp", 203, "Mudar Level: GreenMiniCat"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 202 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 221, "Mudanca de Level:[Lv165]PigWarp", 222, "Mudanca de Level:[Lv170]PigWarp", 223, "Mudanca de Level:[Lv175]PigWarp", 224, "Mudanca de Level:[Lv180]PigWarp", 225, "Mudanca de Level:[Lv185]PigWarp", 226, "Mudanca de Level:[Lv190]PigWarp", 227, "Mudanca de Level:[Lv195]PigWarp", 228, "Mudanca de Level:[Lv200]PigWarp"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 221 then
    if Jcycyzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1341, -1)
      AddHench(cnum, 1342, -1)
      AddHench(cnum, 1343, -1)
      AddHench(cnum, 1344, -1)
      AddHench(cnum, 1345, -1)
      AddHench(cnum, 1346, -1)
      AddHench(cnum, 1347, -1)
      AddHench(cnum, 1348, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1341, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[PigWarp],ou voce nao tem o gp necessario\n\n所以兑换不到165的[PigWarp]"
    end
  elseif req == 222 then
    if Jcycyzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1341, -1)
      AddHench(cnum, 1342, -1)
      AddHench(cnum, 1343, -1)
      AddHench(cnum, 1344, -1)
      AddHench(cnum, 1345, -1)
      AddHench(cnum, 1346, -1)
      AddHench(cnum, 1347, -1)
      AddHench(cnum, 1348, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1342, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[PigWarp],ou voce nao tem o gp necessario\n\n所以兑换不到170的[PigWarp]"
    end
  elseif req == 223 then
    if Jcycyzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1341, -1)
      AddHench(cnum, 1342, -1)
      AddHench(cnum, 1343, -1)
      AddHench(cnum, 1344, -1)
      AddHench(cnum, 1345, -1)
      AddHench(cnum, 1346, -1)
      AddHench(cnum, 1347, -1)
      AddHench(cnum, 1348, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1343, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[PigWarp],ou voce nao tem o gp necessario\n\n所以兑换不到175的[PigWarp]"
    end
  elseif req == 224 then
    if Jcycyzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1341, -1)
      AddHench(cnum, 1342, -1)
      AddHench(cnum, 1343, -1)
      AddHench(cnum, 1344, -1)
      AddHench(cnum, 1345, -1)
      AddHench(cnum, 1346, -1)
      AddHench(cnum, 1347, -1)
      AddHench(cnum, 1348, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1344, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[PigWarp],ou voce nao tem o gp necessario\n\n所以兑换不到180的[PigWarp]"
    end
  elseif req == 225 then
    if Jcycyzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1341, -1)
      AddHench(cnum, 1342, -1)
      AddHench(cnum, 1343, -1)
      AddHench(cnum, 1344, -1)
      AddHench(cnum, 1345, -1)
      AddHench(cnum, 1346, -1)
      AddHench(cnum, 1347, -1)
      AddHench(cnum, 1348, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1345, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[PigWarp],ou voce nao tem o gp necessario\n\n所以兑换不到185的[PigWarp]"
    end
  elseif req == 226 then
    if Jcycyzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1341, -1)
      AddHench(cnum, 1342, -1)
      AddHench(cnum, 1343, -1)
      AddHench(cnum, 1344, -1)
      AddHench(cnum, 1345, -1)
      AddHench(cnum, 1346, -1)
      AddHench(cnum, 1347, -1)
      AddHench(cnum, 1348, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1346, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[PigWarp],ou voce nao tem o gp necessario\n\n所以兑换不到190的[PigWarp]"
    end
  elseif req == 227 then
    if Jcycyzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1341, -1)
      AddHench(cnum, 1342, -1)
      AddHench(cnum, 1343, -1)
      AddHench(cnum, 1344, -1)
      AddHench(cnum, 1345, -1)
      AddHench(cnum, 1346, -1)
      AddHench(cnum, 1347, -1)
      AddHench(cnum, 1348, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1347, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[PigWarp],ou voce nao tem o gp necessario\n\n所以兑换不到195的[PigWarp]"
    end
  elseif req == 228 then
    if Jcycyzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1341, -1)
      AddHench(cnum, 1342, -1)
      AddHench(cnum, 1343, -1)
      AddHench(cnum, 1344, -1)
      AddHench(cnum, 1345, -1)
      AddHench(cnum, 1346, -1)
      AddHench(cnum, 1347, -1)
      AddHench(cnum, 1348, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1348, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[PigWarp],ou voce nao tem o gp necessario\n\n所以兑换不到200的[PigWarp]"
    end
  elseif req == 203 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 231, "Mudanca de Level:[Lv165]GreenMiniCat", 232, "Mudanca de Level:[Lv170]GreenMiniCat", 233, "Mudanca de Level:[Lv175]GreenMiniCat", 234, "Mudanca de Level:[Lv180]GreenMiniCat", 235, "Mudanca de Level:[Lv185]GreenMiniCat", 236, "Mudanca de Level:[Lv190]GreenMiniCat", 237, "Mudanca de Level:[Lv195]GreenMiniCat", 238, "Mudanca de Level:[Lv200]GreenMiniCat"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 231 then
    if Jcycybjs(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1951, -1)
      AddHench(cnum, 1952, -1)
      AddHench(cnum, 1953, -1)
      AddHench(cnum, 1954, -1)
      AddHench(cnum, 1955, -1)
      AddHench(cnum, 1956, -1)
      AddHench(cnum, 1957, -1)
      AddHench(cnum, 1958, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1951, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[GreenMiniCat],ou voce nao tem o gp necessario\n\n所以兑换不到165的[GreenMiniCat]"
    end
  elseif req == 232 then
    if Jcycybjs(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1951, -1)
      AddHench(cnum, 1952, -1)
      AddHench(cnum, 1953, -1)
      AddHench(cnum, 1954, -1)
      AddHench(cnum, 1955, -1)
      AddHench(cnum, 1956, -1)
      AddHench(cnum, 1957, -1)
      AddHench(cnum, 1958, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1952, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[GreenMiniCat],ou voce nao tem o gp necessario\n\n所以兑换不到170的[GreenMiniCat]"
    end
  elseif req == 233 then
    if Jcycybjs(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1951, -1)
      AddHench(cnum, 1952, -1)
      AddHench(cnum, 1953, -1)
      AddHench(cnum, 1954, -1)
      AddHench(cnum, 1955, -1)
      AddHench(cnum, 1956, -1)
      AddHench(cnum, 1957, -1)
      AddHench(cnum, 1958, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1953, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[GreenMiniCat],ou voce nao tem o gp necessario\n\n所以兑换不到175的[GreenMiniCat]"
    end
  elseif req == 234 then
    if Jcycybjs(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1951, -1)
      AddHench(cnum, 1952, -1)
      AddHench(cnum, 1953, -1)
      AddHench(cnum, 1954, -1)
      AddHench(cnum, 1955, -1)
      AddHench(cnum, 1956, -1)
      AddHench(cnum, 1957, -1)
      AddHench(cnum, 1958, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1954, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[GreenMiniCat],ou voce nao tem o gp necessario\n\n所以兑换不到180的[GreenMiniCat]"
    end
  elseif req == 235 then
    if Jcycybjs(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1951, -1)
      AddHench(cnum, 1952, -1)
      AddHench(cnum, 1953, -1)
      AddHench(cnum, 1954, -1)
      AddHench(cnum, 1955, -1)
      AddHench(cnum, 1956, -1)
      AddHench(cnum, 1957, -1)
      AddHench(cnum, 1958, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1955, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[GreenMiniCat],ou voce nao tem o gp necessario\n\n所以兑换不到185的[GreenMiniCat]"
    end
  elseif req == 236 then
    if Jcycybjs(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1951, -1)
      AddHench(cnum, 1952, -1)
      AddHench(cnum, 1953, -1)
      AddHench(cnum, 1954, -1)
      AddHench(cnum, 1955, -1)
      AddHench(cnum, 1956, -1)
      AddHench(cnum, 1957, -1)
      AddHench(cnum, 1958, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1956, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[GreenMiniCat],ou voce nao tem o gp necessario\n\n所以兑换不到190的[GreenMiniCat]"
    end
  elseif req == 237 then
    if Jcycybjs(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1951, -1)
      AddHench(cnum, 1952, -1)
      AddHench(cnum, 1953, -1)
      AddHench(cnum, 1954, -1)
      AddHench(cnum, 1955, -1)
      AddHench(cnum, 1956, -1)
      AddHench(cnum, 1957, -1)
      AddHench(cnum, 1958, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1957, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[GreenMiniCat],ou voce nao tem o gp necessario\n\n所以兑换不到195的[GreenMiniCat]"
    end
  elseif req == 238 then
    if Jcycybjs(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1951, -1)
      AddHench(cnum, 1952, -1)
      AddHench(cnum, 1953, -1)
      AddHench(cnum, 1954, -1)
      AddHench(cnum, 1955, -1)
      AddHench(cnum, 1956, -1)
      AddHench(cnum, 1957, -1)
      AddHench(cnum, 1958, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1958, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[GreenMiniCat],ou voce nao tem o gp necessario\n\n所以兑换不到200的[GreenMiniCat]"
    end
  elseif req == 1003 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 3, 0, "Mudar Level Tipo BIRD", 302, "Mudar Level: NeoMecha", 303, "Mudar Level: BlueSoldierHawk"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 302 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 321, "Mudanca de Level:[Lv165]NeoMecha", 322, "Mudanca de Level:[Lv170]NeoMecha", 323, "Mudanca de Level:[Lv175]NeoMecha", 324, "Mudanca de Level:[Lv180]NeoMecha", 325, "Mudanca de Level:[Lv185]NeoMecha", 326, "Mudanca de Level:[Lv190]NeoMecha", 327, "Mudanca de Level:[Lv195]NeoMecha", 328, "Mudanca de Level:[Lv200]NeoMecha"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 321 then
    if Jcycyniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1351, -1)
      AddHench(cnum, 1352, -1)
      AddHench(cnum, 1353, -1)
      AddHench(cnum, 1354, -1)
      AddHench(cnum, 1355, -1)
      AddHench(cnum, 1356, -1)
      AddHench(cnum, 1357, -1)
      AddHench(cnum, 1358, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1351, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMecha],ou voce nao tem o gp necessario\n\n所以兑换不到165的[NeoMecha]"
    end
  elseif req == 322 then
    if Jcycyniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1351, -1)
      AddHench(cnum, 1352, -1)
      AddHench(cnum, 1353, -1)
      AddHench(cnum, 1354, -1)
      AddHench(cnum, 1355, -1)
      AddHench(cnum, 1356, -1)
      AddHench(cnum, 1357, -1)
      AddHench(cnum, 1358, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1352, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMecha],ou voce nao tem o gp necessario\n\n所以兑换不到170的[NeoMecha]"
    end
  elseif req == 323 then
    if Jcycyniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1351, -1)
      AddHench(cnum, 1352, -1)
      AddHench(cnum, 1353, -1)
      AddHench(cnum, 1354, -1)
      AddHench(cnum, 1355, -1)
      AddHench(cnum, 1356, -1)
      AddHench(cnum, 1357, -1)
      AddHench(cnum, 1358, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1353, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMecha],ou voce nao tem o gp necessario\n\n所以兑换不到175的[NeoMecha]"
    end
  elseif req == 324 then
    if Jcycyniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1351, -1)
      AddHench(cnum, 1352, -1)
      AddHench(cnum, 1353, -1)
      AddHench(cnum, 1354, -1)
      AddHench(cnum, 1355, -1)
      AddHench(cnum, 1356, -1)
      AddHench(cnum, 1357, -1)
      AddHench(cnum, 1358, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1354, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMecha],ou voce nao tem o gp necessario\n\n所以兑换不到180的[NeoMecha]"
    end
  elseif req == 325 then
    if Jcycyniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1351, -1)
      AddHench(cnum, 1352, -1)
      AddHench(cnum, 1353, -1)
      AddHench(cnum, 1354, -1)
      AddHench(cnum, 1355, -1)
      AddHench(cnum, 1356, -1)
      AddHench(cnum, 1357, -1)
      AddHench(cnum, 1358, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1355, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMecha],ou voce nao tem o gp necessario\n\n所以兑换不到185的[NeoMecha]"
    end
  elseif req == 326 then
    if Jcycyniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1351, -1)
      AddHench(cnum, 1352, -1)
      AddHench(cnum, 1353, -1)
      AddHench(cnum, 1354, -1)
      AddHench(cnum, 1355, -1)
      AddHench(cnum, 1356, -1)
      AddHench(cnum, 1357, -1)
      AddHench(cnum, 1358, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1356, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMecha],ou voce nao tem o gp necessario\n\n所以兑换不到190的[NeoMecha]"
    end
  elseif req == 327 then
    if Jcycyniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1351, -1)
      AddHench(cnum, 1352, -1)
      AddHench(cnum, 1353, -1)
      AddHench(cnum, 1354, -1)
      AddHench(cnum, 1355, -1)
      AddHench(cnum, 1356, -1)
      AddHench(cnum, 1357, -1)
      AddHench(cnum, 1358, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1357, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMecha],ou voce nao tem o gp necessario\n\n所以兑换不到195的[NeoMecha]"
    end
  elseif req == 328 then
    if Jcycyniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1351, -1)
      AddHench(cnum, 1352, -1)
      AddHench(cnum, 1353, -1)
      AddHench(cnum, 1354, -1)
      AddHench(cnum, 1355, -1)
      AddHench(cnum, 1356, -1)
      AddHench(cnum, 1357, -1)
      AddHench(cnum, 1358, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1358, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoMecha],ou voce nao tem o gp necessario\n\n所以兑换不到200的[NeoMecha]"
    end
  elseif req == 303 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 331, "Mudanca de Level:[Lv165]BlueSoldierHawk", 332, "Mudanca de Level:[Lv170]BlueSoldierHawk", 333, "Mudanca de Level:[Lv175]BlueSoldierHawk", 334, "Mudanca de Level:[Lv180]BlueSoldierHawk", 335, "Mudanca de Level:[Lv185]BlueSoldierHawk", 336, "Mudanca de Level:[Lv190]BlueSoldierHawk", 337, "Mudanca de Level:[Lv195]BlueSoldierHawk", 338, "Mudanca de Level:[Lv200]BlueSoldierHawk"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 331 then
    if Jcycytuying(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1961, -1)
      AddHench(cnum, 1962, -1)
      AddHench(cnum, 1963, -1)
      AddHench(cnum, 1964, -1)
      AddHench(cnum, 1965, -1)
      AddHench(cnum, 1966, -1)
      AddHench(cnum, 1967, -1)
      AddHench(cnum, 1968, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1961, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[BlueSoldierHawk],ou voce nao tem o gp necessario\n\n所以兑换不到165的[BlueSoldierHawk]"
    end
  elseif req == 332 then
    if Jcycytuying(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1961, -1)
      AddHench(cnum, 1962, -1)
      AddHench(cnum, 1963, -1)
      AddHench(cnum, 1964, -1)
      AddHench(cnum, 1965, -1)
      AddHench(cnum, 1966, -1)
      AddHench(cnum, 1967, -1)
      AddHench(cnum, 1968, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1962, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[BlueSoldierHawk],ou voce nao tem o gp necessario\n\n所以兑换不到170的[BlueSoldierHawk]"
    end
  elseif req == 333 then
    if Jcycytuying(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1961, -1)
      AddHench(cnum, 1962, -1)
      AddHench(cnum, 1963, -1)
      AddHench(cnum, 1964, -1)
      AddHench(cnum, 1965, -1)
      AddHench(cnum, 1966, -1)
      AddHench(cnum, 1967, -1)
      AddHench(cnum, 1968, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1963, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[BlueSoldierHawk],ou voce nao tem o gp necessario\n\n所以兑换不到175的[BlueSoldierHawk]"
    end
  elseif req == 334 then
    if Jcycytuying(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1961, -1)
      AddHench(cnum, 1962, -1)
      AddHench(cnum, 1963, -1)
      AddHench(cnum, 1964, -1)
      AddHench(cnum, 1965, -1)
      AddHench(cnum, 1966, -1)
      AddHench(cnum, 1967, -1)
      AddHench(cnum, 1968, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1964, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[BlueSoldierHawk],ou voce nao tem o gp necessario\n\n所以兑换不到180的[BlueSoldierHawk]"
    end
  elseif req == 335 then
    if Jcycytuying(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1961, -1)
      AddHench(cnum, 1962, -1)
      AddHench(cnum, 1963, -1)
      AddHench(cnum, 1964, -1)
      AddHench(cnum, 1965, -1)
      AddHench(cnum, 1966, -1)
      AddHench(cnum, 1967, -1)
      AddHench(cnum, 1968, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1965, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[BlueSoldierHawk],ou voce nao tem o gp necessario\n\n所以兑换不到185的[BlueSoldierHawk]"
    end
  elseif req == 336 then
    if Jcycytuying(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1961, -1)
      AddHench(cnum, 1962, -1)
      AddHench(cnum, 1963, -1)
      AddHench(cnum, 1964, -1)
      AddHench(cnum, 1965, -1)
      AddHench(cnum, 1966, -1)
      AddHench(cnum, 1967, -1)
      AddHench(cnum, 1968, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1966, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[BlueSoldierHawk],ou voce nao tem o gp necessario\n\n所以兑换不到190的[BlueSoldierHawk]"
    end
  elseif req == 337 then
    if Jcycytuying(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1961, -1)
      AddHench(cnum, 1962, -1)
      AddHench(cnum, 1963, -1)
      AddHench(cnum, 1964, -1)
      AddHench(cnum, 1965, -1)
      AddHench(cnum, 1966, -1)
      AddHench(cnum, 1967, -1)
      AddHench(cnum, 1968, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1967, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[BlueSoldierHawk],ou voce nao tem o gp necessario\n\n所以兑换不到195的[BlueSoldierHawk]"
    end
  elseif req == 338 then
    if Jcycytuying(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1961, -1)
      AddHench(cnum, 1962, -1)
      AddHench(cnum, 1963, -1)
      AddHench(cnum, 1964, -1)
      AddHench(cnum, 1965, -1)
      AddHench(cnum, 1966, -1)
      AddHench(cnum, 1967, -1)
      AddHench(cnum, 1968, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1968, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[BlueSoldierHawk],ou voce nao tem o gp necessario\n\n所以兑换不到200的[BlueSoldierHawk]"
    end
  elseif req == 1004 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 3, 0, "Mudar level tipo insect", 402, "Mudar Level: MortarRabbti", 403, "Mudar Level: LittleRedHood"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 402 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 421, "Mudanca de Level:[Lv165]MortarRabbti", 422, "Mudanca de Level:[Lv170]MortarRabbti", 423, "Mudanca de Level:[Lv175]MortarRabbti", 424, "Mudanca de Level:[Lv180]MortarRabbti", 425, "Mudanca de Level:[Lv185]MortarRabbti", 426, "Mudanca de Level:[Lv190]MortarRabbti", 427, "Mudanca de Level:[Lv195]MortarRabbti", 428, "Mudanca de Level:[Lv200]MortarRabbti"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 421 then
    if Jcycytuzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1361, -1)
      AddHench(cnum, 1362, -1)
      AddHench(cnum, 1363, -1)
      AddHench(cnum, 1364, -1)
      AddHench(cnum, 1365, -1)
      AddHench(cnum, 1366, -1)
      AddHench(cnum, 1367, -1)
      AddHench(cnum, 1368, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1361, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MortarRabbti],ou voce nao tem o gp necessario\n\n所以兑换不到195的[MortarRabbti]"
    end
  elseif req == 422 then
    if Jcycytuzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1361, -1)
      AddHench(cnum, 1362, -1)
      AddHench(cnum, 1363, -1)
      AddHench(cnum, 1364, -1)
      AddHench(cnum, 1365, -1)
      AddHench(cnum, 1366, -1)
      AddHench(cnum, 1367, -1)
      AddHench(cnum, 1368, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1362, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MortarRabbti],ou voce nao tem o gp necessario\n\n所以兑换不到170的[MortarRabbti]"
    end
  elseif req == 423 then
    if Jcycytuzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1361, -1)
      AddHench(cnum, 1362, -1)
      AddHench(cnum, 1363, -1)
      AddHench(cnum, 1364, -1)
      AddHench(cnum, 1365, -1)
      AddHench(cnum, 1366, -1)
      AddHench(cnum, 1367, -1)
      AddHench(cnum, 1368, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1363, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MortarRabbti],ou voce nao tem o gp necessario\n\n所以兑换不到175的[MortarRabbti]"
    end
  elseif req == 424 then
    if Jcycytuzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1361, -1)
      AddHench(cnum, 1362, -1)
      AddHench(cnum, 1363, -1)
      AddHench(cnum, 1364, -1)
      AddHench(cnum, 1365, -1)
      AddHench(cnum, 1366, -1)
      AddHench(cnum, 1367, -1)
      AddHench(cnum, 1368, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1364, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MortarRabbti],ou voce nao tem o gp necessario\n\n所以兑换不到180的[MortarRabbti]"
    end
  elseif req == 425 then
    if Jcycytuzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1361, -1)
      AddHench(cnum, 1362, -1)
      AddHench(cnum, 1363, -1)
      AddHench(cnum, 1364, -1)
      AddHench(cnum, 1365, -1)
      AddHench(cnum, 1366, -1)
      AddHench(cnum, 1367, -1)
      AddHench(cnum, 1368, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1365, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MortarRabbti],ou voce nao tem o gp necessario\n\n所以兑换不到185的[MortarRabbti]"
    end
  elseif req == 426 then
    if Jcycytuzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1361, -1)
      AddHench(cnum, 1362, -1)
      AddHench(cnum, 1363, -1)
      AddHench(cnum, 1364, -1)
      AddHench(cnum, 1365, -1)
      AddHench(cnum, 1366, -1)
      AddHench(cnum, 1367, -1)
      AddHench(cnum, 1368, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1366, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MortarRabbti],ou voce nao tem o gp necessario\n\n所以兑换不到190的[MortarRabbti]"
    end
  elseif req == 427 then
    if Jcycytuzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1361, -1)
      AddHench(cnum, 1362, -1)
      AddHench(cnum, 1363, -1)
      AddHench(cnum, 1364, -1)
      AddHench(cnum, 1365, -1)
      AddHench(cnum, 1366, -1)
      AddHench(cnum, 1367, -1)
      AddHench(cnum, 1368, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1367, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MortarRabbti],ou voce nao tem o gp necessario\n\n所以兑换不到195的[MortarRabbti]"
    end
  elseif req == 428 then
    if Jcycytuzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1361, -1)
      AddHench(cnum, 1362, -1)
      AddHench(cnum, 1363, -1)
      AddHench(cnum, 1364, -1)
      AddHench(cnum, 1365, -1)
      AddHench(cnum, 1366, -1)
      AddHench(cnum, 1367, -1)
      AddHench(cnum, 1368, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1368, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MortarRabbti],ou voce nao tem o gp necessario\n\n所以兑换不到200的[MortarRabbti]"
    end
  elseif req == 403 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 431, "Mudanca de Level:[Lv165]LittleRedHood", 432, "Mudanca de Level:[Lv170]LittleRedHood", 433, "Mudanca de Level:[Lv175]LittleRedHood", 434, "Mudanca de Level:[Lv180]LittleRedHood", 435, "Mudanca de Level:[Lv185]LittleRedHood", 436, "Mudanca de Level:[Lv190]LittleRedHood", 437, "Mudanca de Level:[Lv195]LittleRedHood", 438, "Mudanca de Level:[Lv200]LittleRedHood"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 431 then
    if Jcycyxhm(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1971, -1)
      AddHench(cnum, 1972, -1)
      AddHench(cnum, 1973, -1)
      AddHench(cnum, 1974, -1)
      AddHench(cnum, 1975, -1)
      AddHench(cnum, 1976, -1)
      AddHench(cnum, 1977, -1)
      AddHench(cnum, 1978, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1971, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[LittleRedHood],ou voce nao tem o gp necessario\n\n所以兑换不到165的[LittleRedHood]"
    end
  elseif req == 432 then
    if Jcycyxhm(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1971, -1)
      AddHench(cnum, 1972, -1)
      AddHench(cnum, 1973, -1)
      AddHench(cnum, 1974, -1)
      AddHench(cnum, 1975, -1)
      AddHench(cnum, 1976, -1)
      AddHench(cnum, 1977, -1)
      AddHench(cnum, 1978, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1972, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[LittleRedHood],ou voce nao tem o gp necessario\n\n所以兑换不到170的[LittleRedHood]"
    end
  elseif req == 433 then
    if Jcycyxhm(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1971, -1)
      AddHench(cnum, 1972, -1)
      AddHench(cnum, 1973, -1)
      AddHench(cnum, 1974, -1)
      AddHench(cnum, 1975, -1)
      AddHench(cnum, 1976, -1)
      AddHench(cnum, 1977, -1)
      AddHench(cnum, 1978, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1973, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[LittleRedHood],ou voce nao tem o gp necessario\n\n所以兑换不到175的[LittleRedHood]"
    end
  elseif req == 434 then
    if Jcycyxhm(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1971, -1)
      AddHench(cnum, 1972, -1)
      AddHench(cnum, 1973, -1)
      AddHench(cnum, 1974, -1)
      AddHench(cnum, 1975, -1)
      AddHench(cnum, 1976, -1)
      AddHench(cnum, 1977, -1)
      AddHench(cnum, 1978, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1974, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[LittleRedHood],ou voce nao tem o gp necessario\n\n所以兑换不到180的[LittleRedHood]"
    end
  elseif req == 435 then
    if Jcycyxhm(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1971, -1)
      AddHench(cnum, 1972, -1)
      AddHench(cnum, 1973, -1)
      AddHench(cnum, 1974, -1)
      AddHench(cnum, 1975, -1)
      AddHench(cnum, 1976, -1)
      AddHench(cnum, 1977, -1)
      AddHench(cnum, 1978, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1975, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[LittleRedHood],ou voce nao tem o gp necessario\n\n所以兑换不到185的[LittleRedHood]"
    end
  elseif req == 436 then
    if Jcycyxhm(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1971, -1)
      AddHench(cnum, 1972, -1)
      AddHench(cnum, 1973, -1)
      AddHench(cnum, 1974, -1)
      AddHench(cnum, 1975, -1)
      AddHench(cnum, 1976, -1)
      AddHench(cnum, 1977, -1)
      AddHench(cnum, 1978, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1976, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[LittleRedHood],ou voce nao tem o gp necessario\n\n所以兑换不到190的[LittleRedHood]"
    end
  elseif req == 437 then
    if Jcycyxhm(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1971, -1)
      AddHench(cnum, 1972, -1)
      AddHench(cnum, 1973, -1)
      AddHench(cnum, 1974, -1)
      AddHench(cnum, 1975, -1)
      AddHench(cnum, 1976, -1)
      AddHench(cnum, 1977, -1)
      AddHench(cnum, 1978, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1977, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[LittleRedHood],ou voce nao tem o gp necessario\n\n所以兑换不到195的[LittleRedHood]"
    end
  elseif req == 438 then
    if Jcycyxhm(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1971, -1)
      AddHench(cnum, 1972, -1)
      AddHench(cnum, 1973, -1)
      AddHench(cnum, 1974, -1)
      AddHench(cnum, 1975, -1)
      AddHench(cnum, 1976, -1)
      AddHench(cnum, 1977, -1)
      AddHench(cnum, 1978, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1978, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[LittleRedHood],ou voce nao tem o gp necessario\n\n所以兑换不到200的[LittleRedHood]"
    end
  elseif req == 1005 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 3, 0, "Mudar level tipo Plant", 502, "Mudar Level: FireHornMameo", 503, "Mudar Level: NeoPurpleLeaf"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 502 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 521, "Mudanca de Level:[Lv165]FireHornMameo", 522, "Mudanca de Level:[Lv170]FireHornMameo", 523, "Mudanca de Level:[Lv175]FireHornMameo", 524, "Mudanca de Level:[Lv180]FireHornMameo", 525, "Mudanca de Level:[Lv185]FireHornMameo", 526, "Mudanca de Level:[Lv190]FireHornMameo", 527, "Mudanca de Level:[Lv195]FireHornMameo", 528, "Mudanca de Level:[Lv200]FireHornMameo"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 521 then
    if Jcycydouzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1371, -1)
      AddHench(cnum, 1372, -1)
      AddHench(cnum, 1373, -1)
      AddHench(cnum, 1374, -1)
      AddHench(cnum, 1375, -1)
      AddHench(cnum, 1376, -1)
      AddHench(cnum, 1377, -1)
      AddHench(cnum, 1378, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1371, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireHornMameo],ou voce nao tem o gp necessario\n\n所以兑换不到165的[FireHornMameo]"
    end
  elseif req == 522 then
    if Jcycydouzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1371, -1)
      AddHench(cnum, 1372, -1)
      AddHench(cnum, 1373, -1)
      AddHench(cnum, 1374, -1)
      AddHench(cnum, 1375, -1)
      AddHench(cnum, 1376, -1)
      AddHench(cnum, 1377, -1)
      AddHench(cnum, 1378, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1372, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireHornMameo],ou voce nao tem o gp necessario\n\n所以兑换不到170的[FireHornMameo]"
    end
  elseif req == 523 then
    if Jcycydouzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1371, -1)
      AddHench(cnum, 1372, -1)
      AddHench(cnum, 1373, -1)
      AddHench(cnum, 1374, -1)
      AddHench(cnum, 1375, -1)
      AddHench(cnum, 1376, -1)
      AddHench(cnum, 1377, -1)
      AddHench(cnum, 1378, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1373, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireHornMameo],ou voce nao tem o gp necessario\n\n所以兑换不到175的[FireHornMameo]"
    end
  elseif req == 524 then
    if Jcycydouzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1371, -1)
      AddHench(cnum, 1372, -1)
      AddHench(cnum, 1373, -1)
      AddHench(cnum, 1374, -1)
      AddHench(cnum, 1375, -1)
      AddHench(cnum, 1376, -1)
      AddHench(cnum, 1377, -1)
      AddHench(cnum, 1378, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1374, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireHornMameo],ou voce nao tem o gp necessario\n\n所以兑换不到180的[FireHornMameo]"
    end
  elseif req == 525 then
    if Jcycydouzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1371, -1)
      AddHench(cnum, 1372, -1)
      AddHench(cnum, 1373, -1)
      AddHench(cnum, 1374, -1)
      AddHench(cnum, 1375, -1)
      AddHench(cnum, 1376, -1)
      AddHench(cnum, 1377, -1)
      AddHench(cnum, 1378, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1375, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireHornMameo],ou voce nao tem o gp necessario\n\n所以兑换不到185的[FireHornMameo]"
    end
  elseif req == 526 then
    if Jcycydouzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1371, -1)
      AddHench(cnum, 1372, -1)
      AddHench(cnum, 1373, -1)
      AddHench(cnum, 1374, -1)
      AddHench(cnum, 1375, -1)
      AddHench(cnum, 1376, -1)
      AddHench(cnum, 1377, -1)
      AddHench(cnum, 1378, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1376, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireHornMameo],ou voce nao tem o gp necessario\n\n所以兑换不到190的[FireHornMameo]"
    end
  elseif req == 527 then
    if Jcycydouzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1371, -1)
      AddHench(cnum, 1372, -1)
      AddHench(cnum, 1373, -1)
      AddHench(cnum, 1374, -1)
      AddHench(cnum, 1375, -1)
      AddHench(cnum, 1376, -1)
      AddHench(cnum, 1377, -1)
      AddHench(cnum, 1378, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1377, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireHornMameo],ou voce nao tem o gp necessario\n\n所以兑换不到195的[FireHornMameo]"
    end
  elseif req == 528 then
    if Jcycydouzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1371, -1)
      AddHench(cnum, 1372, -1)
      AddHench(cnum, 1373, -1)
      AddHench(cnum, 1374, -1)
      AddHench(cnum, 1375, -1)
      AddHench(cnum, 1376, -1)
      AddHench(cnum, 1377, -1)
      AddHench(cnum, 1378, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1378, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireHornMameo],ou voce nao tem o gp necessario\n\n所以兑换不到200的[FireHornMameo]"
    end
  elseif req == 503 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 531, "Mudanca de Level:[Lv165]NeoPurpleLeaf", 532, "Mudanca de Level:[Lv170]NeoPurpleLeaf", 533, "Mudanca de Level:[Lv175]NeoPurpleLeaf", 534, "Mudanca de Level:[Lv180]NeoPurpleLeaf", 535, "Mudanca de Level:[Lv185]NeoPurpleLeaf", 536, "Mudanca de Level:[Lv190]NeoPurpleLeaf", 537, "Mudanca de Level:[Lv195]NeoPurpleLeaf", 538, "Mudanca de Level:[Lv200]NeoPurpleLeaf"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 531 then
    if Jcycylanye(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1981, -1)
      AddHench(cnum, 1982, -1)
      AddHench(cnum, 1983, -1)
      AddHench(cnum, 1984, -1)
      AddHench(cnum, 1985, -1)
      AddHench(cnum, 1986, -1)
      AddHench(cnum, 1987, -1)
      AddHench(cnum, 1988, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1981, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPurpleLeaf],ou voce nao tem o gp necessario\n\n所以兑换不到165的[NeoPurpleLeaf]"
    end
  elseif req == 532 then
    if Jcycylanye(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1981, -1)
      AddHench(cnum, 1982, -1)
      AddHench(cnum, 1983, -1)
      AddHench(cnum, 1984, -1)
      AddHench(cnum, 1985, -1)
      AddHench(cnum, 1986, -1)
      AddHench(cnum, 1987, -1)
      AddHench(cnum, 1988, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1982, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPurpleLeaf],ou voce nao tem o gp necessario\n\n所以兑换不到170的[NeoPurpleLeaf]"
    end
  elseif req == 533 then
    if Jcycylanye(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1981, -1)
      AddHench(cnum, 1982, -1)
      AddHench(cnum, 1983, -1)
      AddHench(cnum, 1984, -1)
      AddHench(cnum, 1985, -1)
      AddHench(cnum, 1986, -1)
      AddHench(cnum, 1987, -1)
      AddHench(cnum, 1988, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1983, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPurpleLeaf],ou voce nao tem o gp necessario\n\n所以兑换不到175的[NeoPurpleLeaf]"
    end
  elseif req == 534 then
    if Jcycylanye(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1981, -1)
      AddHench(cnum, 1982, -1)
      AddHench(cnum, 1983, -1)
      AddHench(cnum, 1984, -1)
      AddHench(cnum, 1985, -1)
      AddHench(cnum, 1986, -1)
      AddHench(cnum, 1987, -1)
      AddHench(cnum, 1988, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1984, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPurpleLeaf],ou voce nao tem o gp necessario\n\n所以兑换不到180的[NeoPurpleLeaf]"
    end
  elseif req == 535 then
    if Jcycylanye(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1981, -1)
      AddHench(cnum, 1982, -1)
      AddHench(cnum, 1983, -1)
      AddHench(cnum, 1984, -1)
      AddHench(cnum, 1985, -1)
      AddHench(cnum, 1986, -1)
      AddHench(cnum, 1987, -1)
      AddHench(cnum, 1988, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1985, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPurpleLeaf],ou voce nao tem o gp necessario\n\n所以兑换不到185的[NeoPurpleLeaf]"
    end
  elseif req == 536 then
    if Jcycylanye(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1981, -1)
      AddHench(cnum, 1982, -1)
      AddHench(cnum, 1983, -1)
      AddHench(cnum, 1984, -1)
      AddHench(cnum, 1985, -1)
      AddHench(cnum, 1986, -1)
      AddHench(cnum, 1987, -1)
      AddHench(cnum, 1988, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1986, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPurpleLeaf],ou voce nao tem o gp necessario\n\n所以兑换不到190的[NeoPurpleLeaf]"
    end
  elseif req == 537 then
    if Jcycylanye(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1981, -1)
      AddHench(cnum, 1982, -1)
      AddHench(cnum, 1983, -1)
      AddHench(cnum, 1984, -1)
      AddHench(cnum, 1985, -1)
      AddHench(cnum, 1986, -1)
      AddHench(cnum, 1987, -1)
      AddHench(cnum, 1988, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1987, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPurpleLeaf],ou voce nao tem o gp necessario\n\n所以兑换不到195的[NeoPurpleLeaf]"
    end
  elseif req == 538 then
    if Jcycylanye(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1981, -1)
      AddHench(cnum, 1982, -1)
      AddHench(cnum, 1983, -1)
      AddHench(cnum, 1984, -1)
      AddHench(cnum, 1985, -1)
      AddHench(cnum, 1986, -1)
      AddHench(cnum, 1987, -1)
      AddHench(cnum, 1988, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1988, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPurpleLeaf],ou voce nao tem o gp necessario\n\n所以兑换不到200的[NeoPurpleLeaf]"
    end
  elseif req == 1006 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 3, 0, "Mudar level tipo Mysterio", 602, "Mudar Level: KingPyloQueen", 603, "Mudar Level: NeoBabyStoner"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 602 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 621, "Mudanca de Level:[Lv165]KingPyloQueen", 622, "Mudanca de Level:[Lv170]KingPyloQueen", 623, "Mudanca de Level:[Lv175]KingPyloQueen", 624, "Mudanca de Level:[Lv180]KingPyloQueen", 625, "Mudanca de Level:[Lv185]KingPyloQueen", 626, "Mudanca de Level:[Lv190]KingPyloQueen", 627, "Mudanca de Level:[Lv195]KingPyloQueen", 628, "Mudanca de Level:[Lv200]KingPyloQueen"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 621 then
    if Jcycybang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1381, -1)
      AddHench(cnum, 1382, -1)
      AddHench(cnum, 1383, -1)
      AddHench(cnum, 1384, -1)
      AddHench(cnum, 1385, -1)
      AddHench(cnum, 1386, -1)
      AddHench(cnum, 1387, -1)
      AddHench(cnum, 1388, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1381, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingPyloQueen],ou voce nao tem o gp necessario\n\n所以兑换不到165的[KingPyloQueen]"
    end
  elseif req == 622 then
    if Jcycybang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1381, -1)
      AddHench(cnum, 1382, -1)
      AddHench(cnum, 1383, -1)
      AddHench(cnum, 1384, -1)
      AddHench(cnum, 1385, -1)
      AddHench(cnum, 1386, -1)
      AddHench(cnum, 1387, -1)
      AddHench(cnum, 1388, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1382, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingPyloQueen],ou voce nao tem o gp necessario\n\n所以兑换不到170的[KingPyloQueen]"
    end
  elseif req == 623 then
    if Jcycybang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1381, -1)
      AddHench(cnum, 1382, -1)
      AddHench(cnum, 1383, -1)
      AddHench(cnum, 1384, -1)
      AddHench(cnum, 1385, -1)
      AddHench(cnum, 1386, -1)
      AddHench(cnum, 1387, -1)
      AddHench(cnum, 1388, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1383, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingPyloQueen],ou voce nao tem o gp necessario\n\n所以兑换不到175的[KingPyloQueen]"
    end
  elseif req == 624 then
    if Jcycybang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1381, -1)
      AddHench(cnum, 1382, -1)
      AddHench(cnum, 1383, -1)
      AddHench(cnum, 1384, -1)
      AddHench(cnum, 1385, -1)
      AddHench(cnum, 1386, -1)
      AddHench(cnum, 1387, -1)
      AddHench(cnum, 1388, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1384, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingPyloQueen],ou voce nao tem o gp necessario\n\n所以兑换不到180的[KingPyloQueen]"
    end
  elseif req == 625 then
    if Jcycybang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1381, -1)
      AddHench(cnum, 1382, -1)
      AddHench(cnum, 1383, -1)
      AddHench(cnum, 1384, -1)
      AddHench(cnum, 1385, -1)
      AddHench(cnum, 1386, -1)
      AddHench(cnum, 1387, -1)
      AddHench(cnum, 1388, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1385, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingPyloQueen],ou voce nao tem o gp necessario\n\n所以兑换不到185的[KingPyloQueen]"
    end
  elseif req == 626 then
    if Jcycybang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1381, -1)
      AddHench(cnum, 1382, -1)
      AddHench(cnum, 1383, -1)
      AddHench(cnum, 1384, -1)
      AddHench(cnum, 1385, -1)
      AddHench(cnum, 1386, -1)
      AddHench(cnum, 1387, -1)
      AddHench(cnum, 1388, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1386, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingPyloQueen],ou voce nao tem o gp necessario\n\n所以兑换不到190的[KingPyloQueen]"
    end
  elseif req == 627 then
    if Jcycybang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1381, -1)
      AddHench(cnum, 1382, -1)
      AddHench(cnum, 1383, -1)
      AddHench(cnum, 1384, -1)
      AddHench(cnum, 1385, -1)
      AddHench(cnum, 1386, -1)
      AddHench(cnum, 1387, -1)
      AddHench(cnum, 1388, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1387, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingPyloQueen],ou voce nao tem o gp necessario\n\n所以兑换不到195的[KingPyloQueen]"
    end
  elseif req == 628 then
    if Jcycybang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1381, -1)
      AddHench(cnum, 1382, -1)
      AddHench(cnum, 1383, -1)
      AddHench(cnum, 1384, -1)
      AddHench(cnum, 1385, -1)
      AddHench(cnum, 1386, -1)
      AddHench(cnum, 1387, -1)
      AddHench(cnum, 1388, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1388, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingPyloQueen],ou voce nao tem o gp necessario\n\n所以兑换不到200的[KingPyloQueen]"
    end
  elseif req == 603 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 631, "Mudanca de Level:[Lv165]NeoBabyStoner", 632, "Mudanca de Level:[Lv170]NeoBabyStoner", 633, "Mudanca de Level:[Lv175]NeoBabyStoner", 634, "Mudanca de Level:[Lv180]NeoBabyStoner", 635, "Mudanca de Level:[Lv185]NeoBabyStoner", 636, "Mudanca de Level:[Lv190]NeoBabyStoner", 637, "Mudanca de Level:[Lv195]NeoBabyStoner", 638, "Mudanca de Level:[Lv200]NeoBabyStoner"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 631 then
    if Jcycyshinu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1991, -1)
      AddHench(cnum, 1992, -1)
      AddHench(cnum, 1993, -1)
      AddHench(cnum, 1994, -1)
      AddHench(cnum, 1995, -1)
      AddHench(cnum, 1996, -1)
      AddHench(cnum, 1997, -1)
      AddHench(cnum, 1998, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1991, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoBabyStoner],ou voce nao tem o gp necessario\n\n所以兑换不到165的[NeoBabyStoner]"
    end
  elseif req == 632 then
    if Jcycyshinu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1991, -1)
      AddHench(cnum, 1992, -1)
      AddHench(cnum, 1993, -1)
      AddHench(cnum, 1994, -1)
      AddHench(cnum, 1995, -1)
      AddHench(cnum, 1996, -1)
      AddHench(cnum, 1997, -1)
      AddHench(cnum, 1998, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1992, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoBabyStoner],ou voce nao tem o gp necessario\n\n所以兑换不到170的[NeoBabyStoner]"
    end
  elseif req == 633 then
    if Jcycyshinu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1991, -1)
      AddHench(cnum, 1992, -1)
      AddHench(cnum, 1993, -1)
      AddHench(cnum, 1994, -1)
      AddHench(cnum, 1995, -1)
      AddHench(cnum, 1996, -1)
      AddHench(cnum, 1997, -1)
      AddHench(cnum, 1998, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1993, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoBabyStoner],ou voce nao tem o gp necessario\n\n所以兑换不到175的[NeoBabyStoner]"
    end
  elseif req == 634 then
    if Jcycyshinu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1991, -1)
      AddHench(cnum, 1992, -1)
      AddHench(cnum, 1993, -1)
      AddHench(cnum, 1994, -1)
      AddHench(cnum, 1995, -1)
      AddHench(cnum, 1996, -1)
      AddHench(cnum, 1997, -1)
      AddHench(cnum, 1998, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1994, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoBabyStoner],ou voce nao tem o gp necessario\n\n所以兑换不到180的[NeoBabyStoner]"
    end
  elseif req == 635 then
    if Jcycyshinu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1991, -1)
      AddHench(cnum, 1992, -1)
      AddHench(cnum, 1993, -1)
      AddHench(cnum, 1994, -1)
      AddHench(cnum, 1995, -1)
      AddHench(cnum, 1996, -1)
      AddHench(cnum, 1997, -1)
      AddHench(cnum, 1998, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1995, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoBabyStoner],ou voce nao tem o gp necessario\n\n所以兑换不到185的[NeoBabyStoner]"
    end
  elseif req == 636 then
    if Jcycyshinu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1991, -1)
      AddHench(cnum, 1992, -1)
      AddHench(cnum, 1993, -1)
      AddHench(cnum, 1994, -1)
      AddHench(cnum, 1995, -1)
      AddHench(cnum, 1996, -1)
      AddHench(cnum, 1997, -1)
      AddHench(cnum, 1998, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1996, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoBabyStoner],ou voce nao tem o gp necessario\n\n所以兑换不到190的[NeoBabyStoner]"
    end
  elseif req == 637 then
    if Jcycyshinu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1991, -1)
      AddHench(cnum, 1992, -1)
      AddHench(cnum, 1993, -1)
      AddHench(cnum, 1994, -1)
      AddHench(cnum, 1995, -1)
      AddHench(cnum, 1996, -1)
      AddHench(cnum, 1997, -1)
      AddHench(cnum, 1998, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1997, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoBabyStoner],ou voce nao tem o gp necessario\n\n所以兑换不到195的[NeoBabyStoner]"
    end
  elseif req == 638 then
    if Jcycyshinu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1991, -1)
      AddHench(cnum, 1992, -1)
      AddHench(cnum, 1993, -1)
      AddHench(cnum, 1994, -1)
      AddHench(cnum, 1995, -1)
      AddHench(cnum, 1996, -1)
      AddHench(cnum, 1997, -1)
      AddHench(cnum, 1998, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1998, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoBabyStoner],ou voce nao tem o gp necessario\n\n所以兑换不到200的[NeoBabyStoner]"
    end
  elseif req == 1007 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 3, 0, "Mudar level tipo Metal", 702, "Mudar Level: KingKambu", 703, "Mudar Level: NeoSmallKambu"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 702 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 721, "Mudanca de Level:[Lv165]KingKambu", 722, "Mudanca de Level:[Lv170]KingKambu", 723, "Mudanca de Level:[Lv175]KingKambu", 724, "Mudanca de Level:[Lv180]KingKambu", 725, "Mudanca de Level:[Lv185]KingKambu", 726, "Mudanca de Level:[Lv190]KingKambu", 727, "Mudanca de Level:[Lv195]KingKambu", 728, "Mudanca de Level:[Lv200]KingKambu"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 721 then
    if Jcycykanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1391, -1)
      AddHench(cnum, 1392, -1)
      AddHench(cnum, 1393, -1)
      AddHench(cnum, 1394, -1)
      AddHench(cnum, 1395, -1)
      AddHench(cnum, 1396, -1)
      AddHench(cnum, 1397, -1)
      AddHench(cnum, 1398, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1391, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingKambu],ou voce nao tem o gp necessario\n\n所以兑换不到165的[KingKambu]"
    end
  elseif req == 722 then
    if Jcycykanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1391, -1)
      AddHench(cnum, 1392, -1)
      AddHench(cnum, 1393, -1)
      AddHench(cnum, 1394, -1)
      AddHench(cnum, 1395, -1)
      AddHench(cnum, 1396, -1)
      AddHench(cnum, 1397, -1)
      AddHench(cnum, 1398, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1392, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingKambu],ou voce nao tem o gp necessario\n\n所以兑换不到170的[KingKambu]"
    end
  elseif req == 723 then
    if Jcycykanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1391, -1)
      AddHench(cnum, 1392, -1)
      AddHench(cnum, 1393, -1)
      AddHench(cnum, 1394, -1)
      AddHench(cnum, 1395, -1)
      AddHench(cnum, 1396, -1)
      AddHench(cnum, 1397, -1)
      AddHench(cnum, 1398, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1393, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingKambu],ou voce nao tem o gp necessario\n\n所以兑换不到175的[KingKambu]"
    end
  elseif req == 724 then
    if Jcycykanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1391, -1)
      AddHench(cnum, 1392, -1)
      AddHench(cnum, 1393, -1)
      AddHench(cnum, 1394, -1)
      AddHench(cnum, 1395, -1)
      AddHench(cnum, 1396, -1)
      AddHench(cnum, 1397, -1)
      AddHench(cnum, 1398, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1394, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingKambu],ou voce nao tem o gp necessario\n\n所以兑换不到180的[KingKambu]"
    end
  elseif req == 725 then
    if Jcycykanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1391, -1)
      AddHench(cnum, 1392, -1)
      AddHench(cnum, 1393, -1)
      AddHench(cnum, 1394, -1)
      AddHench(cnum, 1395, -1)
      AddHench(cnum, 1396, -1)
      AddHench(cnum, 1397, -1)
      AddHench(cnum, 1398, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1395, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingKambu],ou voce nao tem o gp necessario\n\n所以兑换不到185的[KingKambu]"
    end
  elseif req == 726 then
    if Jcycykanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1391, -1)
      AddHench(cnum, 1392, -1)
      AddHench(cnum, 1393, -1)
      AddHench(cnum, 1394, -1)
      AddHench(cnum, 1395, -1)
      AddHench(cnum, 1396, -1)
      AddHench(cnum, 1397, -1)
      AddHench(cnum, 1398, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1396, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingKambu],ou voce nao tem o gp necessario\n\n所以兑换不到190的[KingKambu]"
    end
  elseif req == 727 then
    if Jcycykanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1391, -1)
      AddHench(cnum, 1392, -1)
      AddHench(cnum, 1393, -1)
      AddHench(cnum, 1394, -1)
      AddHench(cnum, 1395, -1)
      AddHench(cnum, 1396, -1)
      AddHench(cnum, 1397, -1)
      AddHench(cnum, 1398, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1397, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingKambu],ou voce nao tem o gp necessario\n\n所以兑换不到195的[KingKambu]"
    end
  elseif req == 728 then
    if Jcycykanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1391, -1)
      AddHench(cnum, 1392, -1)
      AddHench(cnum, 1393, -1)
      AddHench(cnum, 1394, -1)
      AddHench(cnum, 1395, -1)
      AddHench(cnum, 1396, -1)
      AddHench(cnum, 1397, -1)
      AddHench(cnum, 1398, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1398, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingKambu],ou voce nao tem o gp necessario\n\n所以兑换不到200的[KingKambu]"
    end
  elseif req == 703 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Mudar Level Tipo BIRD", 731, "Mudanca de Level:[Lv165]NeoSmallKambu", 732, "Mudanca de Level:[Lv170]NeoSmallKambu", 733, "Mudanca de Level:[Lv175]NeoSmallKambu", 734, "Mudanca de Level:[Lv180]NeoSmallKambu", 735, "Mudanca de Level:[Lv185]NeoSmallKambu", 736, "Mudanca de Level:[Lv190]NeoSmallKambu", 737, "Mudanca de Level:[Lv195]NeoSmallKambu", 738, "Mudanca de Level:[Lv200]NeoSmallKambu"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 731 then
    if Jcycyxkanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 2001, -1)
      AddHench(cnum, 2002, -1)
      AddHench(cnum, 2003, -1)
      AddHench(cnum, 2004, -1)
      AddHench(cnum, 2005, -1)
      AddHench(cnum, 2006, -1)
      AddHench(cnum, 2007, -1)
      AddHench(cnum, 2008, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 2001, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoSmallKambu],ou voce nao tem o gp necessario\n\n所以兑换不到165的[NeoSmallKambu]"
    end
  elseif req == 732 then
    if Jcycyxkanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 2001, -1)
      AddHench(cnum, 2002, -1)
      AddHench(cnum, 2003, -1)
      AddHench(cnum, 2004, -1)
      AddHench(cnum, 2005, -1)
      AddHench(cnum, 2006, -1)
      AddHench(cnum, 2007, -1)
      AddHench(cnum, 2008, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 2002, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoSmallKambu],ou voce nao tem o gp necessario\n\n所以兑换不到170的[NeoSmallKambu]"
    end
  elseif req == 733 then
    if Jcycyxkanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 2001, -1)
      AddHench(cnum, 2002, -1)
      AddHench(cnum, 2003, -1)
      AddHench(cnum, 2004, -1)
      AddHench(cnum, 2005, -1)
      AddHench(cnum, 2006, -1)
      AddHench(cnum, 2007, -1)
      AddHench(cnum, 2008, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 2003, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoSmallKambu],ou voce nao tem o gp necessario\n\n所以兑换不到175的[NeoSmallKambu]"
    end
  elseif req == 734 then
    if Jcycyxkanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 2001, -1)
      AddHench(cnum, 2002, -1)
      AddHench(cnum, 2003, -1)
      AddHench(cnum, 2004, -1)
      AddHench(cnum, 2005, -1)
      AddHench(cnum, 2006, -1)
      AddHench(cnum, 2007, -1)
      AddHench(cnum, 2008, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 2004, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoSmallKambu],ou voce nao tem o gp necessario\n\n所以兑换不到180的[NeoSmallKambu]"
    end
  elseif req == 735 then
    if Jcycyxkanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 2001, -1)
      AddHench(cnum, 2002, -1)
      AddHench(cnum, 2003, -1)
      AddHench(cnum, 2004, -1)
      AddHench(cnum, 2005, -1)
      AddHench(cnum, 2006, -1)
      AddHench(cnum, 2007, -1)
      AddHench(cnum, 2008, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 2005, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoSmallKambu],ou voce nao tem o gp necessario\n\n所以兑换不到185的[NeoSmallKambu]"
    end
  elseif req == 736 then
    if Jcycyxkanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 2001, -1)
      AddHench(cnum, 2002, -1)
      AddHench(cnum, 2003, -1)
      AddHench(cnum, 2004, -1)
      AddHench(cnum, 2005, -1)
      AddHench(cnum, 2006, -1)
      AddHench(cnum, 2007, -1)
      AddHench(cnum, 2008, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 2006, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoSmallKambu],ou voce nao tem o gp necessario\n\n所以兑换不到190的[NeoSmallKambu]"
    end
  elseif req == 737 then
    if Jcycyxkanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 2001, -1)
      AddHench(cnum, 2002, -1)
      AddHench(cnum, 2003, -1)
      AddHench(cnum, 2004, -1)
      AddHench(cnum, 2005, -1)
      AddHench(cnum, 2006, -1)
      AddHench(cnum, 2007, -1)
      AddHench(cnum, 2008, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 2007, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoSmallKambu],ou voce nao tem o gp necessario\n\n所以兑换不到195的[NeoSmallKambu]"
    end
  elseif req == 738 then
    if Jcycyxkanbu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 2001, -1)
      AddHench(cnum, 2002, -1)
      AddHench(cnum, 2003, -1)
      AddHench(cnum, 2004, -1)
      AddHench(cnum, 2005, -1)
      AddHench(cnum, 2006, -1)
      AddHench(cnum, 2007, -1)
      AddHench(cnum, 2008, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 2008, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "恭喜!兑换成功^^"
    end
  else
    return 1, 0, "Error!\n\nNao achamos nenhum[NeoSmallKambu],ou voce nao tem o gp necessario\n\n所以兑换不到200的[NeoSmallKambu]"
  end
  return 0
end


