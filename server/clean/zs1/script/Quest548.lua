function NPC_QUEST_866(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ����� ���� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 531) < 1 then
			if GetItemCount(cnum, 8508, 0) < 1 then
				return 1,0,"�״뿩...�� ������ ������ �ͳ�? ������ ������ �� �� ����...�� ��ó�� �ִ� ���ŷ...�� ���� �׿��� �� ���� ������ ������ �Ͷ�..�׷��� ���� �� ���ڸ� ���� �ְڴ�."
			else
				return 2,0,"�ƴ� �װ���!! ���ŷ! �� ���� �����ΰ�?! �̸� �����ٿ�...",2,"����.."
			end
		else
			return 1,0,"�״뿩 ����..�״�� ���� �����ϰ� ���� �뷯�α���!"
		end

	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"����� ������ ������ ���� ������ �����մϴ�."
		else
			AddItemCount(cnum, 8503, 1) 
			SetSwitchCount(cnum, 525, 1) -- ���� ã��
			SetSwitchCount(cnum, 531, 1)
			return 1,0,"������!! ����! �� �������ڸ� ��������! �״�� ������ ������ �����̴�! ��������!!"
		end


	end
end

function NPC_QUEST_867(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ����� ���� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 531) < 1 then
			if GetItemCount(cnum, 8508, 0) < 1 then
				return 1,0,"�״뿩...�� ������ ������ �ͳ�? ������ ������ �� �� ����...�� ��ó�� �ִ� ���ŷ...�� ���� �׿��� �� ���� ������ ������ �Ͷ�..�׷��� ���� �� ���ڸ� ���� �ְڴ�."
			else
				return 2,0,"�ƴ� �װ���!! ���ŷ! �� ���� �����ΰ�?! �̸� �����ٿ�...",2,"����.."
			end
		else
			return 1,0,"�״뿩 ����..�״�� ���� �����ϰ� ���� �뷯�α���!"
		end

	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"����� ������ ������ ���� ������ �����մϴ�."
		else
			AddItemCount(cnum, 8503, 1) 
			SetSwitchCount(cnum, 525, 1) -- ���� ã��
			SetSwitchCount(cnum, 531, 1)
			return 1,0,"������!! ����! �� �������ڸ� ��������! �״�� ������ ������ �����̴�! ��������!!"
		end


	end
end
function NPC_QUEST_868(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ����� ���� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 531) < 1 then
			if GetItemCount(cnum, 8508, 0) < 1 then
				return 1,0,"�״뿩...�� ������ ������ �ͳ�? ������ ������ �� �� ����...�� ��ó�� �ִ� ���ŷ...�� ���� �׿��� �� ���� ������ ������ �Ͷ�..�׷��� ���� �� ���ڸ� ���� �ְڴ�."
			else
				return 2,0,"�ƴ� �װ���!! ���ŷ! �� ���� �����ΰ�?! �̸� �����ٿ�...",2,"����.."
			end
		else
			return 1,0,"�״뿩 ����..�״�� ���� �����ϰ� ���� �뷯�α���!"
		end

	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"����� ������ ������ ���� ������ �����մϴ�."
		else
			AddItemCount(cnum, 8503, 1) 
			SetSwitchCount(cnum, 525, 1) -- ���� ã��
			SetSwitchCount(cnum, 531, 1)
			return 1,0,"������!! ����! �� �������ڸ� ��������! �״�� ������ ������ �����̴�! ��������!!"
		end


	end
end
function NPC_QUEST_869(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ����� ���� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 531) < 1 then
			if GetItemCount(cnum, 8508, 0) < 1 then
				return 1,0,"�״뿩...�� ������ ������ �ͳ�? ������ ������ �� �� ����...�� ��ó�� �ִ� ���ŷ...�� ���� �׿��� �� ���� ������ ������ �Ͷ�..�׷��� ���� �� ���ڸ� ���� �ְڴ�."
			else
				return 2,0,"�ƴ� �װ���!! ���ŷ! �� ���� �����ΰ�?! �̸� �����ٿ�...",2,"����.."
			end
		else
			return 1,0,"�״뿩 ����..�״�� ���� �����ϰ� ���� �뷯�α���!"
		end

	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"����� ������ ������ ���� ������ �����մϴ�."
		else
			AddItemCount(cnum, 8503, 1) 
			SetSwitchCount(cnum, 525, 1) -- ���� ã��
			SetSwitchCount(cnum, 531, 1)
			return 1,0,"������!! ����! �� �������ڸ� ��������! �״�� ������ ������ �����̴�! ��������!!"
		end


	end
end

function NPC_QUEST_870(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ���� �Ұ� �ذ�

req = reqNumber

	if req == 1 then
		return 1,0,"�ذ��� �ִ� �ʸӿ��� �ʹ� �����ؼ� �������� �ʴ´�. ���� ���� �� ����."
	end
end

function NPC_QUEST_871(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ���� �Ұ� �ذ�

req = reqNumber

	if req == 1 then
		return 1,0,"�ذ��� �ִ� �ʸӿ��� �ʹ� �����ؼ� �������� �ʴ´�. ���� ���� �� ����."
	end
end

function NPC_QUEST_872(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ���� �Ұ� �ذ�

req = reqNumber

	if req == 1 then
		return 1,0,"�ذ��� �ִ� �ʸӿ��� �ʹ� �����ؼ� �������� �ʴ´�. ���� ���� �� ����."
	end
end

function NPC_QUEST_873(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� ���� �Ұ� �ذ�

req = reqNumber

	if req == 1 then
		return 1,0,"�ذ��� �ִ� �ʸӿ��� �ʹ� �����ؼ� �������� �ʴ´�. ���� ���� �� ����."
	end
end

