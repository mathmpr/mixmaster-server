 function NPC_QUEST_314(cnum,reqNumber) --NPC ��� ������(���̸��� �ʵ�)
	local req = reqNumber

	if req == 1 then
		
		if GetSwitchCount(cnum,20) == 0 then
			return 1,0,"֥ʿ����ַȥ�Ҵ峤������(X��150 Y��95)��"
		end
		return 2,0,"��һֱ�ڵ��㣬��֪����û��̫���ʱ�䡣�ƽ���ƿ���Ƕ�ʧ��Զ��ɭ�ַǳ�����ƿ�ӣ�", 2, "����ȥ��"
	elseif req == 2 then
		if GetItemCount(cnum,375,0) == 0 then --������ �ſ�
			return 1,0,"ȥԶ��ɭ�ֱ���Ҫ��ħ���ľ��ӣ�֥ʿ����ַȥ�Ҵ峤�����̣�����֪��Щʲô"
		end
		MoveZone(cnum,246,101) --������ ��(246)
		end
	return 0
end

 function NPC_QUEST_315(cnum,reqNumber) -- NPC ������ ������(������ ��)
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 21) < 1 then
			if GetSwitchCount(cnum, 1012) < 1 then
				return 2,0,"�����ĳ���������Ͼ��лƽ���ƿ�ӣ������ǰ׻�", 12, "��֪����"
			else
				return 2,0,"�����ֻվ�������ʲôҲ�ò���", 3, "��һ��Ҫ�õ��ƽ���ƿ��"
			end
		else
			return 3,0,"�����Ѿ���������ᾧ�����ǻ���Ҫһ����֮����", 4, "��֮���飿", 5, "������ ����³"
		end
	elseif req == 12 then
		StartQuest(cnum, 12)
		AddSwitchCount(cnum, 1012, 1)
		return 1,0,"������лƽ���ƿ�ӣ��һ��ṩһЩ�м�ֵ�Ķ���"
	elseif req == 2 then
		MoveZone(cnum,67,253)
	elseif req == 3 then
		if GetItemCount(cnum,378,0) == 0 then -- Ȳ�� ������(378)
			return 1,0,"��û�п����ƽ���ƿ�����ټ��һ��"
		end
		if GetSwitchCount(cnum,21) > 0 then
			return 1,0,"�뱣�����֮���飬ף�����"
		end
		--AddHeroFreePoint(cnum,5) -- ��������Ʈ 5�� �߰�
		AddSwitchCount(cnum,21,1) -- Ȳ�� �������� switch ��
		EndQuest(cnum, 12)
		return 1,0,"�ۣ���ϲ�����Ǹ����5�����Ե�"
	elseif req == 4 then
		return 1,0,"�����˵�ɳĮ�����̩����(X:120 Y:110)������һ���������--��֮���飬����Ͻᾧʹ����ֳ"
	elseif req == 5 then	
		MoveZone(cnum, 60 ,254)
		
	end
	return 0
end