function NPC_QUEST_689(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 413) < 1 then 
			return 2,0,"5�� 4�� ~ 6�� �߻���@���� ������ ���� �����Դϴ�.@�ð����� �𷡽ð�(4��) �����۰�@�����̾� ��ũ(4�ð�) ��������@�帳�ϴ�.@�κ��丮 ������ �ݵ�� ����� ��@�����ñ� �ٶ��ϴ�.",2,"��!"

		else
			return 1,0,"���� �������� �̹� ���޵Ǿ����ϴ�."


		end


	elseif req == 2 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�κ��丮�� �� ������ �����մϴ�. 2ĭ �̻� ���� ������ �ʿ��մϴ�."


		elseif GetSwitchCount(cnum, 413) > 0 then
			return 1,0,"���� �������� �̹� ���޵Ǿ����ϴ�." 


		else
			AddItemCount(cnum, 156, 1)
			AddItemCount(cnum, 157, 1)
			AddSwitchCount(cnum, 413, 1)

		end

	else
		return 0


	end
end
		






