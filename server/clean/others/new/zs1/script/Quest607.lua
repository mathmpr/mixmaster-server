function NPC_QUEST_1595(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]���Ű��� ����NPC ,1�� �� ��, 1�ð�¥�� �ҷ��� �̺�Ʈ ���Ű����� �������� ����.--



req = reqNumber

CriTime = 3600
if req == 1 then

	return 5,0, "����ð�~ @10�� 31�� ''�ҷ��� ����''�� �����Ͽ� @���� �ռ� ������ �ҷ��� ������ �������ְ� �ִٳ�~ @�ʿ��ϸ� �޾ư����� �ϰ�~ @�̷��Ƶ� �������̵� �� top10���� ��ġ�ϰ� �ִٳ�! @������!",55,"[��������]",4,"[���ʼ���]",5,"������ �����ּ���!",6,"���ִ� ȣ�ڰ���"



---------------------------------------------------------------------------------------------------------------

elseif req == 4 then --���ʼ���

	if GetRemainPocket(cnum) < 1 then --(710 ==2 or 710 > 1 or 710 X)
	return 1,0, "�ޱ� ���� �κ��丮�� ���� �;���."


	else

		if GetSwitchCount(cnum, 710) < 1 then
			random = SetRandom(cnum,1,85)



			if random < 10 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8848 ,1) --�Ʊ��۵��� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)�Ʊ��۵��� ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=10 and random < 20 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8842,1) --�޷մ� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)�޷մ� ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=20 and random < 30 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8845,1) --����Ķ�� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)����Ķ�� ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=30 and random < 40 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8843,1) --������ ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)������ ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=40 and random < 50 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8847,1) --���� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)���� ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=50 and random < 60 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8846,1) --�������� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)�Ʊ��۵��� ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=60 and random < 70 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8844,1) --�Ƿν�Ƽ ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)�Ƿν�Ƽ ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=70 and random <= 85 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8841,1) --������� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)������� ���Ű����� �޾ҽ��ϴ�.'"
			end

		elseif GetCurrentTime () - GetSwitchTime(cnum, 721) > CriTime then

			random = SetRandom(cnum,1,85)



			if random < 10 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8848 ,1) --�Ʊ��۵��� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)�Ʊ��۵��� ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=10 and random < 20 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8842,1) --�޷մ� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)�޷մ� ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=20 and random < 30 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8845,1) --����Ķ�� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)����Ķ�� ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=30 and random < 40 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8843,1) --������ ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)������ ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=40 and random < 50 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8847,1) --���� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)���� ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=50 and random < 60 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8846,1) --�������� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)�Ʊ��۵��� ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=60 and random < 70 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8844,1) --�Ƿν�Ƽ ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)�Ƿν�Ƽ ���Ű����� �޾ҽ��ϴ�.'"

			elseif random >=70 and random <= 85 then
			SetSwitchCurTime(cnum, 721)
			AddItemCount(cnum, 8841,1) --������� ����
			SetSwitchCount(cnum, 710,1)
			return 1,0, "���� �ռ� ���� ���Ű����ϼ�. @���밨�� �ϳ� �����ɼ�. @�� ����ϰԳ�!@@@@@'(ü���)������� ���Ű����� �޾ҽ��ϴ�.'"
			end



		else

		RemainTime = CriTime - (GetCurrentTime () - GetSwitchTime(cnum, 721))
		Hour = RemainTime / 3600
		Min = (RemainTime % 3600) / 60
		Second = (RemainTime % 3600) % 60
		return 1,0, "��� �Ⱓ�� �� ª�ٴ°� �����ϸ� @�� �����Ұɼ�. ��, ������ �޾����� �԰� ������ ���ƴٳຸ��~@������ 1�ð� �� �� ������ ���޵Ǵ� @["..math.floor(Min).."�� "..math.floor(Second).."��]�� ���� �� @�ٽ� ���Գ�..@@'Ư�� npc�� �ڽŰ� ����� ������ �԰� �ְų�, Ȥ�� ������� ������ �԰� ���� �� ��� ������ �޶����ϴ�.'"

		end

	end


