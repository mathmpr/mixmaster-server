function NPC_QUEST_339(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetItemCount(cnum, 68, 0) < 1 and
		 GetItemCount(cnum, 69, 0) < 1 and
		 GetItemCount(cnum, 95, 0) < 1 and
		 GetItemCount(cnum, 96, 0) < 1 and
		 GetItemCount(cnum, 940, 0) < 1 and
		 GetItemCount(cnum, 1316, 0) < 1 and
		 GetItemCount(cnum, 3711, 0) < 1 and
		 GetItemCount(cnum, 8178, 0) < 1 and
		 GetItemCount(cnum, 8226, 0) < 1 and
		 GetItemCount(cnum, 8237, 0) < 1 and
		 GetItemCount(cnum, 8499, 0) < 1 and
		 GetItemCount(cnum, 8582, 0) < 1 and
		 GetItemCount(cnum, 8641, 0) < 1 then

			if GetSwitchCount(cnum, 433) < 1 then
				if GetSwitchCount(cnum, 432) < 1 then
					return 3,0,"������ ���Ը��հ� ���� �������� ���� ������ �������� Ȱ���� ġ�� �ִٳ�. �״� ���� �����ְڴ°�?",2,"�����ش�.",4,"���ɾ���."
				else
					return 3,0,"���� ������ 4������ �� ��� �Դ°�?",3,"���� ���߱�",7,"����Ʈ ����"
				end

			else
				return 2,0,"�ƹ����� ������ ���� ������ ���ð��� ��� �Ҹ� �� �� ����. ������ ���� ������ ���� 4���� �ٽ� ��ƿ´ٸ� ������ ���� �������� ��ߺ� ���ְڳ�. ������ ���� ���� �� ������ '��ĭ���', '�������', '������ �ؾ�'���� ���� �� ���� ���̳�.",3,"���� ���߱�"
			end

		else
			return 2,0,"������ �������� �̵��� �ٰ�?",5,"������ ���� �Ա��� �̵��Ѵ�."
		end

	elseif req == 2 then
		AddSwitchCount(cnum, 432, 1)
		StartQuest(cnum, 180)
		return 1,0,"�����ΰ�? ����! ������ ������ ������ �����ϱ� ���ؼ��� ������ ���� ������ Ȥ�� �����̾� �� ������� �־�� �ϳ�. ������ ���� ������ 4 ������ ��� �������� ���� ������ ���� �������� ����� �ְڳ�. ������ ���� ���� �� ������ '��ĭ���', '�������', '������ �ؾ�'���� ���� �� ���� ���̳�."

	elseif req == 3 then
		if GetItemCount(cnum, 8238, 0) < 1 or GetItemCount(cnum, 8239, 0) < 1 or GetItemCount(cnum, 8240, 0) < 1 or GetItemCount(cnum, 8241, 0) < 1 then
			return 1,0,"�ڳ״� ���Ա� ���� 4������ ���� �� ������ �ʾҳ�. �ڳ��� �Ѱ��ΰ�?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ���������� �����մϴ�."

		else
			AddSwitchCount(cnum, 433, 1)
			AddItemCount(cnum, 8238, -1)
			AddItemCount(cnum, 8239, -1)
			AddItemCount(cnum, 8240, -1)
			AddItemCount(cnum, 8241, -1)
			AddItemCount(cnum, 8237, 1)
			EndQuest(cnum, 180)
			return 2,0,"�ڳ״� �ڰ��� ����ϳ�. ���� ������ ���� �������� �ֳ�. ���� ������ �������� ���� �� ����������� ���Ϳ� ���� ���� ���̳�. �׵��� ���� �Բ� �ο��.",5,"������ ���� �Ա��� �̵��Ѵ�."
		end

	elseif req == 4 then
		return 2,0,"���ɾ�� �������! �����ְ�!",2,"�������� �����ش�."

	elseif req == 5 then
		MoveZone(cnum, 177, 254)

	elseif req == 6 then
		MoveZone(cnum, 180, 254)

	elseif req == 7 then
		return 1,0,"������ ������ �����ϱ� ���ؼ��� ������ ���� ������ Ȥ�� �����̾� �� ������� �־�� �ϳ�. ������ ���� ����� 4 ������ ��� �������� ���� ������ ���� ������� ����� �ְڳ�. ������ ���� ���� �� ������ ��ĭ���, �������, ������ �ؾȿ��� ���� �� ���� ���̳�."

	else
		return 0
	end

end
