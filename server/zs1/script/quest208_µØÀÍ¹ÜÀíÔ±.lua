function NPC_QUEST_1147(cnum,reqNumber) 
  req = reqNumber
  if req == 1 then
    return 3, 0, "你好，地城-龙之屋是个很危险的地方，你想去吗？", 2, "是的", 3, "不去"
  elseif req == 2 then
    return 2, 0, "你真的很勇敢", 12, "进入", 13, "下次吧"
  elseif req == 12 then
    MoveZone(cnum, 150, 101)
    return 0
  elseif req == 13 then
    return 1, 0, "你已经采取了一个明智的决定。地城-龙之屋是很危险的，即使是最伟大的战士是无法生存，里面的怪物非常强大"
  else
    return 0
  end
end

function NPC_QUEST_1148(cnum,reqNumber) 
  req = reqNumber
  if req == 1 then
    return 2, 0, "你出色的表现，给我留下了深刻的印象。你有很大的潜力。你要回城去恢复？", 2, "传送至 贝赫鲁"
  elseif req == 2 then
    MoveZone(cnum, 60, 254)
  else
    return 0
  end
end
