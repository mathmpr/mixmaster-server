function NPC_QUEST_1149(cnum,reqNumber)
  local ruinpass = {68, 69, 95, 96, 940, 1316, 3711, 8178, 8226, 8499}
  local checkruinpass = function(cnum)
    local ifhave = false
    for i = 1, #ruinpass do
      ifhave = ifhave or GetItemCount(cnum, ruinpass[i], 0) > 0
    end
    return ifhave
   end
  req = reqNumber
  if req == 1 then
    return 3, 0, "欢迎您，我的名字是拉米亚，我是勇气试炼场的看门人。您需要废墟通行证才能进去。你要到那里去？", 2, "是的", 3, "不去了"
  elseif req == 2 then
    if checkruinpass(cnum) then
      return 2, 0, "你现在想去吗？后悔还来得及", 12, "是的，我去", 13, "稍后再说"
    else
      return 1, 0, "你没有带废墟通行证，等你带来了再来找我"
    end
  elseif req == 12 then
    if checkruinpass(cnum) then
      MoveZone(cnum, 96, 254)
    else
      return 1, 0, "你没有带废墟通行证，等你带来了再来找我"
    end
  else
    return 0
  end
end

function NPC_QUEST_1150(cnum,reqNumber)
  req = reqNumber
  if req == 1 then
    return 2, 0, "你找到你要的东西了吗？你想要去哪里，请告诉我。", 2, "离开勇气试炼场", 3, "随便逛逛"
  elseif req == 2 then
    MoveZone(cnum, 35, 254)
  else
    return 0
  end
end