 function NPC_QUEST_202(cnum,reqNumber) --NPC ���(�ٶ��� ���� �ȳ���) - ���츣���� ��������
	local req, id1, count1

	id1 = 368 --�ٶ��� �Ź�	
	
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1007) < 1 then
			return 2,0,"Ŷ�����õ��˿���˹���С�����ĳ��ԭ������������֮��ָ���ָܻ��κζ�ʧ�Ķ������Ǹ������ڿ��������ҵ�", 3, "��Ҫȥ������"
		else
			return 2,0,"���з�֮ѥ����", 4, "�ǵģ�������"
		end
		
	elseif req == 3 then
		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"������п���˹���в��ܽ��������"
		end
		return 2,0,"�����Ҫ��ǿ׳��������ܵ��������εĿ�磬�������ǿ�����ҾͲ�֪���ᷢ��ʲô������", 101, "��һ��Ҫ��ȥ"
	elseif req == 101 then
		StartQuest(cnum, 8)
		AddSwitchCount(cnum, 1007, 1) 
		return 1,0,"�ţ��Բ�����������˲��ܵ��������εĿ�磬���Ƿ�֮ѥ���԰����㣬ץס����³�ϲ��ķʷʾ����ҵ���֮ѥ"
	elseif req == 4 then
		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"*** ��������֮ǰ������뵽���ֿ�˹ƽԭȥ�Һ��� (X:153.Y:100)"
		end
		if GetItemCount(cnum,368,0) == 0 then --�ٶ��� �Ź�(368)
			return 1,0,"ץס����³�ϲ��ķʷʾ����ҵ���֮ѥ"
		end
		
		EndQuest(cnum, 8)
		return 2,0,"�õġ���Ȼ�㴩�˷�֮ѥ�������㲻���ڵ����д��ܳ�ʱ�䣬һ����֮ѥ�ĳ־�û����ͻᴵ��ȥ���Һ���һ��ȥ����׼��������", 5, "�ǵ�"
	elseif req == 5 then
		count1 = GetItemCount(cnum,id1,0)
		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"ֻ�к���֪������˹���е��÷�"
		end
		if GetItemCount(cnum,368,0) == 0 then --�ٶ��� �Ź�
			return 1,0,"����Ҫ�з�֮ѥ���ܽ��������"
		end	
		AddItemCount(cnum,id1,-count1)  --�ٶ��� �Ź�
		SetReturnTimer(cnum,180,66) 
		MoveZone(cnum,247,101) --�ٶ��� ���� 247
		end
		
	return 0
end


 function NPC_QUEST_203(cnum,reqNumber) --NPC ���(�ٶ��� ������)
	local req,id1,id2, id3,count1,count2,count3

	id1 = 338 --�ٶ��� �Ź�
	id2 = 369 --���� ����
	id3 = 366 --ī���� ť��

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1008) < 1 then
			return 2,0,"Ҫ�����֮��ָ�Ƿǳ����ѵġ���Ȼ���з�֮ѥ��������ֻ�м����ӵĳ־á�һ���־���ʧ���㽫�ᱻ����ȥ������Ҫ�־���ʧ֮ǰ�ҵ���֮��ָ", 12, "��Ҫ����ҵ�����"
		else
			if GetSwitchCount(cnum, 17) < 1 then
				return 2,0,"���ҵ���֮��ָ�ˣ�", 2, "�ǵ�"
			else
				return 2,0,"���Ѿ�����ʱ����ס�����εĿ���ˣ���Ҫ�����������", 14, "�ǵ�"
			end
		end
	elseif req == 12 then
		return 2,0,"���ε�ĳ�����������������ܵõ���", 13, "��֪���ˣ�"
	elseif req == 13 then
		StartQuest(cnum, 9)
		AddSwitchCount(cnum, 1008, 1)
		return 1,0,"ע�⣺Ҫ���պ�ʱ��Ŷ"
		
	elseif req == 14 then
		MoveZone(cnum, 66, 254)
		
	elseif req == 2 then
		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"��ȥ�����ֿ�˹ƽԭ�ĺ���û��"
		end
		if GetItemCount(cnum,369, 0) == 0 then -- ���� ����(369)
			return 1,0,"��������ĳ����������ܵõ���֮��ָ���õ����һ���������ʹ����"
		end
		return 2,0,"���Ѿ��õ�����֮��ָ��������֮��ָ�Ϳ���˹���оͿ����һ�ϯ����ȫ�Ҹ���������һ����֮��ָ�Ϳ���˹���н�ϰ�", 3, "���"
	elseif req == 3 then
		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		count3 = GetItemCount(cnum,id3,0)
		if GetSwitchCount(cnum,17) > 0 then
			return 1,0,"ϯ����ȫ�Ҹ�ֻ��һ�ţ����Ѿ��õ���"
		end
		if GetSwitchCount(cnum,16) == 0 then
			return 1,0,"��ȥ�����ֿ�˹ƽԭ�ĺ���û��"
		end
		if GetItemCount(cnum,366,0) == 0 then --ī���� ť��(366)
			return 1,0,"��û�п���˹����Ŷ"
		end
		if GetItemCount(cnum,369,0) == 0 then --���� ����(369)
			return 1,0,"��û����֮��ָ"
		end
		
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"��ı�����λ�������������һ����λ"
		end
		AddItemCount(cnum,id1,-count1) -- �ٶ��� �Ź�
		AddItemCount(cnum,id2,-count2) --���� ����(369)
		AddItemCount(cnum,id3,-count3) --ī���� ť��(366) 
		AddItemCount(cnum,371,1) --������ ��������(371)
		AddSwitchCount(cnum,17,1)
		EndQuest(cnum, 9)
		return 1,0,"���Ǹ���Ķ��������ȫ�Ҹ���ϯ��������ȸ������ѹ��ġ�"
	end
	return 0
end