 function NPC_QUEST_224(cnum,reqNumber) --NPC ���ǽ�
	local req,id1,count1
	
	id1 = 372 --������ ����

	local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1010) < 1 then
			if GetSwitchCount(cnum, 1009) < 1 then
				if GetSwitchCount(cnum,18) == 0 then
					return 1,0,"����˭����ֻ����ϯ��������������ڱ���³��"
				end	
				return 2,0,"ʲô��ϯ�������͸������������������϶���Ҫ�ҵ�Ȩ�ȣ���֪������һ�������Ȩ��", 2, "����Ȩ��"
			else
				return 3,0,"�ҵ�����ĳ���ˣ�", 3, "��ҪȨ��", 4, "���о���ĳ��"
			end
		else
			return 1,0,"Harap temui Shira sekarang."
		end
	elseif req == 2 then
		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"�ҿ��Ժ���̸̸���������һ�����ɫ����ᾧ�Ļ����ܱ�Ǹ���ҵ����ˣ�����̫����"
		end
		return 2,0,"���ܴ���ϣ�����ѵ��㲻֪��������������ı�ʹ����Ϊ����һ�����ˣ��������Ҹ����صĶ��������羫��ĳ���Ҿͻ��ϣ����Ȩ�ȸ���", 12, "�ðɣ���������"
	elseif req == 12 then
		StartQuest(cnum, 10)
		AddSwitchCount(cnum, 1009, 1)		
		return 1,0,"ץסŷ�Ĳ�ԭ��Ҭ�������ܵõ�����ĳ��"
	elseif req == 3 then
		
		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"�Һ�æ"
		end
		return 1,0,"�Ҹ����㣬��ʹ������˾���ĳ��Ҳ������ζ�������100%�õ�ϣ����Ȩ�ȣ���Ϊ���Ǻ�����"
	elseif req == 4 then
		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"��û�����ɫ����ᾧ������Զ��"
		end
		if GetItemCount(cnum,372,0) == 0 then --������ ����(372)
			return 1,0,"��û�о���ĳ��"
		end
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"��ı�����λ�������������һ����λ"
		end
		random = SetRandom(cnum,0,100)
		if random < 24 then
			AddItemCount(cnum,302,1) -- ��������
			AddItemCount(cnum,id1,-1) --������ ����(372)
			return 1,0,"�Բ��𣬾���ĳ���������ˣ�Ȩ�������"
		elseif random >=24 and random < 30 then
			AddItemCount(cnum,303,1) -- ���̽� ��������
			AddItemCount(cnum,id1,-1) --������ ����(372)
			return 1,0,"��..�ҿ��Ը���ͬ����Ȩ�ȣ���������������Ҫ�ĸ����Բ����Ұ���Ū����"
		elseif random >=30 and random <60 then
			AddItemCount(cnum,304,1) -- ��� ��������
			AddItemCount(cnum,id1,-1) --������ ����(372)
			return 1,0,"�ٸ���һ������ĳ���ҿ϶������Ȩ��"
		elseif random >=60 and random <100 then
			AddItemCount(cnum,373,1) ---����� ������
			AddItemCount(cnum,id1,-1) --������ ����(372)
			AddSwitchCount(cnum, 1010, 1)
			EndQuest(cnum, 10)
			return 1,0,"����ϣ����Ȩ�ȣ��ø�ϯ���ɡ�"
		end
	end

	return 0
end