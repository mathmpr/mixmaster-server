function NPC_QUEST_1152(cnum,reqNumber) -- 版厚捍
  req = reqNumber

  if req == 1 then
  money = GetMoney(cnum)
    if money < 100 then
      return 2, 0, "新的称号要求人物身上有100 GP以上才能学啊,赶紧去挣钱吧!"
	else
      return 10, 0, "Ola gostaria de mudar seu sub nick ?", 111, "Gostaria de Retirar",  20, "Sub Nick - 1", 4, "Sub Nick - 2", 12, "Sub Nick - 3", 28, "Sub Nick - 4", 36, "Sub Nick - 5", 44, "Sub Nick - 6", 52, "Sub Nick - 7", 60, "Sub Nick - 8"
	end 
	
	
  elseif req == 2 then
    SetSwitchCount(cnum, 532, 1)
  elseif req == 3 then
    return 1, 0, "不换么？"
	
  elseif req == 111 then
    SetNickname(cnum, 0)
    return 1, 0, "Sub Nick Retirado com sucesso!"	
  elseif req == 4 then
    return 8, 0, "Escolha um Sub Nick", 5, "[Cabo]", 6, "[Sargento-Mor]", 7, "[Sargento-Chefe]", 8, "[Sargento-Ajudante]", 9, "[1篠argento]", 10, "[2篠argento]", 11, "[Furriel]"
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
    return 8, 0, "Escolha um Sub Nick", 13, "[2� Furriel]", 14, "[Soldado Instruendo]", 15, "[Soldado Cadete]", 16, "[Aspirante Oficial]", 17, "[Alferes]", 18, "[森林之王]", 19, "[国王使者]"
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
    return 8, 0, "选择你要更换的称号吧？", 29, "[时空旅行者]", 30, "[流动小摊贩]", 31, "[地狱引路人]", 32, "[冷饮快送]", 33, "[超级快递员]", 34, "[无敌幸运星]", 35, "[打不死的小强]"
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
    return 8, 0, "选择你要更换的称号吧？", 37, "[以攻代守]", 38, "[风的使者]", 39, "[神佑之人]", 40, "[情海过客]", 41, "[大冒险家]", 42, "[审判者]", 43, "[红衣主教]"
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
    return 8, 0, "选择你要更换的称号吧？", 45, "[追寻者]", 46, "[探索者]", 47, "[救世主]", 48, "[爱心大使]", 49, "[悲伤的人]", 50, "[魔镜精灵]", 51, "[女神守卫]"
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
    return 8, 0, "选择你要更换的称号吧？", 53, "[闪耀者]", 54, "[苦命的小弟]", 55, "[魅惑妖精]", 56, "[基友团]", 57, "[萝莉控]", 58, "[高富帅]", 59, "[白富美]"
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
    return 8, 0, "选择你要更换的称号吧？", 61, "[铜圣斗士]", 62, "[白银圣斗士]", 63, "[黄金圣斗士]", 64, "[心如止水]", 65, "[罗曼蒂克]", 66, "[情比金坚]", 67, "[单身公害]"
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