function NPC_QUEST_287(cnum,reqNumber) 
  req = reqNumber
  Lv = GetHeroLv(cnum)
  if req == 1 then
    if GetSwitchCount(cnum, 709) < 1 then
      return 2, 0, "Ϊ�˻�ӭ������ʿ�ĵ���,�ظ���λ׼����һ�ݱ��������:��ʿ����(3Сʱ)1��,������3��,�������1��,˹�ҿ�˼1��,��Ƥ��1��,�سǾ�99��"
    else
      return 1, 0, "�Բ���,��������ÿλ����ֻ��һ����ȡ�Ļ���"
    end
  elseif req == 2 then
    if GetRemainPocket(cnum) < 1 then
      return 1, 0, "[�Գɹ���ȡ��:�¸ҵ���ʿ����(3Сʱ)1��,������3��,�������1��,˹�ҿ�˼1��,��Ƥ��1��,�سǾ�99��]"
    else
      SetSwitchCount(cnum, 709, 1)
      return 1, 0, "��ϲ����ȡ�ɹ�"
    end
  end
end