elseif req == 5 then --������ �����ּ��� , ȣ�ڰ��� �� ���ο� ���� ����

	if GetSwitchCount(cnum, 710) == 2 then --ȣ�ڰ��� ��
		if GetSwitchCount(cnum, 723) < 10 then
		AddItemCount(cnum, 8835, 10)
		AddSwitchCount(cnum, 723, 1)
		return 1,0, "������ ������ �ֱ���! @������ ����ξ����� ������ ���� �����ְڳ�~"

		else --�̻��϶�
		return 1,0, "����ξ��� ��ɵ� ���� �׷�~"
		end

	else --ȣ�ڰ��� ���ذ��
		if GetSwitchCount(cnum, 723) < 10 then
			AddItemCount(cnum ,8835, 1)
			AddSwitchCount(cnum, 723, 1)
			return 1,0, "�� �� ���� �ؾ߰ڱ���... @�ִ°� ������ ���°͵� �ִ¹�.."
		else
			return 1,0, "����ξ��� ��ɵ� ���� �׷�~"
		end
	end

elseif req == 6 then --���ִ� ȣ�ڰ���
	if GetItemCount(cnum, 8836,0) < 1 then--�κ��� �ϳ��� �������
		if GetSwitchCount(cnum, 710) == 2 then

		return 1,0, "���� �ҷ��� ���̸� �����ð�~"

		elseif GetSwitchCount(cnum,710) == 1 then
		return 1,0, "����... @@ȣ�ڰ���.. @@������ ȣ�ڸ��̰���..@@ �Ծ��ʹٳ�.."

		else --710�� X
		return 1,0, "�ҷ����� �⺻�� �����̶���~"
		end

	else --�κ��� �������(����� ������� ����)
		if GetSwitchCount(cnum, 710) == 2 then --ȣ�ڰ��� ��
		SetSwitchCount(cnum, 715,2)
		return 1,0, "���� �ҷ��� ���̸� �����ð�~"


		elseif GetSwitchCount(cnum, 710) < 1 then -- 710�� �ȹ������
		return 1,0, "�ҷ����� �⺻�� �����̶���~"

		else --���ϰ��ʼ��� �Ϸ�, ȣ�ڰ��� �κ��� ���� ��� �ָ鼭 ����ġ���� 2 (�����Ϸ�)�� �ٲ�
		SetSwitchCount(cnum,710,2) --����ġ�� ȣ�ڰ��� ����ġ�� ����
		AddItemCount(cnum, 8836, -1)
		AddItemCount(cnum, 8835, 5) --���� 5�� ��
		return 1,0, "������ ���־� ���̴� ȣ�ڰ��ڷα�.. @�ڳ״� ���� �谡 �ҷ� ���̴� ���� ��� �Ծ��ְڳ�. @����~"
		end
	end

elseif req == 43 then --�Ϲݺ���
	if GetRemainPocket(cnum) < 2 then
	return 1,0, "������ ���̱���.. @   �׳� ����, �ٴڿ� ������?"
	end

if GetSwitchCount(cnum, 715) < 1 then
	if GetItemCount(cnum, 8841,2) == 1 then
		EndQuest(cnum,222)
		SetSwitchCount(cnum, 715,1)
		AddItemCount(cnum, 8839, -1)
		AddItemCount(cnum, 8859, 1)
		AddItemCount(cnum, 8835, 15) --�� ���� ������ ������ �� �ٰ�
	return 1,0, "�ͽ��� ���� �븩����.. @������ �� ����� ���µ� ����.@@@@@''������� ���Ű���'�� '�ҷ��� ���� 15��'�� �޾ҽ��ϴ�.'"

	else
		if GetItemCount(cnum, 8839,0) >= 1 then
		EndQuest(cnum,222)
		SetSwitchCount(cnum, 715,1)
		AddItemCount(cnum, 8839, -1)
		AddItemCount(cnum, 8859, 1)
		AddItemCount(cnum, 8835, 5)
		return 1,0, "��...����̾��µ� ���� ������ ���ٴ�! @������ ����.@@@@@''������� ���Ű���'�� '�ҷ��� ���� 5��'�� �޾ҽ��ϴ�.'"
		else
		return 1,0, "Ư���� ������ ����������!!"
		end

	end
