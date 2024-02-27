function NPC_QUEST_287(cnum,reqNumber) 
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    if GetSwitchCount(cnum, 709) < 1 then
      return 2, 0, "为了欢迎猎人勇士的到来,特给各位准备了一份薄礼包含有:勇士徽章(3小时)1个,变异邦迪3个,变异大眼1个,斯芬克思1个,顽皮球1个,回城卷99个"
    else
      return 1, 0, "对不起,新手礼物每位猎人只有一次领取的机会"
    end
  elseif req == 2 then
    if GetRemainPocket(cnum) < 1 then
      return 1, 0, "[以成功领取到:勇敢的勇士徽章(3小时)1个,变异邦迪3个,变异大眼1个,斯芬克思1个,顽皮球1个,回城卷99个]"
    else
      SetSwitchCount(cnum, 709, 1)
      return 1, 0, "恭喜你领取成功"
    end
  end
end