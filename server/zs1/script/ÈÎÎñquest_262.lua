  function NPC_QUEST_262(cnum,reqNumber) -- �������� �Ƴ׽�
	local resultmsg,req,itemname1,itemname2,itemname3,id1,id2,id3,count1,count2,count3
	
	itemname1 ="ƻ��"
	itemname2 ="��"
	itemname3 ="����"

	id1=358
	id2=359
	id3=360
	
	req=reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1002) < 1 then
			return 2,0,"��ѻָ�֮Ҷ������֮���ˣ�Ҳ�������˰ɡ����������Ǹ��ܴ�Ĵ���ֻ��ʹ�����ĸ�ǿ�󡣱���Ҫ�������֮���ļ��������", 2, "��������ô����"
		else
			if GetSwitchCount(cnum, 11)< 1 then
				return 2,0,"�����������Ҫ��ˮ����", 13, "�ǵ�"
			else
				return 1,0,"������³��˹�ϲ�(X��96��Y��191)�������԰����㡣��Ȼ���̽����·�������������㶨��ɹ���"
			end
		end
	 elseif req == 2 then
		return 2,0,"Ҫ��֪�������������֮���������������������ǡ����������������ʱ����ʹ��ƻ�����桢������Ϊ��Ʒ����ɱ��������������С��ֺ���Զ���λξ��ܵõ�����ˮ��", 12, "��������ȥ��"
	 elseif req == 12 then
		StartQuest(cnum, 3)
		AddSwitchCount(cnum, 1002, 1)
		return 1,0,"��㣬�����ǿ��"
	 elseif req == 13 then
		if GetSwitchCount(cnum,10) == 0 then
		return 1,0,"*** �ڼ�������֮ǰ����Ҫ���׸�������������������֮�� (X: 125, Y:87) "
		end
	 
 		if GetSwitchCount(cnum,11) > 0 then
		return 1,0,"���ˮ��"
		end
		count1 = GetItemCount(cnum,358,0)
		if count1 == 0 then
			resultmsg = itemname1
		end
		count2 = GetItemCount(cnum,359,0)
		if count2 == 0 then
			if resultmsg == nil then
				resultmsg = itemname2
			else
				resultmsg = resultmsg..","..itemname2
			end
		end	
		count3 = GetItemCount(cnum,360,0)
		if count3 == 0 then
			if resultmsg == nil then
				resultmsg = itemname3
			else
				resultmsg = resultmsg..","..itemname3
			end
		end
		if resultmsg~=nil then
			return 1,0,"��û�д������õĹ�Ʒ" .. resultmsg .. ""
		end
		AddItemCount(cnum,358,-1)
		AddItemCount(cnum,359,-1)
		AddItemCount(cnum,360,-1)
		--AddHeroFreePoint(cnum,5)
		AddSwitchCount(cnum,11,1)
		EndQuest(cnum, 3)
		return 1,0,"������������������õĹ�Ʒ�������������Ǹ����ң�����Ҫ��³��˹�ϲ�ȥ�Ұ���(X��96��Y��191)�����������������Ϣ��"
	end	
	return 0

end