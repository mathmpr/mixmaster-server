function NPC_QUEST_862(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ���� �Ƹ���

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 527) < 1 then
			return 2,0,"��! ��! ������ ������! �����ϰ� �״�� ������! ��..��...��! ���� ������!! ��Ź��!!?",2,"��~!"
		else 
			return 3,0,"��������? � ������! ����� ��ǵ�� ��! ��ƾ�!",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 527, 1)

	elseif req == 3 then

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 196, 101)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 197, 101)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 198, 101)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 199, 101)
		end
	end
end

function NPC_QUEST_863(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ���� �Ƹ���

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 527) < 1 then
			return 2,0,"��! ��! ������ ������! �����ϰ� �״�� ������! ��..��...��! ���� ������!! ��Ź��!!?",2,"��~!"
		else 
			return 3,0,"��������? � ������! ����� ��ǵ�� ��! ��ƾ�!",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 527, 1)

	elseif req == 3 then

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 196, 101)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 197, 101)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 198, 101)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 199, 101)
		end
	end
end

function NPC_QUEST_864(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ���� �Ƹ���

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 527) < 1 then
			return 2,0,"��! ��! ������ ������! �����ϰ� �״�� ������! ��..��...��! ���� ������!! ��Ź��!!?",2,"��~!"
		else 
			return 3,0,"��������? � ������! ����� ��ǵ�� ��! ��ƾ�!",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 527, 1)

	elseif req == 3 then

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 196, 101)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 197, 101)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 198, 101)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 199, 101)
		end
	end
end

function NPC_QUEST_865(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ���� �Ƹ���

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 527) < 1 then
			return 2,0,"��! ��! ������ ������! �����ϰ� �״�� ������! ��..��...��! ���� ������!! ��Ź��!!?",2,"��~!"
		else 
			return 3,0,"��������? � ������! ����� ��ǵ�� ��! ��ƾ�!",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 527, 1)

	elseif req == 3 then

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 196, 101)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 197, 101)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 198, 101)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 199, 101)
		end
	end
end

