function NPC_QUEST_1599(cnum, reqNumber) --������Ÿ ����ŷ [2011 �����ε��� �̺�Ʈ - ���������� ���]
req = reqNumber

	if req == 1 then
	Lv = GetHeroLv(cnum)

		if GetSwitchCount(cnum, 725) > 1 then --������ �����ְ� ���� ���,
		return 1,0, "���� ��°հ�? �������� �����ְ� ���� �ʴ°�! (��������) @@(�������� ���� ���߿��� ����ŷ�� ���� �� �����ϴ�.)"
		elseif GetSwitchCount(cnum, 724) < 1 then
		return 3,0, "���� �����ձ��� ��, �ٷ� ����ŷ�̴�. ���� ���������� �ְ��� �� �� ���� ������ �����ϸ� �Ƹ��� �Ʒú����� ������ �ִ�!",5,"����ŷ��, �Ȼ��� �� ���ƺ�����.",11,"[������ ��ũ�ޱ�]"

		elseif GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then --�ٸ� �̼� �����߿� �̵��� ���� ��쿡�� ����! (�ȱ׷��� ��������)
			if GetSwitchCount(cnum, 727) == 3 then
			return 2,0, "������Ÿ �Ʒ����� �� �ٳ�Դ°�? ���, �ٵ� ������ ������ ������? �׷�, ������ ǥ�÷� ���� ������ �ϳ� �� �غ��߳�.",12,"[������ ��ũ�ޱ�]"
			elseif GetSwitchCount(cnum, 725) < 2 or SwitchCount(cnum, 724) < 2 then
			return 2,0, "���� �����ձ��� ��, �ٷ� ����ŷ�̴�. ���� ���������� �ְ��� �� �� ���� ������ �����ϸ� �Ƹ��� �Ʒú����� ������ �ִ�!",3,"������Ÿ �Ʒ������� �̵�~!"
			else
			return 1,0, "�̼��� �ϼ��ϼ� ������ �ϰ�. @@(����ŷ�� �̼��� �������̰ų�, �������� ���� ���߿��� ������Ÿ �Ʒ������� �̵��� �� �����ϴ�."
			end
		elseif GetSwitchCount(cnum, 724) > 1 then

			if GetSwitchCount(cnum, 724) == 30 then
				if GetItemCount(cnum, 8869,0) < 30 or GetItemCount(cnum, 8866,0) < 30 then
					return 1,0, "�����Ʒú��� ���� �غ� �� �Ǿ��ֱ�! '��ٶ� ����'�� '���ݸ�'�� 30���� ��ƿ;� �ϳ�!@@(�Ʒ��� �� ���� �Ʒú��� ��ȭ ���� ����� �Ҹ� ��, �ٽ� �� �� ����ŷ �̼��� �Ϸ��ؾ� �մϴ�.)"

				elseif GetSwitchCount(cnum, 727) == 2 then --�����Ʒú����� '���� ������Ÿ��' ���� 100�� �̺�Ʈ ��������
					SetSwitchCount(cnum, 727,1)
					return 1,0, "(�����Ʒú�:ģ������ �;��~ ����!!)@@����! ���� ���� �Ͱŵ� �� ���� �������� �׳��� �Ʒú���� ��ȭ�� ���� ���Գ�!@@(����ŷ�̳� ���������� �ٽ� ���� �ɾ�߸� ó������ �̼��� ������ �� �ֽ��ϴ�.)"

				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�κ��丮�� �� ���� ������� �� �� ����������.. ��������� �ϰ�."
					elseif GetSwitchCount(cnum, 728) == 1 then
						AddItemCount(cnum, 8869,-30)
						AddItemCount(cnum, 8866,-30)
						AddItemCount(cnum, 8860,1)
						EndQuest(cnum, 224)
						return 2,0, "����, �Դ°�! �� ������ �������� �����Ʒú��� �پ���� �� �ְڱ�! ���� �����߳�.@@������ ǥ�÷� �ִ� �����̳�. �ڳ״� 30�е��� ������Ÿ �Ʒ����� �̿��� �� �ֳ�. �ٷ� ���ڴ°�?@[������Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"������Ÿ �Ʒ������� �̵�~!"

					else
						AddItemCount(cnum, 8869,-30)
						AddItemCount(cnum, 8866,-30)
						AddItemCount(cnum, 8860,1)
						AddItemCount(cnum, 8868,5)
						SetSwitchCount(cnum, 728, 1)
						EndQuest(cnum, 224)
						return 2,0, "����, �Դ°�! �� ������ �������� �����Ʒú��� �پ���� �� �ְڱ�! ���� �����߳�.@@������ ǥ�÷� �ִ� �����̳�. �ڳ״� 30�е��� ������Ÿ �Ʒ����� �̿��� �� �ֳ�. �ٷ� ���ڴ°�?@[���� ������ 5��, ������Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"������Ÿ �Ʒ������� �̵�~!"
					end
				end

			elseif GetSwitchCount(cnum, 724) == 60 then
				if GetItemCount(cnum, 8869,0) < 60 or GetItemCount(cnum, 8866,0) < 60 then
					return 1,0, "�����Ʒú��� ���� �غ� �� �Ǿ��ֱ�! '��ٶ� ����'�� '���ݸ�'�� 60���� ��ƿ;� �ϳ�!@@(�Ʒ��� �� ���� �Ʒú��� ��ȭ ���� ����� �Ҹ� ��, �ٽ� �� �� ����ŷ �̼��� �Ϸ��ؾ� �մϴ�.)"

				elseif GetSwitchCount(cnum, 727) == 2 then --�����Ʒú����� '���� ������Ÿ��' ���� 100�� �̺�Ʈ ��������
					SetSwitchCount(cnum, 727,1)
					return 1,0, "(�����Ʒú�:ģ������ �;��~ ����!!)@@����! ���� ���� �Ͱŵ� �� ���� �������� �׳��� �Ʒú���� ��ȭ�� ���� ���Գ�!@@(����ŷ�̳� ���������� �ٽ� ���� �ɾ�߸� ó������ �̼��� ������ �� �ֽ��ϴ�.)"

				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�κ��丮�� �� ���� ������� �� �� ����������.. ��������� �ϰ�."
					elseif GetSwitchCount(cnum, 728) == 2 then
						AddItemCount(cnum, 8869,-60)
						AddItemCount(cnum, 8866,-60)
						AddItemCount(cnum, 8861,1)
						EndQuest(cnum, 225)
						return 2,0, "����, �Դ°�! �� ������ �������� �����Ʒú��� �پ���� �� �ְڱ�! ���� �����߳�.@@������ ǥ�÷� �ִ� �����̳�. �ڳ״� 1 �ð�(60��)���� ������Ÿ �Ʒ����� �̿��� �� �ֳ�. �ٷ� ���ڴ°�?@[������Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"������Ÿ �Ʒ������� �̵�~!"

					else
						AddItemCount(cnum, 8869,-60)
						AddItemCount(cnum, 8866,-60)
						AddItemCount(cnum, 8861,1)
						AddItemCount(cnum, 8868,10)
						SetSwitchCount(cnum, 728, 2)
						EndQuest(cnum, 225)
						return 2,0, "����, �Դ°�! �� ������ �������� �����Ʒú��� �پ���� �� �ְڱ�! ���� �����߳�.@@������ ǥ�÷� �ִ� �����̳�. �ڳ״� 1 �ð�(60��)���� ������Ÿ �Ʒ����� �̿��� �� �ֳ�. �ٷ� ���ڴ°�?@[���� ������ 10��, ������Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"������Ÿ �Ʒ������� �̵�~!"
					end
				end

			elseif GetSwitchCount(cnum, 724) == 90 then
				if GetItemCount(cnum, 8869,0) < 90 or GetItemCount(cnum, 8866,0) < 90 then
					return 1,0, "�����Ʒú��� ���� �غ� �� �Ǿ��ֱ�! '��ٶ� ����'�� '���ݸ�'�� 90���� ��ƿ;� �ϳ�!@@(�Ʒ��� �� ���� �Ʒú��� ��ȭ ���� ����� �Ҹ� ��, �ٽ� �� �� ����ŷ �̼��� �Ϸ��ؾ� �մϴ�.)"

				elseif GetSwitchCount(cnum, 727) == 2 then --�����Ʒú����� '���� ������Ÿ��' ���� 100�� �̺�Ʈ ��������
					SetSwitchCount(cnum, 727,1)
					return 1,0, "(�����Ʒú�:ģ������ �;��~ ����!!)@@����! ���� ���� �Ͱŵ� �� ���� �������� �׳��� �Ʒú���� ��ȭ�� ���� ���Գ�!@@(����ŷ�̳� ���������� �ٽ� ���� �ɾ�߸� ó������ �̼��� ������ �� �ֽ��ϴ�.)"

				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�κ��丮�� �� ���� ������� �� �� ����������.. ��������� �ϰ�."
					elseif GetSwitchCount(cnum, 728) == 3 then
						AddItemCount(cnum, 8869,-90)
						AddItemCount(cnum, 8866,-90)
						AddItemCount(cnum, 8862,1)
						EndQuest(cnum, 226)
						return 2,0, "����, �Դ°�! �� ������ �������� �����Ʒú��� �پ���� �� �ְڱ�! ���� �����߳�.@@������ ǥ�÷� �ִ� �����̳�. �ڳ״� 90�� ���� ������Ÿ �Ʒ����� �̿��� �� �ֳ�. �ٷ� ���ڴ°�?@[������Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"������Ÿ �Ʒ������� �̵�~!"

					else
						AddItemCount(cnum, 8869,-90)
						AddItemCount(cnum, 8866,-90)
						AddItemCount(cnum, 8862,1)
						AddItemCount(cnum, 8868,15)
						SetSwitchCount(cnum, 728, 3)
						EndQuest(cnum, 226)
						return 2,0, "����, �Դ°�! �� ������ �������� �����Ʒú��� �پ���� �� �ְڱ�! ���� �����߳�.@@������ ǥ�÷� �ִ� �����̳�. �ڳ״� 90�� ���� ������Ÿ �Ʒ����� �̿��� �� �ֳ�. �ٷ� ���ڴ°�?@[���� ������ 15��, ������Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"������Ÿ �Ʒ������� �̵�~!"
					end
				end
			else
			return 2,0, "���� �����ձ��� ��, �ٷ� ����ŷ�̴�. ���� ���������� �ְ��� �� �� ���� ������ �����ϸ� �Ƹ��� �Ʒú����� ������ �ִ�!",11,"[�����ε��� ��ũ�ޱ�]"
			end

		else --GetSwitchCount(cnum, 724) == 1 then --����ŷ�� �̼��� �Ϸ��� �� ���������� ��ũ�� ȹ�� (�̼�����۱��п�)
			return 2,0, "���п� ���� ���������� �������� �������ٳ�. ������ ���� �Ƚ��ϱ� �̸���. �������� ���������� ������� ������ �ް� �־� ���߱����� ��� �þ�� ���� ����? �ڳ׸� �����ٸ� �� ����൵ ���ʰڳ�.",10,"���� �������ϴ�."

		end





