function NPC_QUEST_690(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"��� ������ �ȳ��ϽŰ�?! 5�� 5�� ��̳��� �����ϱ� ���� ���� �Դٳ�! ����~ ���� �ʿ� ����, ���� ������� ��� ��ũ�� �� �״� �����ϰ� ����ϵ���~ ��! �׸��� ��ũ�� ���� �� �Ϸ�(24�ð�)�� ������ �ٽ� �� ��ũ�� �� �״� ���� ���� ã�ƿ��ðԳ�!",2,"��! �����մϴ�!"


	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ���� ������ ��� ��� ��ũ�� ������ �� �����ϴ�."


		else
			GetTime = GetSwitchTime(cnum, 402)
			Today   = GetToday()
--			Today	= ChangeTime(ChangeTime(GetCurrentTime(),3,2),2,3)

			if GetTime < Today then
				SetSwitchCurTime(cnum, 402)
				AddSwitchCount(cnum, 403, 1)
				AddItemCount(cnum, 8212, 1)
				return 1,0,"��� ��ũ�� ������ ��Ƚ��ϴ�."


			else
				return 1,0,"������� �������ϱ�~ ��̶�� ������ ���������� ��������! ������ ��� ��ũ�� �ް� ���� �Ϸ�(24�ð�)��  ������ �ʾҴٳ�.",12,"��!"


			end

		end



	else
		return 0

	end
end


function NPC_QUEST_691(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"��� ������ �ȳ��ϽŰ�?! 5�� 5�� ��̳��� �����ϱ� ���� ���� �Դٳ�! ����~ ���� �ʿ� ����, ���� ������� ��� ��ũ�� �� �״� �����ϰ� ����ϵ���~ ��! �׸��� ��ũ�� ���� �� �Ϸ�(24�ð�)�� ������ �ٽ� �� ��ũ�� �� �״� ���� ���� ã�ƿ��ðԳ�!",2,"��! �����մϴ�!"


	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ���� ������ ��� ��� ��ũ�� ������ �� �����ϴ�."


		else
			GetTime = GetSwitchTime(cnum, 402)
			Today   = GetToday()
--			Today	= ChangeTime(ChangeTime(GetCurrentTime(),3,2),2,3)

			if GetTime < Today then
				SetSwitchCurTime(cnum, 402)
				AddSwitchCount(cnum, 403, 1)
				AddItemCount(cnum, 8212, 1)
				return 1,0,"��� ��ũ�� ������ ��Ƚ��ϴ�."


			else
				return 1,0,"������� �������ϱ�~ ��̶�� ������ ���������� ��������! ������ ��� ��ũ�� �ް� ���� �Ϸ�(24�ð�)��  ������ �ʾҴٳ�.",12,"��!"


			end

		end



	else
		return 0

	end
end




function NPC_QUEST_692(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"��� ������ �ȳ��ϽŰ�?! 5�� 5�� ��̳��� �����ϱ� ���� ���� �Դٳ�! ����~ ���� �ʿ� ����, ���� ������� ��� ��ũ�� �� �״� �����ϰ� ����ϵ���~ ��! �׸��� ��ũ�� ���� �� �Ϸ�(24�ð�)�� ������ �ٽ� �� ��ũ�� �� �״� ���� ���� ã�ƿ��ðԳ�!",2,"��! �����մϴ�!"


	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ���� ������ ��� ��� ��ũ�� ������ �� �����ϴ�."


		else
			GetTime = GetSwitchTime(cnum, 402)
			Today   = GetToday()
--			Today	= ChangeTime(ChangeTime(GetCurrentTime(),3,2),2,3)

			if GetTime < Today then
				SetSwitchCurTime(cnum, 402)
				AddSwitchCount(cnum, 403, 1)
				AddItemCount(cnum, 8212, 1)
				return 1,0,"��� ��ũ�� ������ ��Ƚ��ϴ�."


			else
				return 1,0,"������� �������ϱ�~ ��̶�� ������ ���������� ��������! ������ ��� ��ũ�� �ް� ���� �Ϸ�(24�ð�)��  ������ �ʾҴٳ�.",12,"��!"


			end

		end



	else
		return 0

	end
end