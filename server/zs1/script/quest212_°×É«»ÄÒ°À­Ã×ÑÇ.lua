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
    return 3, 0, "��ӭ�����ҵ������������ǣ����������������Ŀ����ˡ�����Ҫ����ͨ��֤���ܽ�ȥ����Ҫ������ȥ��", 2, "�ǵ�", 3, "��ȥ��"
  elseif req == 2 then
    if checkruinpass(cnum) then
      return 2, 0, "��������ȥ�𣿺�ڻ����ü�", 12, "�ǵģ���ȥ", 13, "�Ժ���˵"
    else
      return 1, 0, "��û�д�����ͨ��֤�������������������"
    end
  elseif req == 12 then
    if checkruinpass(cnum) then
      MoveZone(cnum, 96, 254)
    else
      return 1, 0, "��û�д�����ͨ��֤�������������������"
    end
  else
    return 0
  end
end

function NPC_QUEST_1150(cnum,reqNumber)
  req = reqNumber
  if req == 1 then
    return 2, 0, "���ҵ���Ҫ�Ķ�����������Ҫȥ���������ҡ�", 2, "�뿪����������", 3, "�����"
  elseif req == 2 then
    MoveZone(cnum, 35, 254)
  else
    return 0
  end
end