elseif req == 3 then
	if GetItemCount(cnum, 8860,0) < 1 and GetItemCount(cnum, 8861,0) < 1 and GetItemCount(cnum, 8862,0) < 1 then
		return 1,0, "������Ÿ �Ʒ��� ������� �־�߸� ������ �� �ִٳ�.@@(����ŷ�� �������� ����� �̺�Ʈ�� ����������Դϴ�.@�������� ������� �̹� �ð��� �� �Ҹ�Ʊ� ������, �ٽ� �̼��� �Ϸ��Ͽ� ������� �޾ƾ� �մϴ�.)"
	else
		return 2,0, "�׷� ���� ��������, �Ƹ��� �����Ʒú��� �Ʒ������� �ȳ��ϰڳ�. �ð��� ������ �ڵ����� ������ ���ƿ��� �����Ͻð�.@@(�ð��� ������ ������� �Ҹ�ʰ� ���ÿ� ĳ���Ͱ� ���������� ������ �������� �ڵ� �̵��˴ϴ�.)",4,"[�̵�]"
	end


elseif req == 4 then

	if Lv < 41 then
	MoveZone(cnum,208,254) --76
	elseif Lv < 81 then
	MoveZone(cnum,209,254) --76
	elseif Lv < 121 then
	MoveZone(cnum,210,254) --76
	elseif Lv < 161 then
	MoveZone(cnum,211,254) --76
	elseif Lv <= 200 then
	MoveZone(cnum,212,254) --76


	else
		return 1,0, "�߸�ȵ�"
	end

elseif req == 5 then
	return 2,0, "���� ���������� �ְ��̴�. �׷���, �� ����ϴ� ������ �������� ���� ���������� ���� ���� �����ϴٸ� Ʈ���� ��°� �ƴѰ�? �׷��� ���� ������ ����... ��� ���� ������ �� ������ �ᱹ ���ڽο��� �Ǿ������.",6,"���� ���͵帱 ���� �ֳ���?"

elseif req == 6 then
	return 4,0, "����, ��� �� �ݰ��� �Ҹ���! �� ȥ�ڼ��� �� �� ������ ������� �ڳװ� �����شٸ��, �������� ������ ���� �̱� �� �ְ���. �����Ʒú��� ����µ� �ʿ��� ���� '���ݸ�' �� '��ٶ� ����'���. �� ���� 1��Ʈ�� �����ϰ� ��ƿ����� �ϰ�. �ڳװ� ������ �� �ִ� �����Ʒú��� ������ �����غ���.",7,"�����Ʒú� 30��",8,"�����Ʒú� 60��",9,"�����Ʒú� 90��"

elseif req == 7 then
	SetSwitchCount(cnum, 724, 30)
	StartQuest(cnum, 224)
	return 1,0, "<�����Ʒú� 30��>@@���� '��ٶ� ����'�� '���ݸ�' �� �� ���� 1��Ʈ�� �ϳ��� �����Ʒú��� ���� �� ������, 30���� '���� 30���� �� 60����' ��ƿ��� �ȴٳ�. �׷� ���� ��ٸ����ְڳ�."

elseif req == 8 then
	SetSwitchCount(cnum, 724, 60)
	StartQuest(cnum, 225)
	return 1,0, "<�����Ʒú� 60��>@@���� '��ٶ� ����'�� '���ݸ�' �� �� ���� 1��Ʈ�� �ϳ��� �����Ʒú��� ���� �� ������, 60���� ���� '60���� �� 120����' ��ƿ��� �ȴٳ�. �׷� ���� ��ٸ����ְڳ�."

elseif req == 9 then
	SetSwitchCount(cnum, 724, 90)
	StartQuest(cnum, 226)
	return 1,0, "<�����Ʒú� 90��>@@���� '��ٶ� ����'�� '���ݸ�' �� �� ���� 1��Ʈ�� �ϳ��� �����Ʒú��� ���� �� ������, 90���� ���� '90���� �� 180����' ��ƿ��� �ȴٳ�. �׷� ���� ��ٸ����ְڳ�."

elseif req == 10 then
	SetSwitchCount(cnum, 727,1)
	return 4,0, "������ �����ذͰ� �����ϴ� ����� �� �˰� �ְ���? �����Ʒú��� ���� ����� '��ٶ� ����'�� '���ݸ�' �� �� ���� 1��Ʈ�� �ϳ��� �����Ʒú��� ���� �� �ִٳ�. �ڳװ� ������ �� �ִ� �����Ʒú��� ������ �����غ���.",7,"�����Ʒú� 30��",8,"�����Ʒú� 60��",9,"�����Ʒú� 90��"

elseif req == 11 then	--�����ε��� ��ũ�ޱ�
	return 2,0, "������ ���̸� �����Ͽ� �����ձ����� ���� ��ũ���. �Ϲ� ��ũ�ʹ� ������� ���� �ٸ��� ������ ���ٸ��ɼ�. �� ��ũ�� �� �̼��� �� �ϼ��ϸ� �ֵ��� ����.@@(����ŷ�̳� �������� ���� �̼� �Ϸ� �� �Ʒ��忡�� �������� �̺�Ʈ���� �Ϸ��� �ڿ� ŷ,�� npc�� ��ȭ�ؾ߸� ���� �� �ֽ��ϴ�.)",12,"������ ��ũ�� �ּ���"








