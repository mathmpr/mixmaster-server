function NPC_QUEST_699(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 412) < 1 then
			return 2,0,"6���� ȣ�������� ���Դϴ�.@ȣ�������̶�?@���� ��Ű�� ���� ���� �������@���ƿ� �����ϴ� ���� ���Ѵ�ϴ�.@�����е鲲���� �� �� �ִ� ������@�������� ������ ������ ����@���Դϴ�.@��~ �׷� �ǹ̿��� ������@�Ͻ� �� �ִ� ���� �ֽ��ϴ�.",2,"���� ���� �ϸ� �ǳ���?"

		else
			if GetItemCount(cnum, 8157, 0) < 10 or GetItemCount(cnum, 8158, 0) < 10 or GetItemCount(cnum, 8159, 0) < 10 or GetItemCount(cnum, 8160, 0) < 10 or GetItemCount(cnum, 8161, 0) < 10 or GetItemCount(cnum, 8162, 0) < 10 or GetItemCount(cnum, 8163, 0) < 10 or GetItemCount(cnum, 8164, 0) < 10 or GetItemCount(cnum, 8165, 0) < 10 then
				return 1,0,"����ȭ ������ �����ϱ���.@�� ���� 10���� �ʿ��ϴ�ϴ�.@���� ������!",22,"������~ �̷�!"


			else
				return 2,0,"����ȭ ������ ��� ��� �Ա���!@��~ ������ ������ �帮���� @�Ҳ���.@�켱, �κ��丮�� 2ĭ �̻� ���@�ִ��� Ȯ���غ��ð� �޾��ּ���.@�� �ʿ��� ������ �Ǿ����� @�ϳ׿�~ ^^@�׸���, ����ȭ�� ��� ��� ���ø�@�� ������ �帱 �״�.. @�����ε� �׻� ���� ��Ų �е鲲@������ ������ ��������~",23,"���� ��������! ������ ����!"


			end
		end




	
	elseif req == 2 then
		return 2,0,"�츮���� ��ǥ�ϴ� ��!! @����ȭ�� ��ƿ�����.@����ȭ�� �� 9��������@�������� ������, ���� �����@���� ������ �� �ִ�ϴ�.@������ ���� 10������ ��ƿ��� @������ ������ �帱����.",12,"��! ���� ��ƿò���."




	elseif req == 12 then
		AddSwitchCount(cnum, 412, 1)



	
	
	elseif req == 23 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�κ��丮�� �� ������ �����մϴ�. 2ĭ �̻� �� ������ ����ڿ� ������"


		else
			AddItemCount(cnum, 8157, -10)
			AddItemCount(cnum, 8158, -10)
			AddItemCount(cnum, 8159, -10)
			AddItemCount(cnum, 8160, -10)
			AddItemCount(cnum, 8161, -10)
			AddItemCount(cnum, 8162, -10)
			AddItemCount(cnum, 8163, -10)
			AddItemCount(cnum, 8164, -10)
			AddItemCount(cnum, 8165, -10)

			random = SetRandom(cnum, 1, 1000)

			if random <= 5 then
				AddItemCount(cnum, 1333, 1)

			elseif random > 5 and random <= 45 then
				AddItemCount(cnum, 4513, 1)

			elseif random > 45 and random <= 100 then
				AddItemCount(cnum, 80, 1)			

			elseif random > 100 and random <= 1000 then
				AddItemCount(cnum, 154, 1)

			else
				return 0

			end

		end

	else
		return 0


	end
end