function NPC_QUEST_1611(cnum, reqNumber)--[���� ���� �̺�Ʈ] ������Ÿ ���� 158.100

	req = reqNumber

--�Ʒ� �ð��� test ���� ���� (�� �ð����� -4~5�� ����)
--[[	CurTime = (GetCurrentTime () - 230964) - 1728000 --32400 : 9 �ð�, 1728000 : 20��  == ���� �ý��� �ð� �� + ��, - ��
	Year = CurTime/ 30758400
	Day = (CurTime % 30758400) / 86400
	Hour = (CurTime % 30758400 % 86400) / 3200
	Min = (CurTime % 30758400 % 86400 % 3200) / 60
	Second = (CurTime % 30758400 % 86400 % 3200% 60)
--]]

--���� ���� ��������
	CurTime = (GetCurrentTime () - 231204) - 1728000 --32400 : ������ 4~5�� ������ ������ 4�� 240 ���� ����..
	Year = CurTime/ 30758400
	Day = (CurTime % 30758400) / 86400
	Hour = (CurTime % 30758400 % 86400) / 3200
	Min = (CurTime % 30758400 % 86400 % 3200) / 60
	Second = (CurTime % 30758400 % 86400 % 3200% 60)

-- 750 ��ý����Ȯ��
-- 751 ��ý����ġ (�ð�üũ)

	if req == 1 then

		return 3,0, "[����]@@�ȳ��ϼ���~������!@��ŭ!�߶�!��������~@�̹��� ���м��дɷ��� �־���?������ �� ��������� �����ϸ� '�⼮ �̺�Ʈ'�� �ɰ� ������ ��ǰ�� �帳�ϴ�!",2,"�̺�Ʈ ����",3,"[�⼮üũ]"


	elseif req == 2 then
		return 4,0, "[����]@@���� �� �ñ��� ���� �������ּ���.",4,"[�̺�Ʈ ���� ���]",5,"[���� ������]",6,"[���ǻ���]"


	elseif req == 3 then

		if GetRemainPocket(cnum) < 1 then
		return 1,0,"������ �κ��丮�� �����մϴ�. �κ��丮�� 1ĭ �̻� ���� ���ʽÿ�."
		

		elseif GetSwitchCount(cnum, 750) < 1 then -- ó�� �湮
			SetSwitchCount(cnum,750,math.floor(Day))
			SetSwitchCount(cnum, 751, 1)
			AddItemCount(cnum, 8908,1)
			return 1,0, "[����]@@�⼮üũ ���� ��!@'��ȫ ����(60��) 1��(1.5��)�� ȹ���Ͽ����ϴ�.'"

		elseif GetSwitchCount(cnum, 750) ~= math.floor(Day) then -- �� ��° �湮 �̻� (���� �ٸ�!!!)
			if GetSwitchCount(cnum, 750) < math.floor(Day) then
				if math.floor(Day) - GetSwitchCount(cnum, 750) == 1 then--1�� ���� (����)
					if GetSwitchCount(cnum, 751) == 1 then -- ���µ��� ��� �ٽ� ó�� �������� ����!

					SetSwitchCount(cnum,750,math.floor(Day))
					AddSwitchCount(cnum, 751, 1)
					AddItemCount(cnum, 8909,1)
					return 1,0, "[����]@@2��° �⼮üũ ���� ��!@'��ȫ ����(80��) 1��(2��)�� ȹ���Ͽ����ϴ�.'"

					elseif GetSwitchCount(cnum, 751) == 2 then

					SetSwitchCount(cnum,750,math.floor(Day))
					AddSwitchCount(cnum, 751, 1)
					AddItemCount(cnum, 8910,1)
					return 1,0, "[����]@@3��° �⼮üũ ���� ��!@'��ȫ ����(100��) 1��(2.5��)�� ȹ���Ͽ����ϴ�.'"


					elseif GetSwitchCount(cnum, 751) >= 3 then

					SetSwitchCount(cnum,750,math.floor(Day))
					AddSwitchCount(cnum, 751, 1)
					AddItemCount(cnum, 8911,1)
					return 1,0, "[����]@@������ �⼮üũ ���� ��!@'��ȫ ����(120��) 1��(3��)�� ȹ���Ͽ����ϴ�.'"

					else
					return 1,0, "����1"

					end

				elseif math.floor(Day) - GetSwitchCount(cnum, 750) >= 2 then --2�� ���� �̻� (�߰��� ���Ծ���)
				SetSwitchCount(cnum, 750, math.floor(Day))
				SetSwitchCount(cnum, 751, 1)
				AddItemCount(cnum, 8908, 1)
				return 1,0, "[����]@@���� �⼮ ����!@����..�Ʊ����~�ٽ� ó������ �����غ�����!@'��ȫ ����(60��) 1��(1.5��)�� ȹ���Ͽ����ϴ�."
				end

			else -- ���� �ִ� ���� ���� �ð����� Ŭ ���� ����.
			return 1,0, "�߸� �ȵ�" --�� �ʴ� ��¿ �� ���� �̤�
			end

		else --��ȫ ������ ���� �ð��� ���� �ð��� ������ (�� 1��)

				return 1,0, "[����]@@������ �⼮üũ ���� �������� @��ȴ�ϴ�~@''���� �� (24:00����)'' @�ٽ� �ͼ� �⼮üũ�� �� �ּ���~!"
		end



	elseif req == 4 then
		return 2,0, "[����]@@�̺�Ʈ ���� ���)@1.NPC[����]�� Ŭ���ؼ� '�⼮üũ'@2.'24�ð�(����ð� ��������!) �Ŀ�' �ٽ� ã�ƿ� '�⼮üũ'!@3.�⼮üũ Ƚ���� ���� ������ �޶���!@@(��, ���ӽÿ��� ��ǰ�� �޶�����, �߰��� üũ�� �� �� ��� ù �������� ���ư��ϴ�!)",2,"[����]"


	elseif req == 5 then
		return 2,0, "[����]@@���� ������ ���)@1��:��ȫ ����(60��)@--EXP,������,�ھ�,�̼� 1.5������!@2��:��ȫ ����(80��)@--EXP,������,�ھ�,�̼� 2������!@3��:��ȫ ����(100��)@--EXP,������,�ھ�,�̼� 2.5������!@4��:��ȫ ����(120��)@--EXP,������,�ھ�,�̼� 3������!",2,"[����]"


	elseif req == 6 then
		return 2,0, "[����]@@���ǻ���)@�ش� �̺�Ʈ�� ''���� �⼮''�ÿ��� ���� �������� ������ �ö󰡰� �˴ϴ�!@���� �⼮�� ������ ��� �� ó�� �������� ���ư��� ������ �ð�üũ�� �� �Ͻñ� �ٶ��ϴ�.@@�⼮üũ�� �Ͻ� �� �ش� �� ����(������)�� ���� �⼮�� �����մϴ�.",2,"[����]"

	end

end

