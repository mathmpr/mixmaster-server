function NPC_QUEST_1577(cnum, reqNumber) -- iMBC�̺���(2011. 8. 2) /8�� iMBC �ܵ� �̺�Ʈ ��ȹ��(�������� ���! iMBC ȸ���Բ� ������ ��ġ ��ȯ���� ���ϴ�!!)

req = reqNumber


	if req == 1 then

		if GetSwitchCount(cnum, 681) > 4 then
	    	return 1,0,"�ȳ�! ������ ��ġ�� �� �޾Ƽ�@Ű��� �ִ�? Ȥ�� ��������@������ ��ġ�� ���� ���ߴٸ�@@������Ÿ��@[��ġ������][X:150 Y:40]�� ã�ư���!"
	  end


-------------------------------------------------------------- ����Ʈ ���� �� �� ��ȭ ��
		if GetSwitchCount(cnum, 681) == 1 then
			return 2,0,"���! ���ƿԱ���?@@[������ ���] 30��@[���� �Ӹ���] 20��@[ū �Ӹ���] 10��@@���ؿԴ�?@�����, �� �����۵��� �巡�� �迭@���͵��� ��ٺ��� ���� �� �־�!",60,"��!",100,"�ƴ� ����!"
		elseif  GetSwitchCount(cnum, 681) == 2 then
			return 2,0,"���! ���ƿԱ���?@@[���� �θ�] 30��@[��� ����] 20��@[������ ����] 10��@@���ؿԴ�?@�����, �� �����۵��� �� �迭 ���͵��� ��ٺ��� ���� �� �־�!",60,"��!",100,"�ƴ� ����!"
		elseif  GetSwitchCount(cnum, 681) == 3 then
			return 2,0,"���! ���ƿԱ���?@@[������ ��] 30��@[���� ����] 20��@[������ ����] 10��@@���ؿԴ�?@�����, �� �����۵��� ���� �迭 ���͵��� ��ٺ��� ���� �� �־�!",60,"��!",100,"�ƴ� ����!"
		elseif  GetSwitchCount(cnum, 681) == 4 then
			return 2,0,"���! ���ƿԱ���?@@[��ö ����] 30��@[���� ����] 20��@[���� ����] 10��@@���ؿԴ�?@�����, �� �����۵��� ��Ż �迭 ���͵��� ��ٺ��� ���� �� �־�!",60,"��!",100,"�ƴ� ����!"
		end
-------------------------------------------------------------- ����Ʈ ���� �� �� ��ȭ ��


-------------------------------------------------------------- ù ��ȭ ��
		if GetChanelName(cnum) == "IMBC" then
			return 3,0,"�ȳ�! �� imbc�� ���� �ͽ���������@����� ������ ����鿡�� [������ ��ġ]�� ���� �� �ִ� ��ȸ�� �ַ�����! ������ �� ������ ���ؿ��� [������ ��ġ ��ȯ��]�� �ٰ�!@@�? �غ��� ������?",2,"��!",100,"�ƴ� ���߿� �Ұ�!"
		else
			return 1,0,"�ȳ�! �� imbc�� ���� �ͽ���������@����� ������ �뷯����@������ �ְ� �־�~!"
		end
-------------------------------------------------------------- ù ��ȭ ��

-------------------------------------------------------------- ����Ʈ ���� �ź� ��
		elseif req == 100 then
			return 1,0,"�׷� ���߿� �ٽ� ��~! [������ ��ġ]�� ���� �� �ִ� ���� ��ȸ�ϱ�!"
-------------------------------------------------------------- ����Ʈ ���� �ź� ��



-------------------------------------------------------------- ������ ��ġ ���� ����
		elseif req == 2 then -- [������ ��ġ ���� ����]
			return 5,0,"��! ����! �켱 ������ ���� ������ ��ġ�� �������� ���� ��󺼷�?",10,"[ġġ][�巡�� �迭]",20,"[�޾�][�� �迭]",30,"[�̸�][���� �迭]",40,"[�ϳ�][��Ż �迭]"
-------------------------------------------------------------- ������ ��ġ ���� ����


