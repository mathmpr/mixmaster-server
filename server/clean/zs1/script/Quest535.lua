function NPC_QUEST_387(cnum, reqNumber)

random = SetRandom(cnum, 1, 32)
req = reqNumber
name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 487) > 0 then --> ����Ʈ 4 �Ϸ�Ǿ��� ��
				return 1,0,""..name.."~! �� ���п� ���� �ǸŸ� �簳 �� �� �ְ� �Ǿ���~! ����!" --> ����Ʈ �Ϸ�

		elseif GetSwitchCount(cnum, 485) > 0 then --> ����Ʈ 3 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 486) > 0 then --> ����Ʈ 4 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 500���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				else
					return 0
				end
			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ� �� ��ƺ���? �������� �� ������ �������� �ٰ� �?",17,"��",18,"�ƴ�" --> ����Ʈ 4 ���� ����
			end

		elseif GetSwitchCount(cnum, 483) > 0 then --> ����Ʈ 2 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 484) > 0 then --> ����Ʈ 3 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 250���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				else
					return 0
				end
			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ� �� ��ƺ���? �������� �� ������ �������� �ٰ� �?",15,"��",16,"�ƴ�" --> ����Ʈ 3 ���� ����
			end

		elseif GetSwitchCount(cnum, 481) > 0 then --> ����Ʈ 1 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 482) > 0 then --> ����Ʈ 2 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 100���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				else
					return 0
				end

			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ��� ��ƺ���? �������� �� ������ �������� �ٰ� �?",13,"��",14,"�ƴ�" --> ����Ʈ 2 ���� ����
			end

		else
			if GetSwitchCount(cnum, 480) > 0 then --> ����Ʈ 1 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 10���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				else
					return 0
				end

			else
				return 3,0,"������ ��� �̺�Ʈ! ��~��~�����غ�~!",11,"��",12,"�ƴ�" --> ����Ʈ 1 ���� ����
			end
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 1 ����
	elseif req == 11 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",111,"��",112,"�ƴ�"

	elseif req == 12 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 111 then
		SetSwitchCount(cnum, 480, 1) --> ����Ʈ 1 ���� ����ġ
		StartQuest(cnum, 176) --> ����Ʈ 1 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 10���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 100���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end
