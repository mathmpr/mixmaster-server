function NPC_QUEST_1147(cnum,reqNumber) 
  req = reqNumber
  if req == 1 then
    return 3, 0, "��ã��س�-��֮���Ǹ���Σ�յĵط�������ȥ��", 2, "�ǵ�", 3, "��ȥ"
  elseif req == 2 then
    return 2, 0, "����ĺ��¸�", 12, "����", 13, "�´ΰ�"
  elseif req == 12 then
    MoveZone(cnum, 150, 101)
    return 0
  elseif req == 13 then
    return 1, 0, "���Ѿ���ȡ��һ�����ǵľ������س�-��֮���Ǻ�Σ�յģ���ʹ����ΰ���սʿ���޷����棬����Ĺ���ǳ�ǿ��"
  else
    return 0
  end
end

function NPC_QUEST_1148(cnum,reqNumber) 
  req = reqNumber
  if req == 1 then
    return 2, 0, "���ɫ�ı��֣�������������̵�ӡ�����кܴ��Ǳ������Ҫ�س�ȥ�ָ���", 2, "������ ����³"
  elseif req == 2 then
    MoveZone(cnum, 60, 254)
  else
    return 0
  end
end
