function NPC_QUEST_1583(cnum, reqNumber) -- ������������ / �Ż� ����Ÿ��

	req = reqNumber

	money = 100000000
	money2 = 200000000
	money3 = 300000000
	money4 = 400000000
	money5 = 500000000

	charge = 1000000
	charge2 = 2000000
	charge3 = 3000000
	charge4 = 4000000
	charge5 = 5000000

	moneyaddcharge = 101000000
	moneyaddcharge2 = 202000000
	moneyaddcharge3 = 303000000
	moneyaddcharge4 = 404000000
	moneyaddcharge5 = 505000000

	chargerate = 1
	
	maxmoney = 4200000000

	if req == 1 then
		return 3,0,"Ǫ����! ����ʼ�!@���� �� �� �������������� GP�� ���Ƶ��ٴ� �ҽ��� ��� �� ���� ����Ÿ�Ķ�� �մϴٿ�!@@�ణ�� �����Ḹ �ް� [GP�� �ݱ���]@[�ݱ��� GP��] ��ȯ�ص帳�ϴٿ�!@@�̿��غ��ðڽ��ϱ��?",2,"[GP]�� [�ݱ�]�� ��ȯ",3,"[�ݱ�]�� [GP]�� ��ȯ"


	elseif req == 2 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�������� �ޱ����� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."
		end

		return 6,0,"[1�� GP] = [�ݱ� 1��]�� ��ġ�� �ٲ��ְ� �ֽ��ϴٿ�!@@��ȯ ������� �ŷ����� 1%�� GP�� �ްڽ��ϴٿ�!@@���� GP�� �ݱ��� �ٲٰڽ��ϱ��?",11,"[1�� GP] -> [�ݱ� 1��]",12,"[2�� GP] -> [�ݱ� 2��]",13,"[3�� GP] -> [�ݱ� 3��]",14,"[4�� GP] -> [�ݱ� 4��]",15,"[5�� GP] -> [�ݱ� 5��]"

	elseif req == 3 then
		return 6,0,"[�ݱ� 1��] = [1�� GP]�� �ٲ��ְ� �ֽ��ϴٿ�!@@��ȯ ������� GP�� �ŷ����� 1%�� �ްڽ��ϴٿ�!@@���� �ݱ��� GP�� �ٲٰڽ��ϱ��?",21,"[�ݱ� 1��] -> [1�� GP]",22,"[�ݱ� 2��] -> [2�� GP]",23,"[�ݱ� 3��] -> [3�� GP]",24,"[�ݱ� 4��] -> [4�� GP]",25,"[�ݱ� 5��] -> [5�� GP]"