---------------------------------

	elseif req == 112 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 21 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 2ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 1 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 99 then
					AddItemCount(cnum, 8429, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 99 then
					AddItemCount(cnum, 8430, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 99 then
					AddItemCount(cnum, 8431, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 99 then
					AddItemCount(cnum, 8432, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 99 then
					AddItemCount(cnum, 8433, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 99 then
					AddItemCount(cnum, 8434, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 99 then
					AddItemCount(cnum, 8435, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 9 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 10���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 99 then
					AddItemCount(cnum, 8437, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 99 then
					AddItemCount(cnum, 8438, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 99 then
					AddItemCount(cnum, 8439, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 99 then
					AddItemCount(cnum, 8440, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 99 then
					AddItemCount(cnum, 8441, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 99 then
					AddItemCount(cnum, 8442, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 99 then
					AddItemCount(cnum, 8443, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 99 then
					AddItemCount(cnum, 8444, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 99 then
					AddItemCount(cnum, 8445, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 99 then
					AddItemCount(cnum, 8446, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 99 then
					AddItemCount(cnum, 8447, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 99 then
					AddItemCount(cnum, 8448, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 99 then
					AddItemCount(cnum, 8449, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 99 then
					AddItemCount(cnum, 8450, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 99 then
					AddItemCount(cnum, 8451, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 99 then
					AddItemCount(cnum, 8452, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 99 then
					AddItemCount(cnum, 8453, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 99 then
					AddItemCount(cnum, 8454, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 99 then
					AddItemCount(cnum, 8455, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 99 then
					AddItemCount(cnum, 8456, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 99 then
					AddItemCount(cnum, 8457, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 99 then
					AddItemCount(cnum, 8458, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 99 then
					AddItemCount(cnum, 8459, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 99 then
					AddItemCount(cnum, 8460, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end

		end

	elseif req == 22 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 10���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 2 ����
	elseif req == 13 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",113,"��",114,"�ƴ�"

	elseif req == 14 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 113 then
		SetSwitchCount(cnum, 482, 1) --> ����Ʈ 2 ���� ����ġ
		StartQuest(cnum, 177) --> ����Ʈ 2 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 1000���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 114 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 23 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 999 then
					AddItemCount(cnum, 8429, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 999 then
					AddItemCount(cnum, 8430, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 999 then
					AddItemCount(cnum, 8431, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 999 then
					AddItemCount(cnum, 8432, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 999 then
					AddItemCount(cnum, 8433, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 999 then
					AddItemCount(cnum, 8434, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 999 then
					AddItemCount(cnum, 8435, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 99 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 999 then
					AddItemCount(cnum, 8437, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 999 then
					AddItemCount(cnum, 8438, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 999 then
					AddItemCount(cnum, 8439, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 999 then
					AddItemCount(cnum, 8440, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 999 then
					AddItemCount(cnum, 8441, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 999 then
					AddItemCount(cnum, 8442, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 999 then
					AddItemCount(cnum, 8443, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 999 then
					AddItemCount(cnum, 8444, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 999 then
					AddItemCount(cnum, 8445, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 999 then
					AddItemCount(cnum, 8446, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 999 then
					AddItemCount(cnum, 8447, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 999 then
					AddItemCount(cnum, 8448, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 999 then
					AddItemCount(cnum, 8449, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 999 then
					AddItemCount(cnum, 8450, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 999 then
					AddItemCount(cnum, 8451, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 999 then
					AddItemCount(cnum, 8452, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 999 then
					AddItemCount(cnum, 8453, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 999 then
					AddItemCount(cnum, 8454, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 999 then
					AddItemCount(cnum, 8455, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 999 then
					AddItemCount(cnum, 8456, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 999 then
					AddItemCount(cnum, 8457, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 999 then
					AddItemCount(cnum, 8458, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 999 then
					AddItemCount(cnum, 8459, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 999 then
					AddItemCount(cnum, 8460, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end
		end

	elseif req == 24 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 180 then
			return 1,0,"� ī�޷� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 3 ����
	elseif req == 15 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",115,"��",116,"�ƴ�"

	elseif req == 16 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 115 then
		SetSwitchCount(cnum, 484, 1) --> ����Ʈ 3 ���� ����ġ
		StartQuest(cnum, 178) --> ����Ʈ 3 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 250���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 2500���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 116 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 25 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 2499 then
					AddItemCount(cnum, 8429, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 2499 then
					AddItemCount(cnum, 8430, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 2499 then
					AddItemCount(cnum, 8431, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 2499 then
					AddItemCount(cnum, 8432, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 2499 then
					AddItemCount(cnum, 8433, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 2499 then
					AddItemCount(cnum, 8434, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 2499 then
					AddItemCount(cnum, 8435, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 249 then
					AddItemCount(cnum, 8436, -250)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 250���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 2499 then
					AddItemCount(cnum, 8437, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 2499 then
					AddItemCount(cnum, 8438, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 2499 then
					AddItemCount(cnum, 8439, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 2499 then
					AddItemCount(cnum, 8440, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 2499 then
					AddItemCount(cnum, 8441, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 2499 then
					AddItemCount(cnum, 8442, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 2499 then
					AddItemCount(cnum, 8443, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 2499 then
					AddItemCount(cnum, 8444, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 2499 then
					AddItemCount(cnum, 8445, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 2499 then
					AddItemCount(cnum, 8446, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 2499 then
					AddItemCount(cnum, 8447, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 2499 then
					AddItemCount(cnum, 8448, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 2499 then
					AddItemCount(cnum, 8449, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 2499 then
					AddItemCount(cnum, 8450, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 2499 then
					AddItemCount(cnum, 8451, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 2499 then
					AddItemCount(cnum, 8452, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 2499 then
					AddItemCount(cnum, 8453, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 2499 then
					AddItemCount(cnum, 8454, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 2499 then
					AddItemCount(cnum, 8455, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 2499 then
					AddItemCount(cnum, 8456, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 2499 then
					AddItemCount(cnum, 8457, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 2499 then
					AddItemCount(cnum, 8458, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 2499 then
					AddItemCount(cnum, 8459, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 2499 then
					AddItemCount(cnum, 8460, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end

		end

	elseif req == 26 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 250���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 4 ����
	elseif req == 17 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",117,"��",118,"�ƴ�"

	elseif req == 18 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 117 then
		SetSwitchCount(cnum, 486, 1) --> ����Ʈ 4 ���� ����ġ
		StartQuest(cnum, 179) --> ����Ʈ 4 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 500���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 5000���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 118 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 27 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 3 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 4999 then
					AddItemCount(cnum, 8429, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 4999 then
					AddItemCount(cnum, 8430, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 4999 then
					AddItemCount(cnum, 8431, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 4999 then
					AddItemCount(cnum, 8432, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 4999 then
					AddItemCount(cnum, 8433, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 4999 then
					AddItemCount(cnum, 8434, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 4999 then
					AddItemCount(cnum, 8435, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 499 then
					AddItemCount(cnum, 8436, -500)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 4999 then
					AddItemCount(cnum, 8437, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 4999 then
					AddItemCount(cnum, 8438, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 4999 then
					AddItemCount(cnum, 8439, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 4999 then
					AddItemCount(cnum, 8440, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 4999 then
					AddItemCount(cnum, 8441, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 4999 then
					AddItemCount(cnum, 8442, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 4999 then
					AddItemCount(cnum, 8443, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 4999 then
					AddItemCount(cnum, 8444, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 4999 then
					AddItemCount(cnum, 8445, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 4999 then
					AddItemCount(cnum, 8446, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 4999 then
					AddItemCount(cnum, 8447, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 4999 then
					AddItemCount(cnum, 8448, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 4999 then
					AddItemCount(cnum, 8449, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 4999 then
					AddItemCount(cnum, 8450, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 4999 then
					AddItemCount(cnum, 8451, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 4999 then
					AddItemCount(cnum, 8452, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 4999 then
					AddItemCount(cnum, 8453, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 4999 then
					AddItemCount(cnum, 8454, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 4999 then
					AddItemCount(cnum, 8455, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 4999 then
					AddItemCount(cnum, 8456, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 4999 then
					AddItemCount(cnum, 8457, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 4999 then
					AddItemCount(cnum, 8458, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 4999 then
					AddItemCount(cnum, 8459, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 4999 then
					AddItemCount(cnum, 8460, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end
		end

	elseif req == 28 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

	end
end

function NPC_QUEST_388(cnum, reqNumber)

random = SetRandom(cnum, 1, 32)
req = reqNumber
name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 487) > 0 then --> ����Ʈ 4 �Ϸ�Ǿ��� ��
				return 1,0,""..name.."~! �� ���п� ���� �ǸŸ� �簳 �� �� �ְ� �Ǿ���~! ����!" --> ����Ʈ �Ϸ�

		elseif GetSwitchCount(cnum, 485) > 0 then --> ����Ʈ 3 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 486) > 0 then --> ����Ʈ 4 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 500���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				else
					return 0
				end
			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ� �� ��ƺ���? �������� �� ������ �������� �ٰ� �?",17,"��",18,"�ƴ�" --> ����Ʈ 4 ���� ����
			end

		elseif GetSwitchCount(cnum, 483) > 0 then --> ����Ʈ 2 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 484) > 0 then --> ����Ʈ 3 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 250���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				else
					return 0
				end
			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ� �� ��ƺ���? �������� �� ������ �������� �ٰ� �?",15,"��",16,"�ƴ�" --> ����Ʈ 3 ���� ����
			end

		elseif GetSwitchCount(cnum, 481) > 0 then --> ����Ʈ 1 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 482) > 0 then --> ����Ʈ 2 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 100���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				else
					return 0
				end

			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ��� ��ƺ���? �������� �� ������ �������� �ٰ� �?",13,"��",14,"�ƴ�" --> ����Ʈ 2 ���� ����
			end

		else
			if GetSwitchCount(cnum, 480) > 0 then --> ����Ʈ 1 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 10���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				else
					return 0
				end

			else
				return 3,0,"������ ��� �̺�Ʈ! ��~��~�����غ�~!",11,"��",12,"�ƴ�" --> ����Ʈ 1 ���� ����
			end
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 1 ����
	elseif req == 11 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",111,"��",112,"�ƴ�"

	elseif req == 12 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 111 then
		SetSwitchCount(cnum, 480, 1) --> ����Ʈ 1 ���� ����ġ
		StartQuest(cnum, 176) --> ����Ʈ 1 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 10���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 100���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end
---------------------------------

	elseif req == 112 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 21 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 2ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 1 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 99 then
					AddItemCount(cnum, 8429, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 99 then
					AddItemCount(cnum, 8430, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 99 then
					AddItemCount(cnum, 8431, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 99 then
					AddItemCount(cnum, 8432, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 99 then
					AddItemCount(cnum, 8433, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 99 then
					AddItemCount(cnum, 8434, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 99 then
					AddItemCount(cnum, 8435, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 9 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 10���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 99 then
					AddItemCount(cnum, 8437, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 99 then
					AddItemCount(cnum, 8438, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 99 then
					AddItemCount(cnum, 8439, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 99 then
					AddItemCount(cnum, 8440, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 99 then
					AddItemCount(cnum, 8441, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 99 then
					AddItemCount(cnum, 8442, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 99 then
					AddItemCount(cnum, 8443, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 99 then
					AddItemCount(cnum, 8444, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 99 then
					AddItemCount(cnum, 8445, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 99 then
					AddItemCount(cnum, 8446, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 99 then
					AddItemCount(cnum, 8447, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 99 then
					AddItemCount(cnum, 8448, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 99 then
					AddItemCount(cnum, 8449, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 99 then
					AddItemCount(cnum, 8450, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 99 then
					AddItemCount(cnum, 8451, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 99 then
					AddItemCount(cnum, 8452, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 99 then
					AddItemCount(cnum, 8453, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 99 then
					AddItemCount(cnum, 8454, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 99 then
					AddItemCount(cnum, 8455, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 99 then
					AddItemCount(cnum, 8456, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 99 then
					AddItemCount(cnum, 8457, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 99 then
					AddItemCount(cnum, 8458, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 99 then
					AddItemCount(cnum, 8459, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 99 then
					AddItemCount(cnum, 8460, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end

		end

	elseif req == 22 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 10���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 2 ����
	elseif req == 13 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",113,"��",114,"�ƴ�"

	elseif req == 14 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 113 then
		SetSwitchCount(cnum, 482, 1) --> ����Ʈ 2 ���� ����ġ
		StartQuest(cnum, 177) --> ����Ʈ 2 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 1000���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 114 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 23 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 999 then
					AddItemCount(cnum, 8429, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 999 then
					AddItemCount(cnum, 8430, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 999 then
					AddItemCount(cnum, 8431, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 999 then
					AddItemCount(cnum, 8432, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 999 then
					AddItemCount(cnum, 8433, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 999 then
					AddItemCount(cnum, 8434, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 999 then
					AddItemCount(cnum, 8435, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 99 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 999 then
					AddItemCount(cnum, 8437, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 999 then
					AddItemCount(cnum, 8438, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 999 then
					AddItemCount(cnum, 8439, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 999 then
					AddItemCount(cnum, 8440, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 999 then
					AddItemCount(cnum, 8441, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 999 then
					AddItemCount(cnum, 8442, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 999 then
					AddItemCount(cnum, 8443, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 999 then
					AddItemCount(cnum, 8444, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 999 then
					AddItemCount(cnum, 8445, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 999 then
					AddItemCount(cnum, 8446, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 999 then
					AddItemCount(cnum, 8447, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 999 then
					AddItemCount(cnum, 8448, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 999 then
					AddItemCount(cnum, 8449, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 999 then
					AddItemCount(cnum, 8450, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 999 then
					AddItemCount(cnum, 8451, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 999 then
					AddItemCount(cnum, 8452, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 999 then
					AddItemCount(cnum, 8453, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 999 then
					AddItemCount(cnum, 8454, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 999 then
					AddItemCount(cnum, 8455, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 999 then
					AddItemCount(cnum, 8456, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 999 then
					AddItemCount(cnum, 8457, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 999 then
					AddItemCount(cnum, 8458, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 999 then
					AddItemCount(cnum, 8459, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 999 then
					AddItemCount(cnum, 8460, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end
		end

	elseif req == 24 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 180 then
			return 1,0,"� ī�޷� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 3 ����
	elseif req == 15 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",115,"��",116,"�ƴ�"

	elseif req == 16 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 115 then
		SetSwitchCount(cnum, 484, 1) --> ����Ʈ 3 ���� ����ġ
		StartQuest(cnum, 178) --> ����Ʈ 3 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 250���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 2500���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 116 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 25 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 2499 then
					AddItemCount(cnum, 8429, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 2499 then
					AddItemCount(cnum, 8430, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 2499 then
					AddItemCount(cnum, 8431, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 2499 then
					AddItemCount(cnum, 8432, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 2499 then
					AddItemCount(cnum, 8433, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 2499 then
					AddItemCount(cnum, 8434, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 2499 then
					AddItemCount(cnum, 8435, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 249 then
					AddItemCount(cnum, 8436, -250)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 250���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 2499 then
					AddItemCount(cnum, 8437, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 2499 then
					AddItemCount(cnum, 8438, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 2499 then
					AddItemCount(cnum, 8439, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 2499 then
					AddItemCount(cnum, 8440, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 2499 then
					AddItemCount(cnum, 8441, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 2499 then
					AddItemCount(cnum, 8442, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 2499 then
					AddItemCount(cnum, 8443, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 2499 then
					AddItemCount(cnum, 8444, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 2499 then
					AddItemCount(cnum, 8445, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 2499 then
					AddItemCount(cnum, 8446, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 2499 then
					AddItemCount(cnum, 8447, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 2499 then
					AddItemCount(cnum, 8448, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 2499 then
					AddItemCount(cnum, 8449, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 2499 then
					AddItemCount(cnum, 8450, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 2499 then
					AddItemCount(cnum, 8451, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 2499 then
					AddItemCount(cnum, 8452, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 2499 then
					AddItemCount(cnum, 8453, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 2499 then
					AddItemCount(cnum, 8454, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 2499 then
					AddItemCount(cnum, 8455, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 2499 then
					AddItemCount(cnum, 8456, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 2499 then
					AddItemCount(cnum, 8457, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 2499 then
					AddItemCount(cnum, 8458, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 2499 then
					AddItemCount(cnum, 8459, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 2499 then
					AddItemCount(cnum, 8460, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end

		end

	elseif req == 26 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 250���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 4 ����
	elseif req == 17 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",117,"��",118,"�ƴ�"

	elseif req == 18 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 117 then
		SetSwitchCount(cnum, 486, 1) --> ����Ʈ 4 ���� ����ġ
		StartQuest(cnum, 179) --> ����Ʈ 4 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 500���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 5000���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 118 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 27 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 3 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 4999 then
					AddItemCount(cnum, 8429, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 4999 then
					AddItemCount(cnum, 8430, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 4999 then
					AddItemCount(cnum, 8431, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 4999 then
					AddItemCount(cnum, 8432, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 4999 then
					AddItemCount(cnum, 8433, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 4999 then
					AddItemCount(cnum, 8434, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 4999 then
					AddItemCount(cnum, 8435, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 499 then
					AddItemCount(cnum, 8436, -500)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 4999 then
					AddItemCount(cnum, 8437, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 4999 then
					AddItemCount(cnum, 8438, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 4999 then
					AddItemCount(cnum, 8439, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 4999 then
					AddItemCount(cnum, 8440, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 4999 then
					AddItemCount(cnum, 8441, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 4999 then
					AddItemCount(cnum, 8442, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 4999 then
					AddItemCount(cnum, 8443, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 4999 then
					AddItemCount(cnum, 8444, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 4999 then
					AddItemCount(cnum, 8445, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 4999 then
					AddItemCount(cnum, 8446, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 4999 then
					AddItemCount(cnum, 8447, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 4999 then
					AddItemCount(cnum, 8448, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 4999 then
					AddItemCount(cnum, 8449, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 4999 then
					AddItemCount(cnum, 8450, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 4999 then
					AddItemCount(cnum, 8451, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 4999 then
					AddItemCount(cnum, 8452, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 4999 then
					AddItemCount(cnum, 8453, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 4999 then
					AddItemCount(cnum, 8454, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 4999 then
					AddItemCount(cnum, 8455, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 4999 then
					AddItemCount(cnum, 8456, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 4999 then
					AddItemCount(cnum, 8457, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 4999 then
					AddItemCount(cnum, 8458, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 4999 then
					AddItemCount(cnum, 8459, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 4999 then
					AddItemCount(cnum, 8460, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end
		end

	elseif req == 28 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

	end
end

function NPC_QUEST_389(cnum, reqNumber)

random = SetRandom(cnum, 1, 32)
req = reqNumber
name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 487) > 0 then --> ����Ʈ 4 �Ϸ�Ǿ��� ��
				return 1,0,""..name.."~! �� ���п� ���� �ǸŸ� �簳 �� �� �ְ� �Ǿ���~! ����!" --> ����Ʈ �Ϸ�

		elseif GetSwitchCount(cnum, 485) > 0 then --> ����Ʈ 3 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 486) > 0 then --> ����Ʈ 4 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 500���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				else
					return 0
				end
			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ� �� ��ƺ���? �������� �� ������ �������� �ٰ� �?",17,"��",18,"�ƴ�" --> ����Ʈ 4 ���� ����
			end

		elseif GetSwitchCount(cnum, 483) > 0 then --> ����Ʈ 2 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 484) > 0 then --> ����Ʈ 3 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 250���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				else
					return 0
				end
			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ� �� ��ƺ���? �������� �� ������ �������� �ٰ� �?",15,"��",16,"�ƴ�" --> ����Ʈ 3 ���� ����
			end

		elseif GetSwitchCount(cnum, 481) > 0 then --> ����Ʈ 1 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 482) > 0 then --> ����Ʈ 2 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 100���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				else
					return 0
				end

			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ��� ��ƺ���? �������� �� ������ �������� �ٰ� �?",13,"��",14,"�ƴ�" --> ����Ʈ 2 ���� ����
			end

		else
			if GetSwitchCount(cnum, 480) > 0 then --> ����Ʈ 1 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 10���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				else
					return 0
				end

			else
				return 3,0,"������ ��� �̺�Ʈ! ��~��~�����غ�~!",11,"��",12,"�ƴ�" --> ����Ʈ 1 ���� ����
			end
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 1 ����
	elseif req == 11 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",111,"��",112,"�ƴ�"

	elseif req == 12 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 111 then
		SetSwitchCount(cnum, 480, 1) --> ����Ʈ 1 ���� ����ġ
		StartQuest(cnum, 176) --> ����Ʈ 1 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 10���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 100���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end
---------------------------------

	elseif req == 112 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 21 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 2ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 1 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 99 then
					AddItemCount(cnum, 8429, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 99 then
					AddItemCount(cnum, 8430, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 99 then
					AddItemCount(cnum, 8431, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 99 then
					AddItemCount(cnum, 8432, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 99 then
					AddItemCount(cnum, 8433, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 99 then
					AddItemCount(cnum, 8434, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 99 then
					AddItemCount(cnum, 8435, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 9 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 10���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 99 then
					AddItemCount(cnum, 8437, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 99 then
					AddItemCount(cnum, 8438, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 99 then
					AddItemCount(cnum, 8439, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 99 then
					AddItemCount(cnum, 8440, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 99 then
					AddItemCount(cnum, 8441, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 99 then
					AddItemCount(cnum, 8442, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 99 then
					AddItemCount(cnum, 8443, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 99 then
					AddItemCount(cnum, 8444, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 99 then
					AddItemCount(cnum, 8445, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 99 then
					AddItemCount(cnum, 8446, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 99 then
					AddItemCount(cnum, 8447, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 99 then
					AddItemCount(cnum, 8448, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 99 then
					AddItemCount(cnum, 8449, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 99 then
					AddItemCount(cnum, 8450, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 99 then
					AddItemCount(cnum, 8451, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 99 then
					AddItemCount(cnum, 8452, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 99 then
					AddItemCount(cnum, 8453, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 99 then
					AddItemCount(cnum, 8454, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 99 then
					AddItemCount(cnum, 8455, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 99 then
					AddItemCount(cnum, 8456, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 99 then
					AddItemCount(cnum, 8457, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 99 then
					AddItemCount(cnum, 8458, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 99 then
					AddItemCount(cnum, 8459, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 99 then
					AddItemCount(cnum, 8460, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end

		end

	elseif req == 22 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 10���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 2 ����
	elseif req == 13 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",113,"��",114,"�ƴ�"

	elseif req == 14 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 113 then
		SetSwitchCount(cnum, 482, 1) --> ����Ʈ 2 ���� ����ġ
		StartQuest(cnum, 177) --> ����Ʈ 2 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 1000���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 114 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 23 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 999 then
					AddItemCount(cnum, 8429, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 999 then
					AddItemCount(cnum, 8430, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 999 then
					AddItemCount(cnum, 8431, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 999 then
					AddItemCount(cnum, 8432, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 999 then
					AddItemCount(cnum, 8433, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 999 then
					AddItemCount(cnum, 8434, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 999 then
					AddItemCount(cnum, 8435, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 99 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 999 then
					AddItemCount(cnum, 8437, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 999 then
					AddItemCount(cnum, 8438, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 999 then
					AddItemCount(cnum, 8439, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 999 then
					AddItemCount(cnum, 8440, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 999 then
					AddItemCount(cnum, 8441, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 999 then
					AddItemCount(cnum, 8442, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 999 then
					AddItemCount(cnum, 8443, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 999 then
					AddItemCount(cnum, 8444, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 999 then
					AddItemCount(cnum, 8445, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 999 then
					AddItemCount(cnum, 8446, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 999 then
					AddItemCount(cnum, 8447, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 999 then
					AddItemCount(cnum, 8448, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 999 then
					AddItemCount(cnum, 8449, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 999 then
					AddItemCount(cnum, 8450, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 999 then
					AddItemCount(cnum, 8451, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 999 then
					AddItemCount(cnum, 8452, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 999 then
					AddItemCount(cnum, 8453, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 999 then
					AddItemCount(cnum, 8454, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 999 then
					AddItemCount(cnum, 8455, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 999 then
					AddItemCount(cnum, 8456, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 999 then
					AddItemCount(cnum, 8457, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 999 then
					AddItemCount(cnum, 8458, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 999 then
					AddItemCount(cnum, 8459, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 999 then
					AddItemCount(cnum, 8460, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end
		end

	elseif req == 24 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 180 then
			return 1,0,"� ī�޷� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 3 ����
	elseif req == 15 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",115,"��",116,"�ƴ�"

	elseif req == 16 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 115 then
		SetSwitchCount(cnum, 484, 1) --> ����Ʈ 3 ���� ����ġ
		StartQuest(cnum, 178) --> ����Ʈ 3 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 250���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 2500���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 116 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 25 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 2499 then
					AddItemCount(cnum, 8429, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 2499 then
					AddItemCount(cnum, 8430, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 2499 then
					AddItemCount(cnum, 8431, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 2499 then
					AddItemCount(cnum, 8432, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 2499 then
					AddItemCount(cnum, 8433, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 2499 then
					AddItemCount(cnum, 8434, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 2499 then
					AddItemCount(cnum, 8435, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 249 then
					AddItemCount(cnum, 8436, -250)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 250���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 2499 then
					AddItemCount(cnum, 8437, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 2499 then
					AddItemCount(cnum, 8438, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 2499 then
					AddItemCount(cnum, 8439, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 2499 then
					AddItemCount(cnum, 8440, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 2499 then
					AddItemCount(cnum, 8441, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 2499 then
					AddItemCount(cnum, 8442, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 2499 then
					AddItemCount(cnum, 8443, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 2499 then
					AddItemCount(cnum, 8444, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 2499 then
					AddItemCount(cnum, 8445, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 2499 then
					AddItemCount(cnum, 8446, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 2499 then
					AddItemCount(cnum, 8447, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 2499 then
					AddItemCount(cnum, 8448, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 2499 then
					AddItemCount(cnum, 8449, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 2499 then
					AddItemCount(cnum, 8450, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 2499 then
					AddItemCount(cnum, 8451, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 2499 then
					AddItemCount(cnum, 8452, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 2499 then
					AddItemCount(cnum, 8453, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 2499 then
					AddItemCount(cnum, 8454, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 2499 then
					AddItemCount(cnum, 8455, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 2499 then
					AddItemCount(cnum, 8456, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 2499 then
					AddItemCount(cnum, 8457, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 2499 then
					AddItemCount(cnum, 8458, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 2499 then
					AddItemCount(cnum, 8459, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 2499 then
					AddItemCount(cnum, 8460, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end

		end

	elseif req == 26 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 250���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 4 ����
	elseif req == 17 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",117,"��",118,"�ƴ�"

	elseif req == 18 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 117 then
		SetSwitchCount(cnum, 486, 1) --> ����Ʈ 4 ���� ����ġ
		StartQuest(cnum, 179) --> ����Ʈ 4 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 500���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 5000���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 118 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 27 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 3 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 4999 then
					AddItemCount(cnum, 8429, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 4999 then
					AddItemCount(cnum, 8430, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 4999 then
					AddItemCount(cnum, 8431, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 4999 then
					AddItemCount(cnum, 8432, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 4999 then
					AddItemCount(cnum, 8433, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 4999 then
					AddItemCount(cnum, 8434, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 4999 then
					AddItemCount(cnum, 8435, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 499 then
					AddItemCount(cnum, 8436, -500)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 4999 then
					AddItemCount(cnum, 8437, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 4999 then
					AddItemCount(cnum, 8438, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 4999 then
					AddItemCount(cnum, 8439, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 4999 then
					AddItemCount(cnum, 8440, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 4999 then
					AddItemCount(cnum, 8441, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 4999 then
					AddItemCount(cnum, 8442, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 4999 then
					AddItemCount(cnum, 8443, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 4999 then
					AddItemCount(cnum, 8444, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 4999 then
					AddItemCount(cnum, 8445, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 4999 then
					AddItemCount(cnum, 8446, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 4999 then
					AddItemCount(cnum, 8447, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 4999 then
					AddItemCount(cnum, 8448, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 4999 then
					AddItemCount(cnum, 8449, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 4999 then
					AddItemCount(cnum, 8450, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 4999 then
					AddItemCount(cnum, 8451, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 4999 then
					AddItemCount(cnum, 8452, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 4999 then
					AddItemCount(cnum, 8453, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 4999 then
					AddItemCount(cnum, 8454, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 4999 then
					AddItemCount(cnum, 8455, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 4999 then
					AddItemCount(cnum, 8456, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 4999 then
					AddItemCount(cnum, 8457, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 4999 then
					AddItemCount(cnum, 8458, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 4999 then
					AddItemCount(cnum, 8459, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 4999 then
					AddItemCount(cnum, 8460, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end
		end

	elseif req == 28 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

	end
end

function NPC_QUEST_390(cnum, reqNumber)

random = SetRandom(cnum, 1, 32)
req = reqNumber
name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 487) > 0 then --> ����Ʈ 4 �Ϸ�Ǿ��� ��
				return 1,0,""..name.."~! �� ���п� ���� �ǸŸ� �簳 �� �� �ְ� �Ǿ���~! ����!" --> ����Ʈ �Ϸ�

		elseif GetSwitchCount(cnum, 485) > 0 then --> ����Ʈ 3 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 486) > 0 then --> ����Ʈ 4 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 500���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				else
					return 0
				end
			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ� �� ��ƺ���? �������� �� ������ �������� �ٰ� �?",17,"��",18,"�ƴ�" --> ����Ʈ 4 ���� ����
			end

		elseif GetSwitchCount(cnum, 483) > 0 then --> ����Ʈ 2 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 484) > 0 then --> ����Ʈ 3 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 250���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				else
					return 0
				end
			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ� �� ��ƺ���? �������� �� ������ �������� �ٰ� �?",15,"��",16,"�ƴ�" --> ����Ʈ 3 ���� ����
			end

		elseif GetSwitchCount(cnum, 481) > 0 then --> ����Ʈ 1 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 482) > 0 then --> ����Ʈ 2 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 100���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				else
					return 0
				end

			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ��� ��ƺ���? �������� �� ������ �������� �ٰ� �?",13,"��",14,"�ƴ�" --> ����Ʈ 2 ���� ����
			end

		else
			if GetSwitchCount(cnum, 480) > 0 then --> ����Ʈ 1 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 10���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				else
					return 0
				end

			else
				return 3,0,"������ ��� �̺�Ʈ! ��~��~�����غ�~!",11,"��",12,"�ƴ�" --> ����Ʈ 1 ���� ����
			end
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 1 ����
	elseif req == 11 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",111,"��",112,"�ƴ�"

	elseif req == 12 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 111 then
		SetSwitchCount(cnum, 480, 1) --> ����Ʈ 1 ���� ����ġ
		StartQuest(cnum, 176) --> ����Ʈ 1 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 10���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 100���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end
---------------------------------

	elseif req == 112 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 21 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 2ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 1 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 99 then
					AddItemCount(cnum, 8429, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 99 then
					AddItemCount(cnum, 8430, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 99 then
					AddItemCount(cnum, 8431, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 99 then
					AddItemCount(cnum, 8432, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 99 then
					AddItemCount(cnum, 8433, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 99 then
					AddItemCount(cnum, 8434, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 99 then
					AddItemCount(cnum, 8435, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 9 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 10���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 99 then
					AddItemCount(cnum, 8437, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 99 then
					AddItemCount(cnum, 8438, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 99 then
					AddItemCount(cnum, 8439, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 99 then
					AddItemCount(cnum, 8440, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 99 then
					AddItemCount(cnum, 8441, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 99 then
					AddItemCount(cnum, 8442, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 99 then
					AddItemCount(cnum, 8443, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 99 then
					AddItemCount(cnum, 8444, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 99 then
					AddItemCount(cnum, 8445, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 99 then
					AddItemCount(cnum, 8446, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 99 then
					AddItemCount(cnum, 8447, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 99 then
					AddItemCount(cnum, 8448, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 99 then
					AddItemCount(cnum, 8449, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 99 then
					AddItemCount(cnum, 8450, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 99 then
					AddItemCount(cnum, 8451, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 99 then
					AddItemCount(cnum, 8452, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 99 then
					AddItemCount(cnum, 8453, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 99 then
					AddItemCount(cnum, 8454, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 99 then
					AddItemCount(cnum, 8455, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 99 then
					AddItemCount(cnum, 8456, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 99 then
					AddItemCount(cnum, 8457, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 99 then
					AddItemCount(cnum, 8458, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 99 then
					AddItemCount(cnum, 8459, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 99 then
					AddItemCount(cnum, 8460, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end

		end

	elseif req == 22 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 10���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 2 ����
	elseif req == 13 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",113,"��",114,"�ƴ�"

	elseif req == 14 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 113 then
		SetSwitchCount(cnum, 482, 1) --> ����Ʈ 2 ���� ����ġ
		StartQuest(cnum, 177) --> ����Ʈ 2 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 1000���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 114 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 23 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 999 then
					AddItemCount(cnum, 8429, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 999 then
					AddItemCount(cnum, 8430, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 999 then
					AddItemCount(cnum, 8431, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 999 then
					AddItemCount(cnum, 8432, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 999 then
					AddItemCount(cnum, 8433, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 999 then
					AddItemCount(cnum, 8434, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 999 then
					AddItemCount(cnum, 8435, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 99 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 999 then
					AddItemCount(cnum, 8437, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 999 then
					AddItemCount(cnum, 8438, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 999 then
					AddItemCount(cnum, 8439, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 999 then
					AddItemCount(cnum, 8440, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 999 then
					AddItemCount(cnum, 8441, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 999 then
					AddItemCount(cnum, 8442, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 999 then
					AddItemCount(cnum, 8443, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 999 then
					AddItemCount(cnum, 8444, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 999 then
					AddItemCount(cnum, 8445, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 999 then
					AddItemCount(cnum, 8446, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 999 then
					AddItemCount(cnum, 8447, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 999 then
					AddItemCount(cnum, 8448, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 999 then
					AddItemCount(cnum, 8449, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 999 then
					AddItemCount(cnum, 8450, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 999 then
					AddItemCount(cnum, 8451, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 999 then
					AddItemCount(cnum, 8452, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 999 then
					AddItemCount(cnum, 8453, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 999 then
					AddItemCount(cnum, 8454, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 999 then
					AddItemCount(cnum, 8455, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 999 then
					AddItemCount(cnum, 8456, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 999 then
					AddItemCount(cnum, 8457, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 999 then
					AddItemCount(cnum, 8458, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 999 then
					AddItemCount(cnum, 8459, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 999 then
					AddItemCount(cnum, 8460, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end
		end

	elseif req == 24 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 180 then
			return 1,0,"� ī�޷� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 3 ����
	elseif req == 15 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",115,"��",116,"�ƴ�"

	elseif req == 16 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 115 then
		SetSwitchCount(cnum, 484, 1) --> ����Ʈ 3 ���� ����ġ
		StartQuest(cnum, 178) --> ����Ʈ 3 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 250���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 2500���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 116 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 25 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 2499 then
					AddItemCount(cnum, 8429, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 2499 then
					AddItemCount(cnum, 8430, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 2499 then
					AddItemCount(cnum, 8431, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 2499 then
					AddItemCount(cnum, 8432, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 2499 then
					AddItemCount(cnum, 8433, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 2499 then
					AddItemCount(cnum, 8434, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 2499 then
					AddItemCount(cnum, 8435, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 249 then
					AddItemCount(cnum, 8436, -250)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 250���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 2499 then
					AddItemCount(cnum, 8437, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 2499 then
					AddItemCount(cnum, 8438, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 2499 then
					AddItemCount(cnum, 8439, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 2499 then
					AddItemCount(cnum, 8440, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 2499 then
					AddItemCount(cnum, 8441, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 2499 then
					AddItemCount(cnum, 8442, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 2499 then
					AddItemCount(cnum, 8443, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 2499 then
					AddItemCount(cnum, 8444, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 2499 then
					AddItemCount(cnum, 8445, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 2499 then
					AddItemCount(cnum, 8446, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 2499 then
					AddItemCount(cnum, 8447, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 2499 then
					AddItemCount(cnum, 8448, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 2499 then
					AddItemCount(cnum, 8449, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 2499 then
					AddItemCount(cnum, 8450, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 2499 then
					AddItemCount(cnum, 8451, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 2499 then
					AddItemCount(cnum, 8452, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 2499 then
					AddItemCount(cnum, 8453, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 2499 then
					AddItemCount(cnum, 8454, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 2499 then
					AddItemCount(cnum, 8455, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 2499 then
					AddItemCount(cnum, 8456, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 2499 then
					AddItemCount(cnum, 8457, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 2499 then
					AddItemCount(cnum, 8458, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 2499 then
					AddItemCount(cnum, 8459, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 2499 then
					AddItemCount(cnum, 8460, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end

		end

	elseif req == 26 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 250���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 4 ����
	elseif req == 17 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",117,"��",118,"�ƴ�"

	elseif req == 18 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 117 then
		SetSwitchCount(cnum, 486, 1) --> ����Ʈ 4 ���� ����ġ
		StartQuest(cnum, 179) --> ����Ʈ 4 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 500���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 5000���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 118 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 27 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 3 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 4999 then
					AddItemCount(cnum, 8429, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 4999 then
					AddItemCount(cnum, 8430, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 4999 then
					AddItemCount(cnum, 8431, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 4999 then
					AddItemCount(cnum, 8432, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 4999 then
					AddItemCount(cnum, 8433, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 4999 then
					AddItemCount(cnum, 8434, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 4999 then
					AddItemCount(cnum, 8435, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 499 then
					AddItemCount(cnum, 8436, -500)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 4999 then
					AddItemCount(cnum, 8437, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 4999 then
					AddItemCount(cnum, 8438, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 4999 then
					AddItemCount(cnum, 8439, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 4999 then
					AddItemCount(cnum, 8440, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 4999 then
					AddItemCount(cnum, 8441, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 4999 then
					AddItemCount(cnum, 8442, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 4999 then
					AddItemCount(cnum, 8443, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 4999 then
					AddItemCount(cnum, 8444, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 4999 then
					AddItemCount(cnum, 8445, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 4999 then
					AddItemCount(cnum, 8446, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 4999 then
					AddItemCount(cnum, 8447, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 4999 then
					AddItemCount(cnum, 8448, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 4999 then
					AddItemCount(cnum, 8449, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 4999 then
					AddItemCount(cnum, 8450, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 4999 then
					AddItemCount(cnum, 8451, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 4999 then
					AddItemCount(cnum, 8452, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 4999 then
					AddItemCount(cnum, 8453, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 4999 then
					AddItemCount(cnum, 8454, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 4999 then
					AddItemCount(cnum, 8455, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 4999 then
					AddItemCount(cnum, 8456, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 4999 then
					AddItemCount(cnum, 8457, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 4999 then
					AddItemCount(cnum, 8458, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 4999 then
					AddItemCount(cnum, 8459, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 4999 then
					AddItemCount(cnum, 8460, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end
		end

	elseif req == 28 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

	end
end

function NPC_QUEST_391(cnum, reqNumber)

random = SetRandom(cnum, 1, 32)
req = reqNumber
name = GetHeroName(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 487) > 0 then --> ����Ʈ 4 �Ϸ�Ǿ��� ��
				return 1,0,""..name.."~! �� ���п� ���� �ǸŸ� �簳 �� �� �ְ� �Ǿ���~! ����!" --> ����Ʈ �Ϸ�

		elseif GetSwitchCount(cnum, 485) > 0 then --> ����Ʈ 3 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 486) > 0 then --> ����Ʈ 4 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 500���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 5000���� ��ƿԾ�?",27,"��",28,"�ƴ�"
				else
					return 0
				end
			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ� �� ��ƺ���? �������� �� ������ �������� �ٰ� �?",17,"��",18,"�ƴ�" --> ����Ʈ 4 ���� ����
			end

		elseif GetSwitchCount(cnum, 483) > 0 then --> ����Ʈ 2 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 484) > 0 then --> ����Ʈ 3 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 250���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 2500���� ��ƿԾ�?",25,"��",26,"�ƴ�"
				else
					return 0
				end
			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ� �� ��ƺ���? �������� �� ������ �������� �ٰ� �?",15,"��",16,"�ƴ�" --> ����Ʈ 3 ���� ����
			end

		elseif GetSwitchCount(cnum, 481) > 0 then --> ����Ʈ 1 �Ϸ�Ǿ��� ��
			if GetSwitchCount(cnum, 482) > 0 then --> ����Ʈ 2 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 100���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 1000���� ��ƿԾ�?",23,"��",24,"�ƴ�"
				else
					return 0
				end

			else
				return 3,0,"�ٽ� �Ա���? ���⸦ �ѹ��� ��ƺ���? �������� �� ������ �������� �ٰ� �?",13,"��",14,"�ƴ�" --> ����Ʈ 2 ���� ����
			end

		else
			if GetSwitchCount(cnum, 480) > 0 then --> ����Ʈ 1 ���� �Ǿ��� ��
				if GetSwitchCount(cnum, 490) == 1 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 2 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 3 then
					return 3,0,"�߽��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 4 then
					return 3,0,"���ư� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 5 then
					return 3,0,"�Ƹ���Ƽ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 6 then
					return 3,0,"�׸��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 7 then
					return 3,0,"���������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 8 then
					return 3,0,"���ѹα� ���� 10���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 9 then
					return 3,0,"�ױ۷��� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 10 then
					return 3,0,"�̱� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 11 then
					return 3,0,"���κ��Ͼ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 12 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 13 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 14 then
					return 3,0,"������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 15 then
					return 3,0,"ȣ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 16 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 17 then
					return 3,0,"�״����� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 18 then
					return 3,0,"ī�޷� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 19 then
					return 3,0,"����ũ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 20 then
					return 3,0,"�Ϻ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 21 then
					return 3,0,"��Ż���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 22 then
					return 3,0,"�Ķ���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 23 then
					return 3,0,"���ι�Ű�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 24 then
					return 3,0,"�������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 25 then
					return 3,0,"����� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 26 then
					return 3,0,"�������� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 27 then
					return 3,0,"��Ʈ��ξƸ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 28 then
					return 3,0,"���� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 29 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 30 then
					return 3,0,"ĥ�� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 31 then
					return 3,0,"������ ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				elseif GetSwitchCount(cnum, 490) == 32 then
					return 3,0,"�µζ� ���� 100���� ��ƿԾ�?",21,"��",22,"�ƴ�"
				else
					return 0
				end

			else
				return 3,0,"������ ��� �̺�Ʈ! ��~��~�����غ�~!",11,"��",12,"�ƴ�" --> ����Ʈ 1 ���� ����
			end
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 1 ����
	elseif req == 11 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",111,"��",112,"�ƴ�"

	elseif req == 12 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 111 then
		SetSwitchCount(cnum, 480, 1) --> ����Ʈ 1 ���� ����ġ
		StartQuest(cnum, 176) --> ����Ʈ 1 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 10���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 100���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end
---------------------------------

	elseif req == 112 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 21 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 2ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 1 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 99 then
					AddItemCount(cnum, 8429, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 99 then
					AddItemCount(cnum, 8430, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 99 then
					AddItemCount(cnum, 8431, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 99 then
					AddItemCount(cnum, 8432, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 99 then
					AddItemCount(cnum, 8433, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 99 then
					AddItemCount(cnum, 8434, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 99 then
					AddItemCount(cnum, 8435, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 9 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 10���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 99 then
					AddItemCount(cnum, 8437, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 99 then
					AddItemCount(cnum, 8438, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 99 then
					AddItemCount(cnum, 8439, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 99 then
					AddItemCount(cnum, 8440, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 99 then
					AddItemCount(cnum, 8441, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 99 then
					AddItemCount(cnum, 8442, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 99 then
					AddItemCount(cnum, 8443, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 99 then
					AddItemCount(cnum, 8444, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 99 then
					AddItemCount(cnum, 8445, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 99 then
					AddItemCount(cnum, 8446, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 99 then
					AddItemCount(cnum, 8447, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 99 then
					AddItemCount(cnum, 8448, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 99 then
					AddItemCount(cnum, 8449, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 99 then
					AddItemCount(cnum, 8450, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 99 then
					AddItemCount(cnum, 8451, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 99 then
					AddItemCount(cnum, 8452, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 99 then
					AddItemCount(cnum, 8453, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 99 then
					AddItemCount(cnum, 8454, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 99 then
					AddItemCount(cnum, 8455, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 99 then
					AddItemCount(cnum, 8456, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 99 then
					AddItemCount(cnum, 8457, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 99 then
					AddItemCount(cnum, 8458, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 99 then
					AddItemCount(cnum, 8459, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 99 then
					AddItemCount(cnum, 8460, -100)
					AddItemCount(cnum, 4491, 5)	-- 1�ܰ� ����
					AddItemCount(cnum, 432, 5)	-- 1�ܰ� ����
					SetSwitchCount(cnum, 481, 1)	-- 1�ܰ� ���� �Ϸ�
					EndQuest(cnum, 176) --> ����Ʈ 1 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end

		end

	elseif req == 22 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 10���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 2 ����
	elseif req == 13 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",113,"��",114,"�ƴ�"

	elseif req == 14 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 113 then
		SetSwitchCount(cnum, 482, 1) --> ����Ʈ 2 ���� ����ġ
		StartQuest(cnum, 177) --> ����Ʈ 2 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 100���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 1000���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 1000���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 114 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 23 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then

				if GetItemCount(cnum, 8429, 0) > 999 then
					AddItemCount(cnum, 8429, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 999 then
					AddItemCount(cnum, 8430, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 999 then
					AddItemCount(cnum, 8431, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 999 then
					AddItemCount(cnum, 8432, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 999 then
					AddItemCount(cnum, 8433, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 999 then
					AddItemCount(cnum, 8434, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 999 then
					AddItemCount(cnum, 8435, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 99 then
					AddItemCount(cnum, 8436, -100)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 100���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 999 then
					AddItemCount(cnum, 8437, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 999 then
					AddItemCount(cnum, 8438, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 999 then
					AddItemCount(cnum, 8439, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 999 then
					AddItemCount(cnum, 8440, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 999 then
					AddItemCount(cnum, 8441, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 999 then
					AddItemCount(cnum, 8442, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 999 then
					AddItemCount(cnum, 8443, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 999 then
					AddItemCount(cnum, 8444, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 999 then
					AddItemCount(cnum, 8445, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 999 then
					AddItemCount(cnum, 8446, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 999 then
					AddItemCount(cnum, 8447, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 999 then
					AddItemCount(cnum, 8448, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 999 then
					AddItemCount(cnum, 8449, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 999 then
					AddItemCount(cnum, 8450, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 999 then
					AddItemCount(cnum, 8451, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 999 then
					AddItemCount(cnum, 8452, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 999 then
					AddItemCount(cnum, 8453, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 999 then
					AddItemCount(cnum, 8454, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 999 then
					AddItemCount(cnum, 8455, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 999 then
					AddItemCount(cnum, 8456, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 999 then
					AddItemCount(cnum, 8457, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 999 then
					AddItemCount(cnum, 8458, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 999 then
					AddItemCount(cnum, 8459, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 999 then
					AddItemCount(cnum, 8460, -1000)
					AddItemCount(cnum, 4491, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 432, 10)	-- 2�ܰ� ����
					AddItemCount(cnum, 435, 5)	-- 2�ܰ� ����
					SetSwitchCount(cnum, 483, 1)	-- 2�ܰ� ���� �Ϸ�
					EndQuest(cnum, 177) --> ����Ʈ 2 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 1000���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end
		end

	elseif req == 24 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 100���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 180 then
			return 1,0,"� ī�޷� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 1000���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 3 ����
	elseif req == 15 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",115,"��",116,"�ƴ�"

	elseif req == 16 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 115 then
		SetSwitchCount(cnum, 484, 1) --> ����Ʈ 3 ���� ����ġ
		StartQuest(cnum, 178) --> ����Ʈ 3 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 250���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 2500���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 2500���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 116 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 25 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 2 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 2499 then
					AddItemCount(cnum, 8429, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 2499 then
					AddItemCount(cnum, 8430, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 2499 then
					AddItemCount(cnum, 8431, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 2499 then
					AddItemCount(cnum, 8432, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 2499 then
					AddItemCount(cnum, 8433, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 2499 then
					AddItemCount(cnum, 8434, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 2499 then
					AddItemCount(cnum, 8435, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 249 then
					AddItemCount(cnum, 8436, -250)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 250���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 2499 then
					AddItemCount(cnum, 8437, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 2499 then
					AddItemCount(cnum, 8438, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 2499 then
					AddItemCount(cnum, 8439, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 2499 then
					AddItemCount(cnum, 8440, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 2499 then
					AddItemCount(cnum, 8441, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 2499 then
					AddItemCount(cnum, 8442, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 2499 then
					AddItemCount(cnum, 8443, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 2499 then
					AddItemCount(cnum, 8444, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 2499 then
					AddItemCount(cnum, 8445, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 2499 then
					AddItemCount(cnum, 8446, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 2499 then
					AddItemCount(cnum, 8447, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 2499 then
					AddItemCount(cnum, 8448, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 2499 then
					AddItemCount(cnum, 8449, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 2499 then
					AddItemCount(cnum, 8450, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 2499 then
					AddItemCount(cnum, 8451, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 2499 then
					AddItemCount(cnum, 8452, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 2499 then
					AddItemCount(cnum, 8453, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 2499 then
					AddItemCount(cnum, 8454, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 2499 then
					AddItemCount(cnum, 8455, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 2499 then
					AddItemCount(cnum, 8456, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 2499 then
					AddItemCount(cnum, 8457, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 2499 then
					AddItemCount(cnum, 8458, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 2499 then
					AddItemCount(cnum, 8459, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 2499 then
					AddItemCount(cnum, 8460, -2500)
					AddItemCount(cnum, 4491, 10)	-- 3�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 3�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 3�ܰ� ����
					SetSwitchCount(cnum, 485, 1)	-- 3�ܰ� ���� �Ϸ�
					EndQuest(cnum, 178) --> ����Ʈ 3 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 2500���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end

		end

	elseif req == 26 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 250���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 2500���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 4 ����
	elseif req == 17 then
		return 3,0,"��~������ 32�� ������ �߿� �� ���� �̴°ž�~! � ���� ���͵� �װ��� "..name.."�� ���̾�. �̾ƺ���?",117,"��",118,"�ƴ�"

	elseif req == 18 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 117 then
		SetSwitchCount(cnum, 486, 1) --> ����Ʈ 4 ���� ����ġ
		StartQuest(cnum, 179) --> ����Ʈ 4 ���

		if random == 1 then
			SetSwitchCount(cnum, 490, 1)
			return 1,0,"A�� ���ķ�ŷ 9�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 2 then
			SetSwitchCount(cnum, 490, 2)
			return 1,0,"A�� ���ķ�ŷ 16�� �����̸� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 3 then
			SetSwitchCount(cnum, 490, 3)
			return 1,0,"A�� ���ķ�ŷ 17�� �߽��ڸ� �̾ҳ�~ "..name.."~ �߽��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 4 then
			SetSwitchCount(cnum, 490, 4)
			return 1,0,"A�� ���ķ�ŷ 83�� ���ư��� �̾ҳ�~ "..name.."~ ���ư� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 5 then
			SetSwitchCount(cnum, 490, 5)
			return 1,0,"B�� ���ķ�ŷ 7�� �Ƹ���Ƽ���� �̾ҳ�~ "..name.."~ �Ƹ���Ƽ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 6 then
			SetSwitchCount(cnum, 490, 6)
			return 1,0,"B�� ���ķ�ŷ 13�� �׸����� �̾ҳ�~ "..name.."~ �׸��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 7 then
			SetSwitchCount(cnum, 490, 7)
			return 1,0,"B�� ���ķ�ŷ 21�� ���������Ƹ� �̾ҳ�~ "..name.."~ ���������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 8 then
			SetSwitchCount(cnum, 490, 8)
			return 1,0,"B�� ���ķ�ŷ 47�� ���ѹα��� �̾ҳ�~ "..name.."~ ���ѹα� ����� 500���� ��Ƽ� ���ƿ����!"
		elseif random == 9 then
			SetSwitchCount(cnum, 490, 9)
			return 1,0,"C�� ���ķ�ŷ 8�� �ױ۷��带 �̾ҳ�~ "..name.."~ �ױ۷��� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 10 then
			SetSwitchCount(cnum, 490, 10)
			return 1,0,"C�� ���ķ�ŷ 14�� �̱��� �̾ҳ�~ "..name.."~ �̱� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 11 then
			SetSwitchCount(cnum, 490, 11)
			return 1,0,"C�� ���ķ�ŷ 25�� ���κ��ϾƸ� �̾ҳ�~ "..name.."~ ���κ��Ͼ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 12 then
			SetSwitchCount(cnum, 490, 12)
			return 1,0,"C�� ���ķ�ŷ 30�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 13 then
			SetSwitchCount(cnum, 490, 13)
			return 1,0,"D�� ���ķ�ŷ 6�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 14 then
			SetSwitchCount(cnum, 490, 14)
			return 1,0,"D�� ���ķ�ŷ 15�� ������Ƹ� �̾ҳ�~ "..name.."~ ������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 15 then
			SetSwitchCount(cnum, 490, 15)
			return 1,0,"D�� ���ķ�ŷ 20�� ȣ�ָ� �̾ҳ�~ "..name.."~ ȣ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 16 then
			SetSwitchCount(cnum, 490, 16)
			return 1,0,"D�� ���ķ�ŷ 32�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 17 then
			SetSwitchCount(cnum, 490, 17)
			return 1,0,"E�� ���ķ�ŷ 4�� �״����带 �̾ҳ�~ "..name.."~ �״����� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 18 then
			SetSwitchCount(cnum, 490, 18)
			return 1,0,"E�� ���ķ�ŷ 19�� ī�޷��� �̾ҳ�~ "..name.."~ ī�޷� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 19 then
			SetSwitchCount(cnum, 490, 19)
			return 1,0,"E�� ���ķ�ŷ 36�� ����ũ�� �̾ҳ�~ "..name.."~ ����ũ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 20 then
			SetSwitchCount(cnum, 490, 20)
			return 1,0,"E�� ���ķ�ŷ 45�� �Ϻ��� �̾ҳ�~ "..name.."~ �Ϻ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 21 then
			SetSwitchCount(cnum, 490, 21)
			return 1,0,"F�� ���ķ�ŷ 5�� ��Ż���Ƹ� �̾ҳ�~ "..name.."~ ��Ż���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 22 then
			SetSwitchCount(cnum, 490, 22)
			return 1,0,"F�� ���ķ�ŷ 31�� �Ķ���̸� �̾ҳ�~ "..name.."~ �Ķ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 23 then
			SetSwitchCount(cnum, 490, 23)
			return 1,0,"F�� ���ķ�ŷ 34�� ���ι�Ű�Ƹ� �̾ҳ�~ "..name.."~ ���ι�Ű�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 24 then
			SetSwitchCount(cnum, 490, 24)
			return 1,0,"F�� ���ķ�ŷ 78�� �������带 �̾ҳ�~ "..name.."~ �������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 25 then
			SetSwitchCount(cnum, 490, 25)
			return 1,0,"G�� ���ķ�ŷ 1�� ������� �̾ҳ�~ "..name.."~ ����� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 26 then
			SetSwitchCount(cnum, 490, 26)
			return 1,0,"G�� ���ķ�ŷ 3�� ���������� �̾ҳ�~ "..name.."~ �������� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 27 then
			SetSwitchCount(cnum, 490, 27)
			return 1,0,"G�� ���ķ�ŷ 27�� ��Ʈ��ξƸ��� �̾ҳ�~ "..name.."~ ��Ʈ��ξƸ� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 28 then
			SetSwitchCount(cnum, 490, 28)
			return 1,0,"G�� ���ķ�ŷ 105�� ������ �̾ҳ�~ "..name.."~ ���� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 29 then
			SetSwitchCount(cnum, 490, 29)
			return 1,0,"H�� ���ķ�ŷ 2�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 30 then
			SetSwitchCount(cnum, 490, 30)
			return 1,0,"H�� ���ķ�ŷ 18�� ĥ���� �̾ҳ�~ "..name.."~ ĥ�� ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 31 then
			SetSwitchCount(cnum, 490, 31)
			return 1,0,"H�� ���ķ�ŷ 24�� �������� �̾ҳ�~ "..name.."~ ������ ���� 5000���� ��Ƽ� ���ƿ����!"
		elseif random == 32 then
			SetSwitchCount(cnum, 490, 32)
			return 1,0,"H�� ���ķ�ŷ 38�� �µζ󽺸� �̾ҳ�~ "..name.."~ �µζ� ���� 5000���� ��Ƽ� ���ƿ����!"
		else
			return 0
		end

	elseif req == 118 then
		return 1,0,"�̷� ���� ��ȸ�� ��ġ�� ��ȸ���ٵ�..������ �ٲ�� �ٽ� ��~"

	elseif req == 27 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"������ �κ��丮�� �����ؼ� �������� �� ���� ����. ������ �κ��丮�� 3ĭ �̻� ���� �ٽ� �÷�?"
		elseif GetRemainPocket(cnum) > 3 then
			if GetSwitchCount(cnum, 490) == 1 then
				if GetItemCount(cnum, 8429, 0) > 4999 then
					AddItemCount(cnum, 8429, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 2 then

				if GetItemCount(cnum, 8430, 0) > 4999 then
					AddItemCount(cnum, 8430, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 3 then

				if GetItemCount(cnum, 8431, 0) > 4999 then
					AddItemCount(cnum, 8431, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�߽��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 4 then

				if GetItemCount(cnum, 8432, 0) > 4999 then
					AddItemCount(cnum, 8432, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ư� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 5 then

				if GetItemCount(cnum, 8433, 0) > 4999 then
					AddItemCount(cnum, 8433, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ƹ���Ƽ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 6 then

				if GetItemCount(cnum, 8434, 0) > 4999 then
					AddItemCount(cnum, 8434, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�׸��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 7 then

				if GetItemCount(cnum, 8435, 0) > 4999 then
					AddItemCount(cnum, 8435, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 8 then

				if GetItemCount(cnum, 8436, 0) > 499 then
					AddItemCount(cnum, 8436, -500)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ѹα� ���� 500���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 9 then

				if GetItemCount(cnum, 8437, 0) > 4999 then
					AddItemCount(cnum, 8437, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�ױ۷��� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 10 then

				if GetItemCount(cnum, 8438, 0) > 4999 then
					AddItemCount(cnum, 8438, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�̱� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 11 then

				if GetItemCount(cnum, 8439, 0) > 4999 then
					AddItemCount(cnum, 8439, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���κ��Ͼ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 12 then

				if GetItemCount(cnum, 8440, 0) > 4999 then
					AddItemCount(cnum, 8440, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 13 then

				if GetItemCount(cnum, 8441, 0) > 4999 then
					AddItemCount(cnum, 8441, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 14 then

				if GetItemCount(cnum, 8442, 0) > 4999 then
					AddItemCount(cnum, 8442, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 15 then

				if GetItemCount(cnum, 8443, 0) > 4999 then
					AddItemCount(cnum, 8443, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ȣ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 16 then

				if GetItemCount(cnum, 8444, 0) > 4999 then
					AddItemCount(cnum, 8444, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 17 then

				if GetItemCount(cnum, 8445, 0) > 4999 then
					AddItemCount(cnum, 8445, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�״����� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 18 then

				if GetItemCount(cnum, 8446, 0) > 4999 then
					AddItemCount(cnum, 8446, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ī�޷� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 19 then

				if GetItemCount(cnum, 8447, 0) > 4999 then
					AddItemCount(cnum, 8447, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����ũ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 20 then

				if GetItemCount(cnum, 8448, 0) > 4999 then
					AddItemCount(cnum, 8448, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ϻ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 21 then

				if GetItemCount(cnum, 8449, 0) > 4999 then
					AddItemCount(cnum, 8449, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ż���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 22 then

				if GetItemCount(cnum, 8450, 0) > 4999 then
					AddItemCount(cnum, 8450, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�Ķ���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 23 then

				if GetItemCount(cnum, 8451, 0) > 4999 then
					AddItemCount(cnum, 8451, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���ι�Ű�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 24 then

				if GetItemCount(cnum, 8452, 0) > 4999 then
					AddItemCount(cnum, 8452, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 25 then

				if GetItemCount(cnum, 8453, 0) > 4999 then
					AddItemCount(cnum, 8453, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"����� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 26 then

				if GetItemCount(cnum, 8454, 0) > 4999 then
					AddItemCount(cnum, 8454, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�������� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 27 then

				if GetItemCount(cnum, 8455, 0) > 4999 then
					AddItemCount(cnum, 8455, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"��Ʈ��ξƸ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 28 then

				if GetItemCount(cnum, 8456, 0) > 4999 then
					AddItemCount(cnum, 8456, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"���� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 29 then

				if GetItemCount(cnum, 8457, 0) > 4999 then
					AddItemCount(cnum, 8457, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 30 then

				if GetItemCount(cnum, 8458, 0) > 4999 then
					AddItemCount(cnum, 8458, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"ĥ�� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 31 then

				if GetItemCount(cnum, 8459, 0) > 4999 then
					AddItemCount(cnum, 8459, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"������ ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			elseif GetSwitchCount(cnum, 490) == 32 then

				if GetItemCount(cnum, 8460, 0) > 4999 then
					AddItemCount(cnum, 8460, -5000)
					AddItemCount(cnum, 4491, 10)	-- 4�ܰ� ����
					AddItemCount(cnum, 796, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 4315, 3)  -- 4�ܰ� ����
					AddItemCount(cnum, 8298, 1)  -- 4�ܰ� ����
					SetSwitchCount(cnum, 487, 1)	-- 4�ܰ� ���� �Ϸ�
					EndQuest(cnum, 179) --> ����Ʈ 4 ����
					return 1,0,"�����߾�~! ���� ������ �������� �ٰ�."
				else
					return 1,0,"�µζ� ���� 5000���� ������ ���� ������? Ȯ���غ���?"
				end

			else
				return 0
			end
		end

	elseif req == 28 then
		if GetSwitchCount(cnum, 490) == 1 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 2 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 3 then
			return 1,0,"� �߽��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 4 then
			return 1,0,"� ���ư� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 5 then
			return 1,0,"� �Ƹ���Ƽ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 6 then
			return 1,0,"� �׸��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 7 then
			return 1,0,"� ���������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 8 then
			return 1,0,"� ���ѹα� ���� 500���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 9 then
			return 1,0,"� �ױ۷��� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 10 then
			return 1,0,"� �̱� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 11 then
			return 1,0,"� ���κ��Ͼ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 12 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 13 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 14 then
			return 1,0,"� ������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 15 then
			return 1,0,"� ȣ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 16 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 17 then
			return 1,0,"� �״����� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 18 then
			return 1,0,"� ī�޷� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 19 then
			return 1,0,"� ����ũ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 20 then
			return 1,0,"� �Ϻ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 21 then
			return 1,0,"� ��Ż���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 22 then
			return 1,0,"� �Ķ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 23 then
			return 1,0,"� ���ι�Ű�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 24 then
			return 1,0,"� �������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 25 then
			return 1,0,"� ����� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 26 then
			return 1,0,"� �������� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 27 then
			return 1,0,"� ��Ʈ��ξƸ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 28 then
			return 1,0,"� ���� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 29 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 30 then
			return 1,0,"� ĥ�� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 31 then
			return 1,0,"� ������ ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		elseif GetSwitchCount(cnum, 490) == 32 then
			return 1,0,"� �µζ� ���� 5000���� ��ƿ�~! ������ �������� �ٰ�."
		else
			return 0
		end

	end
end
