function NPC_QUEST_270(cnum,reqNumber) -- Ȳ�ݻ��� ���(�õ�)--�츣���� �Ա�
	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1004) < 1 then
			return 2,0,"�����ӣ��ޣ��Բ�����ֻ���������࣬�����������������һ���������������ļ��䣬�ڴ�֮ǰ������Ϊ����һ�����顣�ܾ���ǰ�������Ĺ����ɲ�����һֻ�С����𡱵�����ֻ������棬���й�������ʱ���ͻᷢ�������������������������޹������������Ƕ�����Ϊ�Ժ���", 2, "�ðɣ������"
		else
			if GetSwitchCount(cnum, 13) < 1 then
				return 2,0,"���ҵ��˰���ĵ�������", 13, "�ǵ�"
			else
				return 1,0,"�������֮���ļ��仹��Ҫ��ϯ�������������ᾧ��������³(X:75 Y:60)��ϯ��"
			end
		end
	 elseif req == 2 then
		return 2,0,"��󣬱�������֪���ˣ����������һ��ƽ������ץס�ڶ�˹����ڵ�Īŵ�������ܵõ�����ƽ������", 12, "Ŷ�����ź����һ�����"
	 elseif req == 12 then
		StartQuest(cnum, 5)
		AddSwitchCount(cnum, 1004, 1) 
		return 1,0,"�һ������ģ���л"
	 elseif req == 13 then
		if GetSwitchCount(cnum,12) == 0 then
			return 1,0,"*** �ڼ�������֮ǰ����Ҫ��³��˹�ϲ��Ұ��ޣ�X��96��Y��191��"
		end
		if GetSwitchCount(cnum,13) > 0 then
			return 1,0,"Ŷ����������ǰ���ĵ��񣬷ǳ���л�������Ǹ��������[FP:5��]"
		end
		
		if GetItemCount(cnum,363,0) == 0 then
			return 1,0,"�ƽ�������ҵ�����"
		end
		--AddHeroFreePoint(cnum,5)  -- ��������Ʈ 5�� �߰�
		AddSwitchCount(cnum,13,1) -- Ȳ�ݻ� ������
		EndQuest(cnum, 5)
		return 1,0,"Ŷ����Ư���ĵ������������������һ�����Һܸ��ˣ����뿪��а��Ĺ���������֮���ļ��仹��Ҫ����³ϯ��(X:75 Y:60)����������ᾧ"
	end
	return 0
 end