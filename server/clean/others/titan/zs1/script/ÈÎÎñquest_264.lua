function NPC_QUEST_264(cnum, reqNumber)

req = reqNumber

name = GetHeroName(cnum)


	if req == 1 then
		if GetSwitchCount(cnum, 84) < 1 then
			return 1,0,"С�����������ʲô���ؼ�ȥ�������Σ��"
		elseif GetItemCount(cnum, 379, 0) < 1 then
			return 1,0,"��Ӻ�Զ�ĵط������Ҳ�֪����������......������������Ǿ�Ӧ������ȥ������֮��������"
		else
			result = GetSwitchCount(cnum, 86)
				
			if result < 1 then
				if GetSwitchCount(cnum, 85) < 1 then
					return 2,0,"Ŷ�������������϶��Ǹ�Ӣ�ۣ���ϸ�����һ����������а��Ĺ���", 12, "��������ҡ�"
				else
					StartQuest(cnum, 14)
					return 3,0,"���Ѿ��ҵ�����", 72, "�ǵģ����ҵ��ˡ�", 73, "û�У��൱���ѡ�"
				end
			else
				return 2,0,"���ڣ������Ѿ���������е�׼������������ȥ��", 82, "�뿪"
			end
		end
	 elseif req == 12 then
		return 2,0,"",22,"�����..."
	 elseif req == 22 then
		return 2,0,"��������ǰ�����⵽��Ϯ������ӡ�����������͵������������������ҹĻ���ٵ�ʱ��������ң�22������С����������������Ѿ�ʹ�ҵ����Ͼ�ʧ...", 32, "�Һܱ�Ǹ���������Ϣ��"
	 elseif req == 32 then
		return 2,0,"��ҪΪ���һ�����������", 42, "�һ�Ϊ���ҵ����ǵ�"
	 elseif req == 42 then
		return 2,0,"Ŷ��лл�㣡�ǳ���ο���������ҡ�����֪����������������Ħ�����ס������ͷ����", 52, "������ʲô���ӵģ�"
	 elseif req == 52 then
		return 2,0,"��û�п��幥���ҵĹ�������������л�е�����������Ҹо��������𶯡�", 62, "�õ���֪����"
	 elseif req == 62 then
		StartQuest(cnum, 14)
		AddSwitchCount(cnum, 85, 1)
		return 1,0,"ף����ˣ�ҪС�ġ�"
		
	elseif req == 72 then
		if GetItemCount(cnum, 1201, 0) < 1 or GetItemCount(cnum, 1202, 0) < 1 then
			return 1,0,"��û�п���������Ǵ��������뾡����Ҵ�����"
		else
			AddItemCount(cnum,1201, -1)
			AddItemCount(cnum,1202, -1)
			AddSwitchCount(cnum, 86, 1) -- ���� ����ġ�� �Ŀ� ������ ������ �̵��ϴµ� ����Ѵ�. 
			EndQuest(cnum, 14)
			return 1,0,"���Ĳ�����Ȼ��ֻ������һ�����Ϣ�����Ȼ�µ��ˣ�����ĺܸм���İ���"
		end	
	elseif req == 82 then
		return 1,0,"[�������ڽ�����]"
	end
end