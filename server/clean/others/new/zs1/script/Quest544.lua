function NPC_QUEST_849(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"�밨�� �뷯��! �׷� �Ƹ������� ��ð� ���⸦ ���������ڱ���! �׷� ��Ź�����!! ����! �������� ������ �ɰ԰�!!?",2,"��~!"
		else 
			return 3,0,"�밨�� �뷯��! �Ƹ���������!? �켱 ���ư��ðھ��??",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"��� ������ ��Ŵ� �帱���!? ",5,"������Ÿ�� �̵�",6,"���츣���ٷ� �̵�",7,"�츣���ٷ� �̵�",8,"��ũ��Ÿ�� �̵�",9,"��𽺷� �̵�",10,"���������������� �̵�"

	elseif req == 4 then
		return 1,0,"��! �׷� � �Ƹ������� ��� �� �ּ���! ����~! ��ϱ���!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_850(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"�밨�� �뷯��! �׷� �Ƹ������� ��ð� ���⸦ ���������ڱ���! �׷� ��Ź�����!! ����! �������� ������ �ɰ԰�!!?",2,"��~!"
		else 
			return 3,0,"�밨�� �뷯��! �Ƹ���������!? �켱 ���ư��ðھ��??",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"��� ������ ��Ŵ� �帱���!? ",5,"������Ÿ�� �̵�",6,"���츣���ٷ� �̵�",7,"�츣���ٷ� �̵�",8,"��ũ��Ÿ�� �̵�",9,"��𽺷� �̵�",10,"���������������� �̵�"

	elseif req == 4 then
		return 1,0,"��! �׷� � �Ƹ������� ��� �� �ּ���! ����~! ��ϱ���!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_851(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"�밨�� �뷯��! �׷� �Ƹ������� ��ð� ���⸦ ���������ڱ���! �׷� ��Ź�����!! ����! �������� ������ �ɰ԰�!!?",2,"��~!"
		else 
			return 3,0,"�밨�� �뷯��! �Ƹ���������!? �켱 ���ư��ðھ��??",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"��� ������ ��Ŵ� �帱���!? ",5,"������Ÿ�� �̵�",6,"���츣���ٷ� �̵�",7,"�츣���ٷ� �̵�",8,"��ũ��Ÿ�� �̵�",9,"��𽺷� �̵�",10,"���������������� �̵�"

	elseif req == 4 then
		return 1,0,"��! �׷� � �Ƹ������� ��� �� �ּ���! ����~! ��ϱ���!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_852(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"�밨�� �뷯��! �׷� �Ƹ������� ��ð� ���⸦ ���������ڱ���! �׷� ��Ź�����!! ����! �������� ������ �ɰ԰�!!?",2,"��~!"
		else 
			return 3,0,"�밨�� �뷯��! �Ƹ���������!? �켱 ���ư��ðھ��??",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"��� ������ ��Ŵ� �帱���!? ",5,"������Ÿ�� �̵�",6,"���츣���ٷ� �̵�",7,"�츣���ٷ� �̵�",8,"��ũ��Ÿ�� �̵�",9,"��𽺷� �̵�",10,"���������������� �̵�"

	elseif req == 4 then
		return 1,0,"��! �׷� � �Ƹ������� ��� �� �ּ���! ����~! ��ϱ���!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_858(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"�밨�� �뷯��! �׷� �Ƹ������� ��ð� ���⸦ ���������ڱ���! �׷� ��Ź�����!! ����! �������� ������ �ɰ԰�!!?",2,"��~!"
		else 
			return 3,0,"�밨�� �뷯��! �Ƹ���������!? �켱 ���ư��ðھ��??",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"��� ������ ��Ŵ� �帱���!? ",5,"������Ÿ�� �̵�",6,"���츣���ٷ� �̵�",7,"�츣���ٷ� �̵�",8,"��ũ��Ÿ�� �̵�",9,"��𽺷� �̵�",10,"���������������� �̵�"

	elseif req == 4 then
		return 1,0,"��! �׷� � �Ƹ������� ��� �� �ּ���! ����~! ��ϱ���!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_859(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"�밨�� �뷯��! �׷� �Ƹ������� ��ð� ���⸦ ���������ڱ���! �׷� ��Ź�����!! ����! �������� ������ �ɰ԰�!!?",2,"��~!"
		else 
			return 3,0,"�밨�� �뷯��! �Ƹ���������!? �켱 ���ư��ðھ��??",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"��� ������ ��Ŵ� �帱���!? ",5,"������Ÿ�� �̵�",6,"���츣���ٷ� �̵�",7,"�츣���ٷ� �̵�",8,"��ũ��Ÿ�� �̵�",9,"��𽺷� �̵�",10,"���������������� �̵�"

	elseif req == 4 then
		return 1,0,"��! �׷� � �Ƹ������� ��� �� �ּ���! ����~! ��ϱ���!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_860(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"�밨�� �뷯��! �׷� �Ƹ������� ��ð� ���⸦ ���������ڱ���! �׷� ��Ź�����!! ����! �������� ������ �ɰ԰�!!?",2,"��~!"
		else 
			return 3,0,"�밨�� �뷯��! �Ƹ���������!? �켱 ���ư��ðھ��??",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"��� ������ ��Ŵ� �帱���!? ",5,"������Ÿ�� �̵�",6,"���츣���ٷ� �̵�",7,"�츣���ٷ� �̵�",8,"��ũ��Ÿ�� �̵�",9,"��𽺷� �̵�",10,"���������������� �̵�"

	elseif req == 4 then
		return 1,0,"��! �׷� � �Ƹ������� ��� �� �ּ���! ����~! ��ϱ���!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_861(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"�밨�� �뷯��! �׷� �Ƹ������� ��ð� ���⸦ ���������ڱ���! �׷� ��Ź�����!! ����! �������� ������ �ɰ԰�!!?",2,"��~!"
		else 
			return 3,0,"�밨�� �뷯��! �Ƹ���������!? �켱 ���ư��ðھ��??",3,"��~!",4,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"��� ������ ��Ŵ� �帱���!? ",5,"������Ÿ�� �̵�",6,"���츣���ٷ� �̵�",7,"�츣���ٷ� �̵�",8,"��ũ��Ÿ�� �̵�",9,"��𽺷� �̵�",10,"���������������� �̵�"

	elseif req == 4 then
		return 1,0,"��! �׷� � �Ƹ������� ��� �� �ּ���! ����~! ��ϱ���!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end