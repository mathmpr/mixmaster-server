function NPC_QUEST_306(cnum, reqNumber)

req = reqNumber
	
	if req == 1 then
		if GetSwitchCount(cnum, 61) < 1 then
			if GetSwitchCount(cnum, 60) < 1 then
				return 3,0,"����˭����ΪʲôҪ�������ƫԶ�ĵط���", 2, "����Ϊ����֮����", 3, "���תת"
			elseif GetSwitchCount(cnum, 60) > 0 then
				StartQuest(cnum, 13)				
				return 2,0,"���ҵ���ʧ�Ļ�������", 32, "�ǵģ����ҵ�������"
			end	
		elseif GetSwitchCount(cnum, 61) > 0 then
			return 1,0,"����Ϊһ��Ӣ�۵ģ��뱣�ܺ���֮����"
		else
			return 1,0,"���Ժ�����һ��"
		end
	elseif req == 2 then
		if GetItemCount(cnum, 378, 0) < 1 then
			return 1,0,"��û�д����ƽ���ƿ��"
		else
			return 3,0,"Ԥ�Լ��Ѿ�����˵�ˣ�������Ҫ����ס�ҵĿ��飬�Ҳ��ܸ�����֮����", 12, "ʲô���飿", 13, "��ΪʲôҪ���ܿ��飿"
		end
	elseif req == 3 then
		return 1,0,"�������ߣ��Ҳ�֪����Ϊʲô�������ǣ��������������ͻص���ĳ��С�"
	elseif req == 12 then
		return 2,0,"��ɳĮ���ұ�����Ϯ����Ū�����ҵı���������һ��ҵı��Ҿ͸�����֮����", 22, "�õ�"
	elseif req == 13 then
		return 1,0,"��ֻ����������ٻ�����Σ���Ȼ�㲻Ը�⣬���Ҳ����ܸ�����֮�����"
	elseif req == 22 then
		if CheckItemPocket(cnum, 1196, 5) < 0 then
			return 1,0,"���������ı����������㹻�Ŀ�λ����Ҫ���㶫��"
		else
			AddItemCount(cnum, 1196, 5) -- ü���� ��� 3�� ����
			AddSwitchCount(cnum, 60, 1)
			StartQuest(cnum, 13)
			return 1,0,"�ҵı���ʱ�䲻����Ӧ�þ�������Ĺ����ɳĮ�и���Щ����ս��������Ҫ����Щ�����裬�ò����������"
		end
	elseif req == 23 then
		return 1,0,"��..�ֹ���һ���ܺõĽ������ķ�������������"
		
	elseif req == 32 then
		if GetItemCount(cnum, 380, 0) < 1 then
			return 1,0,"�㶼û�а����ҵ���ʧ�Ļ���"
		else 
			if CheckItemPocket(cnum, 379, 1) < 0 then	
				return 1,0,"��ı������ˣ����ܳ���λ����Ҫ������֮����"
			else
				AddItemCount(cnum, 380, -1)				
				AddItemCount(cnum, 379, 1)
				AddSwitchCount(cnum, 61, 1) --����Ʈ ���� Ȯ�� ����ġ��
				--AddMoney(cnum, 30000)
				EndQuest(cnum, 13)
				return 1,0,"���ҵ����������������š������ˣ����Ѿ�ͨ���˿��飬�Ҳ����ܰѶ��������ˣ��������������Ҫ������֮���ܹ��ָ���"
			end
		end
	end
end