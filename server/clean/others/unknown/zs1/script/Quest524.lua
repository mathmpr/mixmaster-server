function NPC_QUEST_715(cnum, reqNumber)

req = reqNumber
Type = GetHeroType(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 447) < 1 then --> ����Ʈ�� �������� ������ �˻�
			if GetSwitchCount(cnum, 446) < 1 then --> ����Ʈ�� ���۾��� ���� �´� �� �˻�
				return 3,0,"������ ������Ÿ ��� ����鿡�� ������ �����ַ��� ���� ��Ḧ â�� ���� �׾Ƴ��µ�, ������ ���͵��� �����ؼ� ���� ��Ḧ ��� ������ ������ ������. ���� 50�κ� ������ �� ������ �� �� ������..����δ��� �����ֽǰŶ�� �Ͼ��. �׷���?@@ - �䱸 ������ : ���� 50�κ�",2,"��� �Ƽ̾��. ���� ���͵帱�Կ�.",7,"������..�˼��մϴ�."
			else
				return 3,0,"���� ���� 50�κ��� �������̳���? ",3,"�� �����Ծ��.",4,"�ƴϿ�. ���̴µ� �����߾��."
			end
		else
			return 1,0,"����δ� ���� �����ؿ�! ���п� ���ִ� ������ �Ծ����. ���� �� ���� ��������!!"			
		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then --> �κ��丮�� ��ĭ�̻� ������� �˻�
			return 1,0,"������ �κ��丮�� �����Ͽ� ������ ��[����50�κ�]�� �帱 ���� ���׿�. ������ �κ��丮�� ���� �ٽ� ������."
		else
			AddSwitchCount(cnum, 446 ,1) --> ����Ʈ ����
			AddItemCount(cnum, 8250, 1) --> ������ �� ����
			return 1,0,"�����ϴ�. ����δ� ���� ������ ��[����50�κ�]�� ����������. �̰��� ������ ������ ���̴� ���� ����� �� �� �־��. �׷� ��ٸ��� �����Կ�.",7,"��. ���ݸ� ��ٸ�����."			
		end


	elseif req == 3 then
		return 2,0,"���� �ݹ� ���� ���̱��� �����ϴ�. ���ְ� �� �Ƴ���?",6,"���� 50�κ��� �ǳٴ�"


	elseif req == 4 then --> �ٽ� ����
		return 2,0,"����...������ ���� �ٽ��ѹ� �帱�Կ� �ٽ� �������ðھ��?",5,"�� �ٽ� �غ��Կ�."


	elseif req == 5 then --> ������ �� ������
		if GetItemCount(cnum,8250,0) < 1 and GetItemCount(cnum,8253,0) < 50 then
			AddItemCount(cnum, 8250, 1) --> ������ �� ������
			return 1,0,"��~�����־�� �ٽ� �ѹ� ���� �� ������"
		elseif GetItemCount(cnum,8250,0) > 0 then
			return 1,0,"������ ��[����50�κ�]�� �����ó׿�."
		elseif GetItemCount(cnum,8253,0) > 49 then
			return 2,0,"����50�κ��� ���� ���̳׿�. ������ �ֽðھ��?",6,"��. �����־��"
		else
			return 0
		end


	elseif req == 6 then
		if GetItemCount(cnum,8253,0) > 49 then
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"������ �κ��丮�� �����Ͽ� �Ѻ��� �帱 ���� ���׿�. ������ �κ��丮�� ���� �ٽ� ������."
			elseif GetRemainPocket(cnum) > 0 then
       				if Type == 0 then
					AddItemCount(cnum, 1226, 1) --> �Ѻ� ������ ����
					AddSwitchCount(cnum, 447 ,1) --> ����Ʈ ����	
					AddItemCount(cnum, 8253, -50) --> ���� ������ 50�� ����
    					return 1,0,"���� ���� �ռ� ���� �Ѻ��̿���. ���� ������ ���ڰ� ������ �� �����ſ���. �����ּż� ���� ������."
				elseif Type == 1 then
					AddItemCount(cnum, 1227, 1)
					AddSwitchCount(cnum, 447 ,1) --> ����Ʈ ����						
					AddItemCount(cnum, 8253, -50) --> ���� ������ 50�� ����
					return 1,0,"���� ���� �ռ� ���� �Ѻ��̿���. ���� ������ ���ڰ� ������ �� �����ſ���. �����ּż� ���� ������."
				elseif Type == 2 then
					AddItemCount(cnum, 1228, 1)
					AddSwitchCount(cnum, 447 ,1) --> ����Ʈ ����						
					AddItemCount(cnum, 8253, -50) --> ���� ������ 50�� ����
					return 1,0,"���� ���� �ռ� ���� �Ѻ��̿���. ���� ������ ���ڰ� ������ �� �����ſ���. �����ּż� ���� ������."
				elseif Type == 3 then
					AddItemCount(cnum, 1229, 1)
					AddSwitchCount(cnum, 447 ,1) --> ����Ʈ ����						
					AddItemCount(cnum, 8253, -50) --> ���� ������ 50�� ����
					return 1,0,"���� ���� �ռ� ���� �Ѻ��̿���. ���� ������ ���ڰ� ������ �� �����ſ���. �����ּż� ���� ������."
				else
					return 0
				end

			else
				return 0                        
			end		
		else
			return 1,0,"����δ� ���� 50���� �����ó׿�. �κ��丮�� �ٽ� �ѹ� Ȯ�� �� �ֽǷ���?"
		end


	elseif req == 7 then
		return 0

	else
		return 0
	end

end