elseif req == 12 then

	if GetRemainPocket(cnum) < 1 then
	return 1,0, "�κ��丮�� �� ���� ������ ��ũ�� �� �� ����������.. ��������� �ϰ�."
	else
		if GetSwitchCount(cnum, 724) == 30 then
			if GetSwitchCount(cnum, 732) < 1 then
				if GetSwitchCount(cnum, 727) == 3 then
				AddItemCount(cnum, 8905,1)
				SetSwitchCount(cnum, 724, 1) -- ����ŷ�� �̼� �Ϸ� (����)
				SetSwitchCount(cnum, 732, 1) --��ũ����
				SetSwitchCount(cnum, 727, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
				return 1,0, "������ ��ũ(30��)���. �� ����ϵ��� �ϰ�."
				else
				return 1,0, "0"
				end
			else
			SetSwitchCount(cnum, 724,1)
			SetSwitchCount(cnum, 727, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
			return 1,0, "������ ��ũ�� �̼Ǵ� 1������ ���� �� �ִٳ�..@@(��ũ�� ����ŷ�� 30�� ����, 60,90 �̷��� �� 3��, �׸��� �������� 30�� ����, 60,90 �̷��� ���� 6���� ȹ���� �� �ֽ��ϴ�.)"
			end

		elseif GetSwitchCount(cnum, 724) == 60 then
			if GetSwitchCount(cnum, 733) < 1 then
				if GetSwitchCount(cnum, 727) == 3 then
				AddItemCount(cnum, 8906,1)
				SetSwitchCount(cnum, 724, 1)
				SetSwitchCount(cnum, 733, 1) --��ũ����
				SetSwitchCount(cnum, 727, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
				return 1,0, "������ ��ũ(60��)���. �� ����ϵ��� �ϰ�."
				else
				return 1,0, "1"
				end
			else
			SetSwitchCount(cnum, 724,1)
			SetSwitchCount(cnum, 727, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
			return 1,0, "������ ��ũ�� �̼Ǵ� 1������ ���� �� �ִٳ�..@@(��ũ�� ����ŷ�� 30�� ����, 60,90 �̷��� �� 3��, �׸��� �������� 30�� ����, 60,90 �̷��� ���� 6���� ȹ���� �� �ֽ��ϴ�.)"
			end

		elseif GetSwitchCount(cnum, 724) == 90 then
			if GetSwitchCount(cnum, 734) < 1 then
				if GetSwitchCount(cnum, 727) == 3 then
				AddItemCount(cnum, 8907,1)
				SetSwitchCount(cnum, 724, 1)
				SetSwitchCount(cnum, 734, 1) --��ũ����
				SetSwitchCount(cnum, 727, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
				return 1,0, "������ ��ũ(90��)���. �� ����ϵ��� �ϰ�."
				else
				return 1,0, "2"
				end
			else
			SetSwitchCount(cnum, 724,1)
			SetSwitchCount(cnum, 727, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
			return 1,0, "������ ��ũ�� �̼Ǵ� 1������ ���� �� �ִٳ�..@@(��ũ�� ����ŷ�� 30�� ����, 60,90 �̷��� �� 3��, �׸��� �������� 30�� ����, 60,90 �̷��� ���� 6���� ȹ���� �� �ֽ��ϴ�.)"
			end
		else
		return 1,0, "������ ��ũ�� �־��� �̼��� ��� �ذ��� �ڿ� ���� �� �ֽ��ϴ�. @@(����ŷ�̳� �������� �̼��� Ŭ���� ��, �Ʒ��� �̼Ǳ��� �Ϸ��� �ڿ� �ش� npc���� ���� �ɾ�߸� ���� �� �ֽ��ϴ�.)"
		end
	end

	end
end










function NPC_QUEST_1600(cnum, reqNumber) --������Ÿ ������ [2011 �����ε��� �̺�Ʈ - ���������� ���]
req = reqNumber
Lv = GetHeroLv(cnum)
	if req == 1 then

		if GetSwitchCount(cnum, 724) > 1 then --����ŷ �����ְ� ���� ���,
		return 1,0, "����ŷ�� �����ְ� �����鼭 ��� �� �����ֽó���?@@(����ŷ�� ���� ���߿��� �������� ���� �� �����ϴ�.)"
		elseif GetSwitchCount(cnum, 725) < 1 then
		return 3,0, "���� �����ձ��� ����, �������Դϴ�. �� ���߱����� �ְ��� �� �� ���� ������ ��ø�ϸ� �Ƹ��ٿ� �Ʒú����� ������ ������. ������..",5,"��������, �Ȼ��� �� ���ƺ�����.",11,"[������ ��ũ �ޱ�]"


		elseif GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then --�ٸ� �̼� �����߿� �̵��� ���� ��쿡�� ����! (�ȱ׷��� ��������)
			if GetSwitchCount(cnum, 726) == 3 then
			return 2,0, "���߸�Ÿ �Ʒ����� �� �ٳ���̳���? ������ ������ ������ �ϳ� �� �غ��ߴ�ϴ�.",12,"[������ ��ũ�ޱ�]"

			elseif GetSwitchCount(cnum, 725) < 2 or GetSwitchCount(cnum, 724) < 2 then
			return 2,0, "���� �����ձ��� ����, �������Դϴ�. �� ���߱����� �ְ��� �� �� ���� ������ ��ø�ϸ� �Ƹ��ٿ� �Ʒú����� ������ ������.",3,"���߸�Ÿ �Ʒ������� �̵�~!"
			else
			return 1,0, "�̼��� ���� ������ �ʾұ���. �Ϸ��� �� �ٽ� ã�ƿ��ּ���. @@(�������� �̼��� �������̰ų�, ����ŷ�� ���� ���߿��� ���߸�Ÿ �Ʒ������� �̵��� �� �����ϴ�."
			end
		elseif GetSwitchCount(cnum, 725) > 1 then

			if GetSwitchCount(cnum, 725) == 30 then
				if GetItemCount(cnum, 8869,0) < 30 or GetItemCount(cnum, 8870,0) < 30 then
					return 1,0, "�����Ʒú��� ���� �غ� �� �Ǿ��ֱ���? '��ٶ� ����'�� '�������ݸ�'�� 30������ �ʿ��մϴ�.@@(�Ʒ��� �� ���� �Ʒú��� ��ȭ ���� ����� �Ҹ� ��, �ٽ� �� �� ������ �̼��� �Ϸ��ؾ� �մϴ�.)"

				elseif GetSwitchCount(cnum, 726) == 2 then --�����Ʒú����� '�������� ������Ÿ��' ���� 100�� �̺�Ʈ ��������
					SetSwitchCount(cnum, 726,1)
					return 1,0, "(�����Ʒú�:ģ������ �;��~ ����!!)@@�� ���� �����Ʒú���� �̾߱⸦ �����̳���?@@(����ŷ�̳� ���������� �ٽ� ���� �ɾ�߸� ó������ �̼��� ������ �� �ֽ��ϴ�.)"

				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					elseif GetSwitchCount(cnum, 728) == 1 then
						AddItemCount(cnum, 8869,-30)
						AddItemCount(cnum, 8870,-30)
						AddItemCount(cnum, 8863,1)
						EndQuest(cnum, 227)
						return 2,0, "�� ��ƿ��̱���? �� ������ ����ŷ�� �����Ʒú��� �پ���� �� �ְڳ׿�. �����ϼ̽��ϴ�.@@�� ������ ǥ���Դϴ�. ����δ��� 30�� ���� ���߸�Ÿ �Ʒ����� �̿��� �� �ֽ��ϴ�. �ٷ� ���ðھ��?@[���߸�Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"���߸�Ÿ �Ʒ������� �̵�~!"

					else
						AddItemCount(cnum, 8869,-30)
						AddItemCount(cnum, 8870,-30)
						AddItemCount(cnum, 8863,1)
						AddItemCount(cnum, 8872,5)
						SetSwitchCount(cnum, 729, 1)
						EndQuest(cnum, 227)
						return 2,0, "�� ��ƿ��̱���? �� ������ ����ŷ�� �����Ʒú��� �پ���� �� �ְڳ׿�. �����ϼ̽��ϴ�.@@�� ������ ǥ���Դϴ�. ����δ��� 30�� ���� ���߸�Ÿ �Ʒ����� �̿��� �� �ֽ��ϴ�. �ٷ� ���ðھ��?@[�������� ������ 5��, ���߸�Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"���߸�Ÿ �Ʒ������� �̵�~!"
					end
				end

			elseif GetSwitchCount(cnum, 725) == 60 then
				if GetItemCount(cnum, 8869,0) < 60 or GetItemCount(cnum, 8870,0) < 60 then
					return 1,0, "�����Ʒú��� ���� �غ� �� �Ǿ��ֱ���? '��ٶ� ����'�� '�������ݸ�'�� 60������ �ʿ��մϴ�.@@(�Ʒ��� �� ���� �Ʒú��� ��ȭ ���� ����� �Ҹ� ��, �ٽ� �� �� ������ �̼��� �Ϸ��ؾ� �մϴ�.)"

				elseif GetSwitchCount(cnum, 726) == 2 then --�����Ʒú����� '�������� ������Ÿ��' ���� 100�� �̺�Ʈ ��������
					SetSwitchCount(cnum, 726,1)
					return 1,0, "(�����Ʒú�:ģ������ �;��~ ����!!)@@�� ���� �����Ʒú���� �̾߱⸦ �����̳���?@@(����ŷ�̳� ���������� �ٽ� ���� �ɾ�߸� ó������ �̼��� ������ �� �ֽ��ϴ�.)"

				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					elseif GetSwitchCount(cnum, 729) == 2 then
						AddItemCount(cnum, 8869,-60)
						AddItemCount(cnum, 8870,-60)
						AddItemCount(cnum, 8864,1)
						EndQuest(cnum, 228)
						return 2,0, "�� ��ƿ��̱���? �� ������ ����ŷ�� �����Ʒú��� �پ���� �� �ְڳ׿�. �����ϼ̽��ϴ�.@@�� ������ ǥ���Դϴ�. ����δ��� 60�� ���� ���߸�Ÿ �Ʒ����� �̿��� �� �ֽ��ϴ�. �ٷ� ���ðھ��?@[���߸�Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"���߸�Ÿ �Ʒ������� �̵�~!"

					else
						AddItemCount(cnum, 8869,-60)
						AddItemCount(cnum, 8870,-60)
						AddItemCount(cnum, 8864,1)
						AddItemCount(cnum, 8872,10)
						SetSwitchCount(cnum, 729, 2)
						EndQuest(cnum, 228)
						return 2,0, "�� ��ƿ��̱���? �� ������ ����ŷ�� �����Ʒú��� �پ���� �� �ְڳ׿�. �����ϼ̽��ϴ�.@@�� ������ ǥ���Դϴ�. ����δ��� 60�� ���� ���߸�Ÿ �Ʒ����� �̿��� �� �ֽ��ϴ�. �ٷ� ���ðھ��?@[�������� ������ 10��, ���߸�Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"���߸�Ÿ �Ʒ������� �̵�~!"
					end
				end

			elseif GetSwitchCount(cnum, 725) == 90 then
				if GetItemCount(cnum, 8869,0) < 90 or GetItemCount(cnum, 8870,0) < 90 then
					return 1,0, "�����Ʒú��� ���� �غ� �� �Ǿ��ֱ���? '��ٶ� ����'�� '���ݸ�'�� 90������ �ʿ��մϴ�.@@(�Ʒ��� �� ���� �Ʒú��� ��ȭ ���� ����� �Ҹ� ��, �ٽ� �� �� ������ �̼��� �Ϸ��ؾ� �մϴ�.)"

				elseif GetSwitchCount(cnum, 726) == 2 then --�����Ʒú����� '�������� ������Ÿ��' ���� 100�� �̺�Ʈ ��������
					SetSwitchCount(cnum, 726,1)
					return 1,0, "(�����Ʒú�:ģ������ �;��~ ����!!)@@�� ���� �����Ʒú���� �̾߱⸦ �����̳���?@@(����ŷ�̳� ���������� �ٽ� ���� �ɾ�߸� ó������ �̼��� ������ �� �ֽ��ϴ�.)"
				else
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					elseif GetSwitchCount(cnum, 729) == 3 then
						AddItemCount(cnum, 8869,-90)
						AddItemCount(cnum, 8870,-90)
						AddItemCount(cnum, 8865,1)
						EndQuest(cnum, 229)
						return 2,0, "�� ��ƿ��̱���? �� ������ ����ŷ�� �����Ʒú��� �پ���� �� �ְڳ׿�. �����ϼ̽��ϴ�.@@�� ������ ǥ���Դϴ�. ����δ��� 90�� ���� ���߸�Ÿ �Ʒ����� �̿��� �� �ֽ��ϴ�. �ٷ� ���ðھ��?@[���߸�Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"���߸�Ÿ �Ʒ������� �̵�~!"

					else
						AddItemCount(cnum, 8869,-90)
						AddItemCount(cnum, 8870,-90)
						AddItemCount(cnum, 8865,1)
						AddItemCount(cnum, 8872,15)
						SetSwitchCount(cnum, 729, 3)
						EndQuest(cnum, 229)
						return 2,0, "�� ��ƿ��̱���? �� ������ ����ŷ�� �����Ʒú��� �پ���� �� �ְڳ׿�. �����ϼ̽��ϴ�.@@�� ������ ǥ���Դϴ�. ����δ��� 90�� ���� ���߸�Ÿ �Ʒ����� �̿��� �� �ֽ��ϴ�. �ٷ� ���ðھ��?@[�������� ������ 15��, ���߸�Ÿ �Ʒ��� ������� ȹ���Ͽ����ϴ�]",3,"���߸�Ÿ �Ʒ������� �̵�~!"
					end
				end
			else
			return 2,0, "���� �����ձ��� ����, �������Դϴ�. �� ���߱����� �ְ��� �� �� ���� ������ ��ø�ϸ� �Ƹ��ٿ� �Ʒú����� ������ ������.",11,"[�����ε��� ��ũ�ޱ�]"
			end
		else --GetSwitchCount(cnum, 725) == 1 then --�������� �̼��� �Ϸ��� �� ���������� ��ũ�� ȹ�� (�̼�����۱��п�)
			return 2,0, "�����༭ ������. ���п� �����Ʒú����� ��Ⱑ �ö󰬴�ϴ�. ������ ����ŷ ���� ������� ������ �ް� �־��. �����ٸ� �������� �� �ּ���.",10,"���� �������ϴ�."


		end





elseif req == 3 then
	if GetItemCount(cnum, 8863,0) < 1 and GetItemCount(cnum, 8864,0) < 1 and GetItemCount(cnum, 8865,0) < 1 then
		return 1,0, "���߸�Ÿ �Ʒ��� ������� �־�߸� ������ �� �ֽ��ϴ�.@@(����ŷ�� �������� ����� �̺�Ʈ�� ����������Դϴ�.@�������� ������� �̹� �ð��� �� �Ҹ�Ʊ� ������, �ٽ� �̼��� �Ϸ��Ͽ� ������� �޾ƾ� �մϴ�.)"
	else
		return 2,0, "�׷� ���� ���߱����� �Ʒ����, ���߸�Ÿ �Ʒ������� �ȳ��ص帮�ڽ��ϴ�.@@(�ð��� ������ ������� �Ҹ�ʰ� ���ÿ� ĳ���Ͱ� ���������� ������ �������� �ڵ� �̵��˴ϴ�.)",4,"[�̵�]"
	end


elseif req == 4 then

	if Lv < 41 then
	MoveZone(cnum,76,254) --76
	elseif Lv < 81 then
	MoveZone(cnum,77,254) --76
	elseif Lv < 121 then
	MoveZone(cnum,78,254) --76
	elseif Lv < 161 then
	MoveZone(cnum,79,254) --76
	elseif Lv <= 200 then
	MoveZone(cnum,80,254) --76

	else
		return 1,0, "�߸�ȵ�"
	end

elseif req == 5 then
	return 2,0, "�� ���߱����� �ְ��̿���.  �׷���, �� ����ϴ� ������ ����ŷ�� �� ���߱����� ���� ���� �����ϴٸ� Ʈ���� �������! �׷��� ���� ������ �־����... ������ ������ ������������ ����غ� �ϰ�����..",6,"���� ���͵帱 ���� �ֳ���?"

elseif req == 6 then
	return 4,0, "��������. ��ῡ�� �̱�� ���ؼ� ���簡 �������� ���ƿ�. �׷�, �����Ʒú��� ���� ����� '��ٶ� ����'�� '�������ݸ�'�� ����ּ���. �� �� ��ᰡ 1set�� �� ���縦 �����ϴ�. ����δ��� ������ �� �ִ� �����Ʒú��� ������ �������ּ���.",7,"�����Ʒú� 30��",8,"�����Ʒú� 60��",9,"�����Ʒú� 90��"

elseif req == 7 then
	SetSwitchCount(cnum, 725,30)
	StartQuest(cnum, 227)
	return 1,0, "<�����Ʒú� 30��>@@���� '��ٶ� ����'�� '�������ݸ�' �� �� ���� 1��Ʈ�� �ϳ��� �����Ʒú��� ���� �� ������, 30���� '���� 30���� �� 60����' ��ƿ��� �˴ϴ�."
elseif req == 8 then
	SetSwitchCount(cnum, 725,60)
	StartQuest(cnum, 228)
	return 1,0, "<�����Ʒú� 60��>@@���� '��ٶ� ����'�� '�������ݸ�' �� �� ���� 1��Ʈ�� �ϳ��� �����Ʒú��� ���� �� ������, 60���� ���� '60���� �� 120����' ��ƿ��� �˴ϴ�."


elseif req == 9 then
	SetSwitchCount(cnum, 725,90)
	StartQuest(cnum, 229)
	return 1,0, "<�����Ʒú� 90��>@@���� '��ٶ� ����'�� '�������ݸ�' �� �� ���� 1��Ʈ�� �ϳ��� �����Ʒú��� ���� �� ������, 90���� ���� '90���� �� 180����' ��ƿ��� �˴ϴ�."

elseif req == 10 then
	SetSwitchCount(cnum, 726,1)
	return 4,0, "�� �� �غ������� ����� �ƽð�����. '��ٶ� ����'�� '�������ݸ�' �� �� ���� 1��Ʈ�� �ϳ��� �����Ʒú��� ���� �� �ֽ��ϴ�. ����ֽ� ������ �������ּ���. ",7,"�����Ʒú� 30��",8,"�����Ʒú� 60��",9,"�����Ʒú� 90��"


elseif req == 11 then	--�����ε��� ��ũ�ޱ�
	return 2,0, "������ ���̸� �����Ͽ� �����ձ����� ���� ��ũ�Դϴ�. �Ϲ� ��ũ�� �޸� �� �� ȭ���ϴ�ϴ�. ���� ��¥�� ����. ���� �����ֽø� �� ��ũ�� �帮���� ����.@@(����ŷ�̳� �������� ���� �̼� �Ϸ� �� �Ʒ��忡�� �������� �̺�Ʈ���� �Ϸ��� �ڿ� ŷ,�� npc�� ��ȭ�ؾ߸� ���� �� �ֽ��ϴ�.)",12,"������ ��ũ�� �ּ���"








elseif req == 12 then

	if GetRemainPocket(cnum) < 1 then
	return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
	else
		if GetSwitchCount(cnum, 725) == 30 then
			if GetSwitchCount(cnum, 735) < 1 then
				if GetSwitchCount(cnum, 726) == 3 then
				AddItemCount(cnum, 8905,1)
				SetSwitchCount(cnum, 725, 1)
				SetSwitchCount(cnum, 735, 1)
				SetSwitchCount(cnum, 726, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
				return 1,0, "���� ������ ��ũ(30��)�̿���. �����ϰ� ����ϵ��� �ϼ���."
				else
				return 1,0, "0"
				end
			else
			SetSwitchCount(cnum, 725, 1)
			SetSwitchCount(cnum, 726, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
			return 1,0, "������ ��ũ�� �̼Ǵ� 1������ ���� �� �ֽ��ϴ�..@@(��ũ�� ����ŷ�� 30�� ����, 60,90 �̷��� �� 3��, �׸��� �������� 30�� ����, 60,90 �̷��� ���� 6���� ȹ���� �� �ֽ��ϴ�.)"
			end

		elseif GetSwitchCount(cnum, 725) == 60 then
			if GetSwitchCount(cnum, 736) < 1 then
				if GetSwitchCount(cnum, 726) == 3 then
				AddItemCount(cnum, 8906,1)
				SetSwitchCount(cnum, 725, 1)
				SetSwitchCount(cnum, 736, 1)
				SetSwitchCount(cnum, 726, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
				return 1,0, "���� ������ ��ũ(60��)�̿���. �����ϰ� ����ϵ��� �ϼ���."
				else
				return 1,0, "1"
				end
			else
			SetSwitchCount(cnum, 725, 1)
			SetSwitchCount(cnum, 726, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
			return 1,0, "������ ��ũ�� �̼Ǵ� 1������ ���� �� �ֽ��ϴ�..@@(��ũ�� ����ŷ�� 30�� ����, 60,90 �̷��� �� 3��, �׸��� �������� 30�� ����, 60,90 �̷��� ���� 6���� ȹ���� �� �ֽ��ϴ�.)"
			end

		elseif GetSwitchCount(cnum, 725) == 90 then
			if GetSwitchCount(cnum, 737) < 1 then
				if GetSwitchCount(cnum, 726) == 3 then
				AddItemCount(cnum, 8907,1)
				SetSwitchCount(cnum, 725, 1)
				SetSwitchCount(cnum, 737, 1) --��ũ����
				SetSwitchCount(cnum, 726, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
				return 1,0, "���� ������ ��ũ(90��)�̿���. �����ϰ� ����ϵ��� �ϼ���."
				else
				return 1,0, "2"
				end
			else
			SetSwitchCount(cnum, 725, 1)
			SetSwitchCount(cnum, 726, 4) --�����Ʒú��� �̼� �Ϸ� (��ø���)
			return 1,0, "������ ��ũ�� �̼Ǵ� 1������ ���� �� �ֽ��ϴ�..@@(��ũ�� ����ŷ�� 30�� ����, 60,90 �̷��� �� 3��, �׸��� �������� 30�� ����, 60,90 �̷��� ���� 6���� ȹ���� �� �ֽ��ϴ�.)"
			end
		else
		return 1,0, "������ ��ũ�� �־��� �̼��� ��� �ذ��� �ڿ� ���� �� �ֽ��ϴ�. @@(����ŷ�̳� �������� �̼��� Ŭ���� ��, �Ʒ��� �̼Ǳ��� �Ϸ��� �ڿ� �ش� npc���� ���� �ɾ�߸� ���� �� �ֽ��ϴ�.)"
		end
	end

	end
end



















function NPC_QUEST_1601(cnum, reqNumber) --���߸�Ÿ �Ʒ��� �� ������Ÿ �Ʒú�[2011 �����ε��� �̺�Ʈ - ���������� ���]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 726) < 2 then
		return 3,0, "����� �� ������ ����ΰ� �ƴѰ���?",2,"�� �ϰ� �輼��?",6,"������ ���ư�����"

		elseif GetSwitchCount(cnum, 726) == 3 or GetSwitchCount(cnum, 726) == 4 then --�̼ǿϷ�
			if GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then
			return 2,0, "���п� �� �� ��⸦ �� �� �ְ� �Ǿ����ϴ�. ������ �ó��� ���� �������� ������ ���̳���? ������ ���ư��÷��� ���� ���� �ɾ��ֽñ� �ٶ��ϴ�.@@(�������� �̼��� ���� �� �ش� ������� �Ҹ�Ǿ�� �� �̼��� �����մϴ�.)",7,"������ ���ư��ϴ�"
			else
		return 2,0, "���п� �� �� ��⸦ �� �� �ְ� �Ǿ����ϴ�. ��, ���߸�Ÿ �Ʒ����� �� �ѷ����̳���? �ð��� �ǽø� ������Ÿ �Ʒ��嵵 �ѷ����ñ� �ٶ��ϴ�.",7,"������ ���ư��ϴ�"
			end

		else
			if GetItemCount(cnum,8871,0) < 100 then
			return 1,0, "�������� ������Ÿ���� ������ ����@�մϴ�.100���� ��Ƽ� ������ �ּ���."
			else
				if GetSwitchCount(cnum, 725) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					else

					if random <= 2 then

					AddItemCount(cnum, 8871,-100)
					AddItemCount(cnum, 8873,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >2 and random <= 4 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8874,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					elseif random >4 and random <= 6 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8875,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >6 and random <= 8 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8876,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum,231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					elseif random >8 and random <= 10 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8877,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >10 and random <= 12 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8878,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >12 and random <= 14 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8879,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >14 and random <= 16 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8880,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					else
					return 1,0, "�߸�ȵ�..1"
					end
					end


				elseif GetSwitchCount(cnum, 725) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"
						else
						return 1,0, "�߸�ȵ�..2"
						end
					end



				elseif GetSwitchCount(cnum, 725) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,8880,2)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� �ձ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'Ȱ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��Ÿ�� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'õ���� �̽� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽��� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ȯ�� �ҿ뵹��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						else
							return 1,0, "�߸�ȵ�..3"
						end
					end
				else
					return 1,0, "�߸�ȵ�...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "���� ����ŷ���� �����Ͻô� ���������� �Ʒú��Դϴ�. �����Ʒú��� ģ������ ������ ����ŷ�� �������Բ��� ���̰� ���� �ʾƼ� �װ� ��Ƴ׿�.",3,"�׷����� ����..."


	elseif req == 3 then
		return 2,0, "���� ���������� �����Ͻô� ���߱����� �Ʒ����, �� ���߸�Ÿ �Ʒ����Դϴ�. ���� �� �Ƹ��ٿ� ��ȫ�� ������ ���� �� �� ����.��, �� ������ �Ʒ��ϴ� ���� �Ʒú����� ������! ���� ������ �ʳ���?@...............@........@�� �е�� ģ������ ������ ����ŷ�� ���������� ���̰� ���� �����ż� �ٰ����Ⱑ ����׿�..�̸� ��¼�� ����..",4,"��� �ϸ� �ǳ���?"


	elseif req == 4 then
		return 2,0, "���� ���� ���鵵 ������Ÿ�̸� �ϰ� ����? ���� ��ȫ���� �� ��.. ���� �̿��ؼ� ���� �ɰ� ������ �ٰ����Ⱑ ����׿�.",5,"�ð��ּ���!"

	elseif req == 5 then
	SetSwitchCount(cnum, 726,2)
	StartQuest(cnum, 231)
	return 1,0, "���߱����� �Ʒ��� �����ϰ� ���� ������, ������ �Ƹ��ٿ� '�������� ������Ÿ��'�� �ʿ��մϴ�. ��, ��Ȥ���� '�ó��� �ο� ������'�� �����⵵ �ϴ� ����ϸ鼭 �ٴ��� �� ���캸����."

	elseif req == 6 then
	return 2,0, "��ó�� ���߸�Ÿ �Ʒ��忡 ���̴µ� �� �� �ִٰ�����..?@@���� ���ư��ðھ��?@@(�ٽ� ���߸�Ÿ �Ʒ��忡 �����ϰ���� �������� ���߸�Ÿ �Ʒ��� ������� ������ ���������� ���� �ɸ� ������ �����մϴ�.)",7,"������ ���ư��ϴ�"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end




















function NPC_QUEST_1602(cnum, reqNumber) --���߸�Ÿ �Ʒ��� �� ������Ÿ �Ʒú�[2011 �����ε��� �̺�Ʈ - ���������� ���]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 726) < 2 then
		return 3,0, "����� �� ������ ����ΰ� �ƴѰ���?",2,"�� �ϰ� �輼��?",6,"������ ���ư�����"

		elseif GetSwitchCount(cnum, 726) == 3 or GetSwitchCount(cnum, 726) == 4 then --�̼ǿϷ�
			if GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then
			return 2,0, "���п� �� �� ��⸦ �� �� �ְ� �Ǿ����ϴ�. ������ �ó��� ���� �������� ������ ���̳���? ������ ���ư��÷��� ���� ���� �ɾ��ֽñ� �ٶ��ϴ�.@@(�������� �̼��� ���� �� �ش� ������� �Ҹ�Ǿ�� �� �̼��� �����մϴ�.)",7,"������ ���ư��ϴ�"
			else
		return 2,0, "���п� �� �� ��⸦ �� �� �ְ� �Ǿ����ϴ�. ��, ���߸�Ÿ �Ʒ����� �� �ѷ����̳���? �ð��� �ǽø� ������Ÿ �Ʒ��嵵 �ѷ����ñ� �ٶ��ϴ�.",7,"������ ���ư��ϴ�"
			end

		else
			if GetItemCount(cnum,8871,0) < 100 then
			return 1,0, "�������� ������Ÿ���� ������ ����@�մϴ�. 100���� ��Ƽ� ������ �ּ���."
			else
				if GetSwitchCount(cnum, 725) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					else

					if random <= 2 then

					AddItemCount(cnum, 8871,-100)
					AddItemCount(cnum, 8873,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >2 and random <= 4 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8874,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					elseif random >4 and random <= 6 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8875,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >6 and random <= 8 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8876,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum,231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					elseif random >8 and random <= 10 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8877,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >10 and random <= 12 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8878,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >12 and random <= 14 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8879,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >14 and random <= 16 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8880,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					else
					return 1,0, "�߸�ȵ�..1"
					end
					end


				elseif GetSwitchCount(cnum, 725) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"
						else
						return 1,0, "�߸�ȵ�..2"
						end
					end



				elseif GetSwitchCount(cnum, 725) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,8880,2)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� �ձ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'Ȱ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��Ÿ�� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'õ���� �̽� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽��� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ȯ�� �ҿ뵹��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						else
							return 1,0, "�߸�ȵ�..3"
						end
					end
				else
					return 1,0, "�߸�ȵ�...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "���� ����ŷ���� �����Ͻô� ���������� �Ʒú��Դϴ�. �����Ʒú��� ģ������ ������ ����ŷ�� �������Բ��� ���̰� ���� �ʾƼ� �װ� ��Ƴ׿�.",3,"�׷����� ����..."


	elseif req == 3 then
		return 2,0, "���� ���������� �����Ͻô� ���߱����� �Ʒ����, �� ���߸�Ÿ �Ʒ����Դϴ�. ���� �� �Ƹ��ٿ� ��ȫ�� ������ ���� �� �� ����.��, �� ������ �Ʒ��ϴ� ���� �Ʒú����� ������! ���� ������ �ʳ���?@...............@........@�� �е�� ģ������ ������ ����ŷ�� ���������� ���̰� ���� �����ż� �ٰ����Ⱑ ����׿�..�̸� ��¼�� ����..",4,"��� �ϸ� �ǳ���?"


	elseif req == 4 then
		return 2,0, "���� ���� ���鵵 ������Ÿ�̸� �ϰ� ����? ���� ��ȫ���� �� ��.. ���� �̿��ؼ� ���� �ɰ� ������ �ٰ����Ⱑ ����׿�.",5,"�ð��ּ���!"

	elseif req == 5 then
	SetSwitchCount(cnum, 726,2)
	StartQuest(cnum, 231)
	return 1,0, "���߱����� �Ʒ��� �����ϰ� ���� ������, ������ �Ƹ��ٿ� '�������� ������Ÿ��'�� �ʿ��մϴ�. ��, ��Ȥ���� '�ó��� �ο� ������'�� �����⵵ �ϴ� ����ϸ鼭 �ٴ��� �� ���캸����."

	elseif req == 6 then
	return 2,0, "��ó�� ���߸�Ÿ �Ʒ��忡 ���̴µ� �� �� �ִٰ�����..?@@���� ���ư��ðھ��?@@(�ٽ� ���߸�Ÿ �Ʒ��忡 �����ϰ���� �������� ���߸�Ÿ �Ʒ��� ������� ������ ���������� ���� �ɸ� ������ �����մϴ�.)",7,"������ ���ư��ϴ�"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end
















function NPC_QUEST_1603(cnum, reqNumber) --���߸�Ÿ �Ʒ��� �� ������Ÿ �Ʒú�[2011 �����ε��� �̺�Ʈ - ���������� ���]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 726) < 2 then
		return 3,0, "����� �� ������ ����ΰ� �ƴѰ���?",2,"�� �ϰ� �輼��?",6,"������ ���ư�����"

		elseif GetSwitchCount(cnum, 726) == 3 or GetSwitchCount(cnum, 726) == 4 then --�̼ǿϷ�
			if GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then
			return 2,0, "���п� �� �� ��⸦ �� �� �ְ� �Ǿ����ϴ�. ������ �ó��� ���� �������� ������ ���̳���? ������ ���ư��÷��� ���� ���� �ɾ��ֽñ� �ٶ��ϴ�.@@(�������� �̼��� ���� �� �ش� ������� �Ҹ�Ǿ�� �� �̼��� �����մϴ�.)",7,"������ ���ư��ϴ�"
			else
		return 2,0, "���п� �� �� ��⸦ �� �� �ְ� �Ǿ����ϴ�. ��, ���߸�Ÿ �Ʒ����� �� �ѷ����̳���? �ð��� �ǽø� ������Ÿ �Ʒ��嵵 �ѷ����ñ� �ٶ��ϴ�.",7,"������ ���ư��ϴ�"
			end

		else
			if GetItemCount(cnum,8871,0) < 100 then
			return 1,0, "�������� ������Ÿ���� ������ ����@�մϴ�. 100���� ��Ƽ� ������ �ּ���."
			else
				if GetSwitchCount(cnum, 725) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					else

					if random <= 2 then

					AddItemCount(cnum, 8871,-100)
					AddItemCount(cnum, 8873,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >2 and random <= 4 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8874,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					elseif random >4 and random <= 6 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8875,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >6 and random <= 8 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8876,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum,231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					elseif random >8 and random <= 10 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8877,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >10 and random <= 12 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8878,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >12 and random <= 14 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8879,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >14 and random <= 16 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8880,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					else
					return 1,0, "�߸�ȵ�..1"
					end
					end


				elseif GetSwitchCount(cnum, 725) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"
						else
						return 1,0, "�߸�ȵ�..2"
						end
					end



				elseif GetSwitchCount(cnum, 725) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,8880,2)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� �ձ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'Ȱ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��Ÿ�� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'õ���� �̽� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽��� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ȯ�� �ҿ뵹��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						else
							return 1,0, "�߸�ȵ�..3"
						end
					end
				else
					return 1,0, "�߸�ȵ�...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "���� ����ŷ���� �����Ͻô� ���������� �Ʒú��Դϴ�. �����Ʒú��� ģ������ ������ ����ŷ�� �������Բ��� ���̰� ���� �ʾƼ� �װ� ��Ƴ׿�.",3,"�׷����� ����..."


	elseif req == 3 then
		return 2,0, "���� ���������� �����Ͻô� ���߱����� �Ʒ����, �� ���߸�Ÿ �Ʒ����Դϴ�. ���� �� �Ƹ��ٿ� ��ȫ�� ������ ���� �� �� ����.��, �� ������ �Ʒ��ϴ� ���� �Ʒú����� ������! ���� ������ �ʳ���?@...............@........@�� �е�� ģ������ ������ ����ŷ�� ���������� ���̰� ���� �����ż� �ٰ����Ⱑ ����׿�..�̸� ��¼�� ����..",4,"��� �ϸ� �ǳ���?"


	elseif req == 4 then
		return 2,0, "���� ���� ���鵵 ������Ÿ�̸� �ϰ� ����? ���� ��ȫ���� �� ��.. ���� �̿��ؼ� ���� �ɰ� ������ �ٰ����Ⱑ ����׿�.",5,"�ð��ּ���!"

	elseif req == 5 then
	SetSwitchCount(cnum, 726,2)
	StartQuest(cnum, 231)
	return 1,0, "���߱����� �Ʒ��� �����ϰ� ���� ������, ������ �Ƹ��ٿ� '�������� ������Ÿ��'�� �ʿ��մϴ�. ��, ��Ȥ���� '�ó��� �ο� ������'�� �����⵵ �ϴ� ����ϸ鼭 �ٴ��� �� ���캸����."

	elseif req == 6 then
	return 2,0, "��ó�� ���߸�Ÿ �Ʒ��忡 ���̴µ� �� �� �ִٰ�����..?@@���� ���ư��ðھ��?@@(�ٽ� ���߸�Ÿ �Ʒ��忡 �����ϰ���� �������� ���߸�Ÿ �Ʒ��� ������� ������ ���������� ���� �ɸ� ������ �����մϴ�.)",7,"������ ���ư��ϴ�"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end














function NPC_QUEST_1604(cnum, reqNumber) --���߸�Ÿ �Ʒ��� �� ������Ÿ �Ʒú�[2011 �����ε��� �̺�Ʈ - ���������� ���]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 726) < 2 then
		return 3,0, "����� �� ������ ����ΰ� �ƴѰ���?",2,"�� �ϰ� �輼��?",6,"������ ���ư�����"

		elseif GetSwitchCount(cnum, 726) == 3 or GetSwitchCount(cnum, 726) == 4 then --�̼ǿϷ�
			if GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then
			return 2,0, "���п� �� �� ��⸦ �� �� �ְ� �Ǿ����ϴ�. ������ �ó��� ���� �������� ������ ���̳���? ������ ���ư��÷��� ���� ���� �ɾ��ֽñ� �ٶ��ϴ�.@@(�������� �̼��� ���� �� �ش� ������� �Ҹ�Ǿ�� �� �̼��� �����մϴ�.)",7,"������ ���ư��ϴ�"
			else
		return 2,0, "���п� �� �� ��⸦ �� �� �ְ� �Ǿ����ϴ�. ��, ���߸�Ÿ �Ʒ����� �� �ѷ����̳���? �ð��� �ǽø� ������Ÿ �Ʒ��嵵 �ѷ����ñ� �ٶ��ϴ�.",7,"������ ���ư��ϴ�"
			end

		else
			if GetItemCount(cnum,8871,0) < 100 then
			return 1,0, "�������� ������Ÿ���� ������ ����@�մϴ�. 100���� ��Ƽ� ������ �ּ���."
			else
				if GetSwitchCount(cnum, 725) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					else

					if random <= 2 then

					AddItemCount(cnum, 8871,-100)
					AddItemCount(cnum, 8873,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >2 and random <= 4 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8874,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					elseif random >4 and random <= 6 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8875,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >6 and random <= 8 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8876,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum,231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					elseif random >8 and random <= 10 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8877,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >10 and random <= 12 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8878,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >12 and random <= 14 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8879,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >14 and random <= 16 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8880,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					else
					return 1,0, "�߸�ȵ�..1"
					end
					end


				elseif GetSwitchCount(cnum, 725) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"
						else
						return 1,0, "�߸�ȵ�..2"
						end
					end



				elseif GetSwitchCount(cnum, 725) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,8880,2)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� �ձ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'Ȱ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��Ÿ�� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'õ���� �̽� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽��� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ȯ�� �ҿ뵹��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						else
							return 1,0, "�߸�ȵ�..3"
						end
					end
				else
					return 1,0, "�߸�ȵ�...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "���� ����ŷ���� �����Ͻô� ���������� �Ʒú��Դϴ�. �����Ʒú��� ģ������ ������ ����ŷ�� �������Բ��� ���̰� ���� �ʾƼ� �װ� ��Ƴ׿�.",3,"�׷����� ����..."


	elseif req == 3 then
		return 2,0, "���� ���������� �����Ͻô� ���߱����� �Ʒ����, �� ���߸�Ÿ �Ʒ����Դϴ�. ���� �� �Ƹ��ٿ� ��ȫ�� ������ ���� �� �� ����.��, �� ������ �Ʒ��ϴ� ���� �Ʒú����� ������! ���� ������ �ʳ���?@...............@........@�� �е�� ģ������ ������ ����ŷ�� ���������� ���̰� ���� �����ż� �ٰ����Ⱑ ����׿�..�̸� ��¼�� ����..",4,"��� �ϸ� �ǳ���?"


	elseif req == 4 then
		return 2,0, "���� ���� ���鵵 ������Ÿ�̸� �ϰ� ����? ���� ��ȫ���� �� ��.. ���� �̿��ؼ� ���� �ɰ� ������ �ٰ����Ⱑ ����׿�.",5,"�ð��ּ���!"

	elseif req == 5 then
	SetSwitchCount(cnum, 726,2)
	StartQuest(cnum, 231)
	return 1,0, "���߱����� �Ʒ��� �����ϰ� ���� ������, ������ �Ƹ��ٿ� '�������� ������Ÿ��'�� �ʿ��մϴ�. ��, ��Ȥ���� '�ó��� �ο� ������'�� �����⵵ �ϴ� ����ϸ鼭 �ٴ��� �� ���캸����."

	elseif req == 6 then
	return 2,0, "��ó�� ���߸�Ÿ �Ʒ��忡 ���̴µ� �� �� �ִٰ�����..?@@���� ���ư��ðھ��?@@(�ٽ� ���߸�Ÿ �Ʒ��忡 �����ϰ���� �������� ���߸�Ÿ �Ʒ��� ������� ������ ���������� ���� �ɸ� ������ �����մϴ�.)",7,"������ ���ư��ϴ�"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end











function NPC_QUEST_1605(cnum, reqNumber) --���߸�Ÿ �Ʒ��� �� ������Ÿ �Ʒú�[2011 �����ε��� �̺�Ʈ - ���������� ���]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 726) < 2 then
		return 3,0, "����� �� ������ ����ΰ� �ƴѰ���?",2,"�� �ϰ� �輼��?",6,"������ ���ư�����"

		elseif GetSwitchCount(cnum, 726) == 3 or GetSwitchCount(cnum, 726) == 4 then --�̼ǿϷ�
			if GetItemCount(cnum,8863,0) == 1 or GetItemCount(cnum, 8864,0) == 1 or GetItemCount(cnum, 8865,0) == 1 then
			return 2,0, "���п� �� �� ��⸦ �� �� �ְ� �Ǿ����ϴ�. ������ �ó��� ���� �������� ������ ���̳���? ������ ���ư��÷��� ���� ���� �ɾ��ֽñ� �ٶ��ϴ�.@@(�������� �̼��� ���� �� �ش� ������� �Ҹ�Ǿ�� �� �̼��� �����մϴ�.)",7,"������ ���ư��ϴ�"
			else
		return 2,0, "���п� �� �� ��⸦ �� �� �ְ� �Ǿ����ϴ�. ��, ���߸�Ÿ �Ʒ����� �� �ѷ����̳���? �ð��� �ǽø� ������Ÿ �Ʒ��嵵 �ѷ����ñ� �ٶ��ϴ�.",7,"������ ���ư��ϴ�"
			end

		else
			if GetItemCount(cnum,8871,0) < 100 then
			return 1,0, "�������� ������Ÿ���� ������ ����@�մϴ�. 100���� ��Ƽ� ������ �ּ���."
			else
				if GetSwitchCount(cnum, 725) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					else

					if random <= 2 then

					AddItemCount(cnum, 8871,-100)
					AddItemCount(cnum, 8873,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >2 and random <= 4 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8874,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					elseif random >4 and random <= 6 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8875,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >6 and random <= 8 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8876,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum,231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					elseif random >8 and random <= 10 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8877,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >10 and random <= 12 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8878,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >12 and random <= 14 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8879,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					elseif random >14 and random <= 16 then
					AddItemCount(cnum,8871,-100)
					AddItemCount(cnum,8880,1)
					SetSwitchCount(cnum,726,3)
					EndQuest(cnum, 231)
					return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

					else
					return 1,0, "�߸�ȵ�..1"
					end
					end


				elseif GetSwitchCount(cnum, 725) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum, 231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"
						else
						return 1,0, "�߸�ȵ�..2"
						end
					end



				elseif GetSwitchCount(cnum, 725) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,8880,2)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,230)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�Ǹ��� �ձ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'Ȱ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��Ÿ�� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'õ���� �̽� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'���� ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'�̽��� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8871,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,726,3)
						EndQuest(cnum,231)
							return 1,0, "����ּ̱���. �ϳ� ��������ٵ�, �����մϴ�. �̰� �� �����̴� �� ������ּ���.@@'��ȯ�� �ҿ뵹��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						else
							return 1,0, "�߸�ȵ�..3"
						end
					end
				else
					return 1,0, "�߸�ȵ�...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "���� ����ŷ���� �����Ͻô� ���������� �Ʒú��Դϴ�. �����Ʒú��� ģ������ ������ ����ŷ�� �������Բ��� ���̰� ���� �ʾƼ� �װ� ��Ƴ׿�.",3,"�׷����� ����..."


	elseif req == 3 then
		return 2,0, "���� ���������� �����Ͻô� ���߱����� �Ʒ����, �� ���߸�Ÿ �Ʒ����Դϴ�. ���� �� �Ƹ��ٿ� ��ȫ�� ������ ���� �� �� ����.��, �� ������ �Ʒ��ϴ� ���� �Ʒú����� ������! ���� ������ �ʳ���?@...............@........@�� �е�� ģ������ ������ ����ŷ�� ���������� ���̰� ���� �����ż� �ٰ����Ⱑ ����׿�..�̸� ��¼�� ����..",4,"��� �ϸ� �ǳ���?"


	elseif req == 4 then
		return 2,0, "���� ���� ���鵵 ������Ÿ�̸� �ϰ� ����? ���� ��ȫ���� �� ��.. ���� �̿��ؼ� ���� �ɰ� ������ �ٰ����Ⱑ ����׿�.",5,"�ð��ּ���!"

	elseif req == 5 then
	SetSwitchCount(cnum, 726,2)
	StartQuest(cnum, 231)
	return 1,0, "���߱����� �Ʒ��� �����ϰ� ���� ������, ������ �Ƹ��ٿ� '�������� ������Ÿ��'�� �ʿ��մϴ�. ��, ��Ȥ���� '�ó��� �ο� ������'�� �����⵵ �ϴ� ����ϸ鼭 �ٴ��� �� ���캸����."

	elseif req == 6 then
	return 2,0, "��ó�� ���߸�Ÿ �Ʒ��忡 ���̴µ� �� �� �ִٰ�����..?@@���� ���ư��ðھ��?@@(�ٽ� ���߸�Ÿ �Ʒ��忡 �����ϰ���� �������� ���߸�Ÿ �Ʒ��� ������� ������ ���������� ���� �ɸ� ������ �����մϴ�.)",7,"������ ���ư��ϴ�"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end














function NPC_QUEST_1606(cnum, reqNumber) --������Ÿ �Ʒ��� �� ���߸�Ÿ �Ʒú�[2011 �����ε��� �̺�Ʈ - ���������� ���]
req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 727) < 2 then
		return 3,0, "(�ұټұ�) ��ӳ�, �� ����̶�?",2,"�� �ϰ� �輼��?",6,"������ ���ư�����"

		elseif GetSwitchCount(cnum, 727) == 3 or GetSwitchCount(cnum, 727) == 4 then --�̼ǿϷ�
			if GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then
			return 2,0, "(�ұټұ�) ������ �����ּż� �����߽��ϴ�. ������ �ó��� ���� �������� ������ ���̳�������? �׷��� ���� �Ϸ� ���� ���� �ż̳���?@@(����ŷ�� �̼��� ���� �� �ش� ������� �Ҹ�Ǿ�� �� �̼��� �����մϴ�.)",7,"������ ���ư��ϴ�"
			else
			return 1,0, "�߸�ȵ�.2"
			end

		else
			if GetItemCount(cnum,8867,0) < 100 then
			return 1,0, "(�ұټұ�) ���� ������Ÿ���� ������ �����ؿ�! 100���� ��ƿ��ּ���!"
			else
				if GetSwitchCount(cnum, 724) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					else

					if random <= 2 then

						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					else
					return 1,0, "�߸�ȵ�..1"
					end
					end


				elseif GetSwitchCount(cnum, 724) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
							SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"
						else
						return 1,0, "�߸�ȵ�..2"
						end
					end



				elseif GetSwitchCount(cnum, 724) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@���� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� �ձ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'Ȱ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��Ÿ�� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'õ���� �̽� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽��� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ȯ�� �ҿ뵹��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						else
							return 1,0, "�߸�ȵ�..3"
						end
					end
				else
					return 1,0, "�߸�ȵ�...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "(�ұټұ�) ��! ��Ҹ� ���߼���! ���� ������Ÿ �Ʒú����� ������ �Ʒ����̴� �����ϸ� �ȵȴٱ���~",3,"�׷����� ����..."

	elseif req == 3 then
		return 2,0, "(�ұټұ�) ���� ������Ÿ �Ʒ����̿���. ����ŷ���� �����Ͻô� ���������� �Ʒ������. ��, �� ������ �Ʒ��ϴ� ���� �Ʒú����� ������! ���� ������ �ʳ���?@...............@........@�� �е�� ģ������ ������ ����ŷ�� ���������� ���̰� ���� �����ż� �ٰ����Ⱑ ����׿�..�̸� ��¼�� ����..",4,"��� �ϸ� �ǳ���?"

	elseif req == 4 then
		return 2,0, "(�ұټұ�) ��.. ���� �Ʒú����� ��¡�� �� ������......������ ������ �;��! ���� 100�� ������ �ǰڳ׿�!",5,"�ð��ּ���!"

	elseif req == 5 then
	SetSwitchCount(cnum, 727,2)
	StartQuest(cnum, 230)
	return 1,0, "������! ��...@@(�ұټұ�) �� ���� ���� �Ʒú��鿡�� �̾�������.. ������ '���� ������Ÿ��'�� '100��' ����ֽø� �ſ�. ��, ��Ȥ���� '�ó��� �ο� ������'�� �����⵵ �ϴ� ������ �ο��ּ���!"

	elseif req == 6 then
	return 2,0, "(�ұټұ�) �ƹ��͵� ���� �ʰ� ���ư��ڴ� �ǰ���? �ƽ��׿�..@�ٽ� ���ƿ��Ƕ����� ����ŷ�Կ��� ���� �ɸ� �� �ſ���. @@���� ���ư��ðھ��?",7,"������ ���ư��ϴ�"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end
















function NPC_QUEST_1607(cnum, reqNumber) --������Ÿ �Ʒ��� �� ���߸�Ÿ �Ʒú�[2011 �����ε��� �̺�Ʈ - ���������� ���]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 727) < 2 then
		return 3,0, "(�ұټұ�) ��ӳ�, �� ����̶�?",2,"�� �ϰ� �輼��?",6,"������ ���ư�����"

		elseif GetSwitchCount(cnum, 727) == 3 or GetSwitchCount(cnum, 727) == 4 then --�̼ǿϷ�
			if GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then
			return 2,0, "(�ұټұ�) ������ �����ּż� �����߽��ϴ�. ������ �ó��� ���� �������� ������ ���̳�������? �׷��� ���� �Ϸ� ���� ���� �ż̳���?@@(����ŷ�� �̼��� ���� �� �ش� ������� �Ҹ�Ǿ�� �� �̼��� �����մϴ�.)",7,"������ ���ư��ϴ�"
			else
			return 2,0, "(�ұټұ�) ������ �����ּż� �����߽��ϴ�. ���� �Ϸ� ���� ���� �ż̳���?@@(����ŷ�� �̼��� ��� �ϼ��� �� ������ϸ� �ش� �̼��� �ݺ��� �� �ֽ��ϴ�.)",7,"������ ���ư��ϴ�"
			end

		else
			if GetItemCount(cnum,8867,0) < 100 then
			return 1,0, "(�ұټұ�) ���� ������Ÿ���� ������ �����ؿ�! 100���� ��ƿ��ּ���!"
			else
				if GetSwitchCount(cnum, 724) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					else

					if random <= 2 then

						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					else
					return 1,0, "�߸�ȵ�..1"
					end
					end


				elseif GetSwitchCount(cnum, 724) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
							SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"
						else
						return 1,0, "�߸�ȵ�..2"
						end
					end


				elseif GetSwitchCount(cnum, 724) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� �ձ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'Ȱ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��Ÿ�� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'õ���� �̽� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽��� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ȯ�� �ҿ뵹��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						else
							return 1,0, "�߸�ȵ�..3"
						end
					end
				else
					return 1,0, "�߸�ȵ�...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "(�ұټұ�) ��! ��Ҹ� ���߼���! ���� ������Ÿ �Ʒú����� ������ �Ʒ����̴� �����ϸ� �ȵȴٱ���~",3,"�׷����� ����..."

	elseif req == 3 then
		return 2,0, "(�ұټұ�) ���� ������Ÿ �Ʒ����̿���. ����ŷ���� �����Ͻô� ���������� �Ʒ������. ��, �� ������ �Ʒ��ϴ� ���� �Ʒú����� ������! ���� ������ �ʳ���?@...............@........@�� �е�� ģ������ ������ ����ŷ�� ���������� ���̰� ���� �����ż� �ٰ����Ⱑ ����׿�..�̸� ��¼�� ����..",4,"��� �ϸ� �ǳ���?"

	elseif req == 4 then
		return 2,0, "(�ұټұ�) ��.. ���� �Ʒú����� ��¡�� �� ������......������ ������ �;��! ���� 100�� ������ �ǰڳ׿�!",5,"�ð��ּ���!"

	elseif req == 5 then
	SetSwitchCount(cnum, 727,2)
	StartQuest(cnum, 230)
	return 1,0, "������! ��...@@(�ұټұ�) �� ���� ���� �Ʒú��鿡�� �̾�������.. ������ '���� ������Ÿ��'�� '100��' ����ֽø� �ſ�. ��, ��Ȥ���� '�ó��� �ο� ������'�� �����⵵ �ϴ� ������ �ο��ּ���!"

	elseif req == 6 then
	return 2,0, "(�ұټұ�) �ƹ��͵� ���� �ʰ� ���ư��ڴ� �ǰ���? �ƽ��׿�..@�ٽ� ���ƿ��Ƕ����� ����ŷ�Կ��� ���� �ɸ� �� �ſ���. @@���� ���ư��ðھ��?",7,"������ ���ư��ϴ�"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end












function NPC_QUEST_1608(cnum, reqNumber) --������Ÿ �Ʒ��� �� ���߸�Ÿ �Ʒú�[2011 �����ε��� �̺�Ʈ - ���������� ���]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 727) < 2 then
		return 3,0, "(�ұټұ�) ��ӳ�, �� ����̶�?",2,"�� �ϰ� �輼��?",6,"������ ���ư�����"

		elseif GetSwitchCount(cnum, 727) == 3 or GetSwitchCount(cnum, 727) == 4 then --�̼ǿϷ�
			if GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then
			return 2,0, "(�ұټұ�) ������ �����ּż� �����߽��ϴ�. ������ �ó��� ���� �������� ������ ���̳�������? �׷��� ���� �Ϸ� ���� ���� �ż̳���?@@(����ŷ�� �̼��� ���� �� �ش� ������� �Ҹ�Ǿ�� �� �̼��� �����մϴ�.)",7,"������ ���ư��ϴ�"
			else
			return 2,0, "(�ұټұ�) ������ �����ּż� �����߽��ϴ�. ���� �Ϸ� ���� ���� �ż̳���?@@(����ŷ�� �̼��� ��� �ϼ��� �� ������ϸ� �ش� �̼��� �ݺ��� �� �ֽ��ϴ�.)",7,"������ ���ư��ϴ�"
			end

		else
			if GetItemCount(cnum,8867,0) < 100 then
			return 1,0, "(�ұټұ�) ���� ������Ÿ���� ������ �����ؿ�! 100���� ��ƿ��ּ���!"
			else
				if GetSwitchCount(cnum, 724) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					else

					if random <= 2 then

						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					else
					return 1,0, "�߸�ȵ�..1"
					end
					end


				elseif GetSwitchCount(cnum, 724) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
							SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"
						else
						return 1,0, "�߸�ȵ�..2"
						end
					end



				elseif GetSwitchCount(cnum, 724) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� �ձ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'Ȱ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��Ÿ�� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'õ���� �̽� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽��� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ȯ�� �ҿ뵹��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						else
							return 1,0, "�߸�ȵ�..3"
						end
					end
				else
					return 1,0, "�߸�ȵ�...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "(�ұټұ�) ��! ��Ҹ� ���߼���! ���� ������Ÿ �Ʒú����� ������ �Ʒ����̴� �����ϸ� �ȵȴٱ���~",3,"�׷����� ����..."

	elseif req == 3 then
		return 2,0, "(�ұټұ�) ���� ������Ÿ �Ʒ����̿���. ����ŷ���� �����Ͻô� ���������� �Ʒ������. ��, �� ������ �Ʒ��ϴ� ���� �Ʒú����� ������! ���� ������ �ʳ���?@...............@........@�� �е�� ģ������ ������ ����ŷ�� ���������� ���̰� ���� �����ż� �ٰ����Ⱑ ����׿�..�̸� ��¼�� ����..",4,"��� �ϸ� �ǳ���?"

	elseif req == 4 then
		return 2,0, "(�ұټұ�) ��.. ���� �Ʒú����� ��¡�� �� ������......������ ������ �;��! ���� 100�� ������ �ǰڳ׿�!",5,"�ð��ּ���!"

	elseif req == 5 then
	SetSwitchCount(cnum, 727,2)
	StartQuest(cnum, 230)
	return 1,0, "������! ��...@@(�ұټұ�) �� ���� ���� �Ʒú��鿡�� �̾�������.. ������ '���� ������Ÿ��'�� '100��' ����ֽø� �ſ�. ��, ��Ȥ���� '�ó��� �ο� ������'�� �����⵵ �ϴ� ������ �ο��ּ���!"

	elseif req == 6 then
	return 2,0, "(�ұټұ�) �ƹ��͵� ���� �ʰ� ���ư��ڴ� �ǰ���? �ƽ��׿�..@�ٽ� ���ƿ��Ƕ����� ����ŷ�Կ��� ���� �ɸ� �� �ſ���. @@���� ���ư��ðھ��?",7,"������ ���ư��ϴ�"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end














function NPC_QUEST_1609(cnum, reqNumber) --������Ÿ �Ʒ��� �� ���߸�Ÿ �Ʒú�[2011 �����ε��� �̺�Ʈ - ���������� ���]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 727) < 2 then
		return 3,0, "(�ұټұ�) ��ӳ�, �� ����̶�?",2,"�� �ϰ� �輼��?",6,"������ ���ư�����"

		elseif GetSwitchCount(cnum, 727) == 3 or GetSwitchCount(cnum, 727) == 4 then --�̼ǿϷ�
			if GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then
			return 2,0, "(�ұټұ�) ������ �����ּż� �����߽��ϴ�. ������ �ó��� ���� �������� ������ ���̳�������? �׷��� ���� �Ϸ� ���� ���� �ż̳���?@@(����ŷ�� �̼��� ���� �� �ش� ������� �Ҹ�Ǿ�� �� �̼��� �����մϴ�.)",7,"������ ���ư��ϴ�"
			else
			return 2,0, "(�ұټұ�) ������ �����ּż� �����߽��ϴ�. ���� �Ϸ� ���� ���� �ż̳���?@@(����ŷ�� �̼��� ��� �ϼ��� �� ������ϸ� �ش� �̼��� �ݺ��� �� �ֽ��ϴ�.)",7,"������ ���ư��ϴ�"
			end

		else
			if GetItemCount(cnum,8867,0) < 100 then
			return 1,0, "(�ұټұ�) ���� ������Ÿ���� ������ �����ؿ�! 100���� ��ƿ��ּ���!"
			else
				if GetSwitchCount(cnum, 724) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					else

					if random <= 2 then

						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					else
					return 1,0, "�߸�ȵ�..1"
					end
					end


				elseif GetSwitchCount(cnum, 724) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
							SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"
						else
						return 1,0, "�߸�ȵ�..2"
						end
					end

				elseif GetSwitchCount(cnum, 724) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� �ձ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'Ȱ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��Ÿ�� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'õ���� �̽� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽��� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ȯ�� �ҿ뵹��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						else
							return 1,0, "�߸�ȵ�..3"
						end
					end
				else
					return 1,0, "�߸�ȵ�...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "(�ұټұ�) ��! ��Ҹ� ���߼���! ���� ������Ÿ �Ʒú����� ������ �Ʒ����̴� �����ϸ� �ȵȴٱ���~",3,"�׷����� ����..."

	elseif req == 3 then
		return 2,0, "(�ұټұ�) ���� ������Ÿ �Ʒ����̿���. ����ŷ���� �����Ͻô� ���������� �Ʒ������. ��, �� ������ �Ʒ��ϴ� ���� �Ʒú����� ������! ���� ������ �ʳ���?@...............@........@�� �е�� ģ������ ������ ����ŷ�� ���������� ���̰� ���� �����ż� �ٰ����Ⱑ ����׿�..�̸� ��¼�� ����..",4,"��� �ϸ� �ǳ���?"

	elseif req == 4 then
		return 2,0, "(�ұټұ�) ��.. ���� �Ʒú����� ��¡�� �� ������......������ ������ �;��! ���� 100�� ������ �ǰڳ׿�!",5,"�ð��ּ���!"

	elseif req == 5 then
	SetSwitchCount(cnum, 727,2)
	StartQuest(cnum, 230)
	return 1,0, "������! ��...@@(�ұټұ�) �� ���� ���� �Ʒú��鿡�� �̾�������.. ������ '���� ������Ÿ��'�� '100��' ����ֽø� �ſ�. ��, ��Ȥ���� '�ó��� �ο� ������'�� �����⵵ �ϴ� ������ �ο��ּ���!"

	elseif req == 6 then
	return 2,0, "(�ұټұ�) �ƹ��͵� ���� �ʰ� ���ư��ڴ� �ǰ���? �ƽ��׿�..@�ٽ� ���ƿ��Ƕ����� ����ŷ�Կ��� ���� �ɸ� �� �ſ���. @@���� ���ư��ðھ��?",7,"������ ���ư��ϴ�"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end

