-------------------------------------------------------------- ������ ������ ��ġ ������ ���� ����Ʈ ���� ���� �� ����Ʈ ���� ����
		elseif req == 10 then -- [�巡�� �迭[ġġ] ����]
				return 3,0,"�巡�� �迭�� [ġġ]�� �����߱���! ����! �׷� ��ƿ;��ϴ� ��������@[������ ���] 30��@[���� �Ӹ���] 20��@[ū �Ӹ���] 10��@@�巡�� �迭 ���͸� ��ٺ��� ���� �� �����ž�! �׷��� �� �����۵��� ���ؼ� �ٽ� ���ٷ�?",11,"��! �˾Ҿ�!",100,"�̾� ���߿� �Ұ�!"
		elseif req == 20 then -- [�� �迭[�޾�] ����]
				return 3,0,"�� �迭�� [�޾�]�� �����߱���! ����! �׷� ��ƿ;��ϴ� ��������@[���� �θ�] 30��@[��� ����] 20��@[������ ����] 10��@@�� �迭 ���͸� ��ٺ��� ���� �� �����ž�! �׷��� �� �����۵��� ���ؼ� �ٽ� ���ٷ�?",21,"��! �˾Ҿ�!",100,"�̾� ���߿� �Ұ�!"
		elseif req == 30 then -- [���� �迭[�̸�] ����]
				return 3,0,"���� �迭�� [�̸�]�� �����߱���! ����! �׷� ��ƿ;��ϴ� ��������@[������ ��] 30��@[���� ����] 20��@[������ ����] 10��@@���� �迭 ���͸� ��ٺ��� ���� �� �����ž�! �׷��� �� �����۵��� ���ؼ� �ٽ� ���ٷ�?",31,"��! �˾Ҿ�!",100,"�̾� ���߿� �Ұ�!"
		elseif req == 40 then -- [��Ż �迭[�ϳ�] ����]
				return 3,0,"��Ż �迭�� [�ϳ�]�� �����߱���! ����! �׷� ��ƿ;��ϴ� ��������@[��ö ����] 30��@[���� ����] 20��@[���� ����] 10��@@��Ż �迭 ���͸� ��ٺ��� ���� �� �����ž�! �׷��� �� �����۵��� ���ؼ� �ٽ� ���ٷ�?",41,"��! �˾Ҿ�!",100,"�̾� ���߿� �Ұ�!"
				-------------------------------------------------------------- ������ ������ ��ġ ������ ���� ����Ʈ ���� ���� �� ����Ʈ ���� ����


-------------------------------------------------------------- ����Ʈ ����
		elseif req == 11 then -- [�巡�� �迭[ġġ] ����]
			SetSwitchCount(cnum, 681, 1)
				return 1,0,"��! ��ٸ���!"
		elseif req == 21 then -- [�� �迭[�޾�] ����]
			SetSwitchCount(cnum, 681, 2)
				return 1,0,"��! ��ٸ���!"
		elseif req == 31 then -- [���� �迭[�̸�] ����]
			SetSwitchCount(cnum, 681, 3)
				return 1,0,"��! ��ٸ���!"
		elseif req == 41 then -- [��Ż �迭[�ϳ�] ����]
			SetSwitchCount(cnum, 681, 4)
				return 1,0,"��! ��ٸ���!"
-------------------------------------------------------------- ����Ʈ ����


-------------------------------------------------------------- ����Ʈ �Ϸ� ���� �˻�
elseif req == 60 then
		if GetSwitchCount(cnum, 681) == 1 then
			if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
				return 2,0,"�� ���캼��? ����@@[������ ���] 30��@[���� �Ӹ���] 20��@[ū �Ӹ���] 10��@@��� ������ ���߱���?@�ٽ� �ѹ� ����� �ٷ�?",110,"��!"
			else
				return 6,0,"��~��ƿԱ���! �� �׷��� �װ� ���ϴ� [ġġ]�� ������ ����ٷ�?",12,"[LV 40][ġġ]",13,"[LV 60][ġġ]",14,"[LV 80][ġġ]",15,"[LV 100][ġġ]",16,"[LV 120][ġġ]"
			end

		elseif  GetSwitchCount(cnum, 681) == 2 then
			if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
				return 2,0,"�� ���캼��? ����@@[���� �θ�] 30��@[��� ����] 20��@[������ ����] 10��@@��� ������ ���߱���?@�ٽ� �ѹ� ����� �ٷ�?",110,"��!"
			else
				return 6,0,"��~��ƿԱ���! �� �׷��� �װ� ���ϴ� [�޾�]�� ������ ����ٷ�?",22,"[LV 40][�޾�]",23,"[LV 60][�޾�]",24,"[LV 80][�޾�]",25,"[LV 100][�޾�]",26,"[LV 120][�޾�]"
			end

		elseif  GetSwitchCount(cnum, 681) == 3 then
			if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
				return 2,0,"�� ���캼��? ����@@[������ ��] 30��@[���� ����] 20��@[������ ����] 10��@@��� ������ ���߱���?@�ٽ� �ѹ� ����� �ٷ�?",110,"��!"
			else
				return 6,0,"��~��ƿԱ���! �� �׷��� �װ� ���ϴ� [�̸�]�� ������ ����ٷ�?",32,"[LV 40][�̸�]",33,"[LV 60][�̸�]",34,"[LV 80][�̸�]",35,"[LV 100][�̸�]",36,"[LV 120][�̸�]"
			end

		elseif  GetSwitchCount(cnum, 681) == 4 then
			if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
				return 2,0,"�� ���캼��? ����@@[��ö ����] 30��@[���� ����] 20��@[���� ����] 10��@@��� ������ ���߱���?@�ٽ� �ѹ� ����� �ٷ�?",110,"��!"
			else
				return 6,0,"��~��ƿԱ���! �� �׷��� �װ� ���ϴ� [�ϳ�]�� ������ ����ٷ�?",42,"[LV 40][�ϳ�]",43,"[LV 60][�ϳ�]",44,"[LV 80][�ϳ�]",45,"[LV 100][�ϳ�]",46,"[LV 120][�ϳ�]"
			end
		end