else
return 1,0, "�ڳ״� �̹� ������ ���� �ʾҴ°�? @���� �������̿��� ���� �ʾҴ°�? @��� ��������״� �� �����ְԳ�.."
end

elseif req == 55 then

if GetSwitchCount(cnum, 721) ==3 then
	if GetSwitchCount(cnum, 711) < 1 then
	StartQuest(cnum,223)
	return 2,0, "��������? @������� ���Ű����� ���ϴ°ǰ�? @�ƾ�..�������̰� ��Ź�Ѵٴ��� ����ξ�����..@�׷��ٸ� ��ƾ� �� ���� ������ ����. [['ȣ�� ����', '�Ҹ��� ����' ,  '��������' , '�Ǹ��� ����' ���� 30����]] ��ƿ����� �ϰ�. @�켱 ��ᰡ �ִ��� Ȯ���ϰ� ����.",56,"��ᰡ �־��!"

	elseif GetSwitchCount(cnum, 711) == 1 then
	return 2,0, "��������? @������� ���Ű����� ���ϴ°ǰ�? @�ƾ�..�������̰� ��Ź�Ѵٴ��� ����ξ�����..@�����.. ��, ���� �����������?.",43,"��, �����Ѱ� ������ �Ծ��."
	end
else --GetSwitchCount(cnum, 721) == 2 then
return 1,0, "��������? ��� ������ �׷���..?? @����ξ��� ���� �� �ð��� �� ���� �������ִ� �ʿ�����װ�..@�켱 '������� ���Ű����� �����ŵ纯���ؼ� �������̿��� ��'�� �ɾ�Գ�. �׷� ����ξ����� ���ʹ޶�� ��û���״� �׶� �ٽ� ����."

end

elseif req == 56 then

	if GetSwitchCount(cnum, 711) < 1 then
		if GetItemCount(cnum, 8837, 0) < 30 and GetItemCount(cnum, 8838,0) < 30 and GetItemCount(cnum, 500,0) < 30 and GetItemCount(cnum, 8839,0) < 30 then
			return 1,0, "�̷�, �������ۿ� �ʿ��� ��ᰡ �������� ������..."

		else

			return 2,0, "��Ḧ �� ��ƿԱ���. @��ø� ��ٸ���... @@@[����-!!]@@@",57,"��!"

		end
	else
		return 1,0, "������ �̹� ������� �ʴ°�...@���� Ư���� �����̳� ������ ����!@'Ư���� ���� : �������� NPC���Լ� �������� �̺�Ʈ�� �Ϸ��ϸ� ȹ���� �� �ֽ��ϴ�'"
	end
elseif req == 57 then
			EndQuest(cnum,223)
			SetSwitchCount(cnum, 711,1)
			AddItemCount(cnum, 8837, -30)
			AddItemCount(cnum, 8838, -30)
			AddItemCount(cnum, 500, -30)
			AddItemCount(cnum, 496, -30)
	return 2,0, "���� ���ۿ� �����ߴٳ�!",58,"�����ϼ̽��ϴ�. �� ���� ������ �ּ���!"

elseif req == 58 then

	return 2,0, "��... ��ó�� ����� ������ �����ߴµ� @�׳� �ֱ� �Ʊ���.......@@�׷�! ��ħ �ҷ��� ������ ������ ���ε�, @'Ư���� ����' 1���� ���� �������ָ� ������ �ְڳ�.",59,"����~?"

elseif req == 59 then
StartQuest(cnum,222)
	return 1,0, "���� ����� �����ϴ°� �ƴ��ݴ°�! @������, �� �� �����ְ�~ (���� ������ ���� �ñ��߾�..�߾��߾�)"





end

end

