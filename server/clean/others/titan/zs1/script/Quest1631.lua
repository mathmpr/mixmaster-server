NPC_QUEST_1631 = function(cnum, reqNumber)
  local resultmsg, req, name, type = nil
  req = reqNumber
  name = GetHeroName(cnum)
  type = GetHeroType(cnum)
  money = GetMoney(cnum)
  Lv = GetHeroLv(cnum)
  Penqian = 500000001
  JzPenqian = 500000000
  local kalongwangID = {1860, 1861, 1862, 1863, 1864, 1865, 1866, 1867}
  local Jckalongwang = function(cnum)
    -- upvalues: kalongwangID
    local ifhave = false
    for i = 1, #kalongwangID do
      ifhave = ifhave or GetHench(cnum, 1, kalongwangID[i], 0) > 0
    end
    return ifhave
  end

  if req == 1 then
    if GetHeroLv(cnum) > 149 then
      return 3, 0, "Olá, deseja mudar o level de um monstro que esta na lista de monstros ocultos ?", 2, "Tipo de core [Neoboss]", 3, "Tipo de core [Fake]"
    else
      return 1, 0, "[Error]\n\nOla tudo-bem:" .. name .. "..O seu level e insuficiente!!\n\nnao podemos oferecer um suporte para este level.:" .. Lv .. "\n\nVenha quanto tiver level 150+.."
    end
  elseif req == 2 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 9, 0, "Selecione um core para fazer a mudança do mesmo.", 21, "[Lv199]Neo KingGarugon", 22, "[Lv199]Neo Anubis", 23, "[Lv199]Neo Hellfard", 24, "[Lv199]Neo Phoenix", 25,"[Lv199]Neo CutterMartins", 26, "[Lv199]Neo Napphens", 27, "[Lv199]Neo RoofTileGeneral", 28, "[Lv199]Neo Destroyer"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
  elseif req == 21 then
    if GetHench(cnum, 1, 1860, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1860, -1)
      AddHench(cnum, 1860, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [Neo KingGarugon] ou você não tem 500,000,000 de GP."
    end
  elseif req == 22 then
    if GetHench(cnum, 1, 1861, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1861, -1)
      AddHench(cnum, 1861, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [Neo Anubis] ou você não tem 500,000,000 de GP."
    end
  elseif req == 23 then
    if GetHench(cnum, 1, 1862, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1862, -1)
      AddHench(cnum, 1862, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [Neo Hellfard] ou você não tem 500,000,000 de GP."
    end
  elseif req == 24 then
    if GetHench(cnum, 1, 1863, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1863, -1)
      AddHench(cnum, 1863, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [Neo Phoenix] ou você não tem 500,000,000 de GP."
    end
  elseif req == 25 then
    if GetHench(cnum, 1, 1864, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1864, -1)
      AddHench(cnum, 1864, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [Neo CutterMartins] ou você não tem 500,000,000 de GP."
    end
  elseif req == 26 then
    if GetHench(cnum, 1, 1865, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1865, -1)
      AddHench(cnum, 1865, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [Neo Napphens] ou você não tem 500,000,000 de GP."
    end
  elseif req == 27 then
    if GetHench(cnum, 1, 1866, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1866, -1)
      AddHench(cnum, 1866, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [Neo RoofTileGeneral] ou você não tem 500,000,000 de GP."
    end
  elseif req == 28 then
    if GetHench(cnum, 1, 1867, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 1867, -1)
      AddHench(cnum, 1867, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [Neo Destroyer] ou você não tem 500,000,000 de GP."
    end
	
  elseif req == 3 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 9, 0, "Selecione um core para fazer a mudança do mesmo.", 31, "[Lv200]FakeDraco", 32, "[Lv200]FakeDevilco", 33, "[Lv200]FakeBeasco", 34, "[Lv200]FakeBirdco", 35,"[Lv200]FakeInseco", 36, "[Lv200]FakeFlowco", 37, "[Lv200]FakeMystico", 38, "[Lv200]FakeMetaco"
    else
      return 1, 0, "Error!\n\nVoce nao tem 500kk para mudar o level...."
    end
	
  elseif req == 31 then
    if GetHench(cnum, 1, 2040, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 2040, -1)
      AddHench(cnum, 2040, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [FakeDraco] ou você não tem 500,000,000 de GP."
    end
  elseif req == 32 then
    if GetHench(cnum, 1, 2041, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 2041, -1)
      AddHench(cnum, 2041, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [FakeDevilco] ou você não tem 500,000,000 de GP."
    end
  elseif req == 33 then
    if GetHench(cnum, 1, 2042, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 2042, -1)
      AddHench(cnum, 2042, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [FakeBeasco] ou você não tem 500,000,000 de GP."
    end
  elseif req == 34 then
    if GetHench(cnum, 1, 2043, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 2043, -1)
      AddHench(cnum, 2043, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [FakeBirdco] ou você não tem 500,000,000 de GP."
    end
  elseif req == 35 then
    if GetHench(cnum, 1, 2044, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 2044, -1)
      AddHench(cnum, 2044, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [FakeInseco] ou você não tem 500,000,000 de GP."
    end
  elseif req == 36 then
    if GetHench(cnum, 1, 2045, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 2045, -1)
      AddHench(cnum, 2045, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [FakeFlowco] ou você não tem 500,000,000 de GP."
    end
  elseif req == 37 then
    if GetHench(cnum, 1, 2046, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 2046, -1)
      AddHench(cnum, 2046, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [FakeMystico] ou você não tem 500,000,000 de GP."
    end
  elseif req == 38 then
    if GetHench(cnum, 1, 2047, 0) > 0 and JzPenqian < money and GetHeroLv(cnum) > 149 then
      AddHench(cnum, 2047, -1)
      AddHench(cnum, 2047, 1)
      AddMoney(cnum, -Penqian)
      MoveZone(cnum, 70, 254)
      return 1, 0, "mudança concluida!"
    else
      return 1, 0, "[ERROR]@@ Não conseguimos achar o core [FakeMetaco] ou você não tem 500,000,000 de GP."
    end

  end
  return 0
end