-------------------------------------------------------------- ����Ʈ �Ϸ� ���� �˻�


-------------------------------------------------------------- ����Ʈ �Ϸ�[ġġ]
elseif req == 12 then
		if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
			return 2,0,"[������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� ���� ����?"
		else
			AddItemCount(cnum, 480, -30)
			AddItemCount(cnum, 481, -20)
			AddItemCount(cnum, 482, -10)

			AddItemCount(cnum, 8516, 1) -- ġġ��ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [ġġ ��ȯ��(LV.40)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 13 then
		if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
			return 2,0,"[������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� ���� ����?"
		else
			AddItemCount(cnum, 480, -30)
			AddItemCount(cnum, 481, -20)
			AddItemCount(cnum, 482, -10)

			AddItemCount(cnum, 8517, 1) -- ġġ��ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [ġġ ��ȯ��(LV.60)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 14 then
		if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
			return 2,0,"[������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� ���� ����?"
		else
			AddItemCount(cnum, 480, -30)
			AddItemCount(cnum, 481, -20)
			AddItemCount(cnum, 482, -10)

			AddItemCount(cnum, 8518, 1) -- ġġ��ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [ġġ ��ȯ��(LV.80)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 15 then
		if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
			return 2,0,"[������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� ���� ����?"
		else
			AddItemCount(cnum, 480, -30)
			AddItemCount(cnum, 481, -20)
			AddItemCount(cnum, 482, -10)

			AddItemCount(cnum, 8519, 1) -- ġġ��ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [ġġ ��ȯ��(LV.100)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 16 then
		if GetItemCount(cnum, 480, 0) < 30 or GetItemCount(cnum, 481, 0) < 20 or GetItemCount(cnum, 482, 0) < 10 then
			return 2,0,"[������ ���] 30��, [���� �Ӹ���] 20��, [ū �Ӹ���] 10���� ���� ����?"
		else
			AddItemCount(cnum, 480, -30)
			AddItemCount(cnum, 481, -20)
			AddItemCount(cnum, 482, -10)

			AddItemCount(cnum, 8520, 1) -- ġġ��ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [ġġ ��ȯ��(LV.120)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end
-------------------------------------------------------------- ����Ʈ �Ϸ�[ġġ]


-------------------------------------------------------------- ����Ʈ �Ϸ�[�޾�]
elseif req == 22 then
		if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
			return 2,0,"[���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 489, -30)
			AddItemCount(cnum, 490, -20)
			AddItemCount(cnum, 491, -10)

			AddItemCount(cnum, 8521, 1) -- �޾ޱ�ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�޾� ��ȯ��(LV.40)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 23 then
		if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
			return 2,0,"[���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 489, -30)
			AddItemCount(cnum, 490, -20)
			AddItemCount(cnum, 491, -10)

			AddItemCount(cnum, 8522, 1) -- �޾ޱ�ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�޾� ��ȯ��(LV.60)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 24 then
		if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
			return 2,0,"[���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 489, -30)
			AddItemCount(cnum, 490, -20)
			AddItemCount(cnum, 491, -10)

			AddItemCount(cnum, 8523, 1) -- �޾ޱ�ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�޾� ��ȯ��(LV.80)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 25 then
		if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
			return 2,0,"[���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 489, -30)
			AddItemCount(cnum, 490, -20)
			AddItemCount(cnum, 491, -10)

			AddItemCount(cnum, 8524, 1) -- �޾ޱ�ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�޾� ��ȯ��(LV.100)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 26 then
		if GetItemCount(cnum, 489, 0) < 30 or GetItemCount(cnum, 490, 0) < 20 or GetItemCount(cnum, 491, 0) < 10 then
			return 2,0,"[���� �θ�] 30��, [��� ����] 20��, [������ ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 489, -30)
			AddItemCount(cnum, 490, -20)
			AddItemCount(cnum, 491, -10)

			AddItemCount(cnum, 8525, 1) -- �޾ޱ�ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�޾� ��ȯ��(LV.120)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end
-------------------------------------------------------------- ����Ʈ �Ϸ�[�޾�]


-------------------------------------------------------------- ����Ʈ �Ϸ�[�̸�]
elseif req == 32 then
		if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
			return 2,0,"[������ ��] 30��, [���� ����] 20��, [������ ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 499, -30)
			AddItemCount(cnum, 500, -20)
			AddItemCount(cnum, 501, -10)

			AddItemCount(cnum, 8526, 1) -- �̸���ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�̸� ��ȯ��(LV.40)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 33 then
		if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
			return 2,0,"[������ ��] 30��, [���� ����] 20��, [������ ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 499, -30)
			AddItemCount(cnum, 500, -20)
			AddItemCount(cnum, 501, -10)

			AddItemCount(cnum, 8527, 1) -- �̸���ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�̸� ��ȯ��(LV.60)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 34 then
		if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
			return 2,0,"[������ ��] 30��, [���� ����] 20��, [������ ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 499, -30)
			AddItemCount(cnum, 500, -20)
			AddItemCount(cnum, 501, -10)

			AddItemCount(cnum, 8528, 1) -- �̸���ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�̸� ��ȯ��(LV.80)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 35 then
		if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
			return 2,0,"[������ ��] 30��, [���� ����] 20��, [������ ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 499, -30)
			AddItemCount(cnum, 500, -20)
			AddItemCount(cnum, 501, -10)

			AddItemCount(cnum, 8529, 1) -- �̸���ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�̸� ��ȯ��(LV.100)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 36 then
		if GetItemCount(cnum, 499, 0) < 30 or GetItemCount(cnum, 500, 0) < 20 or GetItemCount(cnum, 501, 0) < 10 then
			return 2,0,"[������ ��] 30��, [���� ����] 20��, [������ ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 499, -30)
			AddItemCount(cnum, 500, -20)
			AddItemCount(cnum, 501, -10)

			AddItemCount(cnum, 8530, 1) -- �̸���ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�̸� ��ȯ��(LV.120)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end
-------------------------------------------------------------- ����Ʈ �Ϸ�[�̸�]



-------------------------------------------------------------- ����Ʈ �Ϸ�[�ϳ�]
elseif req == 42 then
		if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
			return 2,0,"[��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 483, -30)
			AddItemCount(cnum, 484, -20)
			AddItemCount(cnum, 485, -10)

			AddItemCount(cnum, 8531, 1) -- �ϳ�ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�ϳ� ��ȯ��(LV.40)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 43 then
		if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
			return 2,0,"[��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 483, -30)
			AddItemCount(cnum, 484, -20)
			AddItemCount(cnum, 485, -10)

			AddItemCount(cnum, 8532, 1) -- �ϳ�ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�ϳ� ��ȯ��(LV.60)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 44 then
		if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
			return 2,0,"[��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 483, -30)
			AddItemCount(cnum, 484, -20)
			AddItemCount(cnum, 485, -10)

			AddItemCount(cnum, 8533, 1) -- �ϳ�ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�ϳ� ��ȯ��(LV.80)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 45 then
		if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
			return 2,0,"[��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 483, -30)
			AddItemCount(cnum, 484, -20)
			AddItemCount(cnum, 485, -10)

			AddItemCount(cnum, 8534, 1) -- �ϳ�ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�ϳ� ��ȯ��(LV.100)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end

elseif req == 46 then
		if GetItemCount(cnum, 483, 0) < 30 or GetItemCount(cnum, 484, 0) < 20 or GetItemCount(cnum, 485, 0) < 10 then
			return 2,0,"[��ö ����] 30��, [���� ����] 20��, [���� ����] 10���� ���� ����?"
		else
			AddItemCount(cnum, 483, -30)
			AddItemCount(cnum, 484, -20)
			AddItemCount(cnum, 485, -10)

			AddItemCount(cnum, 8535, 1) -- �ϳ�ȯ��
			SetSwitchCount(cnum, 681, 5) -- ����Ʈ ����
			return 1,0,"��~! ���� [�ϳ� ��ȯ��(LV.120)]�̾�! �̰� ������ [��ġ ������]���� ����!@@[��ġ ������]��@������Ÿ [X:150  Y:40]�� �־�!"
		end
-------------------------------------------------------------- ����Ʈ �Ϸ�[�ϳ�]



	end
end