-------------------------------------------------------------- GP�� �ݱ���
	elseif req == 11 then
		if GetItemCount(cnum, 8835, 0) > 199 then
			return 1,0,"[�ݱ�]�� �ʹ� ���� ������ ��ż�@��ȯ�� �� �����ϴٿ�~@@[�ݱ�] �������� �κ��丮�� �ִ� 200������ ���� �����մϴٿ�~"
		end

		if GetMoney(cnum) < moneyaddcharge then
			return 1,0,"GP�� ���ڸ��ϴٿ�! GP�� �ݱ� �� ���� �ٲٷ��� ������ ["..charge.."]GP���� ���ؼ� ["..moneyaddcharge.."]GP�� �ʿ��մϴٿ�!"
		else
			AddItemCount(cnum, 8835, 1)
			AddMoney(cnum, -moneyaddcharge)
			return 1,0,"[�ݱ�] 1���� ��ȯ�Ǿ����ϴٿ�!@@������ �� �鷯�ֽʼ�!"
		end

	elseif req == 12 then
		if GetItemCount(cnum, 8835, 0) > 198 then
			return 1,0,"[�ݱ�]�� �ʹ� ���� ������ ��ż�@��ȯ�� �� �����ϴٿ�~@@[�ݱ�] �������� �κ��丮�� �ִ� 200������ ���� �����մϴٿ�~"
		end

		if GetMoney(cnum) < moneyaddcharge2 then
			return 1,0,"GP�� ���ڸ��ϴٿ�! GP�� �ݱ� �� ���� �ٲٷ��� ������ ["..charge2.."]���� ���ؼ� ["..moneyaddcharge2.."] GP�� �ʿ��մϴٿ�!"
		else
			AddItemCount(cnum, 8835, 2)
			AddMoney(cnum, -moneyaddcharge2)
			return 1,0,"[�ݱ�] 2���� ��ȯ�Ǿ����ϴٿ�!@@������ �� �鷯�ֽʼ�!"
		end

	elseif req == 13 then
		if GetItemCount(cnum, 8835, 0) > 197 then
			return 1,0,"[�ݱ�]�� �ʹ� ���� ������ ��ż�@��ȯ�� �� �����ϴٿ�~@@[�ݱ�] �������� �κ��丮�� �ִ� 200������ ���� �����մϴٿ�~"
		end

		if GetMoney(cnum) < moneyaddcharge3 then
			return 1,0,"GP�� ���ڸ��ϴٿ�! GP�� �ݱ� �� ���� �ٲٷ��� ������ ["..charge3.."]���� ���ؼ� ["..moneyaddcharge3.."] GP�� �ʿ��մϴٿ�!"
		else
			AddItemCount(cnum, 8835, 3)
			AddMoney(cnum, -moneyaddcharge3)
			return 1,0,"[�ݱ�] 3���� ��ȯ�Ǿ����ϴٿ�!@@������ �� �鷯�ֽʼ�!"
		end

	elseif req == 14 then
		if GetItemCount(cnum, 8835, 0) > 196 then
			return 1,0,"[�ݱ�]�� �ʹ� ���� ������ ��ż�@��ȯ�� �� �����ϴٿ�~@@[�ݱ�] �������� �κ��丮�� �ִ� 200������ ���� �����մϴٿ�~"
		end

		if GetMoney(cnum) < moneyaddcharge4 then
			return 1,0,"GP�� ���ڸ��ϴٿ�! GP�� �ݱ� �� ���� �ٲٷ��� ������ ["..charge4.."]���� ���ؼ� ["..moneyaddcharge4.."] GP�� �ʿ��մϴٿ�!"
		else
			AddItemCount(cnum, 8835, 4)
			AddMoney(cnum, -moneyaddcharge4)
			return 1,0,"[�ݱ�] 4���� ��ȯ�Ǿ����ϴٿ�!@@������ �� �鷯�ֽʼ�!"
		end

	elseif req == 15 then
		if GetItemCount(cnum, 8835, 0) > 195 then
			return 1,0,"[�ݱ�]�� �ʹ� ���� ������ ��ż�@��ȯ�� �� �����ϴٿ�~@@[�ݱ�] �������� �κ��丮�� �ִ� 200������ ���� �����մϴٿ�~"
		end

		if GetMoney(cnum) < moneyaddcharge5 then
			return 1,0,"GP�� ���ڸ��ϴٿ�! GP�� �ݱ� �� ���� �ٲٷ��� ������ ["..charge5.."]���� ���ؼ� ["..moneyaddcharge5.."] GP�� �ʿ��մϴٿ�!"
		else
			AddItemCount(cnum, 8835, 5)
			AddMoney(cnum, -moneyaddcharge5)
			return 1,0,"[�ݱ�] 5���� ��ȯ�Ǿ����ϴٿ�!@@������ �� �鷯�ֽʼ�!"
		end

