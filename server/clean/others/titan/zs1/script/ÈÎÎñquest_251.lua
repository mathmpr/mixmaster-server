function NPC_QUEST_251(cnum,reqNumber) -- ������ ����

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 61) < 1 then
			if GetSwitchCount(cnum, 1001) < 1 then 
               return 2, 0, "���������ҵ��𣿲�֪��˭���԰����ң�", 2, "�ҿ��԰���"
			else
				if GetSwitchCount(cnum, 9) < 1 then
					return 2,0,"����û�д����ָ�֮Ҷ��", 32, "������", 33, "ʲô�ǻָ�֮Ҷ��"
				else
					AddSwitchCount(cnum,10,1) --Switch#10
					return 1,0,"���ź�����û���ܹ���ȫ�ָ����������� (X:100,Y:100)��ռ��ʦ����˹�ɣ������԰�����"
				end
				
			end
		else
			return 3,0,"�ָ�֮·�����������ҵ�����Ҫ�Ķ�������", 12, "�ǵģ����ҵ���Щ����", 13, "����Ҫ�����ʱ��"
		end
	elseif req == 2 then
		if GetSwitchCount(cnum, 8) < 1 then
			return 1,0,". . ."
		else
			return 2,0,"�Ҳ���һ����ͨ���������Ѿ�����1000���ˡ�������ͨ���ҵ���������ʹ���Ǳ��ǿ�������ڰ��Ѳ������ǵĿ��ƣ�����лָ�֮Ҷ�Ҿ��ܹ���������", 101, "������������ҵ�����"
		end
	elseif req == 101 then
		StartQuest(cnum, 2)
		AddItemCount(cnum,354,-1)--���� ����
		AddItemCount(cnum,355,-1)
		AddItemCount(cnum,356,-1)
		AddSwitchCount(cnum, 1001, 1)
		return 1,0,"�ָ�֮Ҷ�����׸������ϲ���ԭ��ֻ�д���˴�ͷӥ���ܵõ������ҵ��˾ͻ������ң��Ǹ��������һָ�����"
		
	elseif req == 32 then
		if GetItemCount(cnum,357,0) == 0 then
			return 1,0,"����Ҫ�ָ�֮Ҷ���ڴ�ͷӥ������Եõ�"
		
		else
			--AddMoney(cnum,3000) -- 3000GP �߰�
			AddSwitchCount(cnum,9,1) -- Switch#9 ȸ���� �ٻ��
			AddItemCount(cnum,357,-1)
			EndQuest(cnum, 2)
			return 1,0,"�ǳ���л������һ����GP��Ϊ�����������һ�û������ȫ�ָ����������� (X:100,Y:100)��ռ��ʦ����˹�ɣ����ܰ�����"
		end
	elseif req == 33 then
		return 1,0,"�ָ�֮Ҷ�����׸������ϲ���ԭ��ֻ�д���˴�ͷӥ���ܵõ������ҵ��˾ͻ������ң��Ǹ��������һָ�����"
	elseif req == 12 then
		if GetItemCount(cnum, 379, 0) < 1 then
			return 1,0,"��û�д�����֮����"
		else
			return 2,0,"������Ѿ��ҵ��˱�Ҫ����Ʒ���Ͱ��һָ������ . . .", 22, "���Ѿ�����������ᾧ����֮����"
		end
	elseif req == 13 then
		return 1,0,"��㣬�����ĸ�ǿ����"
	elseif req == 22 then
		AddItemCount(cnum, 378, -1)
		AddItemCount(cnum, 364, -1)
		AddItemCount(cnum, 370, -1)
		AddItemCount(cnum, 374, -1)
		AddItemCount(cnum, 379, -1)
		AddItemCount(cnum, 375, -1)		
		AddSwitchCount(cnum, 84, 1)
		return 1,0,"лл�㣬�����Ӣ�ۡ�����֮���ָ��˼�������������ǹ���̫ǿ���ˡ�������ȥ˫��Ͽ���Ұ�������(X��102 Y��142)�������������ô�Ը������"
	end

	return 0
 end