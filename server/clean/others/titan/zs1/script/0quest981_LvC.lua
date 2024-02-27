NPC_QUEST_981 = function(cnum, reqNumber)
  local resultmsg, req, name, type = nil
  req = reqNumber
  name = GetHeroName(cnum)
  type = GetHeroType(cnum)
  money = GetMoney(cnum)
  Lv = GetHeroLv(cnum)
  Penqian = 500000001
  JzPenqian = 500000000
  local taimingID = {1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308}
  local Jctaiming = function(cnum)
    -- upvalues: taimingID
    local ifhave = false
    for i = 1, #taimingID do
      ifhave = ifhave or GetHench(cnum, 1, taimingID[i], 0) > 0
    end
    return ifhave
  end
  local yingziID = {1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318}
  local Jcyingzi = function(cnum)
    -- upvalues: yingziID
    local ifhave = false
    for i = 1, #yingziID do
      ifhave = ifhave or GetHench(cnum, 1, yingziID[i], 0) > 0
    end
    return ifhave
  end
  local renzheguiID = {1481, 1482, 1483, 1484, 1485, 1486, 1487, 1878}
  local Jcrenzhegui = function(cnum)
    -- upvalues: renzheguiID
    local ifhave = false
    for i = 1, #renzheguiID do
      ifhave = ifhave or GetHench(cnum, 1, renzheguiID[i], 0) > 0
    end
    return ifhave
  end
  local yanjingsheID = {1491, 1492, 1493, 1494, 1495, 1496, 1497, 1879}
  local Jcyanjingshe = function(cnum)
    -- upvalues: yanjingsheID
    local ifhave = false
    for i = 1, #yanjingsheID do
      ifhave = ifhave or GetHench(cnum, 1, yanjingsheID[i], 0) > 0
    end
    return ifhave
  end
  local jihuolongID = {1401, 1402, 1403, 1404, 1405, 1406, 1407, 1914}
  local Jcjihuolong = function(cnum)
    -- upvalues: jihuolongID
    local ifhave = false
    for i = 1, #jihuolongID do
      ifhave = ifhave or GetHench(cnum, 1, jihuolongID[i], 0) > 0
    end
    return ifhave
  end
  local bianfumoID = {1411, 1412, 1413, 1414, 1415, 1416, 1417, 1915}
  local Jcbianfumo = function(cnum)
    -- upvalues: bianfumoID
    local ifhave = false
    for i = 1, #bianfumoID do
      ifhave = ifhave or GetHench(cnum, 1, bianfumoID[i], 0) > 0
    end
    return ifhave
  end
  local santoulangID = {1421, 1422, 1423, 1424, 1425, 1426, 1427, 1916}
  local Jcsantoulang = function(cnum)
    -- upvalues: santoulangID
    local ifhave = false
    for i = 1, #santoulangID do
      ifhave = ifhave or GetHench(cnum, 1, santoulangID[i], 0) > 0
    end
    return ifhave
  end
  local yinghuoniaoID = {1431, 1432, 1433, 1434, 1435, 1436, 1437, 1917}
  local Jcyinghuoniao = function(cnum)
    -- upvalues: yinghuoniaoID
    local ifhave = false
    for i = 1, #yinghuoniaoID do
      ifhave = ifhave or GetHench(cnum, 1, yinghuoniaoID[i], 0) > 0
    end
    return ifhave
  end
  local xianzidieID = {1441, 1442, 1443, 1444, 1445, 1446, 1447, 1918}
  local Jcxianzidie = function(cnum)
    -- upvalues: xianzidieID
    local ifhave = false
    for i = 1, #xianzidieID do
      ifhave = ifhave or GetHench(cnum, 1, xianzidieID[i], 0) > 0
    end
    return ifhave
  end
  local mantuoluoID = {1451, 1452, 1453, 1454, 1455, 1456, 1457, 1919}
  local Jcmantuoluo = function(cnum)
    -- upvalues: mantuoluoID
    local ifhave = false
    for i = 1, #mantuoluoID do
      ifhave = ifhave or GetHench(cnum, 1, mantuoluoID[i], 0) > 0
    end
    return ifhave
  end
  local jixiezhanshiID = {1461, 1462, 1463, 1464, 1465, 1466, 1467, 1920}
  local Jcjixiezhanshi = function(cnum)
    -- upvalues: jixiezhanshiID
    local ifhave = false
    for i = 1, #jixiezhanshiID do
      ifhave = ifhave or GetHench(cnum, 1, jixiezhanshiID[i], 0) > 0
    end
    return ifhave
  end
  local wushiID = {1471, 1472, 1473, 1474, 1475, 1476, 1477, 1921}
  local Jcwushi = function(cnum)
    -- upvalues: wushiID
    local ifhave = false
    for i = 1, #wushiID do
      ifhave = ifhave or GetHench(cnum, 1, wushiID[i], 0) > 0
    end
    return ifhave
  end
  local longmaoID = {1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208}
  local Jclongmao = function(cnum)
    -- upvalues: longmaoID
    local ifhave = false
    for i = 1, #longmaoID do
      ifhave = ifhave or GetHench(cnum, 1, longmaoID[i], 0) > 0
    end
    return ifhave
  end
  local bangdiID = {1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218}
  local Jcbangdi = function(cnum)
    -- upvalues: bangdiID
    local ifhave = false
    for i = 1, #bangdiID do
      ifhave = ifhave or GetHench(cnum, 1, bangdiID[i], 0) > 0
    end
    return ifhave
  end
  local mantouzhuID = {1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228}
  local Jcmantouzhu = function(cnum)
    -- upvalues: mantouzhuID
    local ifhave = false
    for i = 1, #mantouzhuID do
      ifhave = ifhave or GetHench(cnum, 1, mantouzhuID[i], 0) > 0
    end
    return ifhave
  end
  local guaiguaidanID = {1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238}
  local Jcguaiguaidan = function(cnum)
    -- upvalues: guaiguaidanID
    local ifhave = false
    for i = 1, #guaiguaidanID do
      ifhave = ifhave or GetHench(cnum, 1, guaiguaidanID[i], 0) > 0
    end
    return ifhave
  end
  local piaochongID = {1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248}
  local Jcpiaochong = function(cnum)
    -- upvalues: piaochongID
    local ifhave = false
    for i = 1, #piaochongID do
      ifhave = ifhave or GetHench(cnum, 1, piaochongID[i], 0) > 0
    end
    return ifhave
  end
  local lvyebbID = {1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258}
  local Jclvyebb = function(cnum)
    -- upvalues: lvyebbID
    local ifhave = false
    for i = 1, #lvyebbID do
      ifhave = ifhave or GetHench(cnum, 1, lvyebbID[i], 0) > 0
    end
    return ifhave
  end
  local nashaboID = {1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268}
  local Jcnashabo = function(cnum)
    -- upvalues: nashaboID
    local ifhave = false
    for i = 1, #nashaboID do
      ifhave = ifhave or GetHench(cnum, 1, nashaboID[i], 0) > 0
    end
    return ifhave
  end
  local kuriboyiID = {1271, 1272, 1273, 1274, 1275, 1276, 1277, 1278}
  local Jckuriboyi = function(cnum)
    -- upvalues: kuriboyiID
    local ifhave = false
    for i = 1, #kuriboyiID do
      ifhave = ifhave or GetHench(cnum, 1, kuriboyiID[i], 0) > 0
    end
    return ifhave
  end
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
  local shuangtoulangID = {1521, 1522, 1523, 1524, 1525, 1526, 1527, 1012}
  local Jcshuangtoulang = function(cnum)
    -- upvalues: shuangtoulangID
    local ifhave = false
    for i = 1, #shuangtoulangID do
      ifhave = ifhave or GetHench(cnum, 1, shuangtoulangID[i], 0) > 0
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
  local shirenshuID = {1551, 1552, 1553, 1554, 1555, 1556, 1557, 852}
  local Jcshirenshu = function(cnum)
    -- upvalues: shirenshuID
    local ifhave = false
    for i = 1, #shirenshuID do
      ifhave = ifhave or GetHench(cnum, 1, shirenshuID[i], 0) > 0
    end
    return ifhave
  end
  local fenliID = {1601, 1602, 1603, 1604, 1605, 1606, 1607, 345}
  local Jcfenli = function(cnum)
    -- upvalues: fenliID
    local ifhave = false
    for i = 1, #fenliID do
      ifhave = ifhave or GetHench(cnum, 1, fenliID[i], 0) > 0
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
  local boyiID = {1611, 1612, 1613, 1614, 1615, 1616, 1617, 346}
  local Jcboyi = function(cnum)
    -- upvalues: boyiID
    local ifhave = false
    for i = 1, #boyiID do
      ifhave = ifhave or GetHench(cnum, 1, boyiID[i], 0) > 0
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
  local jianID = {1591, 1592, 1593, 1594, 1595, 1596, 1597, 344}
  local Jcjian = function(cnum)
    -- upvalues: jianID
    local ifhave = false
    for i = 1, #jianID do
      ifhave = ifhave or GetHench(cnum, 1, jianID[i], 0) > 0
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
  local heifuchongID = {1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808}
  local Jcheifuchong = function(cnum)
    -- upvalues: heifuchongID
    local ifhave = false
    for i = 1, #heifuchongID do
      ifhave = ifhave or GetHench(cnum, 1, heifuchongID[i], 0) > 0
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
  local huoliejiID = {1821, 1822, 1823, 1824, 1825, 1826, 1827, 1828}
  local Jchuolieji = function(cnum)
    -- upvalues: huoliejiID
    local ifhave = false
    for i = 1, #huoliejiID do
      ifhave = ifhave or GetHench(cnum, 1, huoliejiID[i], 0) > 0
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
  local shihuiguiID = {1841, 1842, 1843, 1844, 1845, 1846, 1847, 1848}
  local Jcshihuigui = function(cnum)
    -- upvalues: shihuiguiID
    local ifhave = false
    for i = 1, #shihuiguiID do
      ifhave = ifhave or GetHench(cnum, 1, shihuiguiID[i], 0) > 0
    end
    return ifhave
  end
  local baixiangID = {1851, 1852, 1853, 1854, 1855, 1856, 1857, 1858}
  local Jcbaixiang = function(cnum)
    -- upvalues: baixiangID
    local ifhave = false
    for i = 1, #baixiangID do
      ifhave = ifhave or GetHench(cnum, 1, baixiangID[i], 0) > 0
    end
    return ifhave
  end
  if req == 1 then
    if 149 < GetHeroLv(cnum) then
      return 9, 0, "Mude o Level do seu BOSS\n\nInformações:\n\nAtençãoo quando mudar o level de um boss não tenha dois do mesmo tipo no inventario de cores, pois um pode desaparecer.\n\[Mudar Level]Quando mudar o level o tipo pode mudar.", 1000, "[TIPO] Dragon", 1002, "[TIPO] Animal", 1003, "[TIPO] Bird", 1001, "[TIPO] Devil", 1004, "[TIPO] Insect", 1005, "[TIPO] Plant", 1006, "[TIPO] Mysteri", 1007, "[TIPO] Metal"
    else
      return 1, 0, "[Error]\n\nOla tudo-bem:" .. name .. "..O seu level e insuficiente!!\n\nnao podemos oferecer um suporte para este level.:" .. Lv .. "\n\nVenha quanto tiver level 150+.."
    end
  elseif req == 1000 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 5, 0, "Mudanca de level tipo dragon", 2, "Mudar Level:KingGarugon", 3, "Mudar Level:NeoDittSanta", 4, "Mudar Level:Super Draki", 5, "Mudar Level:Juvenile Dragon"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 2 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 21, "Mudanca de Level:[Lv165]KingGarugon", 22, "Mudanca de Level:[Lv170]KingGarugon", 23, "Mudanca de Level:[Lv175]KingGarugon", 24, "Mudanca de Level:[Lv180]KingGarugon", 25, "Mudanca de Level:[Lv185]KingGarugon", 26, "Mudanca de Level:[Lv190]KingGarugon", 27, "Mudanca de Level:[Lv195]KingGarugon"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 21 then
    if Jckalongwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1501, -1)
      AddHench(cnum, 1502, -1)
      AddHench(cnum, 1503, -1)
      AddHench(cnum, 1504, -1)
      AddHench(cnum, 1505, -1)
      AddHench(cnum, 1506, -1)
      AddHench(cnum, 1507, -1)
      AddHench(cnum, 830, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1501, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingGarugon],ou voce nao tem o gp necessario"
    end
  elseif req == 22 then
    if Jckalongwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1501, -1)
      AddHench(cnum, 1502, -1)
      AddHench(cnum, 1503, -1)
      AddHench(cnum, 1504, -1)
      AddHench(cnum, 1505, -1)
      AddHench(cnum, 1506, -1)
      AddHench(cnum, 1507, -1)
      AddHench(cnum, 830, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1502, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingGarugon],ou voce nao tem o gp necessario"
    end
  elseif req == 23 then
    if Jckalongwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1501, -1)
      AddHench(cnum, 1502, -1)
      AddHench(cnum, 1503, -1)
      AddHench(cnum, 1504, -1)
      AddHench(cnum, 1505, -1)
      AddHench(cnum, 1506, -1)
      AddHench(cnum, 1507, -1)
      AddHench(cnum, 830, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1503, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingGarugon],ou voce nao tem o gp necessario"
    end
  elseif req == 24 then
    if Jckalongwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1501, -1)
      AddHench(cnum, 1502, -1)
      AddHench(cnum, 1503, -1)
      AddHench(cnum, 1504, -1)
      AddHench(cnum, 1505, -1)
      AddHench(cnum, 1506, -1)
      AddHench(cnum, 1507, -1)
      AddHench(cnum, 830, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1504, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingGarugon],ou voce nao tem o gp necessario"
    end
  elseif req == 25 then
    if Jckalongwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1501, -1)
      AddHench(cnum, 1502, -1)
      AddHench(cnum, 1503, -1)
      AddHench(cnum, 1504, -1)
      AddHench(cnum, 1505, -1)
      AddHench(cnum, 1506, -1)
      AddHench(cnum, 1507, -1)
      AddHench(cnum, 830, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1505, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingGarugon],ou voce nao tem o gp necessario"
    end
  elseif req == 26 then
    if Jckalongwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1501, -1)
      AddHench(cnum, 1502, -1)
      AddHench(cnum, 1503, -1)
      AddHench(cnum, 1504, -1)
      AddHench(cnum, 1505, -1)
      AddHench(cnum, 1506, -1)
      AddHench(cnum, 1507, -1)
      AddHench(cnum, 830, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1506, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingGarugon],ou voce nao tem o gp necessario"
    end
  elseif req == 27 then
    if Jckalongwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1501, -1)
      AddHench(cnum, 1502, -1)
      AddHench(cnum, 1503, -1)
      AddHench(cnum, 1504, -1)
      AddHench(cnum, 1505, -1)
      AddHench(cnum, 1506, -1)
      AddHench(cnum, 1507, -1)
      AddHench(cnum, 830, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1507, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingGarugon],ou voce nao tem o gp necessario"
    end
  elseif req == 3 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 31, "Mudanca de Level:[Lv165]NeoDittSanta", 32, "Mudanca de Level:[Lv170]NeoDittSanta", 33, "Mudanca de Level:[Lv175]NeoDittSanta", 34, "Mudanca de Level:[Lv180]NeoDittSanta", 35, "Mudanca de Level:[Lv185]NeoDittSanta", 36, "Mudanca de Level:[Lv190]NeoDittSanta", 37, "Mudanca de Level:[Lv195]NeoDittSanta", 38, "Mudanca de Level:[Lv200]NeoDittSanta"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 31 then
    if Jcdite(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1581, -1)
      AddHench(cnum, 1582, -1)
      AddHench(cnum, 1583, -1)
      AddHench(cnum, 1584, -1)
      AddHench(cnum, 1585, -1)
      AddHench(cnum, 1586, -1)
      AddHench(cnum, 1587, -1)
      AddHench(cnum, 343, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1581, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoDittSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 32 then
    if Jcdite(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1581, -1)
      AddHench(cnum, 1582, -1)
      AddHench(cnum, 1583, -1)
      AddHench(cnum, 1584, -1)
      AddHench(cnum, 1585, -1)
      AddHench(cnum, 1586, -1)
      AddHench(cnum, 1587, -1)
      AddHench(cnum, 343, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1582, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoDittSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 33 then
    if Jcdite(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1581, -1)
      AddHench(cnum, 1582, -1)
      AddHench(cnum, 1583, -1)
      AddHench(cnum, 1584, -1)
      AddHench(cnum, 1585, -1)
      AddHench(cnum, 1586, -1)
      AddHench(cnum, 1587, -1)
      AddHench(cnum, 343, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1583, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoDittSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 34 then
    if Jcdite(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1581, -1)
      AddHench(cnum, 1582, -1)
      AddHench(cnum, 1583, -1)
      AddHench(cnum, 1584, -1)
      AddHench(cnum, 1585, -1)
      AddHench(cnum, 1586, -1)
      AddHench(cnum, 1587, -1)
      AddHench(cnum, 343, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1584, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoDittSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 35 then
    if Jcdite(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1581, -1)
      AddHench(cnum, 1582, -1)
      AddHench(cnum, 1583, -1)
      AddHench(cnum, 1584, -1)
      AddHench(cnum, 1585, -1)
      AddHench(cnum, 1586, -1)
      AddHench(cnum, 1587, -1)
      AddHench(cnum, 343, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1585, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoDittSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 36 then
    if Jcdite(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1581, -1)
      AddHench(cnum, 1582, -1)
      AddHench(cnum, 1583, -1)
      AddHench(cnum, 1584, -1)
      AddHench(cnum, 1585, -1)
      AddHench(cnum, 1586, -1)
      AddHench(cnum, 1587, -1)
      AddHench(cnum, 343, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1586, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoDittSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 37 then
    if Jcdite(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1581, -1)
      AddHench(cnum, 1582, -1)
      AddHench(cnum, 1583, -1)
      AddHench(cnum, 1584, -1)
      AddHench(cnum, 1585, -1)
      AddHench(cnum, 1586, -1)
      AddHench(cnum, 1587, -1)
      AddHench(cnum, 343, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1587, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoDittSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 38 then
    if Jcdite(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
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
  elseif req == 4 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 41, "Mudanca de Level:[Lv165]Super Draki", 42, "Mudanca de Level:[Lv170]Super Draki", 43, "Mudanca de Level:[Lv175]Super Draki", 44, "Mudanca de Level:[Lv180]Super Draki", 45, "Mudanca de Level:[Lv185]Super Draki", 46, "Mudanca de Level:[Lv190]Super Draki", 47, "Mudanca de Level:[Lv195]Super Draki"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 41 then
    if Jclongmao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1201, -1)
      AddHench(cnum, 1202, -1)
      AddHench(cnum, 1203, -1)
      AddHench(cnum, 1204, -1)
      AddHench(cnum, 1205, -1)
      AddHench(cnum, 1206, -1)
      AddHench(cnum, 1207, -1)
      AddHench(cnum, 1208, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1201, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Draki],ou voce nao tem o gp necessario"
    end
  elseif req == 42 then
    if Jclongmao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1201, -1)
      AddHench(cnum, 1202, -1)
      AddHench(cnum, 1203, -1)
      AddHench(cnum, 1204, -1)
      AddHench(cnum, 1205, -1)
      AddHench(cnum, 1206, -1)
      AddHench(cnum, 1207, -1)
      AddHench(cnum, 1208, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1202, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Draki],ou voce nao tem o gp necessario"
    end
  elseif req == 43 then
    if Jclongmao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1201, -1)
      AddHench(cnum, 1202, -1)
      AddHench(cnum, 1203, -1)
      AddHench(cnum, 1204, -1)
      AddHench(cnum, 1205, -1)
      AddHench(cnum, 1206, -1)
      AddHench(cnum, 1207, -1)
      AddHench(cnum, 1208, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1203, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Draki],ou voce nao tem o gp necessario"
    end
  elseif req == 44 then
    if Jclongmao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1201, -1)
      AddHench(cnum, 1202, -1)
      AddHench(cnum, 1203, -1)
      AddHench(cnum, 1204, -1)
      AddHench(cnum, 1205, -1)
      AddHench(cnum, 1206, -1)
      AddHench(cnum, 1207, -1)
      AddHench(cnum, 1208, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1204, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Draki],ou voce nao tem o gp necessario"
    end
  elseif req == 45 then
    if Jclongmao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1201, -1)
      AddHench(cnum, 1202, -1)
      AddHench(cnum, 1203, -1)
      AddHench(cnum, 1204, -1)
      AddHench(cnum, 1205, -1)
      AddHench(cnum, 1206, -1)
      AddHench(cnum, 1207, -1)
      AddHench(cnum, 1208, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1205, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Draki],ou voce nao tem o gp necessario"
    end
  elseif req == 46 then
    if Jclongmao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1201, -1)
      AddHench(cnum, 1202, -1)
      AddHench(cnum, 1203, -1)
      AddHench(cnum, 1204, -1)
      AddHench(cnum, 1205, -1)
      AddHench(cnum, 1206, -1)
      AddHench(cnum, 1207, -1)
      AddHench(cnum, 1208, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1206, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Draki],ou voce nao tem o gp necessario"
    end
  elseif req == 47 then
    if Jclongmao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1201, -1)
      AddHench(cnum, 1202, -1)
      AddHench(cnum, 1203, -1)
      AddHench(cnum, 1204, -1)
      AddHench(cnum, 1205, -1)
      AddHench(cnum, 1206, -1)
      AddHench(cnum, 1207, -1)
      AddHench(cnum, 1208, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1207, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Draki],ou voce nao tem o gp necessario"
    end
  elseif req == 5 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 51, "Mudanca de Level:[Lv165]Juvenile Dragon", 52, "Mudanca de Level:[Lv170]Juvenile Dragon", 53, "Mudanca de Level:[Lv175]Juvenile Dragon", 54, "Mudanca de Level:[Lv180]Juvenile Dragon", 55, "Mudanca de Level:[Lv185]Juvenile Dragon", 56, "Mudanca de Level:[Lv190]Juvenile Dragon", 57, "Mudanca de Level:[Lv195]Juvenile Dragon", 58, "Mudanca de Level:[Lv200]Juvenile Dragon"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 51 then
    if Jcjihuolong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1401, -1)
      AddHench(cnum, 1402, -1)
      AddHench(cnum, 1403, -1)
      AddHench(cnum, 1404, -1)
      AddHench(cnum, 1405, -1)
      AddHench(cnum, 1406, -1)
      AddHench(cnum, 1407, -1)
      AddHench(cnum, 1914, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1401, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Juvenile Dragon],ou voce nao tem o gp necessario"
    end
  elseif req == 52 then
    if Jcjihuolong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1401, -1)
      AddHench(cnum, 1402, -1)
      AddHench(cnum, 1403, -1)
      AddHench(cnum, 1404, -1)
      AddHench(cnum, 1405, -1)
      AddHench(cnum, 1406, -1)
      AddHench(cnum, 1407, -1)
      AddHench(cnum, 1914, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1402, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Juvenile Dragon],ou voce nao tem o gp necessario"
    end
  elseif req == 53 then
    if Jcjihuolong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1401, -1)
      AddHench(cnum, 1402, -1)
      AddHench(cnum, 1403, -1)
      AddHench(cnum, 1404, -1)
      AddHench(cnum, 1405, -1)
      AddHench(cnum, 1406, -1)
      AddHench(cnum, 1407, -1)
      AddHench(cnum, 1914, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1403, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Juvenile Dragon],ou voce nao tem o gp necessario"
    end
  elseif req == 54 then
    if Jcjihuolong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1401, -1)
      AddHench(cnum, 1402, -1)
      AddHench(cnum, 1403, -1)
      AddHench(cnum, 1404, -1)
      AddHench(cnum, 1405, -1)
      AddHench(cnum, 1406, -1)
      AddHench(cnum, 1407, -1)
      AddHench(cnum, 1914, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1404, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Juvenile Dragon],ou voce nao tem o gp necessario"
    end
  elseif req == 55 then
    if Jcjihuolong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1401, -1)
      AddHench(cnum, 1402, -1)
      AddHench(cnum, 1403, -1)
      AddHench(cnum, 1404, -1)
      AddHench(cnum, 1405, -1)
      AddHench(cnum, 1406, -1)
      AddHench(cnum, 1407, -1)
      AddHench(cnum, 1914, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1405, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Juvenile Dragon],ou voce nao tem o gp necessario"
    end
  elseif req == 56 then
    if Jcjihuolong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1401, -1)
      AddHench(cnum, 1402, -1)
      AddHench(cnum, 1403, -1)
      AddHench(cnum, 1404, -1)
      AddHench(cnum, 1405, -1)
      AddHench(cnum, 1406, -1)
      AddHench(cnum, 1407, -1)
      AddHench(cnum, 1914, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1406, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Juvenile Dragon],ou voce nao tem o gp necessario"
    end
  elseif req == 57 then
    if Jcjihuolong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1401, -1)
      AddHench(cnum, 1402, -1)
      AddHench(cnum, 1403, -1)
      AddHench(cnum, 1404, -1)
      AddHench(cnum, 1405, -1)
      AddHench(cnum, 1406, -1)
      AddHench(cnum, 1407, -1)
      AddHench(cnum, 1914, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1407, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Juvenile Dragon],ou voce nao tem o gp necessario"
    end
  elseif req == 58 then
    if Jcjihuolong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1401, -1)
      AddHench(cnum, 1402, -1)
      AddHench(cnum, 1403, -1)
      AddHench(cnum, 1404, -1)
      AddHench(cnum, 1405, -1)
      AddHench(cnum, 1406, -1)
      AddHench(cnum, 1407, -1)
      AddHench(cnum, 1914, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1914, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Juvenile Dragon],ou voce nao tem o gp necessario"
    end
  elseif req == 1001 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 7, 0, "Mudanca de level tipo devil", 102, "Mudar Level:Anubis", 103, "Mudar Level:Coconut Spirit", 104, "Mudar Level:Lime Ghost", 105, "Mudar Level:Super Buma", 106, "Mudar Level:Fu Ghost Bat", 107, "Mudar Level:Clara"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 102 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 121, "Mudanca de Level:[Lv165]Anubis", 122, "Mudanca de Level:[Lv170]Anubis", 123, "Mudanca de Level:[Lv175]Anubis", 124, "Mudanca de Level:[Lv180]Anubis", 125, "Mudanca de Level:[Lv185]Anubis", 126, "Mudanca de Level:[Lv190]Anubis", 127, "Mudanca de Level:[Lv195]Anubis"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 121 then
    if Jcanubisi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1511, -1)
      AddHench(cnum, 1512, -1)
      AddHench(cnum, 1513, -1)
      AddHench(cnum, 1514, -1)
      AddHench(cnum, 1515, -1)
      AddHench(cnum, 1516, -1)
      AddHench(cnum, 1517, -1)
      AddHench(cnum, 840, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1511, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Anubis],ou voce nao tem o gp necessario"
    end
  elseif req == 122 then
    if Jcanubisi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1511, -1)
      AddHench(cnum, 1512, -1)
      AddHench(cnum, 1513, -1)
      AddHench(cnum, 1514, -1)
      AddHench(cnum, 1515, -1)
      AddHench(cnum, 1516, -1)
      AddHench(cnum, 1517, -1)
      AddHench(cnum, 840, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1512, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Anubis],ou voce nao tem o gp necessario"
    end
  elseif req == 123 then
    if Jcanubisi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1511, -1)
      AddHench(cnum, 1512, -1)
      AddHench(cnum, 1513, -1)
      AddHench(cnum, 1514, -1)
      AddHench(cnum, 1515, -1)
      AddHench(cnum, 1516, -1)
      AddHench(cnum, 1517, -1)
      AddHench(cnum, 840, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1513, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Anubis],ou voce nao tem o gp necessario"
    end
  elseif req == 124 then
    if Jcanubisi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1511, -1)
      AddHench(cnum, 1512, -1)
      AddHench(cnum, 1513, -1)
      AddHench(cnum, 1514, -1)
      AddHench(cnum, 1515, -1)
      AddHench(cnum, 1516, -1)
      AddHench(cnum, 1517, -1)
      AddHench(cnum, 840, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1514, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Anubis],ou voce nao tem o gp necessario"
    end
  elseif req == 125 then
    if Jcanubisi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1511, -1)
      AddHench(cnum, 1512, -1)
      AddHench(cnum, 1513, -1)
      AddHench(cnum, 1514, -1)
      AddHench(cnum, 1515, -1)
      AddHench(cnum, 1516, -1)
      AddHench(cnum, 1517, -1)
      AddHench(cnum, 840, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1515, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Anubis],ou voce nao tem o gp necessario"
    end
  elseif req == 126 then
    if Jcanubisi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1511, -1)
      AddHench(cnum, 1512, -1)
      AddHench(cnum, 1513, -1)
      AddHench(cnum, 1514, -1)
      AddHench(cnum, 1515, -1)
      AddHench(cnum, 1516, -1)
      AddHench(cnum, 1517, -1)
      AddHench(cnum, 840, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1516, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Anubis],ou voce nao tem o gp necessario"
    end
  elseif req == 127 then
    if Jcanubisi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1511, -1)
      AddHench(cnum, 1512, -1)
      AddHench(cnum, 1513, -1)
      AddHench(cnum, 1514, -1)
      AddHench(cnum, 1515, -1)
      AddHench(cnum, 1516, -1)
      AddHench(cnum, 1517, -1)
      AddHench(cnum, 840, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1517, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Anubis],ou voce nao tem o gp necessario"
    end
  elseif req == 103 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 131, "Mudanca de Level:[Lv165]Coconut Spirit", 132, "Mudanca de Level:[Lv170]Coconut Spirit", 133, "Mudanca de Level:[Lv175]Coconut Spirit", 134, "Mudanca de Level:[Lv180]Coconut Spirit", 135, "Mudanca de Level:[Lv185]Coconut Spirit", 136, "Mudanca de Level:[Lv190]Coconut Spirit", 137, "Mudanca de Level:[Lv195]Coconut Spirit", 138, "Mudanca de Level:[Lv200]Coconut Spirit"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 131 then
    if Jcyeling(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1811, -1)
      AddHench(cnum, 1812, -1)
      AddHench(cnum, 1813, -1)
      AddHench(cnum, 1814, -1)
      AddHench(cnum, 1815, -1)
      AddHench(cnum, 1816, -1)
      AddHench(cnum, 1817, -1)
      AddHench(cnum, 1818, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1811, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Coconut Spirit],ou voce nao tem o gp necessario"
    end
  elseif req == 132 then
    if Jcyeling(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1811, -1)
      AddHench(cnum, 1812, -1)
      AddHench(cnum, 1813, -1)
      AddHench(cnum, 1814, -1)
      AddHench(cnum, 1815, -1)
      AddHench(cnum, 1816, -1)
      AddHench(cnum, 1817, -1)
      AddHench(cnum, 1818, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1812, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Coconut Spirit],ou voce nao tem o gp necessario"
    end
  elseif req == 133 then
    if Jcyeling(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1811, -1)
      AddHench(cnum, 1812, -1)
      AddHench(cnum, 1813, -1)
      AddHench(cnum, 1814, -1)
      AddHench(cnum, 1815, -1)
      AddHench(cnum, 1816, -1)
      AddHench(cnum, 1817, -1)
      AddHench(cnum, 1818, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1813, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Coconut Spirit],ou voce nao tem o gp necessario"
    end
  elseif req == 134 then
    if Jcyeling(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1811, -1)
      AddHench(cnum, 1812, -1)
      AddHench(cnum, 1813, -1)
      AddHench(cnum, 1814, -1)
      AddHench(cnum, 1815, -1)
      AddHench(cnum, 1816, -1)
      AddHench(cnum, 1817, -1)
      AddHench(cnum, 1818, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1814, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Coconut Spirit],ou voce nao tem o gp necessario"
    end
  elseif req == 135 then
    if Jcyeling(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1811, -1)
      AddHench(cnum, 1812, -1)
      AddHench(cnum, 1813, -1)
      AddHench(cnum, 1814, -1)
      AddHench(cnum, 1815, -1)
      AddHench(cnum, 1816, -1)
      AddHench(cnum, 1817, -1)
      AddHench(cnum, 1818, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1815, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Coconut Spirit],ou voce nao tem o gp necessario"
    end
  elseif req == 136 then
    if Jcyeling(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1811, -1)
      AddHench(cnum, 1812, -1)
      AddHench(cnum, 1813, -1)
      AddHench(cnum, 1814, -1)
      AddHench(cnum, 1815, -1)
      AddHench(cnum, 1816, -1)
      AddHench(cnum, 1817, -1)
      AddHench(cnum, 1818, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1816, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Coconut Spirit],ou voce nao tem o gp necessario"
    end
  elseif req == 137 then
    if Jcyeling(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1811, -1)
      AddHench(cnum, 1812, -1)
      AddHench(cnum, 1813, -1)
      AddHench(cnum, 1814, -1)
      AddHench(cnum, 1815, -1)
      AddHench(cnum, 1816, -1)
      AddHench(cnum, 1817, -1)
      AddHench(cnum, 1818, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1817, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Coconut Spirit],ou voce nao tem o gp necessario"
    end
  elseif req == 138 then
    if Jcyeling(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
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
  elseif req == 104 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 141, "Mudanca de Level:[Lv165]Lime Ghost", 142, "Mudanca de Level:[Lv170]Lime Ghost", 143, "Mudanca de Level:[Lv175]Lime Ghost", 144, "Mudanca de Level:[Lv180]Lime Ghost", 145, "Mudanca de Level:[Lv185]Lime Ghost", 146, "Mudanca de Level:[Lv190]Lime Ghost", 147, "Mudanca de Level:[Lv195]Lime Ghost"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 141 then
    if Jcshihuigui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1841, -1)
      AddHench(cnum, 1842, -1)
      AddHench(cnum, 1843, -1)
      AddHench(cnum, 1844, -1)
      AddHench(cnum, 1845, -1)
      AddHench(cnum, 1846, -1)
      AddHench(cnum, 1847, -1)
      AddHench(cnum, 1848, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1841, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Lime Ghost],ou voce nao tem o gp necessario"
    end
  elseif req == 142 then
    if Jcshihuigui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1841, -1)
      AddHench(cnum, 1842, -1)
      AddHench(cnum, 1843, -1)
      AddHench(cnum, 1844, -1)
      AddHench(cnum, 1845, -1)
      AddHench(cnum, 1846, -1)
      AddHench(cnum, 1847, -1)
      AddHench(cnum, 1848, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1842, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Lime Ghost],ou voce nao tem o gp necessario"
    end
  elseif req == 143 then
    if Jcshihuigui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1841, -1)
      AddHench(cnum, 1842, -1)
      AddHench(cnum, 1843, -1)
      AddHench(cnum, 1844, -1)
      AddHench(cnum, 1845, -1)
      AddHench(cnum, 1846, -1)
      AddHench(cnum, 1847, -1)
      AddHench(cnum, 1848, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1843, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Lime Ghost],ou voce nao tem o gp necessario"
    end
  elseif req == 144 then
    if Jcshihuigui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1841, -1)
      AddHench(cnum, 1842, -1)
      AddHench(cnum, 1843, -1)
      AddHench(cnum, 1844, -1)
      AddHench(cnum, 1845, -1)
      AddHench(cnum, 1846, -1)
      AddHench(cnum, 1847, -1)
      AddHench(cnum, 1848, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1844, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Lime Ghost],ou voce nao tem o gp necessario"
    end
  elseif req == 145 then
    if Jcshihuigui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1841, -1)
      AddHench(cnum, 1842, -1)
      AddHench(cnum, 1843, -1)
      AddHench(cnum, 1844, -1)
      AddHench(cnum, 1845, -1)
      AddHench(cnum, 1846, -1)
      AddHench(cnum, 1847, -1)
      AddHench(cnum, 1848, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1845, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Lime Ghost],ou voce nao tem o gp necessario"
    end
  elseif req == 146 then
    if Jcshihuigui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1841, -1)
      AddHench(cnum, 1842, -1)
      AddHench(cnum, 1843, -1)
      AddHench(cnum, 1844, -1)
      AddHench(cnum, 1845, -1)
      AddHench(cnum, 1846, -1)
      AddHench(cnum, 1847, -1)
      AddHench(cnum, 1848, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1846, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Lime Ghost],ou voce nao tem o gp necessario"
    end
  elseif req == 147 then
    if Jcshihuigui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1841, -1)
      AddHench(cnum, 1842, -1)
      AddHench(cnum, 1843, -1)
      AddHench(cnum, 1844, -1)
      AddHench(cnum, 1845, -1)
      AddHench(cnum, 1846, -1)
      AddHench(cnum, 1847, -1)
      AddHench(cnum, 1848, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1847, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Lime Ghost],ou voce nao tem o gp necessario"
    end
  elseif req == 105 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 151, "Mudanca de Level:[Lv165]Super Buma", 152, "Mudanca de Level:[Lv170]Super Buma", 153, "Mudanca de Level:[Lv175]Super Buma", 154, "Mudanca de Level:[Lv180]Super Buma", 155, "Mudanca de Level:[Lv185]Super Buma", 156, "Mudanca de Level:[Lv190]Super Buma", 157, "Mudanca de Level:[Lv195]Super Buma"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 151 then
    if Jcbangdi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1211, -1)
      AddHench(cnum, 1212, -1)
      AddHench(cnum, 1213, -1)
      AddHench(cnum, 1214, -1)
      AddHench(cnum, 1215, -1)
      AddHench(cnum, 1216, -1)
      AddHench(cnum, 1217, -1)
      AddHench(cnum, 1218, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1211, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Buma],ou voce nao tem o gp necessario"
    end
  elseif req == 152 then
    if Jcbangdi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1211, -1)
      AddHench(cnum, 1212, -1)
      AddHench(cnum, 1213, -1)
      AddHench(cnum, 1214, -1)
      AddHench(cnum, 1215, -1)
      AddHench(cnum, 1216, -1)
      AddHench(cnum, 1217, -1)
      AddHench(cnum, 1218, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1212, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Buma],ou voce nao tem o gp necessario"
    end
  elseif req == 153 then
    if Jcbangdi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1211, -1)
      AddHench(cnum, 1212, -1)
      AddHench(cnum, 1213, -1)
      AddHench(cnum, 1214, -1)
      AddHench(cnum, 1215, -1)
      AddHench(cnum, 1216, -1)
      AddHench(cnum, 1217, -1)
      AddHench(cnum, 1218, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1213, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Buma],ou voce nao tem o gp necessario"
    end
  elseif req == 154 then
    if Jcbangdi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1211, -1)
      AddHench(cnum, 1212, -1)
      AddHench(cnum, 1213, -1)
      AddHench(cnum, 1214, -1)
      AddHench(cnum, 1215, -1)
      AddHench(cnum, 1216, -1)
      AddHench(cnum, 1217, -1)
      AddHench(cnum, 1218, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1214, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Buma],ou voce nao tem o gp necessario"
    end
  elseif req == 155 then
    if Jcbangdi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1211, -1)
      AddHench(cnum, 1212, -1)
      AddHench(cnum, 1213, -1)
      AddHench(cnum, 1214, -1)
      AddHench(cnum, 1215, -1)
      AddHench(cnum, 1216, -1)
      AddHench(cnum, 1217, -1)
      AddHench(cnum, 1218, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1215, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Buma],ou voce nao tem o gp necessario"
    end
  elseif req == 156 then
    if Jcbangdi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1211, -1)
      AddHench(cnum, 1212, -1)
      AddHench(cnum, 1213, -1)
      AddHench(cnum, 1214, -1)
      AddHench(cnum, 1215, -1)
      AddHench(cnum, 1216, -1)
      AddHench(cnum, 1217, -1)
      AddHench(cnum, 1218, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1216, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Buma],ou voce nao tem o gp necessario"
    end
  elseif req == 157 then
    if Jcbangdi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1211, -1)
      AddHench(cnum, 1212, -1)
      AddHench(cnum, 1213, -1)
      AddHench(cnum, 1214, -1)
      AddHench(cnum, 1215, -1)
      AddHench(cnum, 1216, -1)
      AddHench(cnum, 1217, -1)
      AddHench(cnum, 1218, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1217, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Buma],ou voce nao tem o gp necessario"
    end
  elseif req == 106 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 161, "Mudanca de Level:[Lv165]Fu Ghost Bat", 162, "Mudanca de Level:[Lv170]Fu Ghost Bat", 163, "Mudanca de Level:[Lv175]Fu Ghost Bat", 164, "Mudanca de Level:[Lv180]Fu Ghost Bat", 165, "Mudanca de Level:[Lv185]Fu Ghost Bat", 166, "Mudanca de Level:[Lv190]Fu Ghost Bat", 167, "Mudanca de Level:[Lv195]Fu Ghost Bat", 168, "Mudanca de Level:[Lv200]Fu Ghost Bat"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 161 then
    if Jcbianfumo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1411, -1)
      AddHench(cnum, 1412, -1)
      AddHench(cnum, 1413, -1)
      AddHench(cnum, 1414, -1)
      AddHench(cnum, 1415, -1)
      AddHench(cnum, 1416, -1)
      AddHench(cnum, 1417, -1)
      AddHench(cnum, 1915, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1411, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Fu Ghost Bat],ou voce nao tem o gp necessario"
    end
  elseif req == 162 then
    if Jcbianfumo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1411, -1)
      AddHench(cnum, 1412, -1)
      AddHench(cnum, 1413, -1)
      AddHench(cnum, 1414, -1)
      AddHench(cnum, 1415, -1)
      AddHench(cnum, 1416, -1)
      AddHench(cnum, 1417, -1)
      AddHench(cnum, 1915, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1412, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Fu Ghost Bat],ou voce nao tem o gp necessario"
    end
  elseif req == 163 then
    if Jcbianfumo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1411, -1)
      AddHench(cnum, 1412, -1)
      AddHench(cnum, 1413, -1)
      AddHench(cnum, 1414, -1)
      AddHench(cnum, 1415, -1)
      AddHench(cnum, 1416, -1)
      AddHench(cnum, 1417, -1)
      AddHench(cnum, 1915, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1413, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Fu Ghost Bat],ou voce nao tem o gp necessario"
    end
  elseif req == 164 then
    if Jcbianfumo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1411, -1)
      AddHench(cnum, 1412, -1)
      AddHench(cnum, 1413, -1)
      AddHench(cnum, 1414, -1)
      AddHench(cnum, 1415, -1)
      AddHench(cnum, 1416, -1)
      AddHench(cnum, 1417, -1)
      AddHench(cnum, 1915, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1414, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Fu Ghost Bat],ou voce nao tem o gp necessario"
    end
  elseif req == 165 then
    if Jcbianfumo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1411, -1)
      AddHench(cnum, 1412, -1)
      AddHench(cnum, 1413, -1)
      AddHench(cnum, 1414, -1)
      AddHench(cnum, 1415, -1)
      AddHench(cnum, 1416, -1)
      AddHench(cnum, 1417, -1)
      AddHench(cnum, 1915, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1415, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Fu Ghost Bat],ou voce nao tem o gp necessario"
    end
  elseif req == 166 then
    if Jcbianfumo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1411, -1)
      AddHench(cnum, 1412, -1)
      AddHench(cnum, 1413, -1)
      AddHench(cnum, 1414, -1)
      AddHench(cnum, 1415, -1)
      AddHench(cnum, 1416, -1)
      AddHench(cnum, 1417, -1)
      AddHench(cnum, 1915, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1416, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Fu Ghost Bat],ou voce nao tem o gp necessario"
    end
  elseif req == 167 then
    if Jcbianfumo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1411, -1)
      AddHench(cnum, 1412, -1)
      AddHench(cnum, 1413, -1)
      AddHench(cnum, 1414, -1)
      AddHench(cnum, 1415, -1)
      AddHench(cnum, 1416, -1)
      AddHench(cnum, 1417, -1)
      AddHench(cnum, 1915, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1417, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Fu Ghost Bat],ou voce nao tem o gp necessario"
    end
  elseif req == 168 then
    if Jcbianfumo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1411, -1)
      AddHench(cnum, 1412, -1)
      AddHench(cnum, 1413, -1)
      AddHench(cnum, 1414, -1)
      AddHench(cnum, 1415, -1)
      AddHench(cnum, 1416, -1)
      AddHench(cnum, 1417, -1)
      AddHench(cnum, 1915, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1915, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Fu Ghost Bat],ou voce nao tem o gp necessario"
    end
  elseif req == 107 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 171, "Mudanca de Level:[Lv165]Clara", 172, "Mudanca de Level:[Lv170]Clara", 173, "Mudanca de Level:[Lv175]Clara", 174, "Mudanca de Level:[Lv180]Clara", 175, "Mudanca de Level:[Lv185]Clara", 176, "Mudanca de Level:[Lv190]Clara", 177, "Mudanca de Level:[Lv195]Clara", 178, "Mudanca de Level:[Lv200]Clara"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 171 then
    if Jcyingzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1311, -1)
      AddHench(cnum, 1312, -1)
      AddHench(cnum, 1313, -1)
      AddHench(cnum, 1314, -1)
      AddHench(cnum, 1315, -1)
      AddHench(cnum, 1316, -1)
      AddHench(cnum, 1317, -1)
      AddHench(cnum, 1318, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1311, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Clara],ou voce nao tem o gp necessario"
    end
  elseif req == 172 then
    if Jcyingzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1311, -1)
      AddHench(cnum, 1312, -1)
      AddHench(cnum, 1313, -1)
      AddHench(cnum, 1314, -1)
      AddHench(cnum, 1315, -1)
      AddHench(cnum, 1316, -1)
      AddHench(cnum, 1317, -1)
      AddHench(cnum, 1318, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1312, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Clara],ou voce nao tem o gp necessario"
    end
  elseif req == 173 then
    if Jcyingzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1311, -1)
      AddHench(cnum, 1312, -1)
      AddHench(cnum, 1313, -1)
      AddHench(cnum, 1314, -1)
      AddHench(cnum, 1315, -1)
      AddHench(cnum, 1316, -1)
      AddHench(cnum, 1317, -1)
      AddHench(cnum, 1318, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1313, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Clara],ou voce nao tem o gp necessario"
    end
  elseif req == 174 then
    if Jcyingzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1311, -1)
      AddHench(cnum, 1312, -1)
      AddHench(cnum, 1313, -1)
      AddHench(cnum, 1314, -1)
      AddHench(cnum, 1315, -1)
      AddHench(cnum, 1316, -1)
      AddHench(cnum, 1317, -1)
      AddHench(cnum, 1318, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1314, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Clara],ou voce nao tem o gp necessario"
    end
  elseif req == 175 then
    if Jcyingzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1311, -1)
      AddHench(cnum, 1312, -1)
      AddHench(cnum, 1313, -1)
      AddHench(cnum, 1314, -1)
      AddHench(cnum, 1315, -1)
      AddHench(cnum, 1316, -1)
      AddHench(cnum, 1317, -1)
      AddHench(cnum, 1318, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1315, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Clara],ou voce nao tem o gp necessario"
    end
  elseif req == 176 then
    if Jcyingzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1311, -1)
      AddHench(cnum, 1312, -1)
      AddHench(cnum, 1313, -1)
      AddHench(cnum, 1314, -1)
      AddHench(cnum, 1315, -1)
      AddHench(cnum, 1316, -1)
      AddHench(cnum, 1317, -1)
      AddHench(cnum, 1318, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1316, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Clara],ou voce nao tem o gp necessario"
    end
  elseif req == 177 then
    if Jcyingzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1311, -1)
      AddHench(cnum, 1312, -1)
      AddHench(cnum, 1313, -1)
      AddHench(cnum, 1314, -1)
      AddHench(cnum, 1315, -1)
      AddHench(cnum, 1316, -1)
      AddHench(cnum, 1317, -1)
      AddHench(cnum, 1318, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1317, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Clara],ou voce nao tem o gp necessario"
    end
  elseif req == 178 then
    if Jcyingzi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1311, -1)
      AddHench(cnum, 1312, -1)
      AddHench(cnum, 1313, -1)
      AddHench(cnum, 1314, -1)
      AddHench(cnum, 1315, -1)
      AddHench(cnum, 1316, -1)
      AddHench(cnum, 1317, -1)
      AddHench(cnum, 1318, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1318, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Clara],ou voce nao tem o gp necessario"
    end
  elseif req == 1002 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 6, 0, "Mudanca de level tipo animal", 202, "Mudar Level:Hellfard", 203, "Mudar Level:NeoPongo", 204, "Mudar Level:White Elephant", 205, "Mudar Level:Super CryBop", 206, "Mudar Level:Ancient Three"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 202 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 221, "Mudanca de Level:[Lv165]Hellfard", 222, "Mudanca de Level:[Lv170]Hellfard", 223, "Mudanca de Level:[Lv175]Hellfard", 224, "Mudanca de Level:[Lv180]Hellfard", 225, "Mudanca de Level:[Lv185]Hellfard", 226, "Mudanca de Level:[Lv190]Hellfard", 227, "Mudanca de Level:[Lv195]Hellfard"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 221 then
    if Jcshuangtoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1521, -1)
      AddHench(cnum, 1522, -1)
      AddHench(cnum, 1523, -1)
      AddHench(cnum, 1524, -1)
      AddHench(cnum, 1525, -1)
      AddHench(cnum, 1526, -1)
      AddHench(cnum, 1527, -1)
      AddHench(cnum, 1012, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1521, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Hellfard],ou voce nao tem o gp necessario"
    end
  elseif req == 222 then
    if Jcshuangtoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1521, -1)
      AddHench(cnum, 1522, -1)
      AddHench(cnum, 1523, -1)
      AddHench(cnum, 1524, -1)
      AddHench(cnum, 1525, -1)
      AddHench(cnum, 1526, -1)
      AddHench(cnum, 1527, -1)
      AddHench(cnum, 1012, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1522, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Hellfard],ou voce nao tem o gp necessario"
    end
  elseif req == 223 then
    if Jcshuangtoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1521, -1)
      AddHench(cnum, 1522, -1)
      AddHench(cnum, 1523, -1)
      AddHench(cnum, 1524, -1)
      AddHench(cnum, 1525, -1)
      AddHench(cnum, 1526, -1)
      AddHench(cnum, 1527, -1)
      AddHench(cnum, 1012, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1523, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Hellfard],ou voce nao tem o gp necessario"
    end
  elseif req == 224 then
    if Jcshuangtoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1521, -1)
      AddHench(cnum, 1522, -1)
      AddHench(cnum, 1523, -1)
      AddHench(cnum, 1524, -1)
      AddHench(cnum, 1525, -1)
      AddHench(cnum, 1526, -1)
      AddHench(cnum, 1527, -1)
      AddHench(cnum, 1012, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1524, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Hellfard],ou voce nao tem o gp necessario"
    end
  elseif req == 225 then
    if Jcshuangtoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1521, -1)
      AddHench(cnum, 1522, -1)
      AddHench(cnum, 1523, -1)
      AddHench(cnum, 1524, -1)
      AddHench(cnum, 1525, -1)
      AddHench(cnum, 1526, -1)
      AddHench(cnum, 1527, -1)
      AddHench(cnum, 1012, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1525, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Hellfard],ou voce nao tem o gp necessario"
    end
  elseif req == 226 then
    if Jcshuangtoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1521, -1)
      AddHench(cnum, 1522, -1)
      AddHench(cnum, 1523, -1)
      AddHench(cnum, 1524, -1)
      AddHench(cnum, 1525, -1)
      AddHench(cnum, 1526, -1)
      AddHench(cnum, 1527, -1)
      AddHench(cnum, 1012, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1526, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Hellfard],ou voce nao tem o gp necessario"
    end
  elseif req == 227 then
    if Jcshuangtoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1521, -1)
      AddHench(cnum, 1522, -1)
      AddHench(cnum, 1523, -1)
      AddHench(cnum, 1524, -1)
      AddHench(cnum, 1525, -1)
      AddHench(cnum, 1526, -1)
      AddHench(cnum, 1527, -1)
      AddHench(cnum, 1012, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1527, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Hellfard],ou voce nao tem o gp necessario"
    end
  elseif req == 203 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 231, "Mudanca de Level:[Lv165]NeoPongo", 232, "Mudanca de Level:[Lv170]NeoPongo", 233, "Mudanca de Level:[Lv175]NeoPongo", 234, "Mudanca de Level:[Lv180]NeoPongo", 235, "Mudanca de Level:[Lv185]NeoPongo", 236, "Mudanca de Level:[Lv190]NeoPongo", 237, "Mudanca de Level:[Lv195]NeoPongo"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 231 then
    if Jcchaorenxing(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1831, -1)
      AddHench(cnum, 1832, -1)
      AddHench(cnum, 1833, -1)
      AddHench(cnum, 1834, -1)
      AddHench(cnum, 1835, -1)
      AddHench(cnum, 1836, -1)
      AddHench(cnum, 1837, -1)
      AddHench(cnum, 1838, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1831, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPongo],ou voce nao tem o gp necessario"
    end
  elseif req == 232 then
    if Jcchaorenxing(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1831, -1)
      AddHench(cnum, 1832, -1)
      AddHench(cnum, 1833, -1)
      AddHench(cnum, 1834, -1)
      AddHench(cnum, 1835, -1)
      AddHench(cnum, 1836, -1)
      AddHench(cnum, 1837, -1)
      AddHench(cnum, 1838, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1832, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPongo],ou voce nao tem o gp necessario"
    end
  elseif req == 233 then
    if Jcchaorenxing(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1831, -1)
      AddHench(cnum, 1832, -1)
      AddHench(cnum, 1833, -1)
      AddHench(cnum, 1834, -1)
      AddHench(cnum, 1835, -1)
      AddHench(cnum, 1836, -1)
      AddHench(cnum, 1837, -1)
      AddHench(cnum, 1838, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1833, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPongo],ou voce nao tem o gp necessario"
    end
  elseif req == 234 then
    if Jcchaorenxing(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1831, -1)
      AddHench(cnum, 1832, -1)
      AddHench(cnum, 1833, -1)
      AddHench(cnum, 1834, -1)
      AddHench(cnum, 1835, -1)
      AddHench(cnum, 1836, -1)
      AddHench(cnum, 1837, -1)
      AddHench(cnum, 1838, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1834, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPongo],ou voce nao tem o gp necessario"
    end
  elseif req == 235 then
    if Jcchaorenxing(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1831, -1)
      AddHench(cnum, 1832, -1)
      AddHench(cnum, 1833, -1)
      AddHench(cnum, 1834, -1)
      AddHench(cnum, 1835, -1)
      AddHench(cnum, 1836, -1)
      AddHench(cnum, 1837, -1)
      AddHench(cnum, 1838, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1835, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPongo],ou voce nao tem o gp necessario"
    end
  elseif req == 236 then
    if Jcchaorenxing(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1831, -1)
      AddHench(cnum, 1832, -1)
      AddHench(cnum, 1833, -1)
      AddHench(cnum, 1834, -1)
      AddHench(cnum, 1835, -1)
      AddHench(cnum, 1836, -1)
      AddHench(cnum, 1837, -1)
      AddHench(cnum, 1838, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1836, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPongo],ou voce nao tem o gp necessario"
    end
  elseif req == 237 then
    if Jcchaorenxing(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1831, -1)
      AddHench(cnum, 1832, -1)
      AddHench(cnum, 1833, -1)
      AddHench(cnum, 1834, -1)
      AddHench(cnum, 1835, -1)
      AddHench(cnum, 1836, -1)
      AddHench(cnum, 1837, -1)
      AddHench(cnum, 1838, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1837, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPongo],ou voce nao tem o gp necessario"
    end
  elseif req == 204 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 241, "Mudanca de Level:[Lv165]White Elephant", 242, "Mudanca de Level:[Lv170]White Elephant", 243, "Mudanca de Level:[Lv175]White Elephant", 244, "Mudanca de Level:[Lv180]White Elephant", 245, "Mudanca de Level:[Lv185]White Elephant", 246, "Mudanca de Level:[Lv190]White Elephant", 247, "Mudanca de Level:[Lv195]White Elephant", 248, "Mudanca de Level:[Lv200]White Elephant"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 241 then
    if Jcbaixiang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1851, -1)
      AddHench(cnum, 1852, -1)
      AddHench(cnum, 1853, -1)
      AddHench(cnum, 1854, -1)
      AddHench(cnum, 1855, -1)
      AddHench(cnum, 1856, -1)
      AddHench(cnum, 1857, -1)
      AddHench(cnum, 1858, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1851, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[White Elephant],ou voce nao tem o gp necessario"
    end
  elseif req == 242 then
    if Jcbaixiang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1851, -1)
      AddHench(cnum, 1852, -1)
      AddHench(cnum, 1853, -1)
      AddHench(cnum, 1854, -1)
      AddHench(cnum, 1855, -1)
      AddHench(cnum, 1856, -1)
      AddHench(cnum, 1857, -1)
      AddHench(cnum, 1858, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1852, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[White Elephant],ou voce nao tem o gp necessario"
    end
  elseif req == 243 then
    if Jcbaixiang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1851, -1)
      AddHench(cnum, 1852, -1)
      AddHench(cnum, 1853, -1)
      AddHench(cnum, 1854, -1)
      AddHench(cnum, 1855, -1)
      AddHench(cnum, 1856, -1)
      AddHench(cnum, 1857, -1)
      AddHench(cnum, 1858, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1853, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[White Elephant],ou voce nao tem o gp necessario"
    end
  elseif req == 244 then
    if Jcbaixiang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1851, -1)
      AddHench(cnum, 1852, -1)
      AddHench(cnum, 1853, -1)
      AddHench(cnum, 1854, -1)
      AddHench(cnum, 1855, -1)
      AddHench(cnum, 1856, -1)
      AddHench(cnum, 1857, -1)
      AddHench(cnum, 1858, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1854, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[White Elephant],ou voce nao tem o gp necessario"
    end
  elseif req == 245 then
    if Jcbaixiang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1851, -1)
      AddHench(cnum, 1852, -1)
      AddHench(cnum, 1853, -1)
      AddHench(cnum, 1854, -1)
      AddHench(cnum, 1855, -1)
      AddHench(cnum, 1856, -1)
      AddHench(cnum, 1857, -1)
      AddHench(cnum, 1858, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1855, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[White Elephant],ou voce nao tem o gp necessario"
    end
  elseif req == 246 then
    if Jcbaixiang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1851, -1)
      AddHench(cnum, 1852, -1)
      AddHench(cnum, 1853, -1)
      AddHench(cnum, 1854, -1)
      AddHench(cnum, 1855, -1)
      AddHench(cnum, 1856, -1)
      AddHench(cnum, 1857, -1)
      AddHench(cnum, 1858, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1856, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[White Elephant],ou voce nao tem o gp necessario"
    end
  elseif req == 247 then
    if Jcbaixiang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1851, -1)
      AddHench(cnum, 1852, -1)
      AddHench(cnum, 1853, -1)
      AddHench(cnum, 1854, -1)
      AddHench(cnum, 1855, -1)
      AddHench(cnum, 1856, -1)
      AddHench(cnum, 1857, -1)
      AddHench(cnum, 1858, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1857, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[White Elephant],ou voce nao tem o gp necessario"
    end
  elseif req == 248 then
    if Jcbaixiang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1851, -1)
      AddHench(cnum, 1852, -1)
      AddHench(cnum, 1853, -1)
      AddHench(cnum, 1854, -1)
      AddHench(cnum, 1855, -1)
      AddHench(cnum, 1856, -1)
      AddHench(cnum, 1857, -1)
      AddHench(cnum, 1858, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1858, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[White Elephant],ou voce nao tem o gp necessario"
    end
  elseif req == 205 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 251, "Mudanca de Level:[Lv165]Super CryBop", 252, "Mudanca de Level:[Lv170]Super CryBop", 253, "Mudanca de Level:[Lv175]Super CryBop", 254, "Mudanca de Level:[Lv180]Super CryBop", 255, "Mudanca de Level:[Lv185]Super CryBop", 256, "Mudanca de Level:[Lv190]Super CryBop", 257, "Mudanca de Level:[Lv195]Super CryBop"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 251 then
    if Jcmantouzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1221, -1)
      AddHench(cnum, 1222, -1)
      AddHench(cnum, 1223, -1)
      AddHench(cnum, 1224, -1)
      AddHench(cnum, 1225, -1)
      AddHench(cnum, 1226, -1)
      AddHench(cnum, 1227, -1)
      AddHench(cnum, 1228, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1221, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super CryBop],ou voce nao tem o gp necessario"
    end
  elseif req == 252 then
    if Jcmantouzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1221, -1)
      AddHench(cnum, 1222, -1)
      AddHench(cnum, 1223, -1)
      AddHench(cnum, 1224, -1)
      AddHench(cnum, 1225, -1)
      AddHench(cnum, 1226, -1)
      AddHench(cnum, 1227, -1)
      AddHench(cnum, 1228, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1222, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super CryBop],ou voce nao tem o gp necessario"
    end
  elseif req == 253 then
    if Jcmantouzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1221, -1)
      AddHench(cnum, 1222, -1)
      AddHench(cnum, 1223, -1)
      AddHench(cnum, 1224, -1)
      AddHench(cnum, 1225, -1)
      AddHench(cnum, 1226, -1)
      AddHench(cnum, 1227, -1)
      AddHench(cnum, 1228, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1223, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super CryBop],ou voce nao tem o gp necessario"
    end
  elseif req == 254 then
    if Jcmantouzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1221, -1)
      AddHench(cnum, 1222, -1)
      AddHench(cnum, 1223, -1)
      AddHench(cnum, 1224, -1)
      AddHench(cnum, 1225, -1)
      AddHench(cnum, 1226, -1)
      AddHench(cnum, 1227, -1)
      AddHench(cnum, 1228, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1224, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super CryBop],ou voce nao tem o gp necessario"
    end
  elseif req == 255 then
    if Jcmantouzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1221, -1)
      AddHench(cnum, 1222, -1)
      AddHench(cnum, 1223, -1)
      AddHench(cnum, 1224, -1)
      AddHench(cnum, 1225, -1)
      AddHench(cnum, 1226, -1)
      AddHench(cnum, 1227, -1)
      AddHench(cnum, 1228, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1225, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super CryBop],ou voce nao tem o gp necessario"
    end
  elseif req == 256 then
    if Jcmantouzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1221, -1)
      AddHench(cnum, 1222, -1)
      AddHench(cnum, 1223, -1)
      AddHench(cnum, 1224, -1)
      AddHench(cnum, 1225, -1)
      AddHench(cnum, 1226, -1)
      AddHench(cnum, 1227, -1)
      AddHench(cnum, 1228, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1226, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super CryBop],ou voce nao tem o gp necessario"
    end
  elseif req == 257 then
    if Jcmantouzhu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1221, -1)
      AddHench(cnum, 1222, -1)
      AddHench(cnum, 1223, -1)
      AddHench(cnum, 1224, -1)
      AddHench(cnum, 1225, -1)
      AddHench(cnum, 1226, -1)
      AddHench(cnum, 1227, -1)
      AddHench(cnum, 1228, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1227, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super CryBop],ou voce nao tem o gp necessario"
    end
  elseif req == 206 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 261, "Mudanca de Level:[Lv165]Ancient Three", 262, "Mudanca de Level:[Lv170]Ancient Three", 263, "Mudanca de Level:[Lv175]Ancient Three", 264, "Mudanca de Level:[Lv180]Ancient Three", 265, "Mudanca de Level:[Lv185]Ancient Three", 266, "Mudanca de Level:[Lv190]Ancient Three", 267, "Mudanca de Level:[Lv195]Ancient Three", 268, "Mudanca de Level:[Lv200]Ancient Three"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 261 then
    if Jcsantoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1421, -1)
      AddHench(cnum, 1422, -1)
      AddHench(cnum, 1423, -1)
      AddHench(cnum, 1424, -1)
      AddHench(cnum, 1425, -1)
      AddHench(cnum, 1426, -1)
      AddHench(cnum, 1427, -1)
      AddHench(cnum, 1916, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1421, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Ancient Three],ou voce nao tem o gp necessario"
    end
  elseif req == 262 then
    if Jcsantoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1421, -1)
      AddHench(cnum, 1422, -1)
      AddHench(cnum, 1423, -1)
      AddHench(cnum, 1424, -1)
      AddHench(cnum, 1425, -1)
      AddHench(cnum, 1426, -1)
      AddHench(cnum, 1427, -1)
      AddHench(cnum, 1916, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1422, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Ancient Three],ou voce nao tem o gp necessario"
    end
  elseif req == 263 then
    if Jcsantoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1421, -1)
      AddHench(cnum, 1422, -1)
      AddHench(cnum, 1423, -1)
      AddHench(cnum, 1424, -1)
      AddHench(cnum, 1425, -1)
      AddHench(cnum, 1426, -1)
      AddHench(cnum, 1427, -1)
      AddHench(cnum, 1916, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1423, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Ancient Three],ou voce nao tem o gp necessario"
    end
  elseif req == 264 then
    if Jcsantoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1421, -1)
      AddHench(cnum, 1422, -1)
      AddHench(cnum, 1423, -1)
      AddHench(cnum, 1424, -1)
      AddHench(cnum, 1425, -1)
      AddHench(cnum, 1426, -1)
      AddHench(cnum, 1427, -1)
      AddHench(cnum, 1916, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1424, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Ancient Three],ou voce nao tem o gp necessario"
    end
  elseif req == 265 then
    if Jcsantoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1421, -1)
      AddHench(cnum, 1422, -1)
      AddHench(cnum, 1423, -1)
      AddHench(cnum, 1424, -1)
      AddHench(cnum, 1425, -1)
      AddHench(cnum, 1426, -1)
      AddHench(cnum, 1427, -1)
      AddHench(cnum, 1916, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1425, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Ancient Three],ou voce nao tem o gp necessario"
    end
  elseif req == 266 then
    if Jcsantoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1421, -1)
      AddHench(cnum, 1422, -1)
      AddHench(cnum, 1423, -1)
      AddHench(cnum, 1424, -1)
      AddHench(cnum, 1425, -1)
      AddHench(cnum, 1426, -1)
      AddHench(cnum, 1427, -1)
      AddHench(cnum, 1916, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1426, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Ancient Three],ou voce nao tem o gp necessario"
    end
  elseif req == 267 then
    if Jcsantoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1421, -1)
      AddHench(cnum, 1422, -1)
      AddHench(cnum, 1423, -1)
      AddHench(cnum, 1424, -1)
      AddHench(cnum, 1425, -1)
      AddHench(cnum, 1426, -1)
      AddHench(cnum, 1427, -1)
      AddHench(cnum, 1916, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1427, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Ancient Three],ou voce nao tem o gp necessario"
    end
  elseif req == 268 then
    if Jcsantoulang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1421, -1)
      AddHench(cnum, 1422, -1)
      AddHench(cnum, 1423, -1)
      AddHench(cnum, 1424, -1)
      AddHench(cnum, 1425, -1)
      AddHench(cnum, 1426, -1)
      AddHench(cnum, 1427, -1)
      AddHench(cnum, 1916, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1916, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Ancient Three],ou voce nao tem o gp necessario"
    end
  elseif req == 1003 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 6, 0, "Mudar level tipo bird", 302, "Mudar Level:Phoenix", 303, "Mudar Level:NeoKallinAngel", 304, "Mudar Level:NewDukeFire", 305, "Mudar Level:S.MelonFlyer", 306, "Mudar Level:FireflyBirds"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 302 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 321, "Mudanca de Level:[Lv165]Phoenix", 322, "Mudanca de Level:[Lv170]Phoenix", 323, "Mudanca de Level:[Lv175]Phoenix", 324, "Mudanca de Level:[Lv180]Phoenix", 325, "Mudanca de Level:[Lv185]Phoenix", 326, "Mudanca de Level:[Lv190]Phoenix", 327, "Mudanca de Level:[Lv195]Phoenix"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 321 then
    if Jcfenghuang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1531, -1)
      AddHench(cnum, 1532, -1)
      AddHench(cnum, 1533, -1)
      AddHench(cnum, 1534, -1)
      AddHench(cnum, 1535, -1)
      AddHench(cnum, 1536, -1)
      AddHench(cnum, 1537, -1)
      AddHench(cnum, 1056, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1531, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Phoenix],ou voce nao tem o gp necessario"
    end
  elseif req == 322 then
    if Jcfenghuang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1531, -1)
      AddHench(cnum, 1532, -1)
      AddHench(cnum, 1533, -1)
      AddHench(cnum, 1534, -1)
      AddHench(cnum, 1535, -1)
      AddHench(cnum, 1536, -1)
      AddHench(cnum, 1537, -1)
      AddHench(cnum, 1056, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1532, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Phoenix],ou voce nao tem o gp necessario"
    end
  elseif req == 323 then
    if Jcfenghuang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1531, -1)
      AddHench(cnum, 1532, -1)
      AddHench(cnum, 1533, -1)
      AddHench(cnum, 1534, -1)
      AddHench(cnum, 1535, -1)
      AddHench(cnum, 1536, -1)
      AddHench(cnum, 1537, -1)
      AddHench(cnum, 1056, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1533, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Phoenix],ou voce nao tem o gp necessario"
    end
  elseif req == 324 then
    if Jcfenghuang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1531, -1)
      AddHench(cnum, 1532, -1)
      AddHench(cnum, 1533, -1)
      AddHench(cnum, 1534, -1)
      AddHench(cnum, 1535, -1)
      AddHench(cnum, 1536, -1)
      AddHench(cnum, 1537, -1)
      AddHench(cnum, 1056, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1534, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Phoenix],ou voce nao tem o gp necessario"
    end
  elseif req == 325 then
    if Jcfenghuang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1531, -1)
      AddHench(cnum, 1532, -1)
      AddHench(cnum, 1533, -1)
      AddHench(cnum, 1534, -1)
      AddHench(cnum, 1535, -1)
      AddHench(cnum, 1536, -1)
      AddHench(cnum, 1537, -1)
      AddHench(cnum, 1056, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1535, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Phoenix],ou voce nao tem o gp necessario"
    end
  elseif req == 326 then
    if Jcfenghuang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1531, -1)
      AddHench(cnum, 1532, -1)
      AddHench(cnum, 1533, -1)
      AddHench(cnum, 1534, -1)
      AddHench(cnum, 1535, -1)
      AddHench(cnum, 1536, -1)
      AddHench(cnum, 1537, -1)
      AddHench(cnum, 1056, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1536, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Phoenix],ou voce nao tem o gp necessario"
    end
  elseif req == 327 then
    if Jcfenghuang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1531, -1)
      AddHench(cnum, 1532, -1)
      AddHench(cnum, 1533, -1)
      AddHench(cnum, 1534, -1)
      AddHench(cnum, 1535, -1)
      AddHench(cnum, 1536, -1)
      AddHench(cnum, 1537, -1)
      AddHench(cnum, 1056, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1537, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Phoenix],ou voce nao tem o gp necessario"
    end
  elseif req == 303 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 331, "Mudanca de Level:[Lv165]NeoKallinAngel", 332, "Mudanca de Level:[Lv170]NeoKallinAngel", 333, "Mudanca de Level:[Lv175]NeoKallinAngel", 334, "Mudanca de Level:[Lv180]NeoKallinAngel", 335, "Mudanca de Level:[Lv185]NeoKallinAngel", 336, "Mudanca de Level:[Lv190]NeoKallinAngel", 337, "Mudanca de Level:[Lv195]NeoKallinAngel"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 331 then
    if Jccjnvwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1641, -1)
      AddHench(cnum, 1642, -1)
      AddHench(cnum, 1643, -1)
      AddHench(cnum, 1644, -1)
      AddHench(cnum, 1645, -1)
      AddHench(cnum, 1646, -1)
      AddHench(cnum, 1647, -1)
      AddHench(cnum, 1059, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1641, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoKallinAngel],ou voce nao tem o gp necessario"
    end
  elseif req == 332 then
    if Jccjnvwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1641, -1)
      AddHench(cnum, 1642, -1)
      AddHench(cnum, 1643, -1)
      AddHench(cnum, 1644, -1)
      AddHench(cnum, 1645, -1)
      AddHench(cnum, 1646, -1)
      AddHench(cnum, 1647, -1)
      AddHench(cnum, 1059, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1642, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoKallinAngel],ou voce nao tem o gp necessario"
    end
  elseif req == 333 then
    if Jccjnvwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1641, -1)
      AddHench(cnum, 1642, -1)
      AddHench(cnum, 1643, -1)
      AddHench(cnum, 1644, -1)
      AddHench(cnum, 1645, -1)
      AddHench(cnum, 1646, -1)
      AddHench(cnum, 1647, -1)
      AddHench(cnum, 1059, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1643, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoKallinAngel],ou voce nao tem o gp necessario"
    end
  elseif req == 334 then
    if Jccjnvwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1641, -1)
      AddHench(cnum, 1642, -1)
      AddHench(cnum, 1643, -1)
      AddHench(cnum, 1644, -1)
      AddHench(cnum, 1645, -1)
      AddHench(cnum, 1646, -1)
      AddHench(cnum, 1647, -1)
      AddHench(cnum, 1059, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1644, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoKallinAngel],ou voce nao tem o gp necessario"
    end
  elseif req == 335 then
    if Jccjnvwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1641, -1)
      AddHench(cnum, 1642, -1)
      AddHench(cnum, 1643, -1)
      AddHench(cnum, 1644, -1)
      AddHench(cnum, 1645, -1)
      AddHench(cnum, 1646, -1)
      AddHench(cnum, 1647, -1)
      AddHench(cnum, 1059, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1645, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoKallinAngel],ou voce nao tem o gp necessario"
    end
  elseif req == 336 then
    if Jccjnvwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1641, -1)
      AddHench(cnum, 1642, -1)
      AddHench(cnum, 1643, -1)
      AddHench(cnum, 1644, -1)
      AddHench(cnum, 1645, -1)
      AddHench(cnum, 1646, -1)
      AddHench(cnum, 1647, -1)
      AddHench(cnum, 1059, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1646, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoKallinAngel],ou voce nao tem o gp necessario"
    end
  elseif req == 337 then
    if Jccjnvwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1641, -1)
      AddHench(cnum, 1642, -1)
      AddHench(cnum, 1643, -1)
      AddHench(cnum, 1644, -1)
      AddHench(cnum, 1645, -1)
      AddHench(cnum, 1646, -1)
      AddHench(cnum, 1647, -1)
      AddHench(cnum, 1059, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1647, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoKallinAngel],ou voce nao tem o gp necessario"
    end
  elseif req == 304 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 341, "Mudanca de Level:[Lv165]NewDukeFire", 342, "Mudanca de Level:[Lv170]NewDukeFire", 343, "Mudanca de Level:[Lv175]NewDukeFire", 344, "Mudanca de Level:[Lv180]NewDukeFire", 345, "Mudanca de Level:[Lv185]NewDukeFire", 346, "Mudanca de Level:[Lv190]NewDukeFire", 347, "Mudanca de Level:[Lv195]NewDukeFire", 348, "Mudanca de Level:[Lv200]NewDukeFire"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 341 then
    if Jchuolieji(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1821, -1)
      AddHench(cnum, 1822, -1)
      AddHench(cnum, 1823, -1)
      AddHench(cnum, 1824, -1)
      AddHench(cnum, 1825, -1)
      AddHench(cnum, 1826, -1)
      AddHench(cnum, 1827, -1)
      AddHench(cnum, 1828, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1821, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NewDukeFire],ou voce nao tem o gp necessario"
    end
  elseif req == 342 then
    if Jchuolieji(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1821, -1)
      AddHench(cnum, 1822, -1)
      AddHench(cnum, 1823, -1)
      AddHench(cnum, 1824, -1)
      AddHench(cnum, 1825, -1)
      AddHench(cnum, 1826, -1)
      AddHench(cnum, 1827, -1)
      AddHench(cnum, 1828, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1822, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NewDukeFire],ou voce nao tem o gp necessario"
    end
  elseif req == 343 then
    if Jchuolieji(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1821, -1)
      AddHench(cnum, 1822, -1)
      AddHench(cnum, 1823, -1)
      AddHench(cnum, 1824, -1)
      AddHench(cnum, 1825, -1)
      AddHench(cnum, 1826, -1)
      AddHench(cnum, 1827, -1)
      AddHench(cnum, 1828, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1823, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NewDukeFire],ou voce nao tem o gp necessario"
    end
  elseif req == 344 then
    if Jchuolieji(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1821, -1)
      AddHench(cnum, 1822, -1)
      AddHench(cnum, 1823, -1)
      AddHench(cnum, 1824, -1)
      AddHench(cnum, 1825, -1)
      AddHench(cnum, 1826, -1)
      AddHench(cnum, 1827, -1)
      AddHench(cnum, 1828, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1824, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NewDukeFire],ou voce nao tem o gp necessario"
    end
  elseif req == 345 then
    if Jchuolieji(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1821, -1)
      AddHench(cnum, 1822, -1)
      AddHench(cnum, 1823, -1)
      AddHench(cnum, 1824, -1)
      AddHench(cnum, 1825, -1)
      AddHench(cnum, 1826, -1)
      AddHench(cnum, 1827, -1)
      AddHench(cnum, 1828, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1825, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NewDukeFire],ou voce nao tem o gp necessario"
    end
  elseif req == 346 then
    if Jchuolieji(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1821, -1)
      AddHench(cnum, 1822, -1)
      AddHench(cnum, 1823, -1)
      AddHench(cnum, 1824, -1)
      AddHench(cnum, 1825, -1)
      AddHench(cnum, 1826, -1)
      AddHench(cnum, 1827, -1)
      AddHench(cnum, 1828, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1826, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NewDukeFire],ou voce nao tem o gp necessario"
    end
  elseif req == 347 then
    if Jchuolieji(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1821, -1)
      AddHench(cnum, 1822, -1)
      AddHench(cnum, 1823, -1)
      AddHench(cnum, 1824, -1)
      AddHench(cnum, 1825, -1)
      AddHench(cnum, 1826, -1)
      AddHench(cnum, 1827, -1)
      AddHench(cnum, 1828, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1827, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NewDukeFire],ou voce nao tem o gp necessario"
    end
  elseif req == 348 then
    if Jchuolieji(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1821, -1)
      AddHench(cnum, 1822, -1)
      AddHench(cnum, 1823, -1)
      AddHench(cnum, 1824, -1)
      AddHench(cnum, 1825, -1)
      AddHench(cnum, 1826, -1)
      AddHench(cnum, 1827, -1)
      AddHench(cnum, 1828, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1828, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NewDukeFire],ou voce nao tem o gp necessario"
    end
  elseif req == 305 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 351, "Mudanca de Level:[Lv165]S.MelonFlyer", 352, "Mudanca de Level:[Lv170]S.MelonFlyer", 353, "Mudanca de Level:[Lv175]S.MelonFlyer", 354, "Mudanca de Level:[Lv180]S.MelonFlyer", 355, "Mudanca de Level:[Lv185]S.MelonFlyer", 356, "Mudanca de Level:[Lv190]S.MelonFlyer", 357, "Mudanca de Level:[Lv195]S.MelonFlyer"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 351 then
    if Jcguaiguaidan(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1231, -1)
      AddHench(cnum, 1232, -1)
      AddHench(cnum, 1233, -1)
      AddHench(cnum, 1234, -1)
      AddHench(cnum, 1235, -1)
      AddHench(cnum, 1236, -1)
      AddHench(cnum, 1237, -1)
      AddHench(cnum, 1238, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1231, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[S.MelonFlyer],ou voce nao tem o gp necessario"
    end
  elseif req == 352 then
    if Jcguaiguaidan(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1231, -1)
      AddHench(cnum, 1232, -1)
      AddHench(cnum, 1233, -1)
      AddHench(cnum, 1234, -1)
      AddHench(cnum, 1235, -1)
      AddHench(cnum, 1236, -1)
      AddHench(cnum, 1237, -1)
      AddHench(cnum, 1238, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1232, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[S.MelonFlyer],ou voce nao tem o gp necessario"
    end
  elseif req == 353 then
    if Jcguaiguaidan(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1231, -1)
      AddHench(cnum, 1232, -1)
      AddHench(cnum, 1233, -1)
      AddHench(cnum, 1234, -1)
      AddHench(cnum, 1235, -1)
      AddHench(cnum, 1236, -1)
      AddHench(cnum, 1237, -1)
      AddHench(cnum, 1238, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1233, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[S.MelonFlyer],ou voce nao tem o gp necessario"
    end
  elseif req == 354 then
    if Jcguaiguaidan(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1231, -1)
      AddHench(cnum, 1232, -1)
      AddHench(cnum, 1233, -1)
      AddHench(cnum, 1234, -1)
      AddHench(cnum, 1235, -1)
      AddHench(cnum, 1236, -1)
      AddHench(cnum, 1237, -1)
      AddHench(cnum, 1238, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1234, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[S.MelonFlyer],ou voce nao tem o gp necessario"
    end
  elseif req == 355 then
    if Jcguaiguaidan(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1231, -1)
      AddHench(cnum, 1232, -1)
      AddHench(cnum, 1233, -1)
      AddHench(cnum, 1234, -1)
      AddHench(cnum, 1235, -1)
      AddHench(cnum, 1236, -1)
      AddHench(cnum, 1237, -1)
      AddHench(cnum, 1238, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1235, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[S.MelonFlyer],ou voce nao tem o gp necessario"
    end
  elseif req == 356 then
    if Jcguaiguaidan(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1231, -1)
      AddHench(cnum, 1232, -1)
      AddHench(cnum, 1233, -1)
      AddHench(cnum, 1234, -1)
      AddHench(cnum, 1235, -1)
      AddHench(cnum, 1236, -1)
      AddHench(cnum, 1237, -1)
      AddHench(cnum, 1238, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1236, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[S.MelonFlyer],ou voce nao tem o gp necessario"
    end
  elseif req == 357 then
    if Jcguaiguaidan(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1231, -1)
      AddHench(cnum, 1232, -1)
      AddHench(cnum, 1233, -1)
      AddHench(cnum, 1234, -1)
      AddHench(cnum, 1235, -1)
      AddHench(cnum, 1236, -1)
      AddHench(cnum, 1237, -1)
      AddHench(cnum, 1238, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1237, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[S.MelonFlyer],ou voce nao tem o gp necessario"
    end
  elseif req == 306 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 361, "Mudanca de Level:[Lv165]FireflyBirds", 362, "Mudanca de Level:[Lv170]FireflyBirds", 363, "Mudanca de Level:[Lv175]FireflyBirds", 364, "Mudanca de Level:[Lv180]FireflyBirds", 365, "Mudanca de Level:[Lv185]FireflyBirds", 366, "Mudanca de Level:[Lv190]FireflyBirds", 367, "Mudanca de Level:[Lv195]FireflyBirds", 368, "Mudanca de Level:[Lv200]FireflyBirds"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 361 then
    if Jcyinghuoniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1431, -1)
      AddHench(cnum, 1432, -1)
      AddHench(cnum, 1433, -1)
      AddHench(cnum, 1434, -1)
      AddHench(cnum, 1435, -1)
      AddHench(cnum, 1436, -1)
      AddHench(cnum, 1437, -1)
      AddHench(cnum, 1917, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1431, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireflyBirds],ou voce nao tem o gp necessario"
    end
  elseif req == 362 then
    if Jcyinghuoniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1431, -1)
      AddHench(cnum, 1432, -1)
      AddHench(cnum, 1433, -1)
      AddHench(cnum, 1434, -1)
      AddHench(cnum, 1435, -1)
      AddHench(cnum, 1436, -1)
      AddHench(cnum, 1437, -1)
      AddHench(cnum, 1917, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1432, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireflyBirds],ou voce nao tem o gp necessario"
    end
  elseif req == 363 then
    if Jcyinghuoniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1431, -1)
      AddHench(cnum, 1432, -1)
      AddHench(cnum, 1433, -1)
      AddHench(cnum, 1434, -1)
      AddHench(cnum, 1435, -1)
      AddHench(cnum, 1436, -1)
      AddHench(cnum, 1437, -1)
      AddHench(cnum, 1917, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1433, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireflyBirds],ou voce nao tem o gp necessario"
    end
  elseif req == 364 then
    if Jcyinghuoniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1431, -1)
      AddHench(cnum, 1432, -1)
      AddHench(cnum, 1433, -1)
      AddHench(cnum, 1434, -1)
      AddHench(cnum, 1435, -1)
      AddHench(cnum, 1436, -1)
      AddHench(cnum, 1437, -1)
      AddHench(cnum, 1917, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1434, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireflyBirds],ou voce nao tem o gp necessario"
    end
  elseif req == 365 then
    if Jcyinghuoniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1431, -1)
      AddHench(cnum, 1432, -1)
      AddHench(cnum, 1433, -1)
      AddHench(cnum, 1434, -1)
      AddHench(cnum, 1435, -1)
      AddHench(cnum, 1436, -1)
      AddHench(cnum, 1437, -1)
      AddHench(cnum, 1917, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1435, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireflyBirds],ou voce nao tem o gp necessario"
    end
  elseif req == 366 then
    if Jcyinghuoniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1431, -1)
      AddHench(cnum, 1432, -1)
      AddHench(cnum, 1433, -1)
      AddHench(cnum, 1434, -1)
      AddHench(cnum, 1435, -1)
      AddHench(cnum, 1436, -1)
      AddHench(cnum, 1437, -1)
      AddHench(cnum, 1917, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1436, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireflyBirds],ou voce nao tem o gp necessario"
    end
  elseif req == 367 then
    if Jcyinghuoniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1431, -1)
      AddHench(cnum, 1432, -1)
      AddHench(cnum, 1433, -1)
      AddHench(cnum, 1434, -1)
      AddHench(cnum, 1435, -1)
      AddHench(cnum, 1436, -1)
      AddHench(cnum, 1437, -1)
      AddHench(cnum, 1917, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1437, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireflyBirds],ou voce nao tem o gp necessario"
    end
  elseif req == 368 then
    if Jcyinghuoniao(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1431, -1)
      AddHench(cnum, 1432, -1)
      AddHench(cnum, 1433, -1)
      AddHench(cnum, 1434, -1)
      AddHench(cnum, 1435, -1)
      AddHench(cnum, 1436, -1)
      AddHench(cnum, 1437, -1)
      AddHench(cnum, 1917, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1917, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FireflyBirds],ou voce nao tem o gp necessario"
    end
  elseif req == 1004 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 6, 0, "Mudar level tipo insect", 402, "Mudar Level:CutterMartins", 403, "Mudar Level:Neo Tomahawk", 404, "Mudar Level:Super PayaPaya", 405, "Mudar Level:FairyDish", 406, "Mudar Level:KingSnake"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 402 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 421, "Mudanca de Level:[Lv165]CutterMartins", 422, "Mudanca de Level:[Lv170]CutterMartins", 423, "Mudanca de Level:[Lv175]CutterMartins", 424, "Mudanca de Level:[Lv180]CutterMartins", 425, "Mudanca de Level:[Lv185]CutterMartins", 426, "Mudanca de Level:[Lv190]CutterMartins", 427, "Mudanca de Level:[Lv195]CutterMartins"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 421 then
    if Jchongjin(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1541, -1)
      AddHench(cnum, 1542, -1)
      AddHench(cnum, 1543, -1)
      AddHench(cnum, 1544, -1)
      AddHench(cnum, 1545, -1)
      AddHench(cnum, 1546, -1)
      AddHench(cnum, 1547, -1)
      AddHench(cnum, 1038, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1541, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[CutterMartins],ou voce nao tem o gp necessario"
    end
  elseif req == 422 then
    if Jchongjin(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1541, -1)
      AddHench(cnum, 1542, -1)
      AddHench(cnum, 1543, -1)
      AddHench(cnum, 1544, -1)
      AddHench(cnum, 1545, -1)
      AddHench(cnum, 1546, -1)
      AddHench(cnum, 1547, -1)
      AddHench(cnum, 1038, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1542, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[CutterMartins],ou voce nao tem o gp necessario"
    end
  elseif req == 423 then
    if Jchongjin(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1541, -1)
      AddHench(cnum, 1542, -1)
      AddHench(cnum, 1543, -1)
      AddHench(cnum, 1544, -1)
      AddHench(cnum, 1545, -1)
      AddHench(cnum, 1546, -1)
      AddHench(cnum, 1547, -1)
      AddHench(cnum, 1038, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1543, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[CutterMartins],ou voce nao tem o gp necessario"
    end
  elseif req == 424 then
    if Jchongjin(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1541, -1)
      AddHench(cnum, 1542, -1)
      AddHench(cnum, 1543, -1)
      AddHench(cnum, 1544, -1)
      AddHench(cnum, 1545, -1)
      AddHench(cnum, 1546, -1)
      AddHench(cnum, 1547, -1)
      AddHench(cnum, 1038, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1544, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[CutterMartins],ou voce nao tem o gp necessario"
    end
  elseif req == 425 then
    if Jchongjin(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1541, -1)
      AddHench(cnum, 1542, -1)
      AddHench(cnum, 1543, -1)
      AddHench(cnum, 1544, -1)
      AddHench(cnum, 1545, -1)
      AddHench(cnum, 1546, -1)
      AddHench(cnum, 1547, -1)
      AddHench(cnum, 1038, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1545, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[CutterMartins],ou voce nao tem o gp necessario"
    end
  elseif req == 426 then
    if Jchongjin(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1541, -1)
      AddHench(cnum, 1542, -1)
      AddHench(cnum, 1543, -1)
      AddHench(cnum, 1544, -1)
      AddHench(cnum, 1545, -1)
      AddHench(cnum, 1546, -1)
      AddHench(cnum, 1547, -1)
      AddHench(cnum, 1038, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1546, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[CutterMartins],ou voce nao tem o gp necessario"
    end
  elseif req == 427 then
    if Jchongjin(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1541, -1)
      AddHench(cnum, 1542, -1)
      AddHench(cnum, 1543, -1)
      AddHench(cnum, 1544, -1)
      AddHench(cnum, 1545, -1)
      AddHench(cnum, 1546, -1)
      AddHench(cnum, 1547, -1)
      AddHench(cnum, 1038, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1547, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[CutterMartins],ou voce nao tem o gp necessario"
    end
  elseif req == 403 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 431, "Mudanca de Level:[Lv165]Neo Tomahawk", 432, "Mudanca de Level:[Lv170]Neo Tomahawk", 433, "Mudanca de Level:[Lv175]Neo Tomahawk", 434, "Mudanca de Level:[Lv180]Neo Tomahawk", 435, "Mudanca de Level:[Lv185]Neo Tomahawk", 436, "Mudanca de Level:[Lv190]Neo Tomahawk", 437, "Mudanca de Level:[Lv195]Neo Tomahawk"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 431 then
    if Jcheifuchong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1801, -1)
      AddHench(cnum, 1802, -1)
      AddHench(cnum, 1803, -1)
      AddHench(cnum, 1804, -1)
      AddHench(cnum, 1805, -1)
      AddHench(cnum, 1806, -1)
      AddHench(cnum, 1807, -1)
      AddHench(cnum, 1808, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1801, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Tomahawk],ou voce nao tem o gp necessario"
    end
  elseif req == 432 then
    if Jcheifuchong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1801, -1)
      AddHench(cnum, 1802, -1)
      AddHench(cnum, 1803, -1)
      AddHench(cnum, 1804, -1)
      AddHench(cnum, 1805, -1)
      AddHench(cnum, 1806, -1)
      AddHench(cnum, 1807, -1)
      AddHench(cnum, 1808, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1802, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Tomahawk],ou voce nao tem o gp necessario"
    end
  elseif req == 433 then
    if Jcheifuchong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1801, -1)
      AddHench(cnum, 1802, -1)
      AddHench(cnum, 1803, -1)
      AddHench(cnum, 1804, -1)
      AddHench(cnum, 1805, -1)
      AddHench(cnum, 1806, -1)
      AddHench(cnum, 1807, -1)
      AddHench(cnum, 1808, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1803, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Tomahawk],ou voce nao tem o gp necessario"
    end
  elseif req == 434 then
    if Jcheifuchong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1801, -1)
      AddHench(cnum, 1802, -1)
      AddHench(cnum, 1803, -1)
      AddHench(cnum, 1804, -1)
      AddHench(cnum, 1805, -1)
      AddHench(cnum, 1806, -1)
      AddHench(cnum, 1807, -1)
      AddHench(cnum, 1808, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1804, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Tomahawk],ou voce nao tem o gp necessario"
    end
  elseif req == 435 then
    if Jcheifuchong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1801, -1)
      AddHench(cnum, 1802, -1)
      AddHench(cnum, 1803, -1)
      AddHench(cnum, 1804, -1)
      AddHench(cnum, 1805, -1)
      AddHench(cnum, 1806, -1)
      AddHench(cnum, 1807, -1)
      AddHench(cnum, 1808, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1805, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Tomahawk],ou voce nao tem o gp necessario"
    end
  elseif req == 436 then
    if Jcheifuchong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1801, -1)
      AddHench(cnum, 1802, -1)
      AddHench(cnum, 1803, -1)
      AddHench(cnum, 1804, -1)
      AddHench(cnum, 1805, -1)
      AddHench(cnum, 1806, -1)
      AddHench(cnum, 1807, -1)
      AddHench(cnum, 1808, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1806, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Tomahawk],ou voce nao tem o gp necessario"
    end
  elseif req == 437 then
    if Jcheifuchong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1801, -1)
      AddHench(cnum, 1802, -1)
      AddHench(cnum, 1803, -1)
      AddHench(cnum, 1804, -1)
      AddHench(cnum, 1805, -1)
      AddHench(cnum, 1806, -1)
      AddHench(cnum, 1807, -1)
      AddHench(cnum, 1808, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1807, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Tomahawk],ou voce nao tem o gp necessario"
    end
  elseif req == 404 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 441, "Mudanca de Level:[Lv165]Super PayaPaya", 442, "Mudanca de Level:[Lv170]Super PayaPaya", 443, "Mudanca de Level:[Lv175]Super PayaPaya", 444, "Mudanca de Level:[Lv180]Super PayaPaya", 445, "Mudanca de Level:[Lv185]Super PayaPaya", 446, "Mudanca de Level:[Lv190]Super PayaPaya", 447, "Mudanca de Level:[Lv195]Super PayaPaya"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 441 then
    if Jcpiaochong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1241, -1)
      AddHench(cnum, 1242, -1)
      AddHench(cnum, 1243, -1)
      AddHench(cnum, 1244, -1)
      AddHench(cnum, 1245, -1)
      AddHench(cnum, 1246, -1)
      AddHench(cnum, 1247, -1)
      AddHench(cnum, 1248, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1241, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super PayaPaya],ou voce nao tem o gp necessario"
    end
  elseif req == 442 then
    if Jcpiaochong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1241, -1)
      AddHench(cnum, 1242, -1)
      AddHench(cnum, 1243, -1)
      AddHench(cnum, 1244, -1)
      AddHench(cnum, 1245, -1)
      AddHench(cnum, 1246, -1)
      AddHench(cnum, 1247, -1)
      AddHench(cnum, 1248, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1242, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super PayaPaya],ou voce nao tem o gp necessario"
    end
  elseif req == 443 then
    if Jcpiaochong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1241, -1)
      AddHench(cnum, 1242, -1)
      AddHench(cnum, 1243, -1)
      AddHench(cnum, 1244, -1)
      AddHench(cnum, 1245, -1)
      AddHench(cnum, 1246, -1)
      AddHench(cnum, 1247, -1)
      AddHench(cnum, 1248, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1243, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super PayaPaya],ou voce nao tem o gp necessario"
    end
  elseif req == 444 then
    if Jcpiaochong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1241, -1)
      AddHench(cnum, 1242, -1)
      AddHench(cnum, 1243, -1)
      AddHench(cnum, 1244, -1)
      AddHench(cnum, 1245, -1)
      AddHench(cnum, 1246, -1)
      AddHench(cnum, 1247, -1)
      AddHench(cnum, 1248, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1244, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super PayaPaya],ou voce nao tem o gp necessario"
    end
  elseif req == 445 then
    if Jcpiaochong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1241, -1)
      AddHench(cnum, 1242, -1)
      AddHench(cnum, 1243, -1)
      AddHench(cnum, 1244, -1)
      AddHench(cnum, 1245, -1)
      AddHench(cnum, 1246, -1)
      AddHench(cnum, 1247, -1)
      AddHench(cnum, 1248, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1245, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super PayaPaya],ou voce nao tem o gp necessario"
    end
  elseif req == 446 then
    if Jcpiaochong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1241, -1)
      AddHench(cnum, 1242, -1)
      AddHench(cnum, 1243, -1)
      AddHench(cnum, 1244, -1)
      AddHench(cnum, 1245, -1)
      AddHench(cnum, 1246, -1)
      AddHench(cnum, 1247, -1)
      AddHench(cnum, 1248, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1246, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super PayaPaya],ou voce nao tem o gp necessario"
    end
  elseif req == 447 then
    if Jcpiaochong(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1241, -1)
      AddHench(cnum, 1242, -1)
      AddHench(cnum, 1243, -1)
      AddHench(cnum, 1244, -1)
      AddHench(cnum, 1245, -1)
      AddHench(cnum, 1246, -1)
      AddHench(cnum, 1247, -1)
      AddHench(cnum, 1248, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1247, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super PayaPaya],ou voce nao tem o gp necessario"
    end
  elseif req == 405 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 451, "Mudanca de Level:[Lv165]FairyDish", 452, "Mudanca de Level:[Lv170]FairyDish", 453, "Mudanca de Level:[Lv175]FairyDish", 454, "Mudanca de Level:[Lv180]FairyDish", 455, "Mudanca de Level:[Lv185]FairyDish", 456, "Mudanca de Level:[Lv190]FairyDish", 457, "Mudanca de Level:[Lv195]FairyDish", 458, "Mudanca de Level:[Lv200]FairyDish"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 451 then
    if Jcxianzidie(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1441, -1)
      AddHench(cnum, 1442, -1)
      AddHench(cnum, 1443, -1)
      AddHench(cnum, 1444, -1)
      AddHench(cnum, 1445, -1)
      AddHench(cnum, 1446, -1)
      AddHench(cnum, 1447, -1)
      AddHench(cnum, 1918, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1441, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FairyDish],ou voce nao tem o gp necessario"
    end
  elseif req == 452 then
    if Jcxianzidie(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1441, -1)
      AddHench(cnum, 1442, -1)
      AddHench(cnum, 1443, -1)
      AddHench(cnum, 1444, -1)
      AddHench(cnum, 1445, -1)
      AddHench(cnum, 1446, -1)
      AddHench(cnum, 1447, -1)
      AddHench(cnum, 1918, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1442, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FairyDish],ou voce nao tem o gp necessario"
    end
  elseif req == 453 then
    if Jcxianzidie(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1441, -1)
      AddHench(cnum, 1442, -1)
      AddHench(cnum, 1443, -1)
      AddHench(cnum, 1444, -1)
      AddHench(cnum, 1445, -1)
      AddHench(cnum, 1446, -1)
      AddHench(cnum, 1447, -1)
      AddHench(cnum, 1918, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1443, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FairyDish],ou voce nao tem o gp necessario"
    end
  elseif req == 454 then
    if Jcxianzidie(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1441, -1)
      AddHench(cnum, 1442, -1)
      AddHench(cnum, 1443, -1)
      AddHench(cnum, 1444, -1)
      AddHench(cnum, 1445, -1)
      AddHench(cnum, 1446, -1)
      AddHench(cnum, 1447, -1)
      AddHench(cnum, 1918, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1444, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FairyDish],ou voce nao tem o gp necessario"
    end
  elseif req == 455 then
    if Jcxianzidie(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1441, -1)
      AddHench(cnum, 1442, -1)
      AddHench(cnum, 1443, -1)
      AddHench(cnum, 1444, -1)
      AddHench(cnum, 1445, -1)
      AddHench(cnum, 1446, -1)
      AddHench(cnum, 1447, -1)
      AddHench(cnum, 1918, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1445, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FairyDish],ou voce nao tem o gp necessario"
    end
  elseif req == 456 then
    if Jcxianzidie(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1441, -1)
      AddHench(cnum, 1442, -1)
      AddHench(cnum, 1443, -1)
      AddHench(cnum, 1444, -1)
      AddHench(cnum, 1445, -1)
      AddHench(cnum, 1446, -1)
      AddHench(cnum, 1447, -1)
      AddHench(cnum, 1918, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1446, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FairyDish],ou voce nao tem o gp necessario"
    end
  elseif req == 457 then
    if Jcxianzidie(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1441, -1)
      AddHench(cnum, 1442, -1)
      AddHench(cnum, 1443, -1)
      AddHench(cnum, 1444, -1)
      AddHench(cnum, 1445, -1)
      AddHench(cnum, 1446, -1)
      AddHench(cnum, 1447, -1)
      AddHench(cnum, 1918, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1447, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FairyDish],ou voce nao tem o gp necessario"
    end
  elseif req == 458 then
    if Jcxianzidie(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1441, -1)
      AddHench(cnum, 1442, -1)
      AddHench(cnum, 1443, -1)
      AddHench(cnum, 1444, -1)
      AddHench(cnum, 1445, -1)
      AddHench(cnum, 1446, -1)
      AddHench(cnum, 1447, -1)
      AddHench(cnum, 1918, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1918, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[FairyDish],ou voce nao tem o gp necessario"
    end
  elseif req == 406 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 461, "Mudanca de Level:[Lv165]KingSnake", 462, "Mudanca de Level:[Lv170]KingSnake", 463, "Mudanca de Level:[Lv175]KingSnake", 464, "Mudanca de Level:[Lv180]KingSnake", 465, "Mudanca de Level:[Lv185]KingSnake", 466, "Mudanca de Level:[Lv190]KingSnake", 467, "Mudanca de Level:[Lv195]KingSnake", 468, "Mudanca de Level:[Lv200]KingSnake"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 461 then
    if Jcyanjingshe(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1491, -1)
      AddHench(cnum, 1492, -1)
      AddHench(cnum, 1493, -1)
      AddHench(cnum, 1494, -1)
      AddHench(cnum, 1495, -1)
      AddHench(cnum, 1496, -1)
      AddHench(cnum, 1497, -1)
      AddHench(cnum, 1879, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1491, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingSnake],ou voce nao tem o gp necessario"
    end
  elseif req == 462 then
    if Jcyanjingshe(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1491, -1)
      AddHench(cnum, 1492, -1)
      AddHench(cnum, 1493, -1)
      AddHench(cnum, 1494, -1)
      AddHench(cnum, 1495, -1)
      AddHench(cnum, 1496, -1)
      AddHench(cnum, 1497, -1)
      AddHench(cnum, 1879, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1492, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingSnake],ou voce nao tem o gp necessario"
    end
  elseif req == 463 then
    if Jcyanjingshe(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1491, -1)
      AddHench(cnum, 1492, -1)
      AddHench(cnum, 1493, -1)
      AddHench(cnum, 1494, -1)
      AddHench(cnum, 1495, -1)
      AddHench(cnum, 1496, -1)
      AddHench(cnum, 1497, -1)
      AddHench(cnum, 1879, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1493, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingSnake],ou voce nao tem o gp necessario"
    end
  elseif req == 464 then
    if Jcyanjingshe(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1491, -1)
      AddHench(cnum, 1492, -1)
      AddHench(cnum, 1493, -1)
      AddHench(cnum, 1494, -1)
      AddHench(cnum, 1495, -1)
      AddHench(cnum, 1496, -1)
      AddHench(cnum, 1497, -1)
      AddHench(cnum, 1879, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1494, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingSnake],ou voce nao tem o gp necessario"
    end
  elseif req == 465 then
    if Jcyanjingshe(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1491, -1)
      AddHench(cnum, 1492, -1)
      AddHench(cnum, 1493, -1)
      AddHench(cnum, 1494, -1)
      AddHench(cnum, 1495, -1)
      AddHench(cnum, 1496, -1)
      AddHench(cnum, 1497, -1)
      AddHench(cnum, 1879, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1495, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingSnake],ou voce nao tem o gp necessario"
    end
  elseif req == 466 then
    if Jcyanjingshe(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1491, -1)
      AddHench(cnum, 1492, -1)
      AddHench(cnum, 1493, -1)
      AddHench(cnum, 1494, -1)
      AddHench(cnum, 1495, -1)
      AddHench(cnum, 1496, -1)
      AddHench(cnum, 1497, -1)
      AddHench(cnum, 1879, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1496, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingSnake],ou voce nao tem o gp necessario"
    end
  elseif req == 467 then
    if Jcyanjingshe(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1491, -1)
      AddHench(cnum, 1492, -1)
      AddHench(cnum, 1493, -1)
      AddHench(cnum, 1494, -1)
      AddHench(cnum, 1495, -1)
      AddHench(cnum, 1496, -1)
      AddHench(cnum, 1497, -1)
      AddHench(cnum, 1879, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1497, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingSnake],ou voce nao tem o gp necessario"
    end
  elseif req == 468 then
    if Jcyanjingshe(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1491, -1)
      AddHench(cnum, 1492, -1)
      AddHench(cnum, 1493, -1)
      AddHench(cnum, 1494, -1)
      AddHench(cnum, 1495, -1)
      AddHench(cnum, 1496, -1)
      AddHench(cnum, 1497, -1)
      AddHench(cnum, 1879, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1879, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[KingSnake],ou voce nao tem o gp necessario"
    end
  elseif req == 1005 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 6, 0, "Mudar level tipo plant", 502, "Mudar Level:Napenthes", 503, "Mudar Level:NeoPenrilSanta", 504, "Mudar Level:Neo Garlingz", 505, "Mudar Level:Super Yeon", 506, "Mudar Level:ToxicWoman"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 502 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 521, "Mudanca de Level:[Lv165]Napenthes", 522, "Mudanca de Level:[Lv170]Napenthes", 523, "Mudanca de Level:[Lv175]Napenthes", 524, "Mudanca de Level:[Lv180]Napenthes", 525, "Mudanca de Level:[Lv185]Napenthes", 526, "Mudanca de Level:[Lv190]Napenthes", 527, "Mudanca de Level:[Lv195]Napenthes"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 521 then
    if Jcshirenshu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1551, -1)
      AddHench(cnum, 1552, -1)
      AddHench(cnum, 1553, -1)
      AddHench(cnum, 1554, -1)
      AddHench(cnum, 1555, -1)
      AddHench(cnum, 1556, -1)
      AddHench(cnum, 1557, -1)
      AddHench(cnum, 852, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1551, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Napenthes],ou voce nao tem o gp necessario"
    end
  elseif req == 522 then
    if Jcshirenshu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1551, -1)
      AddHench(cnum, 1552, -1)
      AddHench(cnum, 1553, -1)
      AddHench(cnum, 1554, -1)
      AddHench(cnum, 1555, -1)
      AddHench(cnum, 1556, -1)
      AddHench(cnum, 1557, -1)
      AddHench(cnum, 852, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1552, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Napenthes],ou voce nao tem o gp necessario"
    end
  elseif req == 523 then
    if Jcshirenshu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1551, -1)
      AddHench(cnum, 1552, -1)
      AddHench(cnum, 1553, -1)
      AddHench(cnum, 1554, -1)
      AddHench(cnum, 1555, -1)
      AddHench(cnum, 1556, -1)
      AddHench(cnum, 1557, -1)
      AddHench(cnum, 852, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1553, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Napenthes],ou voce nao tem o gp necessario"
    end
  elseif req == 524 then
    if Jcshirenshu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1551, -1)
      AddHench(cnum, 1552, -1)
      AddHench(cnum, 1553, -1)
      AddHench(cnum, 1554, -1)
      AddHench(cnum, 1555, -1)
      AddHench(cnum, 1556, -1)
      AddHench(cnum, 1557, -1)
      AddHench(cnum, 852, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1554, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Napenthes],ou voce nao tem o gp necessario"
    end
  elseif req == 525 then
    if Jcshirenshu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1551, -1)
      AddHench(cnum, 1552, -1)
      AddHench(cnum, 1553, -1)
      AddHench(cnum, 1554, -1)
      AddHench(cnum, 1555, -1)
      AddHench(cnum, 1556, -1)
      AddHench(cnum, 1557, -1)
      AddHench(cnum, 852, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1555, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Napenthes],ou voce nao tem o gp necessario"
    end
  elseif req == 526 then
    if Jcshirenshu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1551, -1)
      AddHench(cnum, 1552, -1)
      AddHench(cnum, 1553, -1)
      AddHench(cnum, 1554, -1)
      AddHench(cnum, 1555, -1)
      AddHench(cnum, 1556, -1)
      AddHench(cnum, 1557, -1)
      AddHench(cnum, 852, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1556, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Napenthes],ou voce nao tem o gp necessario"
    end
  elseif req == 527 then
    if Jcshirenshu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1551, -1)
      AddHench(cnum, 1552, -1)
      AddHench(cnum, 1553, -1)
      AddHench(cnum, 1554, -1)
      AddHench(cnum, 1555, -1)
      AddHench(cnum, 1556, -1)
      AddHench(cnum, 1557, -1)
      AddHench(cnum, 852, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1557, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Napenthes],ou voce nao tem o gp necessario"
    end
  elseif req == 503 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 531, "Mudanca de Level:[Lv165]NeoPenrilSanta", 532, "Mudanca de Level:[Lv170]NeoPenrilSanta", 533, "Mudanca de Level:[Lv175]NeoPenrilSanta", 534, "Mudanca de Level:[Lv180]NeoPenrilSanta", 535, "Mudanca de Level:[Lv185]NeoPenrilSanta", 536, "Mudanca de Level:[Lv190]NeoPenrilSanta", 537, "Mudanca de Level:[Lv195]NeoPenrilSanta", 538, "Mudanca de Level:[Lv200]NeoPenrilSanta"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 531 then
    if Jcfenli(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1601, -1)
      AddHench(cnum, 1602, -1)
      AddHench(cnum, 1603, -1)
      AddHench(cnum, 1604, -1)
      AddHench(cnum, 1605, -1)
      AddHench(cnum, 1606, -1)
      AddHench(cnum, 1607, -1)
      AddHench(cnum, 345, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1601, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPenrilSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 532 then
    if Jcfenli(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1601, -1)
      AddHench(cnum, 1602, -1)
      AddHench(cnum, 1603, -1)
      AddHench(cnum, 1604, -1)
      AddHench(cnum, 1605, -1)
      AddHench(cnum, 1606, -1)
      AddHench(cnum, 1607, -1)
      AddHench(cnum, 345, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1602, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPenrilSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 533 then
    if Jcfenli(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1601, -1)
      AddHench(cnum, 1602, -1)
      AddHench(cnum, 1603, -1)
      AddHench(cnum, 1604, -1)
      AddHench(cnum, 1605, -1)
      AddHench(cnum, 1606, -1)
      AddHench(cnum, 1607, -1)
      AddHench(cnum, 345, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1603, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPenrilSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 534 then
    if Jcfenli(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1601, -1)
      AddHench(cnum, 1602, -1)
      AddHench(cnum, 1603, -1)
      AddHench(cnum, 1604, -1)
      AddHench(cnum, 1605, -1)
      AddHench(cnum, 1606, -1)
      AddHench(cnum, 1607, -1)
      AddHench(cnum, 345, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1604, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPenrilSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 535 then
    if Jcfenli(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1601, -1)
      AddHench(cnum, 1602, -1)
      AddHench(cnum, 1603, -1)
      AddHench(cnum, 1604, -1)
      AddHench(cnum, 1605, -1)
      AddHench(cnum, 1606, -1)
      AddHench(cnum, 1607, -1)
      AddHench(cnum, 345, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1605, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPenrilSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 536 then
    if Jcfenli(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1601, -1)
      AddHench(cnum, 1602, -1)
      AddHench(cnum, 1603, -1)
      AddHench(cnum, 1604, -1)
      AddHench(cnum, 1605, -1)
      AddHench(cnum, 1606, -1)
      AddHench(cnum, 1607, -1)
      AddHench(cnum, 345, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1606, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPenrilSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 537 then
    if Jcfenli(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1601, -1)
      AddHench(cnum, 1602, -1)
      AddHench(cnum, 1603, -1)
      AddHench(cnum, 1604, -1)
      AddHench(cnum, 1605, -1)
      AddHench(cnum, 1606, -1)
      AddHench(cnum, 1607, -1)
      AddHench(cnum, 345, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1607, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPenrilSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 538 then
    if Jcfenli(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1601, -1)
      AddHench(cnum, 1602, -1)
      AddHench(cnum, 1603, -1)
      AddHench(cnum, 1604, -1)
      AddHench(cnum, 1605, -1)
      AddHench(cnum, 1606, -1)
      AddHench(cnum, 1607, -1)
      AddHench(cnum, 345, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 345, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPenrilSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 504 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 541, "Mudanca de Level:[Lv165]Neo Garlingz", 542, "Mudanca de Level:[Lv170]Neo Garlingz", 543, "Mudanca de Level:[Lv175]Neo Garlingz", 544, "Mudanca de Level:[Lv180]Neo Garlingz", 545, "Mudanca de Level:[Lv185]Neo Garlingz", 546, "Mudanca de Level:[Lv190]Neo Garlingz", 547, "Mudanca de Level:[Lv195]Neo Garlingz"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 541 then
    if Jccjjubi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1651, -1)
      AddHench(cnum, 1652, -1)
      AddHench(cnum, 1653, -1)
      AddHench(cnum, 1654, -1)
      AddHench(cnum, 1655, -1)
      AddHench(cnum, 1656, -1)
      AddHench(cnum, 1657, -1)
      AddHench(cnum, 1060, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1651, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Garlingz],ou voce nao tem o gp necessario"
    end
  elseif req == 542 then
    if Jccjjubi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1651, -1)
      AddHench(cnum, 1652, -1)
      AddHench(cnum, 1653, -1)
      AddHench(cnum, 1654, -1)
      AddHench(cnum, 1655, -1)
      AddHench(cnum, 1656, -1)
      AddHench(cnum, 1657, -1)
      AddHench(cnum, 1060, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1652, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Garlingz],ou voce nao tem o gp necessario"
    end
  elseif req == 543 then
    if Jccjjubi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1651, -1)
      AddHench(cnum, 1652, -1)
      AddHench(cnum, 1653, -1)
      AddHench(cnum, 1654, -1)
      AddHench(cnum, 1655, -1)
      AddHench(cnum, 1656, -1)
      AddHench(cnum, 1657, -1)
      AddHench(cnum, 1060, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1653, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Garlingz],ou voce nao tem o gp necessario"
    end
  elseif req == 544 then
    if Jccjjubi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1651, -1)
      AddHench(cnum, 1652, -1)
      AddHench(cnum, 1653, -1)
      AddHench(cnum, 1654, -1)
      AddHench(cnum, 1655, -1)
      AddHench(cnum, 1656, -1)
      AddHench(cnum, 1657, -1)
      AddHench(cnum, 1060, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1654, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Garlingz],ou voce nao tem o gp necessario"
    end
  elseif req == 545 then
    if Jccjjubi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1651, -1)
      AddHench(cnum, 1652, -1)
      AddHench(cnum, 1653, -1)
      AddHench(cnum, 1654, -1)
      AddHench(cnum, 1655, -1)
      AddHench(cnum, 1656, -1)
      AddHench(cnum, 1657, -1)
      AddHench(cnum, 1060, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1655, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Garlingz],ou voce nao tem o gp necessario"
    end
  elseif req == 546 then
    if Jccjjubi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1651, -1)
      AddHench(cnum, 1652, -1)
      AddHench(cnum, 1653, -1)
      AddHench(cnum, 1654, -1)
      AddHench(cnum, 1655, -1)
      AddHench(cnum, 1656, -1)
      AddHench(cnum, 1657, -1)
      AddHench(cnum, 1060, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1656, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Garlingz],ou voce nao tem o gp necessario"
    end
  elseif req == 547 then
    if Jccjjubi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1651, -1)
      AddHench(cnum, 1652, -1)
      AddHench(cnum, 1653, -1)
      AddHench(cnum, 1654, -1)
      AddHench(cnum, 1655, -1)
      AddHench(cnum, 1656, -1)
      AddHench(cnum, 1657, -1)
      AddHench(cnum, 1060, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1657, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Garlingz],ou voce nao tem o gp necessario"
    end
  elseif req == 505 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 551, "Mudanca de Level:[Lv165]Super Yeon", 552, "Mudanca de Level:[Lv170]Super Yeon", 553, "Mudanca de Level:[Lv175]Super Yeon", 554, "Mudanca de Level:[Lv180]Super Yeon", 555, "Mudanca de Level:[Lv185]Super Yeon", 556, "Mudanca de Level:[Lv190]Super Yeon", 557, "Mudanca de Level:[Lv195]Super Yeon"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 551 then
    if Jclvyebb(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1251, -1)
      AddHench(cnum, 1252, -1)
      AddHench(cnum, 1253, -1)
      AddHench(cnum, 1254, -1)
      AddHench(cnum, 1255, -1)
      AddHench(cnum, 1256, -1)
      AddHench(cnum, 1257, -1)
      AddHench(cnum, 1258, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1251, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Yeon],ou voce nao tem o gp necessario"
    end
  elseif req == 552 then
    if Jclvyebb(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1251, -1)
      AddHench(cnum, 1252, -1)
      AddHench(cnum, 1253, -1)
      AddHench(cnum, 1254, -1)
      AddHench(cnum, 1255, -1)
      AddHench(cnum, 1256, -1)
      AddHench(cnum, 1257, -1)
      AddHench(cnum, 1258, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1252, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Yeon],ou voce nao tem o gp necessario"
    end
  elseif req == 553 then
    if Jclvyebb(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1251, -1)
      AddHench(cnum, 1252, -1)
      AddHench(cnum, 1253, -1)
      AddHench(cnum, 1254, -1)
      AddHench(cnum, 1255, -1)
      AddHench(cnum, 1256, -1)
      AddHench(cnum, 1257, -1)
      AddHench(cnum, 1258, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1253, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Yeon],ou voce nao tem o gp necessario"
    end
  elseif req == 554 then
    if Jclvyebb(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1251, -1)
      AddHench(cnum, 1252, -1)
      AddHench(cnum, 1253, -1)
      AddHench(cnum, 1254, -1)
      AddHench(cnum, 1255, -1)
      AddHench(cnum, 1256, -1)
      AddHench(cnum, 1257, -1)
      AddHench(cnum, 1258, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1254, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Yeon],ou voce nao tem o gp necessario"
    end
  elseif req == 555 then
    if Jclvyebb(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1251, -1)
      AddHench(cnum, 1252, -1)
      AddHench(cnum, 1253, -1)
      AddHench(cnum, 1254, -1)
      AddHench(cnum, 1255, -1)
      AddHench(cnum, 1256, -1)
      AddHench(cnum, 1257, -1)
      AddHench(cnum, 1258, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1255, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Yeon],ou voce nao tem o gp necessario"
    end
  elseif req == 556 then
    if Jclvyebb(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1251, -1)
      AddHench(cnum, 1252, -1)
      AddHench(cnum, 1253, -1)
      AddHench(cnum, 1254, -1)
      AddHench(cnum, 1255, -1)
      AddHench(cnum, 1256, -1)
      AddHench(cnum, 1257, -1)
      AddHench(cnum, 1258, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1256, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Yeon],ou voce nao tem o gp necessario"
    end
  elseif req == 557 then
    if Jclvyebb(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1251, -1)
      AddHench(cnum, 1252, -1)
      AddHench(cnum, 1253, -1)
      AddHench(cnum, 1254, -1)
      AddHench(cnum, 1255, -1)
      AddHench(cnum, 1256, -1)
      AddHench(cnum, 1257, -1)
      AddHench(cnum, 1258, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1257, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Yeon],ou voce nao tem o gp necessario"
    end
  elseif req == 506 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 561, "Mudanca de Level:[Lv165]ToxicWoman", 562, "Mudanca de Level:[Lv170]ToxicWoman", 563, "Mudanca de Level:[Lv175]ToxicWoman", 564, "Mudanca de Level:[Lv180]ToxicWoman", 565, "Mudanca de Level:[Lv185]ToxicWoman", 566, "Mudanca de Level:[Lv190]ToxicWoman", 567, "Mudanca de Level:[Lv195]ToxicWoman", 568, "Mudanca de Level:[Lv200]ToxicWoman"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 561 then
    if Jcmantuoluo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1451, -1)
      AddHench(cnum, 1452, -1)
      AddHench(cnum, 1453, -1)
      AddHench(cnum, 1454, -1)
      AddHench(cnum, 1455, -1)
      AddHench(cnum, 1456, -1)
      AddHench(cnum, 1457, -1)
      AddHench(cnum, 1919, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1451, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[ToxicWoman],ou voce nao tem o gp necessario"
    end
  elseif req == 562 then
    if Jcmantuoluo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1451, -1)
      AddHench(cnum, 1452, -1)
      AddHench(cnum, 1453, -1)
      AddHench(cnum, 1454, -1)
      AddHench(cnum, 1455, -1)
      AddHench(cnum, 1456, -1)
      AddHench(cnum, 1457, -1)
      AddHench(cnum, 1919, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1452, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[ToxicWoman],ou voce nao tem o gp necessario"
    end
  elseif req == 563 then
    if Jcmantuoluo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1451, -1)
      AddHench(cnum, 1452, -1)
      AddHench(cnum, 1453, -1)
      AddHench(cnum, 1454, -1)
      AddHench(cnum, 1455, -1)
      AddHench(cnum, 1456, -1)
      AddHench(cnum, 1457, -1)
      AddHench(cnum, 1919, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1453, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[ToxicWoman],ou voce nao tem o gp necessario"
    end
  elseif req == 564 then
    if Jcmantuoluo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1451, -1)
      AddHench(cnum, 1452, -1)
      AddHench(cnum, 1453, -1)
      AddHench(cnum, 1454, -1)
      AddHench(cnum, 1455, -1)
      AddHench(cnum, 1456, -1)
      AddHench(cnum, 1457, -1)
      AddHench(cnum, 1919, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1454, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[ToxicWoman],ou voce nao tem o gp necessario"
    end
  elseif req == 565 then
    if Jcmantuoluo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1451, -1)
      AddHench(cnum, 1452, -1)
      AddHench(cnum, 1453, -1)
      AddHench(cnum, 1454, -1)
      AddHench(cnum, 1455, -1)
      AddHench(cnum, 1456, -1)
      AddHench(cnum, 1457, -1)
      AddHench(cnum, 1919, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1455, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[ToxicWoman],ou voce nao tem o gp necessario"
    end
  elseif req == 566 then
    if Jcmantuoluo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1451, -1)
      AddHench(cnum, 1452, -1)
      AddHench(cnum, 1453, -1)
      AddHench(cnum, 1454, -1)
      AddHench(cnum, 1455, -1)
      AddHench(cnum, 1456, -1)
      AddHench(cnum, 1457, -1)
      AddHench(cnum, 1919, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1456, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[ToxicWoman],ou voce nao tem o gp necessario"
    end
  elseif req == 567 then
    if Jcmantuoluo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1451, -1)
      AddHench(cnum, 1452, -1)
      AddHench(cnum, 1453, -1)
      AddHench(cnum, 1454, -1)
      AddHench(cnum, 1455, -1)
      AddHench(cnum, 1456, -1)
      AddHench(cnum, 1457, -1)
      AddHench(cnum, 1919, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1457, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[ToxicWoman],ou voce nao tem o gp necessario"
    end
  elseif req == 568 then
    if Jcmantuoluo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1451, -1)
      AddHench(cnum, 1452, -1)
      AddHench(cnum, 1453, -1)
      AddHench(cnum, 1454, -1)
      AddHench(cnum, 1455, -1)
      AddHench(cnum, 1456, -1)
      AddHench(cnum, 1457, -1)
      AddHench(cnum, 1919, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1919, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[ToxicWoman],ou voce nao tem o gp necessario"
    end
  elseif req == 1006 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 7, 0, "Mudar level tipo mysteri", 602, "Mudar Level:RoofTileGeneral", 603, "Mudar Level:NeoPhoySanta", 604, "Mudar Level:Neo Paparong", 605, "Mudar Level:Super Soo", 606, "Mudar Level:Scepter Wizards", 607, "Mudar Level:NeoNinjaTurtles"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 602 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 621, "Mudanca de Level:[Lv165]RoofTileGeneral", 622, "Mudanca de Level:[Lv170]RoofTileGeneral", 623, "Mudanca de Level:[Lv175]RoofTileGeneral", 624, "Mudanca de Level:[Lv180]RoofTileGeneral", 625, "Mudanca de Level:[Lv185]RoofTileGeneral", 626, "Mudanca de Level:[Lv190]RoofTileGeneral", 627, "Mudanca de Level:[Lv195]RoofTileGeneral"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 621 then
    if Jcwushiwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1561, -1)
      AddHench(cnum, 1562, -1)
      AddHench(cnum, 1563, -1)
      AddHench(cnum, 1564, -1)
      AddHench(cnum, 1565, -1)
      AddHench(cnum, 1566, -1)
      AddHench(cnum, 1567, -1)
      AddHench(cnum, 866, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1561, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[RoofTileGeneral],ou voce nao tem o gp necessario"
    end
  elseif req == 622 then
    if Jcwushiwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1561, -1)
      AddHench(cnum, 1562, -1)
      AddHench(cnum, 1563, -1)
      AddHench(cnum, 1564, -1)
      AddHench(cnum, 1565, -1)
      AddHench(cnum, 1566, -1)
      AddHench(cnum, 1567, -1)
      AddHench(cnum, 866, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1562, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[RoofTileGeneral],ou voce nao tem o gp necessario"
    end
  elseif req == 623 then
    if Jcwushiwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1561, -1)
      AddHench(cnum, 1562, -1)
      AddHench(cnum, 1563, -1)
      AddHench(cnum, 1564, -1)
      AddHench(cnum, 1565, -1)
      AddHench(cnum, 1566, -1)
      AddHench(cnum, 1567, -1)
      AddHench(cnum, 866, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1563, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[RoofTileGeneral],ou voce nao tem o gp necessario"
    end
  elseif req == 624 then
    if Jcwushiwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1561, -1)
      AddHench(cnum, 1562, -1)
      AddHench(cnum, 1563, -1)
      AddHench(cnum, 1564, -1)
      AddHench(cnum, 1565, -1)
      AddHench(cnum, 1566, -1)
      AddHench(cnum, 1567, -1)
      AddHench(cnum, 866, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1564, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[RoofTileGeneral],ou voce nao tem o gp necessario"
    end
  elseif req == 625 then
    if Jcwushiwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1561, -1)
      AddHench(cnum, 1562, -1)
      AddHench(cnum, 1563, -1)
      AddHench(cnum, 1564, -1)
      AddHench(cnum, 1565, -1)
      AddHench(cnum, 1566, -1)
      AddHench(cnum, 1567, -1)
      AddHench(cnum, 866, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1565, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[RoofTileGeneral],ou voce nao tem o gp necessario"
    end
  elseif req == 626 then
    if Jcwushiwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1561, -1)
      AddHench(cnum, 1562, -1)
      AddHench(cnum, 1563, -1)
      AddHench(cnum, 1564, -1)
      AddHench(cnum, 1565, -1)
      AddHench(cnum, 1566, -1)
      AddHench(cnum, 1567, -1)
      AddHench(cnum, 866, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1566, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[RoofTileGeneral],ou voce nao tem o gp necessario"
    end
  elseif req == 627 then
    if Jcwushiwang(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1561, -1)
      AddHench(cnum, 1562, -1)
      AddHench(cnum, 1563, -1)
      AddHench(cnum, 1564, -1)
      AddHench(cnum, 1565, -1)
      AddHench(cnum, 1566, -1)
      AddHench(cnum, 1567, -1)
      AddHench(cnum, 866, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1567, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[RoofTileGeneral],ou voce nao tem o gp necessario"
    end
  elseif req == 603 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 631, "Mudanca de Level:[Lv165]NeoPhoySanta", 632, "Mudanca de Level:[Lv170]NeoPhoySanta", 633, "Mudanca de Level:[Lv175]NeoPhoySanta", 634, "Mudanca de Level:[Lv180]NeoPhoySanta", 635, "Mudanca de Level:[Lv185]NeoPhoySanta", 636, "Mudanca de Level:[Lv190]NeoPhoySanta", 637, "Mudanca de Level:[Lv195]NeoPhoySanta", 638, "Mudanca de Level:[Lv200]NeoPhoySanta"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 631 then
    if Jcboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1611, -1)
      AddHench(cnum, 1612, -1)
      AddHench(cnum, 1613, -1)
      AddHench(cnum, 1614, -1)
      AddHench(cnum, 1615, -1)
      AddHench(cnum, 1616, -1)
      AddHench(cnum, 1617, -1)
      AddHench(cnum, 346, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1611, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPhoySanta],ou voce nao tem o gp necessario"
    end
  elseif req == 632 then
    if Jcboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1611, -1)
      AddHench(cnum, 1612, -1)
      AddHench(cnum, 1613, -1)
      AddHench(cnum, 1614, -1)
      AddHench(cnum, 1615, -1)
      AddHench(cnum, 1616, -1)
      AddHench(cnum, 1617, -1)
      AddHench(cnum, 346, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1612, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPhoySanta],ou voce nao tem o gp necessario"
    end
  elseif req == 633 then
    if Jcboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1611, -1)
      AddHench(cnum, 1612, -1)
      AddHench(cnum, 1613, -1)
      AddHench(cnum, 1614, -1)
      AddHench(cnum, 1615, -1)
      AddHench(cnum, 1616, -1)
      AddHench(cnum, 1617, -1)
      AddHench(cnum, 346, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1613, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPhoySanta],ou voce nao tem o gp necessario"
    end
  elseif req == 634 then
    if Jcboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1611, -1)
      AddHench(cnum, 1612, -1)
      AddHench(cnum, 1613, -1)
      AddHench(cnum, 1614, -1)
      AddHench(cnum, 1615, -1)
      AddHench(cnum, 1616, -1)
      AddHench(cnum, 1617, -1)
      AddHench(cnum, 346, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1614, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPhoySanta],ou voce nao tem o gp necessario"
    end
  elseif req == 635 then
    if Jcboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1611, -1)
      AddHench(cnum, 1612, -1)
      AddHench(cnum, 1613, -1)
      AddHench(cnum, 1614, -1)
      AddHench(cnum, 1615, -1)
      AddHench(cnum, 1616, -1)
      AddHench(cnum, 1617, -1)
      AddHench(cnum, 346, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1615, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPhoySanta],ou voce nao tem o gp necessario"
    end
  elseif req == 636 then
    if Jcboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1611, -1)
      AddHench(cnum, 1612, -1)
      AddHench(cnum, 1613, -1)
      AddHench(cnum, 1614, -1)
      AddHench(cnum, 1615, -1)
      AddHench(cnum, 1616, -1)
      AddHench(cnum, 1617, -1)
      AddHench(cnum, 346, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1616, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPhoySanta],ou voce nao tem o gp necessario"
    end
  elseif req == 637 then
    if Jcboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1611, -1)
      AddHench(cnum, 1612, -1)
      AddHench(cnum, 1613, -1)
      AddHench(cnum, 1614, -1)
      AddHench(cnum, 1615, -1)
      AddHench(cnum, 1616, -1)
      AddHench(cnum, 1617, -1)
      AddHench(cnum, 346, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1617, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPhoySanta],ou voce nao tem o gp necessario"
    end
  elseif req == 638 then
    if Jcboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1611, -1)
      AddHench(cnum, 1612, -1)
      AddHench(cnum, 1613, -1)
      AddHench(cnum, 1614, -1)
      AddHench(cnum, 1615, -1)
      AddHench(cnum, 1616, -1)
      AddHench(cnum, 1617, -1)
      AddHench(cnum, 346, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 346, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoPhoySanta],ou voce nao tem o gp necessario"
    end
  elseif req == 604 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 641, "Mudanca de Level:[Lv165]Neo Paparong", 642, "Mudanca de Level:[Lv170]Neo Paparong", 643, "Mudanca de Level:[Lv175]Neo Paparong", 644, "Mudanca de Level:[Lv180]Neo Paparong", 645, "Mudanca de Level:[Lv185]Neo Paparong", 646, "Mudanca de Level:[Lv190]Neo Paparong", 647, "Mudanca de Level:[Lv195]Neo Paparong"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 641 then
    if Jccjguimian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1621, -1)
      AddHench(cnum, 1622, -1)
      AddHench(cnum, 1623, -1)
      AddHench(cnum, 1624, -1)
      AddHench(cnum, 1625, -1)
      AddHench(cnum, 1626, -1)
      AddHench(cnum, 1627, -1)
      AddHench(cnum, 342, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1621, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Paparong],ou voce nao tem o gp necessario"
    end
  elseif req == 642 then
    if Jccjguimian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1621, -1)
      AddHench(cnum, 1622, -1)
      AddHench(cnum, 1623, -1)
      AddHench(cnum, 1624, -1)
      AddHench(cnum, 1625, -1)
      AddHench(cnum, 1626, -1)
      AddHench(cnum, 1627, -1)
      AddHench(cnum, 342, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1622, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Paparong],ou voce nao tem o gp necessario"
    end
  elseif req == 643 then
    if Jccjguimian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1621, -1)
      AddHench(cnum, 1622, -1)
      AddHench(cnum, 1623, -1)
      AddHench(cnum, 1624, -1)
      AddHench(cnum, 1625, -1)
      AddHench(cnum, 1626, -1)
      AddHench(cnum, 1627, -1)
      AddHench(cnum, 342, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1623, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Paparong],ou voce nao tem o gp necessario"
    end
  elseif req == 644 then
    if Jccjguimian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1621, -1)
      AddHench(cnum, 1622, -1)
      AddHench(cnum, 1623, -1)
      AddHench(cnum, 1624, -1)
      AddHench(cnum, 1625, -1)
      AddHench(cnum, 1626, -1)
      AddHench(cnum, 1627, -1)
      AddHench(cnum, 342, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1624, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Paparong],ou voce nao tem o gp necessario"
    end
  elseif req == 645 then
    if Jccjguimian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1621, -1)
      AddHench(cnum, 1622, -1)
      AddHench(cnum, 1623, -1)
      AddHench(cnum, 1624, -1)
      AddHench(cnum, 1625, -1)
      AddHench(cnum, 1626, -1)
      AddHench(cnum, 1627, -1)
      AddHench(cnum, 342, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1625, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Paparong],ou voce nao tem o gp necessario"
    end
  elseif req == 646 then
    if Jccjguimian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1621, -1)
      AddHench(cnum, 1622, -1)
      AddHench(cnum, 1623, -1)
      AddHench(cnum, 1624, -1)
      AddHench(cnum, 1625, -1)
      AddHench(cnum, 1626, -1)
      AddHench(cnum, 1627, -1)
      AddHench(cnum, 342, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1626, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Paparong],ou voce nao tem o gp necessario"
    end
  elseif req == 647 then
    if Jccjguimian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1621, -1)
      AddHench(cnum, 1622, -1)
      AddHench(cnum, 1623, -1)
      AddHench(cnum, 1624, -1)
      AddHench(cnum, 1625, -1)
      AddHench(cnum, 1626, -1)
      AddHench(cnum, 1627, -1)
      AddHench(cnum, 342, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1627, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo Paparong],ou voce nao tem o gp necessario"
    end
  elseif req == 605 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 651, "Mudanca de Level:[Lv165]Super Soo", 652, "Mudanca de Level:[Lv170]Super Soo", 653, "Mudanca de Level:[Lv175]Super Soo", 654, "Mudanca de Level:[Lv180]Super Soo", 655, "Mudanca de Level:[Lv185]Super Soo", 656, "Mudanca de Level:[Lv190]Super Soo", 657, "Mudanca de Level:[Lv195]Super Soo"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 651 then
    if Jckuriboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1271, -1)
      AddHench(cnum, 1272, -1)
      AddHench(cnum, 1273, -1)
      AddHench(cnum, 1274, -1)
      AddHench(cnum, 1275, -1)
      AddHench(cnum, 1276, -1)
      AddHench(cnum, 1277, -1)
      AddHench(cnum, 1278, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1271, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Soo],ou voce nao tem o gp necessario"
    end
  elseif req == 652 then
    if Jckuriboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1271, -1)
      AddHench(cnum, 1272, -1)
      AddHench(cnum, 1273, -1)
      AddHench(cnum, 1274, -1)
      AddHench(cnum, 1275, -1)
      AddHench(cnum, 1276, -1)
      AddHench(cnum, 1277, -1)
      AddHench(cnum, 1278, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1272, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Soo],ou voce nao tem o gp necessario"
    end
  elseif req == 653 then
    if Jckuriboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1271, -1)
      AddHench(cnum, 1272, -1)
      AddHench(cnum, 1273, -1)
      AddHench(cnum, 1274, -1)
      AddHench(cnum, 1275, -1)
      AddHench(cnum, 1276, -1)
      AddHench(cnum, 1277, -1)
      AddHench(cnum, 1278, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1273, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Soo],ou voce nao tem o gp necessario"
    end
  elseif req == 654 then
    if Jckuriboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1271, -1)
      AddHench(cnum, 1272, -1)
      AddHench(cnum, 1273, -1)
      AddHench(cnum, 1274, -1)
      AddHench(cnum, 1275, -1)
      AddHench(cnum, 1276, -1)
      AddHench(cnum, 1277, -1)
      AddHench(cnum, 1278, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1274, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Soo],ou voce nao tem o gp necessario"
    end
  elseif req == 655 then
    if Jckuriboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1271, -1)
      AddHench(cnum, 1272, -1)
      AddHench(cnum, 1273, -1)
      AddHench(cnum, 1274, -1)
      AddHench(cnum, 1275, -1)
      AddHench(cnum, 1276, -1)
      AddHench(cnum, 1277, -1)
      AddHench(cnum, 1278, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1275, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Soo],ou voce nao tem o gp necessario"
    end
  elseif req == 656 then
    if Jckuriboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1271, -1)
      AddHench(cnum, 1272, -1)
      AddHench(cnum, 1273, -1)
      AddHench(cnum, 1274, -1)
      AddHench(cnum, 1275, -1)
      AddHench(cnum, 1276, -1)
      AddHench(cnum, 1277, -1)
      AddHench(cnum, 1278, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1276, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Soo],ou voce nao tem o gp necessario"
    end
  elseif req == 657 then
    if Jckuriboyi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1271, -1)
      AddHench(cnum, 1272, -1)
      AddHench(cnum, 1273, -1)
      AddHench(cnum, 1274, -1)
      AddHench(cnum, 1275, -1)
      AddHench(cnum, 1276, -1)
      AddHench(cnum, 1277, -1)
      AddHench(cnum, 1278, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1277, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Soo],ou voce nao tem o gp necessario"
    end
  elseif req == 606 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 661, "Mudanca de Level:[Lv165]Scepter Wizards", 662, "Mudanca de Level:[Lv170]Scepter Wizards", 663, "Mudanca de Level:[Lv175]Scepter Wizards", 664, "Mudanca de Level:[Lv180]Scepter Wizards", 665, "Mudanca de Level:[Lv185]Scepter Wizards", 666, "Mudanca de Level:[Lv190]Scepter Wizards", 667, "Mudanca de Level:[Lv195]Scepter Wizards", 668, "Mudanca de Level:[Lv200]Scepter Wizards"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 661 then
    if Jcwushi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1471, -1)
      AddHench(cnum, 1472, -1)
      AddHench(cnum, 1473, -1)
      AddHench(cnum, 1474, -1)
      AddHench(cnum, 1475, -1)
      AddHench(cnum, 1476, -1)
      AddHench(cnum, 1477, -1)
      AddHench(cnum, 1921, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1471, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Scepter Wizards],ou voce nao tem o gp necessario"
    end
  elseif req == 662 then
    if Jcwushi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1471, -1)
      AddHench(cnum, 1472, -1)
      AddHench(cnum, 1473, -1)
      AddHench(cnum, 1474, -1)
      AddHench(cnum, 1475, -1)
      AddHench(cnum, 1476, -1)
      AddHench(cnum, 1477, -1)
      AddHench(cnum, 1921, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1472, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Scepter Wizards],ou voce nao tem o gp necessario"
    end
  elseif req == 663 then
    if Jcwushi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1471, -1)
      AddHench(cnum, 1472, -1)
      AddHench(cnum, 1473, -1)
      AddHench(cnum, 1474, -1)
      AddHench(cnum, 1475, -1)
      AddHench(cnum, 1476, -1)
      AddHench(cnum, 1477, -1)
      AddHench(cnum, 1921, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1473, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Scepter Wizards],ou voce nao tem o gp necessario"
    end
  elseif req == 664 then
    if Jcwushi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1471, -1)
      AddHench(cnum, 1472, -1)
      AddHench(cnum, 1473, -1)
      AddHench(cnum, 1474, -1)
      AddHench(cnum, 1475, -1)
      AddHench(cnum, 1476, -1)
      AddHench(cnum, 1477, -1)
      AddHench(cnum, 1921, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1474, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Scepter Wizards],ou voce nao tem o gp necessario"
    end
  elseif req == 665 then
    if Jcwushi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1471, -1)
      AddHench(cnum, 1472, -1)
      AddHench(cnum, 1473, -1)
      AddHench(cnum, 1474, -1)
      AddHench(cnum, 1475, -1)
      AddHench(cnum, 1476, -1)
      AddHench(cnum, 1477, -1)
      AddHench(cnum, 1921, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1475, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Scepter Wizards],ou voce nao tem o gp necessario"
    end
  elseif req == 666 then
    if Jcwushi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1471, -1)
      AddHench(cnum, 1472, -1)
      AddHench(cnum, 1473, -1)
      AddHench(cnum, 1474, -1)
      AddHench(cnum, 1475, -1)
      AddHench(cnum, 1476, -1)
      AddHench(cnum, 1477, -1)
      AddHench(cnum, 1921, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1476, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Scepter Wizards],ou voce nao tem o gp necessario"
    end
  elseif req == 667 then
    if Jcwushi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1471, -1)
      AddHench(cnum, 1472, -1)
      AddHench(cnum, 1473, -1)
      AddHench(cnum, 1474, -1)
      AddHench(cnum, 1475, -1)
      AddHench(cnum, 1476, -1)
      AddHench(cnum, 1477, -1)
      AddHench(cnum, 1921, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1477, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Scepter Wizards],ou voce nao tem o gp necessario"
    end
  elseif req == 668 then
    if Jcwushi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1471, -1)
      AddHench(cnum, 1472, -1)
      AddHench(cnum, 1473, -1)
      AddHench(cnum, 1474, -1)
      AddHench(cnum, 1475, -1)
      AddHench(cnum, 1476, -1)
      AddHench(cnum, 1477, -1)
      AddHench(cnum, 1921, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1921, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Scepter Wizards],ou voce nao tem o gp necessario"
    end
  elseif req == 607 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 671, "Mudanca de Level:[Lv165]NeoNinjaTurtles", 672, "Mudanca de Level:[Lv170]NeoNinjaTurtles", 673, "Mudanca de Level:[Lv175]NeoNinjaTurtles", 674, "Mudanca de Level:[Lv180]NeoNinjaTurtles", 675, "Mudanca de Level:[Lv185]NeoNinjaTurtles", 676, "Mudanca de Level:[Lv190]NeoNinjaTurtles", 677, "Mudanca de Level:[Lv195]NeoNinjaTurtles", 678, "Mudanca de Level:[Lv200]NeoNinjaTurtles"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 671 then
    if Jcrenzhegui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1481, -1)
      AddHench(cnum, 1482, -1)
      AddHench(cnum, 1483, -1)
      AddHench(cnum, 1484, -1)
      AddHench(cnum, 1485, -1)
      AddHench(cnum, 1486, -1)
      AddHench(cnum, 1487, -1)
      AddHench(cnum, 1878, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1481, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoNinjaTurtles],ou voce nao tem o gp necessario"
    end
  elseif req == 672 then
    if Jcrenzhegui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1481, -1)
      AddHench(cnum, 1482, -1)
      AddHench(cnum, 1483, -1)
      AddHench(cnum, 1484, -1)
      AddHench(cnum, 1485, -1)
      AddHench(cnum, 1486, -1)
      AddHench(cnum, 1487, -1)
      AddHench(cnum, 1878, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1482, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoNinjaTurtles],ou voce nao tem o gp necessario"
    end
  elseif req == 673 then
    if Jcrenzhegui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1481, -1)
      AddHench(cnum, 1482, -1)
      AddHench(cnum, 1483, -1)
      AddHench(cnum, 1484, -1)
      AddHench(cnum, 1485, -1)
      AddHench(cnum, 1486, -1)
      AddHench(cnum, 1487, -1)
      AddHench(cnum, 1878, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1483, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoNinjaTurtles],ou voce nao tem o gp necessario"
    end
  elseif req == 674 then
    if Jcrenzhegui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1481, -1)
      AddHench(cnum, 1482, -1)
      AddHench(cnum, 1483, -1)
      AddHench(cnum, 1484, -1)
      AddHench(cnum, 1485, -1)
      AddHench(cnum, 1486, -1)
      AddHench(cnum, 1487, -1)
      AddHench(cnum, 1878, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1484, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoNinjaTurtles],ou voce nao tem o gp necessario"
    end
  elseif req == 675 then
    if Jcrenzhegui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1481, -1)
      AddHench(cnum, 1482, -1)
      AddHench(cnum, 1483, -1)
      AddHench(cnum, 1484, -1)
      AddHench(cnum, 1485, -1)
      AddHench(cnum, 1486, -1)
      AddHench(cnum, 1487, -1)
      AddHench(cnum, 1878, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1485, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoNinjaTurtles],ou voce nao tem o gp necessario"
    end
  elseif req == 676 then
    if Jcrenzhegui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1481, -1)
      AddHench(cnum, 1482, -1)
      AddHench(cnum, 1483, -1)
      AddHench(cnum, 1484, -1)
      AddHench(cnum, 1485, -1)
      AddHench(cnum, 1486, -1)
      AddHench(cnum, 1487, -1)
      AddHench(cnum, 1878, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1486, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoNinjaTurtles],ou voce nao tem o gp necessario"
    end
  elseif req == 677 then
    if Jcrenzhegui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1481, -1)
      AddHench(cnum, 1482, -1)
      AddHench(cnum, 1483, -1)
      AddHench(cnum, 1484, -1)
      AddHench(cnum, 1485, -1)
      AddHench(cnum, 1486, -1)
      AddHench(cnum, 1487, -1)
      AddHench(cnum, 1878, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1487, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoNinjaTurtles],ou voce nao tem o gp necessario"
    end
  elseif req == 678 then
    if Jcrenzhegui(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1481, -1)
      AddHench(cnum, 1482, -1)
      AddHench(cnum, 1483, -1)
      AddHench(cnum, 1484, -1)
      AddHench(cnum, 1485, -1)
      AddHench(cnum, 1486, -1)
      AddHench(cnum, 1487, -1)
      AddHench(cnum, 1878, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1878, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoNinjaTurtles],ou voce nao tem o gp necessario"
    end
  elseif req == 1007 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 7, 0, "Mudar level tipo metal", 702, "Mudar Level:Destroyer", 703, "Mudar Level:NeoJinSanta", 704, "Mudar Level:Neo BlackNity", 705, "Mudar Level:Super Waterball", 706, "Mudar Level:MechanicalWarrior", 707, "Mudar Level:Thai"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 702 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 721, "Mudanca de Level:[Lv165]Destroyer", 722, "Mudanca de Level:[Lv170]Destroyer", 723, "Mudanca de Level:[Lv175]Destroyer", 724, "Mudanca de Level:[Lv180]Destroyer", 725, "Mudanca de Level:[Lv185]Destroyer", 726, "Mudanca de Level:[Lv190]Destroyer", 727, "Mudanca de Level:[Lv195]Destroyer"
    else
      return 1, 0, "Error!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 721 then
    if Jcquzujian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1571, -1)
      AddHench(cnum, 1572, -1)
      AddHench(cnum, 1573, -1)
      AddHench(cnum, 1574, -1)
      AddHench(cnum, 1575, -1)
      AddHench(cnum, 1576, -1)
      AddHench(cnum, 1577, -1)
      AddHench(cnum, 1051, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1571, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Destroyer],ou voce nao tem o gp necessario"
    end
  elseif req == 722 then
    if Jcquzujian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1571, -1)
      AddHench(cnum, 1572, -1)
      AddHench(cnum, 1573, -1)
      AddHench(cnum, 1574, -1)
      AddHench(cnum, 1575, -1)
      AddHench(cnum, 1576, -1)
      AddHench(cnum, 1577, -1)
      AddHench(cnum, 1051, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1572, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Destroyer],ou voce nao tem o gp necessario"
    end
  elseif req == 723 then
    if Jcquzujian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1571, -1)
      AddHench(cnum, 1572, -1)
      AddHench(cnum, 1573, -1)
      AddHench(cnum, 1574, -1)
      AddHench(cnum, 1575, -1)
      AddHench(cnum, 1576, -1)
      AddHench(cnum, 1577, -1)
      AddHench(cnum, 1051, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1573, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Destroyer],ou voce nao tem o gp necessario"
    end
  elseif req == 724 then
    if Jcquzujian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1571, -1)
      AddHench(cnum, 1572, -1)
      AddHench(cnum, 1573, -1)
      AddHench(cnum, 1574, -1)
      AddHench(cnum, 1575, -1)
      AddHench(cnum, 1576, -1)
      AddHench(cnum, 1577, -1)
      AddHench(cnum, 1051, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1574, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Destroyer],ou voce nao tem o gp necessario"
    end
  elseif req == 725 then
    if Jcquzujian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1571, -1)
      AddHench(cnum, 1572, -1)
      AddHench(cnum, 1573, -1)
      AddHench(cnum, 1574, -1)
      AddHench(cnum, 1575, -1)
      AddHench(cnum, 1576, -1)
      AddHench(cnum, 1577, -1)
      AddHench(cnum, 1051, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1575, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Destroyer],ou voce nao tem o gp necessario"
    end
  elseif req == 726 then
    if Jcquzujian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1571, -1)
      AddHench(cnum, 1572, -1)
      AddHench(cnum, 1573, -1)
      AddHench(cnum, 1574, -1)
      AddHench(cnum, 1575, -1)
      AddHench(cnum, 1576, -1)
      AddHench(cnum, 1577, -1)
      AddHench(cnum, 1051, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1576, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Destroyer],ou voce nao tem o gp necessario"
    end
  elseif req == 727 then
    if Jcquzujian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1571, -1)
      AddHench(cnum, 1572, -1)
      AddHench(cnum, 1573, -1)
      AddHench(cnum, 1574, -1)
      AddHench(cnum, 1575, -1)
      AddHench(cnum, 1576, -1)
      AddHench(cnum, 1577, -1)
      AddHench(cnum, 1051, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1577, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Destroyer],ou voce nao tem o gp necessario"
    end
  elseif req == 703 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 731, "Mudanca de Level:[Lv165]NeoJinSanta", 732, "Mudanca de Level:[Lv170]NeoJinSanta", 733, "Mudanca de Level:[Lv175]NeoJinSanta", 734, "Mudanca de Level:[Lv180]NeoJinSanta", 735, "Mudanca de Level:[Lv185]NeoJinSanta", 736, "Mudanca de Level:[Lv190]NeoJinSanta", 737, "Mudanca de Level:[Lv195]NeoJinSanta", 738, "Mudanca de Level:[Lv200]NeoJinSanta"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 731 then
    if Jcjian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1591, -1)
      AddHench(cnum, 1592, -1)
      AddHench(cnum, 1593, -1)
      AddHench(cnum, 1594, -1)
      AddHench(cnum, 1595, -1)
      AddHench(cnum, 1596, -1)
      AddHench(cnum, 1597, -1)
      AddHench(cnum, 344, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1591, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoJinSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 732 then
    if Jcjian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1591, -1)
      AddHench(cnum, 1592, -1)
      AddHench(cnum, 1593, -1)
      AddHench(cnum, 1594, -1)
      AddHench(cnum, 1595, -1)
      AddHench(cnum, 1596, -1)
      AddHench(cnum, 1597, -1)
      AddHench(cnum, 344, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1592, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoJinSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 733 then
    if Jcjian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1591, -1)
      AddHench(cnum, 1592, -1)
      AddHench(cnum, 1593, -1)
      AddHench(cnum, 1594, -1)
      AddHench(cnum, 1595, -1)
      AddHench(cnum, 1596, -1)
      AddHench(cnum, 1597, -1)
      AddHench(cnum, 344, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1593, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoJinSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 734 then
    if Jcjian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1591, -1)
      AddHench(cnum, 1592, -1)
      AddHench(cnum, 1593, -1)
      AddHench(cnum, 1594, -1)
      AddHench(cnum, 1595, -1)
      AddHench(cnum, 1596, -1)
      AddHench(cnum, 1597, -1)
      AddHench(cnum, 344, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1594, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoJinSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 735 then
    if Jcjian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1591, -1)
      AddHench(cnum, 1592, -1)
      AddHench(cnum, 1593, -1)
      AddHench(cnum, 1594, -1)
      AddHench(cnum, 1595, -1)
      AddHench(cnum, 1596, -1)
      AddHench(cnum, 1597, -1)
      AddHench(cnum, 344, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1595, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoJinSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 736 then
    if Jcjian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1591, -1)
      AddHench(cnum, 1592, -1)
      AddHench(cnum, 1593, -1)
      AddHench(cnum, 1594, -1)
      AddHench(cnum, 1595, -1)
      AddHench(cnum, 1596, -1)
      AddHench(cnum, 1597, -1)
      AddHench(cnum, 344, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1596, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoJinSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 737 then
    if Jcjian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1591, -1)
      AddHench(cnum, 1592, -1)
      AddHench(cnum, 1593, -1)
      AddHench(cnum, 1594, -1)
      AddHench(cnum, 1595, -1)
      AddHench(cnum, 1596, -1)
      AddHench(cnum, 1597, -1)
      AddHench(cnum, 344, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1597, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoJinSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 738 then
    if Jcjian(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1591, -1)
      AddHench(cnum, 1592, -1)
      AddHench(cnum, 1593, -1)
      AddHench(cnum, 1594, -1)
      AddHench(cnum, 1595, -1)
      AddHench(cnum, 1596, -1)
      AddHench(cnum, 1597, -1)
      AddHench(cnum, 344, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 344, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[NeoJinSanta],ou voce nao tem o gp necessario"
    end
  elseif req == 704 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 741, "Mudanca de Level:[Lv165]Neo BlackNity", 742, "Mudanca de Level:[Lv170]Neo BlackNity", 743, "Mudanca de Level:[Lv175]Neo BlackNity", 744, "Mudanca de Level:[Lv180]Neo BlackNity", 745, "Mudanca de Level:[Lv185]Neo BlackNity", 746, "Mudanca de Level:[Lv190]Neo BlackNity", 747, "Mudanca de Level:[Lv195]Neo BlackNity"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 741 then
    if Jccjhuiniu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1631, -1)
      AddHench(cnum, 1632, -1)
      AddHench(cnum, 1633, -1)
      AddHench(cnum, 1634, -1)
      AddHench(cnum, 1635, -1)
      AddHench(cnum, 1636, -1)
      AddHench(cnum, 1637, -1)
      AddHench(cnum, 1061, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1631, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo BlackNity],ou voce nao tem o gp necessario"
    end
  elseif req == 742 then
    if Jccjhuiniu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1631, -1)
      AddHench(cnum, 1632, -1)
      AddHench(cnum, 1633, -1)
      AddHench(cnum, 1634, -1)
      AddHench(cnum, 1635, -1)
      AddHench(cnum, 1636, -1)
      AddHench(cnum, 1637, -1)
      AddHench(cnum, 1061, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1632, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo BlackNity],ou voce nao tem o gp necessario"
    end
  elseif req == 743 then
    if Jccjhuiniu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1631, -1)
      AddHench(cnum, 1632, -1)
      AddHench(cnum, 1633, -1)
      AddHench(cnum, 1634, -1)
      AddHench(cnum, 1635, -1)
      AddHench(cnum, 1636, -1)
      AddHench(cnum, 1637, -1)
      AddHench(cnum, 1061, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1633, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo BlackNity],ou voce nao tem o gp necessario"
    end
  elseif req == 744 then
    if Jccjhuiniu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1631, -1)
      AddHench(cnum, 1632, -1)
      AddHench(cnum, 1633, -1)
      AddHench(cnum, 1634, -1)
      AddHench(cnum, 1635, -1)
      AddHench(cnum, 1636, -1)
      AddHench(cnum, 1637, -1)
      AddHench(cnum, 1061, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1634, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo BlackNity],ou voce nao tem o gp necessario"
    end
  elseif req == 745 then
    if Jccjhuiniu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1631, -1)
      AddHench(cnum, 1632, -1)
      AddHench(cnum, 1633, -1)
      AddHench(cnum, 1634, -1)
      AddHench(cnum, 1635, -1)
      AddHench(cnum, 1636, -1)
      AddHench(cnum, 1637, -1)
      AddHench(cnum, 1061, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1635, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo BlackNity],ou voce nao tem o gp necessario"
    end
  elseif req == 746 then
    if Jccjhuiniu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1631, -1)
      AddHench(cnum, 1632, -1)
      AddHench(cnum, 1633, -1)
      AddHench(cnum, 1634, -1)
      AddHench(cnum, 1635, -1)
      AddHench(cnum, 1636, -1)
      AddHench(cnum, 1637, -1)
      AddHench(cnum, 1061, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1636, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo BlackNity],ou voce nao tem o gp necessario"
    end
  elseif req == 747 then
    if Jccjhuiniu(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1631, -1)
      AddHench(cnum, 1632, -1)
      AddHench(cnum, 1633, -1)
      AddHench(cnum, 1634, -1)
      AddHench(cnum, 1635, -1)
      AddHench(cnum, 1636, -1)
      AddHench(cnum, 1637, -1)
      AddHench(cnum, 1061, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1637, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Neo BlackNity],ou voce nao tem o gp necessario"
    end
  elseif req == 705 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 8, 0, "Escolha o tipo do core para mudar o level..", 751, "Mudanca de Level:[Lv165]Super Waterball", 752, "Mudanca de Level:[Lv170]Super Waterball", 753, "Mudanca de Level:[Lv175]Super Waterball", 754, "Mudanca de Level:[Lv180]Super Waterball", 755, "Mudanca de Level:[Lv185]Super Waterball", 756, "Mudanca de Level:[Lv190]Super Waterball", 757, "Mudanca de Level:[Lv195]Super Waterball"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 751 then
    if Jcnashabo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1261, -1)
      AddHench(cnum, 1262, -1)
      AddHench(cnum, 1263, -1)
      AddHench(cnum, 1264, -1)
      AddHench(cnum, 1265, -1)
      AddHench(cnum, 1266, -1)
      AddHench(cnum, 1267, -1)
      AddHench(cnum, 1268, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1261, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Waterball],ou voce nao tem o gp necessario"
    end
  elseif req == 752 then
    if Jcnashabo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1261, -1)
      AddHench(cnum, 1262, -1)
      AddHench(cnum, 1263, -1)
      AddHench(cnum, 1264, -1)
      AddHench(cnum, 1265, -1)
      AddHench(cnum, 1266, -1)
      AddHench(cnum, 1267, -1)
      AddHench(cnum, 1268, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1262, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Waterball],ou voce nao tem o gp necessario"
    end
  elseif req == 753 then
    if Jcnashabo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1261, -1)
      AddHench(cnum, 1262, -1)
      AddHench(cnum, 1263, -1)
      AddHench(cnum, 1264, -1)
      AddHench(cnum, 1265, -1)
      AddHench(cnum, 1266, -1)
      AddHench(cnum, 1267, -1)
      AddHench(cnum, 1268, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1263, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Waterball],ou voce nao tem o gp necessario"
    end
  elseif req == 754 then
    if Jcnashabo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1261, -1)
      AddHench(cnum, 1262, -1)
      AddHench(cnum, 1263, -1)
      AddHench(cnum, 1264, -1)
      AddHench(cnum, 1265, -1)
      AddHench(cnum, 1266, -1)
      AddHench(cnum, 1267, -1)
      AddHench(cnum, 1268, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1264, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Waterball],ou voce nao tem o gp necessario"
    end
  elseif req == 755 then
    if Jcnashabo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1261, -1)
      AddHench(cnum, 1262, -1)
      AddHench(cnum, 1263, -1)
      AddHench(cnum, 1264, -1)
      AddHench(cnum, 1265, -1)
      AddHench(cnum, 1266, -1)
      AddHench(cnum, 1267, -1)
      AddHench(cnum, 1268, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1265, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Waterball],ou voce nao tem o gp necessario"
    end
  elseif req == 756 then
    if Jcnashabo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1261, -1)
      AddHench(cnum, 1262, -1)
      AddHench(cnum, 1263, -1)
      AddHench(cnum, 1264, -1)
      AddHench(cnum, 1265, -1)
      AddHench(cnum, 1266, -1)
      AddHench(cnum, 1267, -1)
      AddHench(cnum, 1268, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1266, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Waterball],ou voce nao tem o gp necessario"
    end
  elseif req == 757 then
    if Jcnashabo(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1261, -1)
      AddHench(cnum, 1262, -1)
      AddHench(cnum, 1263, -1)
      AddHench(cnum, 1264, -1)
      AddHench(cnum, 1265, -1)
      AddHench(cnum, 1266, -1)
      AddHench(cnum, 1267, -1)
      AddHench(cnum, 1268, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1267, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Super Waterball],ou voce nao tem o gp necessario"
    end
  elseif req == 706 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 761, "Mudanca de Level:[Lv165]MechanicalWarrior", 762, "Mudanca de Level:[Lv170]MechanicalWarrior", 763, "Mudanca de Level:[Lv175]MechanicalWarrior", 764, "Mudanca de Level:[Lv180]MechanicalWarrior", 765, "Mudanca de Level:[Lv185]MechanicalWarrior", 766, "Mudanca de Level:[Lv190]MechanicalWarrior", 767, "Mudanca de Level:[Lv195]MechanicalWarrior", 768, "Mudanca de Level:[Lv200]MechanicalWarrior"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 761 then
    if Jcjixiezhanshi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1461, -1)
      AddHench(cnum, 1462, -1)
      AddHench(cnum, 1463, -1)
      AddHench(cnum, 1464, -1)
      AddHench(cnum, 1465, -1)
      AddHench(cnum, 1466, -1)
      AddHench(cnum, 1467, -1)
      AddHench(cnum, 1920, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1461, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MechanicalWarrior],ou voce nao tem o gp necessario"
    end
  elseif req == 762 then
    if Jcjixiezhanshi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1461, -1)
      AddHench(cnum, 1462, -1)
      AddHench(cnum, 1463, -1)
      AddHench(cnum, 1464, -1)
      AddHench(cnum, 1465, -1)
      AddHench(cnum, 1466, -1)
      AddHench(cnum, 1467, -1)
      AddHench(cnum, 1920, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1462, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MechanicalWarrior],ou voce nao tem o gp necessario"
    end
  elseif req == 763 then
    if Jcjixiezhanshi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1461, -1)
      AddHench(cnum, 1462, -1)
      AddHench(cnum, 1463, -1)
      AddHench(cnum, 1464, -1)
      AddHench(cnum, 1465, -1)
      AddHench(cnum, 1466, -1)
      AddHench(cnum, 1467, -1)
      AddHench(cnum, 1920, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1463, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MechanicalWarrior],ou voce nao tem o gp necessario"
    end
  elseif req == 764 then
    if Jcjixiezhanshi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1461, -1)
      AddHench(cnum, 1462, -1)
      AddHench(cnum, 1463, -1)
      AddHench(cnum, 1464, -1)
      AddHench(cnum, 1465, -1)
      AddHench(cnum, 1466, -1)
      AddHench(cnum, 1467, -1)
      AddHench(cnum, 1920, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1464, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MechanicalWarrior],ou voce nao tem o gp necessario"
    end
  elseif req == 765 then
    if Jcjixiezhanshi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1461, -1)
      AddHench(cnum, 1462, -1)
      AddHench(cnum, 1463, -1)
      AddHench(cnum, 1464, -1)
      AddHench(cnum, 1465, -1)
      AddHench(cnum, 1466, -1)
      AddHench(cnum, 1467, -1)
      AddHench(cnum, 1920, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1465, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MechanicalWarrior],ou voce nao tem o gp necessario"
    end
  elseif req == 766 then
    if Jcjixiezhanshi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1461, -1)
      AddHench(cnum, 1462, -1)
      AddHench(cnum, 1463, -1)
      AddHench(cnum, 1464, -1)
      AddHench(cnum, 1465, -1)
      AddHench(cnum, 1466, -1)
      AddHench(cnum, 1467, -1)
      AddHench(cnum, 1920, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1466, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MechanicalWarrior],ou voce nao tem o gp necessario"
    end
  elseif req == 767 then
    if Jcjixiezhanshi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1461, -1)
      AddHench(cnum, 1462, -1)
      AddHench(cnum, 1463, -1)
      AddHench(cnum, 1464, -1)
      AddHench(cnum, 1465, -1)
      AddHench(cnum, 1466, -1)
      AddHench(cnum, 1467, -1)
      AddHench(cnum, 1920, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1467, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MechanicalWarrior],ou voce nao tem o gp necessario"
    end
  elseif req == 768 then
    if Jcjixiezhanshi(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1461, -1)
      AddHench(cnum, 1462, -1)
      AddHench(cnum, 1463, -1)
      AddHench(cnum, 1464, -1)
      AddHench(cnum, 1465, -1)
      AddHench(cnum, 1466, -1)
      AddHench(cnum, 1467, -1)
      AddHench(cnum, 1920, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1920, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[MechanicalWarrior],ou voce nao tem o gp necessario"
    end
  elseif req == 707 then
    if JzPenqian < money and 149 < GetHeroLv(cnum) then
      return 9, 0, "Escolha o tipo do core para mudar o level..", 771, "Mudanca de Level:[Lv165]Thai", 772, "Mudanca de Level:[Lv170]Thai", 773, "Mudanca de Level:[Lv175]Thai", 774, "Mudanca de Level:[Lv180]Thai", 775, "Mudanca de Level:[Lv185]Thai", 776, "Mudanca de Level:[Lv190]Thai", 777, "Mudanca de Level:[Lv195]Thai", 778, "Mudanca de Level:[Lv200]Thai"
    else
      return 1, 0, "²âÊÔÅĞ¶ÏÃ»!\n\Voce nao tem 500kk para mudar o level...."
    end
  elseif req == 771 then
    if Jctaiming(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1301, -1)
      AddHench(cnum, 1302, -1)
      AddHench(cnum, 1303, -1)
      AddHench(cnum, 1304, -1)
      AddHench(cnum, 1305, -1)
      AddHench(cnum, 1306, -1)
      AddHench(cnum, 1307, -1)
      AddHench(cnum, 1308, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1301, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Thai],ou voce nao tem o gp necessario"
    end
  elseif req == 772 then
    if Jctaiming(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1301, -1)
      AddHench(cnum, 1302, -1)
      AddHench(cnum, 1303, -1)
      AddHench(cnum, 1304, -1)
      AddHench(cnum, 1305, -1)
      AddHench(cnum, 1306, -1)
      AddHench(cnum, 1307, -1)
      AddHench(cnum, 1308, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1302, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Thai],ou voce nao tem o gp necessario"
    end
  elseif req == 773 then
    if Jctaiming(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1301, -1)
      AddHench(cnum, 1302, -1)
      AddHench(cnum, 1303, -1)
      AddHench(cnum, 1304, -1)
      AddHench(cnum, 1305, -1)
      AddHench(cnum, 1306, -1)
      AddHench(cnum, 1307, -1)
      AddHench(cnum, 1308, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1303, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Thai],ou voce nao tem o gp necessario"
    end
  elseif req == 774 then
    if Jctaiming(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1301, -1)
      AddHench(cnum, 1302, -1)
      AddHench(cnum, 1303, -1)
      AddHench(cnum, 1304, -1)
      AddHench(cnum, 1305, -1)
      AddHench(cnum, 1306, -1)
      AddHench(cnum, 1307, -1)
      AddHench(cnum, 1308, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1304, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Thai],ou voce nao tem o gp necessario"
    end
  elseif req == 775 then
    if Jctaiming(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1301, -1)
      AddHench(cnum, 1302, -1)
      AddHench(cnum, 1303, -1)
      AddHench(cnum, 1304, -1)
      AddHench(cnum, 1305, -1)
      AddHench(cnum, 1306, -1)
      AddHench(cnum, 1307, -1)
      AddHench(cnum, 1308, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1305, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Thai],ou voce nao tem o gp necessario"
    end
  elseif req == 776 then
    if Jctaiming(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1301, -1)
      AddHench(cnum, 1302, -1)
      AddHench(cnum, 1303, -1)
      AddHench(cnum, 1304, -1)
      AddHench(cnum, 1305, -1)
      AddHench(cnum, 1306, -1)
      AddHench(cnum, 1307, -1)
      AddHench(cnum, 1308, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1306, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Thai],ou voce nao tem o gp necessario"
    end
  elseif req == 777 then
    if Jctaiming(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1301, -1)
      AddHench(cnum, 1302, -1)
      AddHench(cnum, 1303, -1)
      AddHench(cnum, 1304, -1)
      AddHench(cnum, 1305, -1)
      AddHench(cnum, 1306, -1)
      AddHench(cnum, 1307, -1)
      AddHench(cnum, 1308, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1307, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    else
      return 1, 0, "Error!\n\nNao achamos nenhum[Thai],ou voce nao tem o gp necessario"
    end
  elseif req == 778 then
    if Jctaiming(cnum) and JzPenqian < money and 149 < GetHeroLv(cnum) then
      AddHench(cnum, 1301, -1)
      AddHench(cnum, 1302, -1)
      AddHench(cnum, 1303, -1)
      AddHench(cnum, 1304, -1)
      AddHench(cnum, 1305, -1)
      AddHench(cnum, 1306, -1)
      AddHench(cnum, 1307, -1)
      AddHench(cnum, 1308, -1)
      AddMoney(cnum, -500000000)
      AddHench(cnum, 1308, 1)
      MoveZone(cnum, 70, 254)
      return 1, 0, "¹§Ï²!¶Ò»»³É¹¦^^"
    end
  else
    return 1, 0, "Error!\n\nNao achamos nenhum[Thai],ou voce nao tem o gp necessario"
  end
  return 0
end


