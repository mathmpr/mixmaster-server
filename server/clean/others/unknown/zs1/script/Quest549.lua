function NPC_QUEST_1049(cnum, reqNumber) -- �������(�ҷ����̺�Ʈ)

	req = reqNumber



	if req == 1 then

		if GetSwitchCount(cnum, 570) < 1 then -- ���� ����ġ
			return 2,0,"���ڸ� ���� ������ �峭�� ġ�ڴ�~! ",10,"���� ���µ���?"

		elseif GetSwitchCount(cnum, 570) == 1 then
			return 2,0,"�? ��ſ���? � ���ڸ� �� �������~! ������~",15,"���� ���� �����"

		elseif GetSwitchCount(cnum, 571) == 1 and GetSwitchCount(cnum, 572) < 1  then
				return 3,0,"���! ���� ���� ȣ�ڲ��� 50��, �Ҹ��� ���� 50���� ��ƿԳ�? ",25,"��~",30,"�ƴϿ�"

		elseif GetSwitchCount(cnum, 572) == 1 and GetItemCount(cnum, 8566, 0) > 49 and GetItemCount(cnum, 8567, 0) > 49 then
				return 2,0,"���� �� �� ���Ű��� ��Ḧ ��ư����� �Ծ�?@���� �ϳ��� ���������~! ��ٷ�~! ",25,"��~"

		elseif GetSwitchCount(cnum, 572) == 1 then
				return 1,0,"�? �������? �ٸ� ������ ���� ������� ��� ����~!"

		else
			return 1,0,"����!"

		end


	elseif req == 10 then
			return 2,0,"�׷� �峭�� ������~! ",11,"��!"

	elseif req == 11 then
		SetReturnTimer(cnum, 30, 237)
		AddSwitchCount(cnum, 570, 1)
		MoveZone(cnum, 237,254)



	elseif req == 15 then
		return 2,0,"��...��̾���..�ʵ� ���Ͱ��� ���� ����鿡�� �峭�� �ĺ��ڱ�@�? ",20,"���ƿ�"

	elseif req == 20 then
		SetSwitchCount(cnum, 571, 1)
		AddSwitchCount(cnum, 570, 1)
		return 1,0,"�켱 ���Ű����� ������ �ϴϱ� �ҷ��� ���̸� �¾� �Ÿ��� ���ĳ��� �������, ������, ����������� ��ƺ���� �׷��� ȣ�ڲ���, �Ҹ��� ���ʸ� ���� �� ���� �� �ΰ��� ���� 50���� ��ƿ��� ���� ���Ű����� ���������"

	elseif req == 25 then

		if GetItemCount(cnum, 8566, 0) < 50 or GetItemCount(cnum, 8567, 0) < 50 then
			return 1,0,"������ ������!"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@������� ���Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			return 2,0,"����! ���ݸ� ��ٷ�~!",35,"��"

		end

	elseif req == 30 then
		return 1,0,"�ð��� ����! ���� �峭ġ��������~!"


	elseif req == 35 then

		random = SetRandom(cnum,1,8)

		if random == 1 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8568,1) -- �Ʊ��۵��� ���Ű���
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"�����־�! �� ���� �װ� �԰� ���� ����鿡�� �峭�� �ĺ��ڱ�!"


		elseif random == 2 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8569,1) -- �޷մ� ���Ű���
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"�����־�! �� ���� �װ� �԰� ���� ����鿡�� �峭�� �ĺ��ڱ�!"

		elseif random == 3 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8570,1) -- �Ƿν�Ƽ ���Ű���
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"�����־�! �� ���� �װ� �԰� ���� ����鿡�� �峭�� �ĺ��ڱ�!"

		elseif random == 4 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8571,1) -- ���� ���Ű���
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"�����־�! �� ���� �װ� �԰� ���� ����鿡�� �峭�� �ĺ��ڱ�!"

		elseif random == 5 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8572,1) -- ������ ���Ű���
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"�����־�! �� ���� �װ� �԰� ���� ����鿡�� �峭�� �ĺ��ڱ�!"

		elseif random == 6 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8573,1) -- �������� ���Ű���
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"�����־�! �� ���� �װ� �԰� ���� ����鿡�� �峭�� �ĺ��ڱ�!"

		elseif random == 7 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8574,1) -- ������� ���Ű���
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"�����־�! �� ���� �װ� �԰� ���� ����鿡�� �峭�� �ĺ��ڱ�!"

		elseif random == 8 then
			AddItemCount(cnum,8566,-50)
			AddItemCount(cnum,8567,-50)
			AddItemCount(cnum,8575,1) -- ������ ���Ű���
			SetSwitchCount(cnum, 572, 1)
			return 1,0,"�����־�! �� ���� �װ� �԰� ���� ����鿡�� �峭�� �ĺ��ڱ�!"


		else
			return 1,0,"���� 2"

		end

	end

end