function NPC_QUEST_1610(cnum, reqNumber) --������Ÿ �Ʒ��� �� ���߸�Ÿ �Ʒú�[2011 �����ε��� �̺�Ʈ - ���������� ���]

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 727) < 2 then
		return 3,0, "(�ұټұ�) ��ӳ�, �� ����̶�?",2,"�� �ϰ� �輼��?",6,"������ ���ư�����"

		elseif GetSwitchCount(cnum, 727) == 3 or GetSwitchCount(cnum, 727) == 4 then --�̼ǿϷ�
			if GetItemCount(cnum,8860,0) == 1 or GetItemCount(cnum, 8861,0) == 1 or GetItemCount(cnum, 8862,0) == 1 then
			return 2,0, "(�ұټұ�) ������ �����ּż� �����߽��ϴ�. ������ �ó��� ���� �������� ������ ���̳�������? �׷��� ���� �Ϸ� ���� ���� �ż̳���?@@(����ŷ�� �̼��� ���� �� �ش� ������� �Ҹ�Ǿ�� �� �̼��� �����մϴ�.)",7,"������ ���ư��ϴ�"
			else
			return 2,0, "(�ұټұ�) ������ �����ּż� �����߽��ϴ�. ���� �Ϸ� ���� ���� �ż̳���?@@(����ŷ�� �̼��� ��� �ϼ��� �� ������ϸ� �ش� �̼��� �ݺ��� �� �ֽ��ϴ�.)",7,"������ ���ư��ϴ�"
			end

		else
			if GetItemCount(cnum,8867,0) < 100 then
			return 1,0, "(�ұټұ�) ���� ������Ÿ���� ������ �����ؿ�! 100���� ��ƿ��ּ���!"
			else
				if GetSwitchCount(cnum, 724) == 30 then
					random = SetRandom(cnum, 0, 16)
					if GetRemainPocket(cnum) < 1 then
					return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
					else

					if random <= 2 then

						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


					else
					return 1,0, "�߸�ȵ�..1"
					end
					end


				elseif GetSwitchCount(cnum, 724) == 60 then
				random = SetRandom(cnum, 0, 32)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
							SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum, 230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"
						else
						return 1,0, "�߸�ȵ�..2"
						end
					end



				elseif GetSwitchCount(cnum, 724) == 90 then
					random = SetRandom(cnum, 0, 48)
					if GetRemainPocket(cnum) < 1 then
						if GetRemainPocket(cnum) < 1 then
						return 1,0, "�̷�, ������ �ʹ� ���̱���. ������ �帮�� �ߴµ� �̷��� �帱 �� �����."
						end
					else
						if random <= 2 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8873,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�巡���� ���(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >2 and random <= 4 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8874,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >4 and random <= 6 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8875,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ī�ο� �̻�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >6 and random <= 8 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8876,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"

						elseif random >8 and random <= 10 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8877,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >10 and random <= 12 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8878,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ��������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >12 and random <= 14 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8879,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� �ݼ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >14 and random <= 16 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8880,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽�ƽ �ϵ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >16 and random <= 18 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8881,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >18 and random <= 20 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8882,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� ��༭(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >20 and random <= 22 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8883,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ͼ��� �ɺ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >22 and random <= 24 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8884,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�ٶ��� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >24 and random <= 26 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8885,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >26 and random <= 28 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8886,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'������ ������(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >28 and random <= 30 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8887,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�������� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >30 and random <= 32 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8888,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'ȥ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >32 and random <= 34 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8889,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >34 and random <= 36 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8890,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�Ǹ��� �ձ�(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >36 and random <= 38 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8891,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'Ȱ���� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >38 and random <= 40 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8892,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��Ÿ�� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >40 and random <= 42 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8893,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'õ���� �̽� ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >42 and random <= 44 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8894,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'���� ������ ����(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"



						elseif random >44 and random <= 46 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8895,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'�̽��� ��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						elseif random >46 and random <= 48 then
						AddItemCount(cnum,8867,-100)
						AddItemCount(cnum,8896,1)
						SetSwitchCount(cnum,727,3)
						EndQuest(cnum,230)
							return 1,0, "��!!! ������!!@@(�ұټұ�) �̰� �����ִ� �ΰ�� �ѹ� ģ���������� ����ؾ߰ڳ׿�. ���� ������. �̰� �� ������ ǥ�ö��ϴ�.@@'��ȯ�� �ҿ뵹��(�̺�Ʈ)�� ȹ���Ͽ����ϴ�.'"


						else
							return 1,0, "�߸�ȵ�..3"
						end
					end
				else
					return 1,0, "�߸�ȵ�...4"
				end
			end
		end


	elseif req == 2 then
		return 2,0, "(�ұټұ�) ��! ��Ҹ� ���߼���! ���� ������Ÿ �Ʒú����� ������ �Ʒ����̴� �����ϸ� �ȵȴٱ���~",3,"�׷����� ����..."

	elseif req == 3 then
		return 2,0, "(�ұټұ�) ���� ������Ÿ �Ʒ����̿���. ����ŷ���� �����Ͻô� ���������� �Ʒ������. ��, �� ������ �Ʒ��ϴ� ���� �Ʒú����� ������! ���� ������ �ʳ���?@...............@........@�� �е�� ģ������ ������ ����ŷ�� ���������� ���̰� ���� �����ż� �ٰ����Ⱑ ����׿�..�̸� ��¼�� ����..",4,"��� �ϸ� �ǳ���?"

	elseif req == 4 then
		return 2,0, "(�ұټұ�) ��.. ���� �Ʒú����� ��¡�� �� ������......������ ������ �;��! ���� 100�� ������ �ǰڳ׿�!",5,"�ð��ּ���!"

	elseif req == 5 then
	SetSwitchCount(cnum, 727,2)
	StartQuest(cnum, 230)
	return 1,0, "������! ��...@@(�ұټұ�) �� ���� ���� �Ʒú��鿡�� �̾�������.. ������ '���� ������Ÿ��'�� '100��' ����ֽø� �ſ�. ��, ��Ȥ���� '�ó��� �ο� ������'�� �����⵵ �ϴ� ������ �ο��ּ���!"

	elseif req == 6 then
	return 2,0, "(�ұټұ�) �ƹ��͵� ���� �ʰ� ���ư��ڴ� �ǰ���? �ƽ��׿�..@�ٽ� ���ƿ��Ƕ����� ����ŷ�Կ��� ���� �ɸ� �� �ſ���. @@���� ���ư��ðھ��?",7,"������ ���ư��ϴ�"

	elseif req == 7 then

		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
		ZoneLayer = GetReviveLayer(ZoneIdx)
		MoveZone(cnum, ZoneIdx,ZoneLayer)
		end

	end
end



