function NPC_QUEST_701(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 415) < 1 then
			return 2,0,"�ʹ����� ���� ����!@�Ϻ��� ��� ����! @������� ���ص����~",2,"�Դ°ǰ���? ��ƿ��~"


		else
			if GetItemCount(cnum, 8099, 0) < 10 or GetItemCount(cnum, 8214, 0) < 10 or GetItemCount(cnum, 8100, 0) < 10 then 
				return 2,0,"�װ͸����δ� ������ �������@���� �� �����~@[�λ� 10��]@[���� 10��]@[�߰��� 10��]@�̷��� �丮 ��Ḧ ��ƿ�����~@��.. �鸮�� �ҹ��� ���ϸ�..@[�λ�]��[����]�� �Ĺ� ����,@[�߰���]�� �� ���Ϳ��Լ�@���´ٰ� �ϴ���..",42,"��~ ��.."


			else
				return 2,0,"��~! �̰Ÿ� ����ϱ���.@��ø� �־����~@��� ������ �ð�!",52,"�αٵα�~"


			end
		end



	elseif req == 2 then
		return 2,0,"ȣȣ~ ��� �Դ°�����!@����, �� �Ұ��� �帮�ڸ�..@������� ���� ���򳪰� �����@������� �����̶���� �ұ�~@��~ ��Ӵ��� �ո�!@������ ������� ������@���� ����! �ְ��� �����!",12,"���� �Ա��ͳ׿�~"


	elseif req == 12 then
		return 2,0,"�Ա��ʹٰ���~?@��.. �׷��� �ս��� ���� ��@�ִ� ������ �ƴϿ���~ @[�λ� 10��]@[���� 10��]@[�߰��� 10��]@�̷��� �丮 ��Ḧ ��ƿ���@���򳪴� ������ �������@����� �帱����~",22,"��� ���ϳ���?"


	elseif req == 22 then
		return 2,0,"��.. �鸮�� �ҹ��� ���ϸ�..@[�λ�]��[����]�� �Ĺ� ����,@[�߰���]�� �� ���Ϳ��Լ�@���´ٰ� �ϴ���..@��~ ������ ������!",32,"��~ ���� ���ؿ���~"


	elseif req == 32 then
		AddSwitchCount(cnum, 415, 1)



	elseif req == 52 then
		return 2,0,"��~! �ϼ��̿�!@���� ����! �ְ��� �����!@[������ �����] ����̿�~@���ְ� ��ð�, �����ϼ���~ ^^",62,"��~ ��ƿ��~"


	elseif req == 62 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[������ �����]�� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 8099, -10)
			AddItemCount(cnum, 8214, -10)
			AddItemCount(cnum, 8100, -10)
			AddItemCount(cnum, 8215, 1)

		end

	else
		return 0

	end
end

