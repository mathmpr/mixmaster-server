 function NPC_QUEST_319(cnum,reqNumber) -- NPC�Ҹ�(ī���� ť��)-�Ѹ� �ھ��� �ʵ�
	local req, id1, count1

	id1 = 367

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1006) < 1 then
			return 2,0,"��֪������Ҫʲô����������õ�ϯ�������ɫ����ᾧ������ֻ��һ�ַ�ʽʹ�����ᣬ�Ǿ�������ȫ�Ҹ�����ϧ���Ѿ���ʧ��.", 2, "ȫ�Ҹ�����Ϣ"
		else
			if GetSwitchCount(cnum, 16) < 1 then
				return 2,0,"������˾������������", 3, "�ǵ�"
			else
				return 1,0,"��������Ҫ������³�ϲ�ȥ�Ҹߵ�(X:199 Y:122)"			
			end
		end	
	 elseif req == 2 then
		if GetSwitchCount(cnum,15) == 0 then
			return 1,0,"��Ӧ�õ�����³��ϯ��(X:75 Y:60)"
		end
		return 2,0,"����˹������һ������ı��У����ܰ����ҵ���ʧ���κζ����������������Ҫ�ҵı��еĻ�������þ�������������ҽ�����ץס���ֿ�˹�Ķ�����ܵõ����������", 12, "�һ��ҵ���������׵�"
	 elseif req == 12 then
		StartQuest(cnum, 7)
		AddSwitchCount(cnum, 1006, 1)
		return 1,0,"Ҫ�õ���������ף������ܶ���"
	 elseif req == 3 then
		count1 = GetItemCount(cnum,id1,0)
		if GetSwitchCount(cnum,16) > 0 then
			return 1,0,"��û�п���˹����"
		end
		if GetSwitchCount(cnum,15) == 0 then
			return 1,0,"*** ��������֮ǰ, ��Ӧ�õ�����³(X:75 Y:60)��ϯ��"
		end
		if GetItemCount(cnum,367,0) == 0 then -- ������ �尩(367)
			return 1,0,"��û�п������������~"
		end
		AddSwitchCount(cnum,16,1)
		AddItemCount(cnum,id1,-count1) --������ �尩
		AddItemCount(cnum,366,1) --ī���� ť��
		EndQuest(cnum, 7)
		return 1,0,"������˾������ף��Ҹ��㿨��˹���С��������֪��������Ϣ����Ҫ������³�ϲ�ȥ�Ҹߵ�(X:199 Y:122)"
	end
	return 0
end