-------------------------------------------------------------- GP�� �ݱ���
-------------------------------------------------------------- �ݱ��� GP��
	elseif req == 21 then
		if GetMoney(cnum) > maxmoney - (money - charge) then
			return 1,0,"�ʹ� ���� [GP]�� ������ ��ʴϴٿ�!@@[�ݱ� 1��]�� [GP]�� �ٲٱ� ���ؼ��� ������ ��� [GP]�� �ƹ��� ���Ƶ�@@[4,101,000,000]���� ����� �մϴٿ�!"		
		end
		
		if GetItemCount(cnum, 8835, 0) < 1 then
			return 1,0,"�ݱ��� ���ڸ��ϴٿ�! [�ݱ� 1��]�� �ʿ��մϴٿ�!"
		else
			AddItemCount(cnum, 8835, -1)
			AddMoney(cnum, money - charge)
			return 1,0,"[�ݱ�] 1���� ������ ["..charge.."]GP��@���� [GP]�� ��ȯ�ص�Ƚ��ϴٿ�!@@������ �� �鷯�ֽʼ�!"
		end

	elseif req == 22 then
		if GetMoney(cnum) > maxmoney - (money2 - charge2) then
			return 1,0,"�ʹ� ���� [GP]�� ������ ��ʴϴٿ�!@@[�ݱ� 2��]�� [GP]�� �ٲٱ� ���ؼ��� ������ ��� [GP]�� �ƹ��� ���Ƶ�@@[4,002,000,000]���� ����� �մϴٿ�!"		
		end
		
		if GetItemCount(cnum, 8835, 0) < 2 then
			return 1,0,"�ݱ��� ���ڸ��ϴٿ�! [�ݱ� 2��]�� �ʿ��մϴٿ�!"
		else
			AddItemCount(cnum, 8835, -2)
			AddMoney(cnum, money2 - charge2)
			return 1,0,"[�ݱ�] 2���� ������ ["..charge2.."]GP��@���� [GP]�� ��ȯ�ص�Ƚ��ϴٿ�!@@������ �� �鷯�ֽʼ�!"
		end

	elseif req == 23 then
		if GetMoney(cnum) > maxmoney - (money3 - charge3) then
			return 1,0,"�ʹ� ���� [GP]�� ������ ��ʴϴٿ�!@@[�ݱ� 3��]�� [GP]�� �ٲٱ� ���ؼ��� ������ ��� [GP]�� �ƹ��� ���Ƶ�@@[3,903,000,000]���� ����� �մϴٿ�!"		
		end
	
		if GetItemCount(cnum, 8835, 0) < 3 then
			return 1,0,"�ݱ��� ���ڸ��ϴٿ�! [�ݱ� 3��]�� �ʿ��մϴٿ�!"
		else
			AddItemCount(cnum, 8835, -3)
			AddMoney(cnum, money3 - charge3)
			return 1,0,"[�ݱ�] 3���� ������ ["..charge3.."]GP��@���� [GP]�� ��ȯ�ص�Ƚ��ϴٿ�!@@������ �� �鷯�ֽʼ�!"
		end

	elseif req == 24 then
		if GetMoney(cnum) > maxmoney - (money4 - charge4) then
			return 1,0,"�ʹ� ���� [GP]�� ������ ��ʴϴٿ�!@@[�ݱ� 4��]�� [GP]�� �ٲٱ� ���ؼ��� ������ ��� [GP]�� �ƹ��� ���Ƶ�@@[3,804,000,000]���� ����� �մϴٿ�!"		
		end	
	
		if GetItemCount(cnum, 8835, 0) < 4 then
			return 1,0,"�ݱ��� ���ڸ��ϴٿ�! [�ݱ� 4��]�� �ʿ��մϴٿ�!"
		else
			AddItemCount(cnum, 8835, -4)
			AddMoney(cnum, money4 - charge4)
			return 1,0,"[�ݱ�] 4���� ������ ["..charge4.."]GP��@���� [GP]�� ��ȯ�ص�Ƚ��ϴٿ�!@@������ �� �鷯�ֽʼ�!"
		end

	elseif req == 25 then
		if GetMoney(cnum) > maxmoney - (money5 - charge5) then
			return 1,0,"�ʹ� ���� [GP]�� ������ ��ʴϴٿ�!@@[�ݱ� 5��]�� [GP]�� �ٲٱ� ���ؼ��� ������ �ִ� GP�� �ƹ��� ���Ƶ�@@[3,705,000,000]���� ����� �մϴٿ�!"		
		end	
	
		if GetItemCount(cnum, 8835, 0) < 5 then
			return 1,0,"�ݱ��� ���ڸ��ϴٿ�! [�ݱ� 5��]�� �ʿ��մϴٿ�!"
		else
			AddItemCount(cnum, 8835, -5)
			AddMoney(cnum, money5 - charge5)
			return 1,0,"[�ݱ�] 5���� ������ ["..charge5.."]GP��@���� [GP]�� ��ȯ�ص�Ƚ��ϴٿ�!@@������ �� �鷯�ֽʼ�!"
		end

-------------------------------------------------------------- �ݱ��� GP��
	end
end
