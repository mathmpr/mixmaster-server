function NPC_QUEST_266(cnum,reqNumber) -- õ���� �Ҹ�(��� ������ �ֳ�)

local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum ,1003) < 1 then
			return 2,0,"�ҿ����ý����Ӵ����������������֣������������ǳ����ȶ����������ҵ�����Ҳ�ᰲ��������", 2, "�����ӣ�"
		else
			if GetSwitchCount(cnum, 12) < 1 then
				return 2,0,"����������ˣ�", 13, "�ǵ�"
			else
				return 1,0,"���ڶ�˹�����ȥ�Ұ¶�(X��195��Y��76)���������������ý������������"			
			end
 		end
	elseif req == 2 then
		return 2,0,"��ռ��ʦ����˹������������������������Ǹ���Ϣ�ˣ��������ǿ����������ģ����ǽ����Ӷ��Һ���Ҫ����Ҫ�����������֡�����֪������������������ô��������������硣����������Ҹ���������������", 12, "�һ��ҵ�һ�����ٸ����"
	elseif req == 12 then
		StartQuest(cnum, 4)
		AddSwitchCount(cnum, 1003, 1)
		return 1,0,"����˵�������п��٣����Ŀ�����������õģ���ֻҪ�ܴ���������������ĺ��������ܵõ�����"
	elseif req == 13 then
		if GetSwitchCount(cnum,11) == 0 then
			return 1,0,"*** �ڼ�������֮ǰ,����뵽������ (X:100,Y:100)��ռ��ʦ����˹"
		end
		if GetSwitchCount(cnum,12) > 1 then
			return 1,0,"����ҿ��ٰ�"
		end
		
		if GetItemCount(cnum,362,0) < 1 then
			return 1,0,"�����ڻ����ܸ�������ӣ���Ϊ��û�д�����Ҫ�Ŀ���"
		end
		AddItemCount(cnum,362,-1) -- �ϸ��ī ����	
		AddItemCount(cnum,361, 1) -- �� �� ȹ��
		AddSwitchCount(cnum,12,1) -- Switch#10
		--AddMoney(cnum, 3000) -- 3000GP �߰�
		EndQuest(cnum, 4)
		return 1,0,"�ۣ�������Ǹ��ܲ��������������ֵĿ���������ǰ��δ�������������Ҹ���Ľ��������ڶ�˹�����ȥ�Ұ¶����������������ӵ��÷���"
	end	
	return 0
 end
