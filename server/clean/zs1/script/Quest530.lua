function NPC_QUEST_350(cnum, reqNumber)


	req = reqNumber
	Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 709) < 1 then
   		return 2,0,"�ȳ�!? �ȳ�!?@@[���ζ����] â�� 30�ֳ��� �������@[���ζ� 30�ֳ�] ��丶ũ�� �ְ��־�!@��ũ�� ����ؼ� [���ζ� 30�ֳ�]�� ���� �������ٷ�?",2,"[���ζ�30�ֳ� ��� ��ũ]�ޱ�"
   	else
			return 1,0,"�̹� �������� �޾Ҿ�����? ��Ÿ������ �� �� �ۿ� �� ���� ����!"
		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�������� �ޱ����� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."
		else
			SetSwitchCount(cnum, 709, 1)
			AddItemCount(cnum, 8833, 1)
			return 1,0,"��~����! ��ũ�� ����ؼ�@[���ζ� 30�ֳ�]�� ���� ������ ��~!"
		end
	end
end
