 function NPC_QUEST_286(cnum,reqNumber) --NPC ���� ����(ü���� ������)
	local req,id1,id2,count1,count2

	id1 = 376 -- ���� ��������
	id2 = 377 -- ������

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 20) < 1 then
			if GetSwitchCount(cnum, 1011) < 1 then		
				if GetSwitchCount(cnum,19) == 0 then
					return 1,0,"������ռ������е�����ᾧ"
				end
				return 2,0,"��ã������ˡ����һƽ���ƿ�ģ�����ȷ��һ������ġ������ƿ��", 12, "�����������ҵ����أ�"
			else
				return 4,0,"��Ҫ����ʲô��", 2, "������ڻƽ���ƿ", 3, "ħ���ľ���", 4, "��εõ�ħ���ľ���"
			end
		else
			return 1,0,"���ŵ²�ԭ�ҵ�Ԥ�Լ�������(X:180 Y:75)�����������ȥ��"
		end
	elseif req == 12 then
		return 2,0,"�ƽ���ƿֻ�����ڹ�ȥ������û�С��������Ҫ�Ļ�����Ҫ��ħ���ľ������㵽��ȥ��ħ���ľ�����Ҫ������Ĳ������⾵���", 13, "�õ�"
	elseif req == 13 then
		StartQuest(cnum, 11)
		AddSwitchCount(cnum, 1011, 1)
		return 1,0,"�������ħ���ľ��ӵĻ�����Ϳ��Իص���ȥ�ˡ�ץס֥ʿ����ַ�Ĵ��ؿ�����ܵõ�����ħ���ľ��ӵĲ���֥ʿ����ַ"
	elseif req == 2 then
		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"����ϯ����Ը�������ܵõ���������ᾧ����Ϳ��Եõ��������Ϣ."
		end
		return 1,0,"�ƽ���ƿֻ�����ڹ�ȥ������û�С��������Ҫ�Ļ�����Ҫ��ħ���ľ������㵽��ȥ��"
	elseif req == 3 then
		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"û������ᾧ������ϯ����Ը���Ϳ��Եõ�"
		end
		return 1,0,"����Ĳ������⾵���������ħ���ľ��ӣ����ǲ�֪�����е��ĸ�����������"
	elseif req == 4 then
		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		if GetSwitchCount(cnum,19) == 0 then
			return 1,0,"�뵽����³��ϯ���Ի�"
		end
		if GetSwitchCount(cnum,20) > 0 then
			return 1,0,"��ԭ���ң���ֻ��Ϊ������һ��ħ���ľ���"
		end
		if GetItemCount(cnum,376,0) == 0 then --���� ��������(376)
			return 1,0,"��û���鲣��Ƭ"
		end
		if GetItemCount(cnum,377,0) == 0 then --������(377)
			return 1,0,"�����һ���⾵"
		end
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"��ı�����λ�������������һ����λ"
		end
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,375,1) -- ������ �ſ�(375)
		--AddMoney(cnum,10000) -- 10000GP �߰�
		AddSwitchCount(cnum,20,1) --������ �ſ� Switch ��
		EndQuest(cnum, 11)
		return 1,0,"�ܺ�...�Ѿ�������ħ���ľ��ӣ��һ����һЩǮ��Ϊ����"
	end
	return 0
end