 function NPC_QUEST_1050(cnum,reqNumber) -- ����ŷ

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 573) < 1 then --ó�� ��ȭ��
			return 2,0,"��~����Ÿ! �̻��ϰ� 11�� �� �� ���� �Ǹ� ���� �������� �ϴ� ����..��..���� ������ ���±�..@��~�� �ϳ� ������ ���̴µ�?  ?",10,"��~���� �� �մϴ�."

		elseif GetSwitchCount(cnum, 575) == 1 then -- ���� ������ ���� ����
			return 2,0,"��~�ڳ� �Գ�? �츮 �������� ���� �Ʒý����ְ�~!",13,"��"

		elseif GetSwitchCount(cnum, 574) == 2 and GetItemCount(cnum, 8585, 0) > 99  then -- �ι�° ���� �� ������ ���� ���� ��
			return 3,0,"����..���� ���� ���ס����� ������� ���� ���� ����� �� ����! ���� Ȥ���� �Ʒ��� �ʿ���!�׳����� ���� �ʴ� ������ ���� ������ ���� �� �������ָ� �ʿ��� �ñ�ڳ�..�¶����ְ�! ���� ������ �Բ� �ְڳ�! ����! �� ���� �����Ÿ�� 100���� �����ְ�..�������� �� �������� ���� ��� �ſ� ������!!",200,"���ƿ�" ,101,"�Ⱦ��"

		elseif GetSwitchCount(cnum, 573) > 0 and GetItemCount(cnum, 8585, 0) > 99  then -- 1,2ȸ ���� ���� ��
			return 3,0,"�ƴ�! �װ��� ���� �����Ÿ��? �װ� �������� ������������ �׷��Գ� ���� �����߷ȴٴ� ���ΰ�? ����ϱ�!..������ �װ��� �װ� �׷��Գ� ���� ������ �ִٸ� ���� ������Ÿ�� ���� ���ߵ� �� ������..���� �����Ÿ�� 100���� �����ָ� ���� �������ڸ� �ϳ� ����~! ���?",100,"���ƿ�" ,101,"�Ⱦ��"

		elseif GetSwitchCount(cnum, 573) > 0 and GetItemCount(cnum, 8585, 0) < 100  then -- 1,2 ȸ ���� ���� ��
			return 3,0,"�ٽ� �ѹ� ���� ������Ÿ ������������ ġ���� ������ ���̷��� �Գ�?!�̹����� ���� ������� �� ���� �ִ� ���� ������Ÿ�� 100���� ��ƿ� �����~!@@��~�� �غ�Ƴ�?",13,"����!" ,14,"�Ⱦ��"

		end



	elseif req == 10 then
			return 2,0,"����~�׷�? �׷��ٸ� ���� ������������ �Բ� �ܷﺸ�ڳ�? ���� ������������ ������ ���� �غ��� ������ �̰� �� ��밡 �־���� ����~!@�װ� �ѹ� �ܷ��ְھ�? ",11,"���ƿ�  "


	elseif req == 11 then
			return 2,0,"����� ��ⱺ~! �׷� ���� �������������Ʒ��� �ϰ� �ִ� ������Ÿ �Ʒ������� ��������~! ����ѹ� �Ƿ� ���ָ� �غ�! ",12,"��  "



	elseif req == 12 then
			return 2,0,"��! �������� ������ ��~~�࿡ ���� ������������ �����߸��ٸ� �� ���Ÿ� ��ƿ�..����!@�� ������� �� ���� ���̳�Ÿ�̸� �ް� �����ϱ� �װ� ������ ����! ���ڶ�� ������ ���� ����~!@��~�� �غ�Ƴ�? ",13,"��  "



	elseif req == 13 then  ---- �̵�(������ ���� �ڵ� �̵�����)

		if GetItemCount(cnum,22,0) < 1 and GetItemCount(cnum,22,2) < 1 and 
GetItemCount(cnum,23,0) < 1 and GetItemCount(cnum,23,2) < 1 and 
GetItemCount(cnum,24,0) < 1 and GetItemCount(cnum,24,2) < 1 and 
GetItemCount(cnum,25,0) < 1 and GetItemCount(cnum,25,2) < 1 and 
GetItemCount(cnum,26,0) < 1 and GetItemCount(cnum,26,2) < 1 and 
GetItemCount(cnum,27,0) < 1 and GetItemCount(cnum,27,2) < 1 and 
GetItemCount(cnum,28,0) < 1 and GetItemCount(cnum,28,2) < 1 and 
GetItemCount(cnum,29,0) < 1 and GetItemCount(cnum,29,2) < 1 and 
GetItemCount(cnum,30,0) < 1 and GetItemCount(cnum,30,2) < 1 and 
GetItemCount(cnum,31,0) < 1 and GetItemCount(cnum,31,2) < 1 and 
GetItemCount(cnum,32,0) < 1 and GetItemCount(cnum,32,2) < 1 and 
GetItemCount(cnum,33,0) < 1 and GetItemCount(cnum,33,2) < 1 and 
GetItemCount(cnum,76,0) < 1 and GetItemCount(cnum,76,2) < 1 and 
GetItemCount(cnum,82,0) < 1 and GetItemCount(cnum,82,2) < 1 and 
GetItemCount(cnum,83,0) < 1 and GetItemCount(cnum,83,2) < 1 and 
GetItemCount(cnum,84,0) < 1 and GetItemCount(cnum,84,2) < 1 and 
GetItemCount(cnum,85,0) < 1 and GetItemCount(cnum,85,2) < 1 and 
GetItemCount(cnum,86,0) < 1 and GetItemCount(cnum,86,2) < 1 and 
GetItemCount(cnum,87,0) < 1 and GetItemCount(cnum,87,2) < 1 and 
GetItemCount(cnum,88,0) < 1 and GetItemCount(cnum,88,2) < 1 and 
GetItemCount(cnum,89,0) < 1 and GetItemCount(cnum,89,2) < 1 and 
GetItemCount(cnum,90,0) < 1 and GetItemCount(cnum,90,2) < 1 and 
GetItemCount(cnum,91,0) < 1 and GetItemCount(cnum,91,2) < 1 and 
GetItemCount(cnum,92,0) < 1 and GetItemCount(cnum,92,2) < 1 and 
GetItemCount(cnum,93,0) < 1 and GetItemCount(cnum,93,2) < 1 and 
GetItemCount(cnum,98,0) < 1 and GetItemCount(cnum,98,2) < 1 and 
GetItemCount(cnum,100,0) < 1 and GetItemCount(cnum,100,2) < 1 and 
GetItemCount(cnum,111,0) < 1 and GetItemCount(cnum,111,2) < 1 and 
GetItemCount(cnum,112,0) < 1 and GetItemCount(cnum,112,2) < 1 and 
GetItemCount(cnum,113,0) < 1 and GetItemCount(cnum,113,2) < 1 and 
GetItemCount(cnum,114,0) < 1 and GetItemCount(cnum,114,2) < 1 and 
GetItemCount(cnum,115,0) < 1 and GetItemCount(cnum,115,2) < 1 and 
GetItemCount(cnum,116,0) < 1 and GetItemCount(cnum,116,2) < 1 and 
GetItemCount(cnum,117,0) < 1 and GetItemCount(cnum,117,2) < 1 and 
GetItemCount(cnum,883,0) < 1 and GetItemCount(cnum,883,2) < 1 and 
GetItemCount(cnum,884,0) < 1 and GetItemCount(cnum,884,2) < 1 and 
GetItemCount(cnum,885,0) < 1 and GetItemCount(cnum,885,2) < 1 and 
GetItemCount(cnum,886,0) < 1 and GetItemCount(cnum,886,2) < 1 and 
GetItemCount(cnum,887,0) < 1 and GetItemCount(cnum,887,2) < 1 and 
GetItemCount(cnum,888,0) < 1 and GetItemCount(cnum,888,2) < 1 and 
GetItemCount(cnum,889,0) < 1 and GetItemCount(cnum,889,2) < 1 and 
GetItemCount(cnum,890,0) < 1 and GetItemCount(cnum,890,2) < 1 and 
GetItemCount(cnum,891,0) < 1 and GetItemCount(cnum,891,2) < 1 and 
GetItemCount(cnum,892,0) < 1 and GetItemCount(cnum,892,2) < 1 and 
GetItemCount(cnum,893,0) < 1 and GetItemCount(cnum,893,2) < 1 and 
GetItemCount(cnum,894,0) < 1 and GetItemCount(cnum,894,2) < 1 and 
GetItemCount(cnum,905,0) < 1 and GetItemCount(cnum,905,2) < 1 and 
GetItemCount(cnum,906,0) < 1 and GetItemCount(cnum,906,2) < 1 and 
GetItemCount(cnum,907,0) < 1 and GetItemCount(cnum,907,2) < 1 and 
GetItemCount(cnum,908,0) < 1 and GetItemCount(cnum,908,2) < 1 and 
GetItemCount(cnum,909,0) < 1 and GetItemCount(cnum,909,2) < 1 and 
GetItemCount(cnum,910,0) < 1 and GetItemCount(cnum,910,2) < 1 and 
GetItemCount(cnum,911,0) < 1 and GetItemCount(cnum,911,2) < 1 and 
GetItemCount(cnum,912,0) < 1 and GetItemCount(cnum,912,2) < 1 and 
GetItemCount(cnum,913,0) < 1 and GetItemCount(cnum,913,2) < 1 and 
GetItemCount(cnum,914,0) < 1 and GetItemCount(cnum,914,2) < 1 and 
GetItemCount(cnum,915,0) < 1 and GetItemCount(cnum,915,2) < 1 and 
GetItemCount(cnum,916,0) < 1 and GetItemCount(cnum,916,2) < 1 and 
GetItemCount(cnum,925,0) < 1 and GetItemCount(cnum,925,2) < 1 and 
GetItemCount(cnum,926,0) < 1 and GetItemCount(cnum,926,2) < 1 and 
GetItemCount(cnum,927,0) < 1 and GetItemCount(cnum,927,2) < 1 and 
GetItemCount(cnum,928,0) < 1 and GetItemCount(cnum,928,2) < 1 and 
GetItemCount(cnum,929,0) < 1 and GetItemCount(cnum,929,2) < 1 and 
GetItemCount(cnum,930,0) < 1 and GetItemCount(cnum,930,2) < 1 and 
GetItemCount(cnum,931,0) < 1 and GetItemCount(cnum,931,2) < 1 and 
GetItemCount(cnum,932,0) < 1 and GetItemCount(cnum,932,2) < 1 and 
GetItemCount(cnum,933,0) < 1 and GetItemCount(cnum,933,2) < 1 and 
GetItemCount(cnum,934,0) < 1 and GetItemCount(cnum,934,2) < 1 and 
GetItemCount(cnum,935,0) < 1 and GetItemCount(cnum,935,2) < 1 and 
GetItemCount(cnum,936,0) < 1 and GetItemCount(cnum,936,2) < 1 and 
GetItemCount(cnum,937,0) < 1 and GetItemCount(cnum,937,2) < 1 and 
GetItemCount(cnum,938,0) < 1 and GetItemCount(cnum,938,2) < 1 and 
GetItemCount(cnum,1152,0) < 1 and GetItemCount(cnum,1152,2) < 1 and 
GetItemCount(cnum,1153,0) < 1 and GetItemCount(cnum,1153,2) < 1 and 
GetItemCount(cnum,1154,0) < 1 and GetItemCount(cnum,1154,2) < 1 and 
GetItemCount(cnum,1155,0) < 1 and GetItemCount(cnum,1155,2) < 1 and 
GetItemCount(cnum,1185,0) < 1 and GetItemCount(cnum,1185,2) < 1 and 
GetItemCount(cnum,1186,0) < 1 and GetItemCount(cnum,1186,2) < 1 and 
GetItemCount(cnum,1187,0) < 1 and GetItemCount(cnum,1187,2) < 1 and 
GetItemCount(cnum,1188,0) < 1 and GetItemCount(cnum,1188,2) < 1 and 
GetItemCount(cnum,1189,0) < 1 and GetItemCount(cnum,1189,2) < 1 and 
GetItemCount(cnum,1190,0) < 1 and GetItemCount(cnum,1190,2) < 1 and 
GetItemCount(cnum,1218,0) < 1 and GetItemCount(cnum,1218,2) < 1 and 
GetItemCount(cnum,1226,0) < 1 and GetItemCount(cnum,1226,2) < 1 and 
GetItemCount(cnum,1227,0) < 1 and GetItemCount(cnum,1227,2) < 1 and 
GetItemCount(cnum,1228,0) < 1 and GetItemCount(cnum,1228,2) < 1 and 
GetItemCount(cnum,1229,0) < 1 and GetItemCount(cnum,1229,2) < 1 and 
GetItemCount(cnum,1230,0) < 1 and GetItemCount(cnum,1230,2) < 1 and 
GetItemCount(cnum,1231,0) < 1 and GetItemCount(cnum,1231,2) < 1 and 
GetItemCount(cnum,1232,0) < 1 and GetItemCount(cnum,1232,2) < 1 and 
GetItemCount(cnum,1233,0) < 1 and GetItemCount(cnum,1233,2) < 1 and 
GetItemCount(cnum,1234,0) < 1 and GetItemCount(cnum,1234,2) < 1 and 
GetItemCount(cnum,1235,0) < 1 and GetItemCount(cnum,1235,2) < 1 and 
GetItemCount(cnum,1236,0) < 1 and GetItemCount(cnum,1236,2) < 1 and 
GetItemCount(cnum,1237,0) < 1 and GetItemCount(cnum,1237,2) < 1 and 
GetItemCount(cnum,1238,0) < 1 and GetItemCount(cnum,1238,2) < 1 and 
GetItemCount(cnum,1239,0) < 1 and GetItemCount(cnum,1239,2) < 1 and 
GetItemCount(cnum,1317,0) < 1 and GetItemCount(cnum,1317,2) < 1 and 
GetItemCount(cnum,2303,0) < 1 and GetItemCount(cnum,2303,2) < 1 and 
GetItemCount(cnum,2304,0) < 1 and GetItemCount(cnum,2304,2) < 1 and 
GetItemCount(cnum,2306,0) < 1 and GetItemCount(cnum,2306,2) < 1 and 
GetItemCount(cnum,2307,0) < 1 and GetItemCount(cnum,2307,2) < 1 and 
GetItemCount(cnum,2308,0) < 1 and GetItemCount(cnum,2308,2) < 1 and 
GetItemCount(cnum,2309,0) < 1 and GetItemCount(cnum,2309,2) < 1 and 
GetItemCount(cnum,2310,0) < 1 and GetItemCount(cnum,2310,2) < 1 and 
GetItemCount(cnum,2311,0) < 1 and GetItemCount(cnum,2311,2) < 1 and 
GetItemCount(cnum,2312,0) < 1 and GetItemCount(cnum,2312,2) < 1 and 
GetItemCount(cnum,2313,0) < 1 and GetItemCount(cnum,2313,2) < 1 and 
GetItemCount(cnum,2314,0) < 1 and GetItemCount(cnum,2314,2) < 1 and 
GetItemCount(cnum,2315,0) < 1 and GetItemCount(cnum,2315,2) < 1 and 
GetItemCount(cnum,2725,0) < 1 and GetItemCount(cnum,2725,2) < 1 and 
GetItemCount(cnum,3700,0) < 1 and GetItemCount(cnum,3700,2) < 1 and 
GetItemCount(cnum,3701,0) < 1 and GetItemCount(cnum,3701,2) < 1 and 
GetItemCount(cnum,3702,0) < 1 and GetItemCount(cnum,3702,2) < 1 and 
GetItemCount(cnum,3703,0) < 1 and GetItemCount(cnum,3703,2) < 1 and 
GetItemCount(cnum,3718,0) < 1 and GetItemCount(cnum,3718,2) < 1 and 
GetItemCount(cnum,3720,0) < 1 and GetItemCount(cnum,3720,2) < 1 and 
GetItemCount(cnum,3721,0) < 1 and GetItemCount(cnum,3721,2) < 1 and 
GetItemCount(cnum,3722,0) < 1 and GetItemCount(cnum,3722,2) < 1 and 
GetItemCount(cnum,3723,0) < 1 and GetItemCount(cnum,3723,2) < 1 and 
GetItemCount(cnum,3724,0) < 1 and GetItemCount(cnum,3724,2) < 1 and 
GetItemCount(cnum,4234,0) < 1 and GetItemCount(cnum,4234,2) < 1 and 
GetItemCount(cnum,4235,0) < 1 and GetItemCount(cnum,4235,2) < 1 and 
GetItemCount(cnum,4236,0) < 1 and GetItemCount(cnum,4236,2) < 1 and 
GetItemCount(cnum,4245,0) < 1 and GetItemCount(cnum,4245,2) < 1 and 
GetItemCount(cnum,4246,0) < 1 and GetItemCount(cnum,4246,2) < 1 and 
GetItemCount(cnum,4247,0) < 1 and GetItemCount(cnum,4247,2) < 1 and 
GetItemCount(cnum,4255,0) < 1 and GetItemCount(cnum,4255,2) < 1 and 
GetItemCount(cnum,4256,0) < 1 and GetItemCount(cnum,4256,2) < 1 and 
GetItemCount(cnum,4257,0) < 1 and GetItemCount(cnum,4257,2) < 1 and 
GetItemCount(cnum,4274,0) < 1 and GetItemCount(cnum,4274,2) < 1 and 
GetItemCount(cnum,4275,0) < 1 and GetItemCount(cnum,4275,2) < 1 and 
GetItemCount(cnum,4276,0) < 1 and GetItemCount(cnum,4276,2) < 1 and 
GetItemCount(cnum,4277,0) < 1 and GetItemCount(cnum,4277,2) < 1 and 
GetItemCount(cnum,4278,0) < 1 and GetItemCount(cnum,4278,2) < 1 and 
GetItemCount(cnum,4279,0) < 1 and GetItemCount(cnum,4279,2) < 1 and 
GetItemCount(cnum,4280,0) < 1 and GetItemCount(cnum,4280,2) < 1 and 
GetItemCount(cnum,4281,0) < 1 and GetItemCount(cnum,4281,2) < 1 and 
GetItemCount(cnum,4394,0) < 1 and GetItemCount(cnum,4394,2) < 1 and 
GetItemCount(cnum,4395,0) < 1 and GetItemCount(cnum,4395,2) < 1 and 
GetItemCount(cnum,4396,0) < 1 and GetItemCount(cnum,4396,2) < 1 and 
GetItemCount(cnum,4397,0) < 1 and GetItemCount(cnum,4397,2) < 1 and 
GetItemCount(cnum,4398,0) < 1 and GetItemCount(cnum,4398,2) < 1 and 
GetItemCount(cnum,4399,0) < 1 and GetItemCount(cnum,4399,2) < 1 and 
GetItemCount(cnum,4401,0) < 1 and GetItemCount(cnum,4401,2) < 1 and 
GetItemCount(cnum,4516,0) < 1 and GetItemCount(cnum,4516,2) < 1 and 
GetItemCount(cnum,4517,0) < 1 and GetItemCount(cnum,4517,2) < 1 and 
GetItemCount(cnum,4518,0) < 1 and GetItemCount(cnum,4518,2) < 1 and 
GetItemCount(cnum,4519,0) < 1 and GetItemCount(cnum,4519,2) < 1 and 
GetItemCount(cnum,4520,0) < 1 and GetItemCount(cnum,4520,2) < 1 and 
GetItemCount(cnum,4521,0) < 1 and GetItemCount(cnum,4521,2) < 1 and 
GetItemCount(cnum,4522,0) < 1 and GetItemCount(cnum,4522,2) < 1 and 
GetItemCount(cnum,4523,0) < 1 and GetItemCount(cnum,4523,2) < 1 and 
GetItemCount(cnum,4524,0) < 1 and GetItemCount(cnum,4524,2) < 1 and 
GetItemCount(cnum,4525,0) < 1 and GetItemCount(cnum,4525,2) < 1 and 
GetItemCount(cnum,4526,0) < 1 and GetItemCount(cnum,4526,2) < 1 and 
GetItemCount(cnum,4527,0) < 1 and GetItemCount(cnum,4527,2) < 1 and 
GetItemCount(cnum,4528,0) < 1 and GetItemCount(cnum,4528,2) < 1 and 
GetItemCount(cnum,4529,0) < 1 and GetItemCount(cnum,4529,2) < 1 and 
GetItemCount(cnum,4530,0) < 1 and GetItemCount(cnum,4530,2) < 1 and 
GetItemCount(cnum,4531,0) < 1 and GetItemCount(cnum,4531,2) < 1 and 
GetItemCount(cnum,4532,0) < 1 and GetItemCount(cnum,4532,2) < 1 and 
GetItemCount(cnum,4533,0) < 1 and GetItemCount(cnum,4533,2) < 1 and 
GetItemCount(cnum,4534,0) < 1 and GetItemCount(cnum,4534,2) < 1 and 
GetItemCount(cnum,4535,0) < 1 and GetItemCount(cnum,4535,2) < 1 and 
GetItemCount(cnum,4536,0) < 1 and GetItemCount(cnum,4536,2) < 1 and 
GetItemCount(cnum,4537,0) < 1 and GetItemCount(cnum,4537,2) < 1 and 
GetItemCount(cnum,4538,0) < 1 and GetItemCount(cnum,4538,2) < 1 and 
GetItemCount(cnum,4539,0) < 1 and GetItemCount(cnum,4539,2) < 1 and 
GetItemCount(cnum,4540,0) < 1 and GetItemCount(cnum,4540,2) < 1 and 
GetItemCount(cnum,4541,0) < 1 and GetItemCount(cnum,4541,2) < 1 and 
GetItemCount(cnum,4542,0) < 1 and GetItemCount(cnum,4542,2) < 1 and 
GetItemCount(cnum,4543,0) < 1 and GetItemCount(cnum,4543,2) < 1 and 
GetItemCount(cnum,4544,0) < 1 and GetItemCount(cnum,4544,2) < 1 and 
GetItemCount(cnum,4545,0) < 1 and GetItemCount(cnum,4545,2) < 1 and 
GetItemCount(cnum,4546,0) < 1 and GetItemCount(cnum,4546,2) < 1 and 
GetItemCount(cnum,4547,0) < 1 and GetItemCount(cnum,4547,2) < 1 and 
GetItemCount(cnum,4548,0) < 1 and GetItemCount(cnum,4548,2) < 1 and 
GetItemCount(cnum,4549,0) < 1 and GetItemCount(cnum,4549,2) < 1 and 
GetItemCount(cnum,4550,0) < 1 and GetItemCount(cnum,4550,2) < 1 and 
GetItemCount(cnum,4551,0) < 1 and GetItemCount(cnum,4551,2) < 1 and 
GetItemCount(cnum,4552,0) < 1 and GetItemCount(cnum,4552,2) < 1 and 
GetItemCount(cnum,4553,0) < 1 and GetItemCount(cnum,4553,2) < 1 and 
GetItemCount(cnum,4554,0) < 1 and GetItemCount(cnum,4554,2) < 1 and 
GetItemCount(cnum,4555,0) < 1 and GetItemCount(cnum,4555,2) < 1 and 
GetItemCount(cnum,4556,0) < 1 and GetItemCount(cnum,4556,2) < 1 and 
GetItemCount(cnum,4557,0) < 1 and GetItemCount(cnum,4557,2) < 1 and 
GetItemCount(cnum,4558,0) < 1 and GetItemCount(cnum,4558,2) < 1 and 
GetItemCount(cnum,4559,0) < 1 and GetItemCount(cnum,4559,2) < 1 and 
GetItemCount(cnum,4560,0) < 1 and GetItemCount(cnum,4560,2) < 1 and 
GetItemCount(cnum,4561,0) < 1 and GetItemCount(cnum,4561,2) < 1 and 
GetItemCount(cnum,4562,0) < 1 and GetItemCount(cnum,4562,2) < 1 and 
GetItemCount(cnum,4563,0) < 1 and GetItemCount(cnum,4563,2) < 1 and 
GetItemCount(cnum,4564,0) < 1 and GetItemCount(cnum,4564,2) < 1 and 
GetItemCount(cnum,4565,0) < 1 and GetItemCount(cnum,4565,2) < 1 and 
GetItemCount(cnum,4566,0) < 1 and GetItemCount(cnum,4566,2) < 1 and 
GetItemCount(cnum,4567,0) < 1 and GetItemCount(cnum,4567,2) < 1 and 
GetItemCount(cnum,4568,0) < 1 and GetItemCount(cnum,4568,2) < 1 and 
GetItemCount(cnum,4569,0) < 1 and GetItemCount(cnum,4569,2) < 1 and 
GetItemCount(cnum,4570,0) < 1 and GetItemCount(cnum,4570,2) < 1 and 
GetItemCount(cnum,4571,0) < 1 and GetItemCount(cnum,4571,2) < 1 and 
GetItemCount(cnum,4572,0) < 1 and GetItemCount(cnum,4572,2) < 1 and 
GetItemCount(cnum,4573,0) < 1 and GetItemCount(cnum,4573,2) < 1 and 
GetItemCount(cnum,4574,0) < 1 and GetItemCount(cnum,4574,2) < 1 and 
GetItemCount(cnum,4575,0) < 1 and GetItemCount(cnum,4575,2) < 1 and 
GetItemCount(cnum,4576,0) < 1 and GetItemCount(cnum,4576,2) < 1 and 
GetItemCount(cnum,4577,0) < 1 and GetItemCount(cnum,4577,2) < 1 and 
GetItemCount(cnum,4578,0) < 1 and GetItemCount(cnum,4578,2) < 1 and 
GetItemCount(cnum,4579,0) < 1 and GetItemCount(cnum,4579,2) < 1 and 
GetItemCount(cnum,4580,0) < 1 and GetItemCount(cnum,4580,2) < 1 and 
GetItemCount(cnum,4581,0) < 1 and GetItemCount(cnum,4581,2) < 1 and 
GetItemCount(cnum,4582,0) < 1 and GetItemCount(cnum,4582,2) < 1 and 
GetItemCount(cnum,4583,0) < 1 and GetItemCount(cnum,4583,2) < 1 and 
GetItemCount(cnum,4584,0) < 1 and GetItemCount(cnum,4584,2) < 1 and 
GetItemCount(cnum,4585,0) < 1 and GetItemCount(cnum,4585,2) < 1 and 
GetItemCount(cnum,4586,0) < 1 and GetItemCount(cnum,4586,2) < 1 and 
GetItemCount(cnum,4587,0) < 1 and GetItemCount(cnum,4587,2) < 1 and 
GetItemCount(cnum,4588,0) < 1 and GetItemCount(cnum,4588,2) < 1 and 
GetItemCount(cnum,4589,0) < 1 and GetItemCount(cnum,4589,2) < 1 and 
GetItemCount(cnum,4590,0) < 1 and GetItemCount(cnum,4590,2) < 1 and 
GetItemCount(cnum,4591,0) < 1 and GetItemCount(cnum,4591,2) < 1 and 
GetItemCount(cnum,4592,0) < 1 and GetItemCount(cnum,4592,2) < 1 and 
GetItemCount(cnum,4593,0) < 1 and GetItemCount(cnum,4593,2) < 1 and 
GetItemCount(cnum,4594,0) < 1 and GetItemCount(cnum,4594,2) < 1 and 
GetItemCount(cnum,4595,0) < 1 and GetItemCount(cnum,4595,2) < 1 and 
GetItemCount(cnum,4596,0) < 1 and GetItemCount(cnum,4596,2) < 1 and 
GetItemCount(cnum,4597,0) < 1 and GetItemCount(cnum,4597,2) < 1 and 
GetItemCount(cnum,4598,0) < 1 and GetItemCount(cnum,4598,2) < 1 and 
GetItemCount(cnum,4599,0) < 1 and GetItemCount(cnum,4599,2) < 1 and 
GetItemCount(cnum,4600,0) < 1 and GetItemCount(cnum,4600,2) < 1 and 
GetItemCount(cnum,4601,0) < 1 and GetItemCount(cnum,4601,2) < 1 and 
GetItemCount(cnum,4602,0) < 1 and GetItemCount(cnum,4602,2) < 1 and 
GetItemCount(cnum,4603,0) < 1 and GetItemCount(cnum,4603,2) < 1 and 
GetItemCount(cnum,4604,0) < 1 and GetItemCount(cnum,4604,2) < 1 and 
GetItemCount(cnum,4605,0) < 1 and GetItemCount(cnum,4605,2) < 1 and 
GetItemCount(cnum,4606,0) < 1 and GetItemCount(cnum,4606,2) < 1 and 
GetItemCount(cnum,4607,0) < 1 and GetItemCount(cnum,4607,2) < 1 and 
GetItemCount(cnum,4608,0) < 1 and GetItemCount(cnum,4608,2) < 1 and 
GetItemCount(cnum,4609,0) < 1 and GetItemCount(cnum,4609,2) < 1 and 
GetItemCount(cnum,4610,0) < 1 and GetItemCount(cnum,4610,2) < 1 and 
GetItemCount(cnum,4611,0) < 1 and GetItemCount(cnum,4611,2) < 1 and 
GetItemCount(cnum,4612,0) < 1 and GetItemCount(cnum,4612,2) < 1 and 
GetItemCount(cnum,4613,0) < 1 and GetItemCount(cnum,4613,2) < 1 and 
GetItemCount(cnum,4614,0) < 1 and GetItemCount(cnum,4614,2) < 1 and 
GetItemCount(cnum,4615,0) < 1 and GetItemCount(cnum,4615,2) < 1 and 
GetItemCount(cnum,4616,0) < 1 and GetItemCount(cnum,4616,2) < 1 and 
GetItemCount(cnum,4617,0) < 1 and GetItemCount(cnum,4617,2) < 1 and 
GetItemCount(cnum,4618,0) < 1 and GetItemCount(cnum,4618,2) < 1 and 
GetItemCount(cnum,4619,0) < 1 and GetItemCount(cnum,4619,2) < 1 and 
GetItemCount(cnum,4620,0) < 1 and GetItemCount(cnum,4620,2) < 1 and 
GetItemCount(cnum,4621,0) < 1 and GetItemCount(cnum,4621,2) < 1 and 
GetItemCount(cnum,4622,0) < 1 and GetItemCount(cnum,4622,2) < 1 and 
GetItemCount(cnum,4623,0) < 1 and GetItemCount(cnum,4623,2) < 1 and 
GetItemCount(cnum,4624,0) < 1 and GetItemCount(cnum,4624,2) < 1 and 
GetItemCount(cnum,4625,0) < 1 and GetItemCount(cnum,4625,2) < 1 and 
GetItemCount(cnum,4626,0) < 1 and GetItemCount(cnum,4626,2) < 1 and 
GetItemCount(cnum,4627,0) < 1 and GetItemCount(cnum,4627,2) < 1 and 
GetItemCount(cnum,4628,0) < 1 and GetItemCount(cnum,4628,2) < 1 and 
GetItemCount(cnum,4629,0) < 1 and GetItemCount(cnum,4629,2) < 1 and 
GetItemCount(cnum,4630,0) < 1 and GetItemCount(cnum,4630,2) < 1 and 
GetItemCount(cnum,4631,0) < 1 and GetItemCount(cnum,4631,2) < 1 and 
GetItemCount(cnum,4632,0) < 1 and GetItemCount(cnum,4632,2) < 1 and 
GetItemCount(cnum,4633,0) < 1 and GetItemCount(cnum,4633,2) < 1 and 
GetItemCount(cnum,4634,0) < 1 and GetItemCount(cnum,4634,2) < 1 and 
GetItemCount(cnum,4635,0) < 1 and GetItemCount(cnum,4635,2) < 1 and 
GetItemCount(cnum,4636,0) < 1 and GetItemCount(cnum,4636,2) < 1 and 
GetItemCount(cnum,4637,0) < 1 and GetItemCount(cnum,4637,2) < 1 and 
GetItemCount(cnum,4638,0) < 1 and GetItemCount(cnum,4638,2) < 1 and 
GetItemCount(cnum,4639,0) < 1 and GetItemCount(cnum,4639,2) < 1 and 
GetItemCount(cnum,4640,0) < 1 and GetItemCount(cnum,4640,2) < 1 and 
GetItemCount(cnum,4641,0) < 1 and GetItemCount(cnum,4641,2) < 1 and 
GetItemCount(cnum,4642,0) < 1 and GetItemCount(cnum,4642,2) < 1 and 
GetItemCount(cnum,4643,0) < 1 and GetItemCount(cnum,4643,2) < 1 and 
GetItemCount(cnum,4644,0) < 1 and GetItemCount(cnum,4644,2) < 1 and 
GetItemCount(cnum,4645,0) < 1 and GetItemCount(cnum,4645,2) < 1 and 
GetItemCount(cnum,4646,0) < 1 and GetItemCount(cnum,4646,2) < 1 and 
GetItemCount(cnum,4647,0) < 1 and GetItemCount(cnum,4647,2) < 1 and 
GetItemCount(cnum,4648,0) < 1 and GetItemCount(cnum,4648,2) < 1 and 
GetItemCount(cnum,4649,0) < 1 and GetItemCount(cnum,4649,2) < 1 and 
GetItemCount(cnum,4650,0) < 1 and GetItemCount(cnum,4650,2) < 1 and 
GetItemCount(cnum,4651,0) < 1 and GetItemCount(cnum,4651,2) < 1 and 
GetItemCount(cnum,4652,0) < 1 and GetItemCount(cnum,4652,2) < 1 and 
GetItemCount(cnum,4653,0) < 1 and GetItemCount(cnum,4653,2) < 1 and 
GetItemCount(cnum,4654,0) < 1 and GetItemCount(cnum,4654,2) < 1 and 
GetItemCount(cnum,4655,0) < 1 and GetItemCount(cnum,4655,2) < 1 and 
GetItemCount(cnum,4656,0) < 1 and GetItemCount(cnum,4656,2) < 1 and 
GetItemCount(cnum,4657,0) < 1 and GetItemCount(cnum,4657,2) < 1 and 
GetItemCount(cnum,4658,0) < 1 and GetItemCount(cnum,4658,2) < 1 and 
GetItemCount(cnum,4659,0) < 1 and GetItemCount(cnum,4659,2) < 1 and 
GetItemCount(cnum,4660,0) < 1 and GetItemCount(cnum,4660,2) < 1 and 
GetItemCount(cnum,4661,0) < 1 and GetItemCount(cnum,4661,2) < 1 and 
GetItemCount(cnum,4662,0) < 1 and GetItemCount(cnum,4662,2) < 1 and 
GetItemCount(cnum,4663,0) < 1 and GetItemCount(cnum,4663,2) < 1 and 
GetItemCount(cnum,4664,0) < 1 and GetItemCount(cnum,4664,2) < 1 and 
GetItemCount(cnum,4665,0) < 1 and GetItemCount(cnum,4665,2) < 1 and 
GetItemCount(cnum,4666,0) < 1 and GetItemCount(cnum,4666,2) < 1 and 
GetItemCount(cnum,4667,0) < 1 and GetItemCount(cnum,4667,2) < 1 and 
GetItemCount(cnum,4668,0) < 1 and GetItemCount(cnum,4668,2) < 1 and 
GetItemCount(cnum,4729,0) < 1 and GetItemCount(cnum,4729,2) < 1 and 
GetItemCount(cnum,4730,0) < 1 and GetItemCount(cnum,4730,2) < 1 and 
GetItemCount(cnum,4731,0) < 1 and GetItemCount(cnum,4731,2) < 1 and 
GetItemCount(cnum,4732,0) < 1 and GetItemCount(cnum,4732,2) < 1 and 
GetItemCount(cnum,4733,0) < 1 and GetItemCount(cnum,4733,2) < 1 and 
GetItemCount(cnum,4734,0) < 1 and GetItemCount(cnum,4734,2) < 1 and 
GetItemCount(cnum,4735,0) < 1 and GetItemCount(cnum,4735,2) < 1 and 
GetItemCount(cnum,4736,0) < 1 and GetItemCount(cnum,4736,2) < 1 and 
GetItemCount(cnum,4737,0) < 1 and GetItemCount(cnum,4737,2) < 1 and 
GetItemCount(cnum,4738,0) < 1 and GetItemCount(cnum,4738,2) < 1 and 
GetItemCount(cnum,4739,0) < 1 and GetItemCount(cnum,4739,2) < 1 and 
GetItemCount(cnum,4740,0) < 1 and GetItemCount(cnum,4740,2) < 1 and 
GetItemCount(cnum,4741,0) < 1 and GetItemCount(cnum,4741,2) < 1 and 
GetItemCount(cnum,4742,0) < 1 and GetItemCount(cnum,4742,2) < 1 and 
GetItemCount(cnum,4743,0) < 1 and GetItemCount(cnum,4743,2) < 1 and 
GetItemCount(cnum,4744,0) < 1 and GetItemCount(cnum,4744,2) < 1 and 
GetItemCount(cnum,4745,0) < 1 and GetItemCount(cnum,4745,2) < 1 and 
GetItemCount(cnum,4746,0) < 1 and GetItemCount(cnum,4746,2) < 1 and 
GetItemCount(cnum,4747,0) < 1 and GetItemCount(cnum,4747,2) < 1 and 
GetItemCount(cnum,4748,0) < 1 and GetItemCount(cnum,4748,2) < 1 and 
GetItemCount(cnum,4749,0) < 1 and GetItemCount(cnum,4749,2) < 1 and 
GetItemCount(cnum,4750,0) < 1 and GetItemCount(cnum,4750,2) < 1 and 
GetItemCount(cnum,4751,0) < 1 and GetItemCount(cnum,4751,2) < 1 and 
GetItemCount(cnum,4752,0) < 1 and GetItemCount(cnum,4752,2) < 1 and 
GetItemCount(cnum,4753,0) < 1 and GetItemCount(cnum,4753,2) < 1 and 
GetItemCount(cnum,4754,0) < 1 and GetItemCount(cnum,4754,2) < 1 and 
GetItemCount(cnum,4755,0) < 1 and GetItemCount(cnum,4755,2) < 1 and 
GetItemCount(cnum,4756,0) < 1 and GetItemCount(cnum,4756,2) < 1 and 
GetItemCount(cnum,4757,0) < 1 and GetItemCount(cnum,4757,2) < 1 and 
GetItemCount(cnum,4758,0) < 1 and GetItemCount(cnum,4758,2) < 1 and 
GetItemCount(cnum,4759,0) < 1 and GetItemCount(cnum,4759,2) < 1 and 
GetItemCount(cnum,4760,0) < 1 and GetItemCount(cnum,4760,2) < 1 and 
GetItemCount(cnum,4761,0) < 1 and GetItemCount(cnum,4761,2) < 1 and 
GetItemCount(cnum,4762,0) < 1 and GetItemCount(cnum,4762,2) < 1 and 
GetItemCount(cnum,4763,0) < 1 and GetItemCount(cnum,4763,2) < 1 and 
GetItemCount(cnum,4764,0) < 1 and GetItemCount(cnum,4764,2) < 1 and 
GetItemCount(cnum,4765,0) < 1 and GetItemCount(cnum,4765,2) < 1 and 
GetItemCount(cnum,4766,0) < 1 and GetItemCount(cnum,4766,2) < 1 and 
GetItemCount(cnum,4767,0) < 1 and GetItemCount(cnum,4767,2) < 1 and 
GetItemCount(cnum,4768,0) < 1 and GetItemCount(cnum,4768,2) < 1 and 
GetItemCount(cnum,4769,0) < 1 and GetItemCount(cnum,4769,2) < 1 and 
GetItemCount(cnum,4770,0) < 1 and GetItemCount(cnum,4770,2) < 1 and 
GetItemCount(cnum,4771,0) < 1 and GetItemCount(cnum,4771,2) < 1 and 
GetItemCount(cnum,4772,0) < 1 and GetItemCount(cnum,4772,2) < 1 and 
GetItemCount(cnum,4773,0) < 1 and GetItemCount(cnum,4773,2) < 1 and 
GetItemCount(cnum,4960,0) < 1 and GetItemCount(cnum,4960,2) < 1 and 
GetItemCount(cnum,4961,0) < 1 and GetItemCount(cnum,4961,2) < 1 and 
GetItemCount(cnum,4962,0) < 1 and GetItemCount(cnum,4962,2) < 1 and 
GetItemCount(cnum,4962,0) < 1 and GetItemCount(cnum,4962,2) < 1 and 
GetItemCount(cnum,4962,0) < 1 and GetItemCount(cnum,4962,2) < 1 and 
GetItemCount(cnum,4962,0) < 1 and GetItemCount(cnum,4962,2) < 1 and 
GetItemCount(cnum,4963,0) < 1 and GetItemCount(cnum,4963,2) < 1 and 
GetItemCount(cnum,4963,0) < 1 and GetItemCount(cnum,4963,2) < 1 and 
GetItemCount(cnum,4963,0) < 1 and GetItemCount(cnum,4963,2) < 1 and 
GetItemCount(cnum,4963,0) < 1 and GetItemCount(cnum,4963,2) < 1 and 
GetItemCount(cnum,4964,0) < 1 and GetItemCount(cnum,4964,2) < 1 and 
GetItemCount(cnum,4964,0) < 1 and GetItemCount(cnum,4964,2) < 1 and 
GetItemCount(cnum,4964,0) < 1 and GetItemCount(cnum,4964,2) < 1 and 
GetItemCount(cnum,4964,0) < 1 and GetItemCount(cnum,4964,2) < 1 and 
GetItemCount(cnum,4965,0) < 1 and GetItemCount(cnum,4965,2) < 1 and 
GetItemCount(cnum,4965,0) < 1 and GetItemCount(cnum,4965,2) < 1 and 
GetItemCount(cnum,4965,0) < 1 and GetItemCount(cnum,4965,2) < 1 and 
GetItemCount(cnum,4965,0) < 1 and GetItemCount(cnum,4965,2) < 1 and 
GetItemCount(cnum,4966,0) < 1 and GetItemCount(cnum,4966,2) < 1 and 
GetItemCount(cnum,4966,0) < 1 and GetItemCount(cnum,4966,2) < 1 and 
GetItemCount(cnum,4966,0) < 1 and GetItemCount(cnum,4966,2) < 1 and 
GetItemCount(cnum,4966,0) < 1 and GetItemCount(cnum,4966,2) < 1 and 
GetItemCount(cnum,4967,0) < 1 and GetItemCount(cnum,4967,2) < 1 and 
GetItemCount(cnum,4967,0) < 1 and GetItemCount(cnum,4967,2) < 1 and 
GetItemCount(cnum,4967,0) < 1 and GetItemCount(cnum,4967,2) < 1 and 
GetItemCount(cnum,4967,0) < 1 and GetItemCount(cnum,4967,2) < 1 and 
GetItemCount(cnum,4968,0) < 1 and GetItemCount(cnum,4968,2) < 1 and 
GetItemCount(cnum,4968,0) < 1 and GetItemCount(cnum,4968,2) < 1 and 
GetItemCount(cnum,4968,0) < 1 and GetItemCount(cnum,4968,2) < 1 and 
GetItemCount(cnum,4968,0) < 1 and GetItemCount(cnum,4968,2) < 1 and 
GetItemCount(cnum,4969,0) < 1 and GetItemCount(cnum,4969,2) < 1 and 
GetItemCount(cnum,4969,0) < 1 and GetItemCount(cnum,4969,2) < 1 and 
GetItemCount(cnum,4969,0) < 1 and GetItemCount(cnum,4969,2) < 1 and 
GetItemCount(cnum,4969,0) < 1 and GetItemCount(cnum,4969,2) < 1 and 
GetItemCount(cnum,4970,0) < 1 and GetItemCount(cnum,4970,2) < 1 and 
GetItemCount(cnum,4970,0) < 1 and GetItemCount(cnum,4970,2) < 1 and 
GetItemCount(cnum,4970,0) < 1 and GetItemCount(cnum,4970,2) < 1 and 
GetItemCount(cnum,4970,0) < 1 and GetItemCount(cnum,4970,2) < 1 and 
GetItemCount(cnum,4971,0) < 1 and GetItemCount(cnum,4971,2) < 1 and 
GetItemCount(cnum,4971,0) < 1 and GetItemCount(cnum,4971,2) < 1 and 
GetItemCount(cnum,4971,0) < 1 and GetItemCount(cnum,4971,2) < 1 and 
GetItemCount(cnum,4971,0) < 1 and GetItemCount(cnum,4971,2) < 1 and 
GetItemCount(cnum,6475,0) < 1 and GetItemCount(cnum,6475,2) < 1 and 
GetItemCount(cnum,6476,0) < 1 and GetItemCount(cnum,6476,2) < 1 and 
GetItemCount(cnum,6477,0) < 1 and GetItemCount(cnum,6477,2) < 1 and 
GetItemCount(cnum,6478,0) < 1 and GetItemCount(cnum,6478,2) < 1 and 
GetItemCount(cnum,6479,0) < 1 and GetItemCount(cnum,6479,2) < 1 and 
GetItemCount(cnum,6480,0) < 1 and GetItemCount(cnum,6480,2) < 1 and 
GetItemCount(cnum,6481,0) < 1 and GetItemCount(cnum,6481,2) < 1 and 
GetItemCount(cnum,6482,0) < 1 and GetItemCount(cnum,6482,2) < 1 and 
GetItemCount(cnum,6483,0) < 1 and GetItemCount(cnum,6483,2) < 1 and 
GetItemCount(cnum,6484,0) < 1 and GetItemCount(cnum,6484,2) < 1 and 
GetItemCount(cnum,6485,0) < 1 and GetItemCount(cnum,6485,2) < 1 and 
GetItemCount(cnum,6486,0) < 1 and GetItemCount(cnum,6486,2) < 1 and 
GetItemCount(cnum,8057,0) < 1 and GetItemCount(cnum,8057,2) < 1 and 
GetItemCount(cnum,8058,0) < 1 and GetItemCount(cnum,8058,2) < 1 and 
GetItemCount(cnum,8059,0) < 1 and GetItemCount(cnum,8059,2) < 1 and 
GetItemCount(cnum,8060,0) < 1 and GetItemCount(cnum,8060,2) < 1 and 
GetItemCount(cnum,8061,0) < 1 and GetItemCount(cnum,8061,2) < 1 and 
GetItemCount(cnum,8071,0) < 1 and GetItemCount(cnum,8071,2) < 1 and 
GetItemCount(cnum,8072,0) < 1 and GetItemCount(cnum,8072,2) < 1 and 
GetItemCount(cnum,8073,0) < 1 and GetItemCount(cnum,8073,2) < 1 and 
GetItemCount(cnum,8074,0) < 1 and GetItemCount(cnum,8074,2) < 1 and 
GetItemCount(cnum,8145,0) < 1 and GetItemCount(cnum,8145,2) < 1 and 
GetItemCount(cnum,8146,0) < 1 and GetItemCount(cnum,8146,2) < 1 and 
GetItemCount(cnum,8147,0) < 1 and GetItemCount(cnum,8147,2) < 1 and 
GetItemCount(cnum,8148,0) < 1 and GetItemCount(cnum,8148,2) < 1 and 
GetItemCount(cnum,8149,0) < 1 and GetItemCount(cnum,8149,2) < 1 and 
GetItemCount(cnum,8151,0) < 1 and GetItemCount(cnum,8151,2) < 1 and 
GetItemCount(cnum,8167,0) < 1 and GetItemCount(cnum,8167,2) < 1 and 
GetItemCount(cnum,8168,0) < 1 and GetItemCount(cnum,8168,2) < 1 and 
GetItemCount(cnum,8169,0) < 1 and GetItemCount(cnum,8169,2) < 1 and 
GetItemCount(cnum,8170,0) < 1 and GetItemCount(cnum,8170,2) < 1 and 
GetItemCount(cnum,8175,0) < 1 and GetItemCount(cnum,8175,2) < 1 and 
GetItemCount(cnum,8176,0) < 1 and GetItemCount(cnum,8176,2) < 1 and 
GetItemCount(cnum,8177,0) < 1 and GetItemCount(cnum,8177,2) < 1 and 
GetItemCount(cnum,8187,0) < 1 and GetItemCount(cnum,8187,2) < 1 and 
GetItemCount(cnum,8266,0) < 1 and GetItemCount(cnum,8266,2) < 1 and 
GetItemCount(cnum,8267,0) < 1 and GetItemCount(cnum,8267,2) < 1 and 
GetItemCount(cnum,8268,0) < 1 and GetItemCount(cnum,8268,2) < 1 and 
GetItemCount(cnum,8269,0) < 1 and GetItemCount(cnum,8269,2) < 1 and 
GetItemCount(cnum,8270,0) < 1 and GetItemCount(cnum,8270,2) < 1 and 
GetItemCount(cnum,8271,0) < 1 and GetItemCount(cnum,8271,2) < 1 and 
GetItemCount(cnum,8272,0) < 1 and GetItemCount(cnum,8272,2) < 1 and 
GetItemCount(cnum,8273,0) < 1 and GetItemCount(cnum,8273,2) < 1 and 
GetItemCount(cnum,8274,0) < 1 and GetItemCount(cnum,8274,2) < 1 and 
GetItemCount(cnum,8275,0) < 1 and GetItemCount(cnum,8275,2) < 1 and 
GetItemCount(cnum,8276,0) < 1 and GetItemCount(cnum,8276,2) < 1 and 
GetItemCount(cnum,8277,0) < 1 and GetItemCount(cnum,8277,2) < 1 and 
GetItemCount(cnum,8278,0) < 1 and GetItemCount(cnum,8278,2) < 1 and 
GetItemCount(cnum,8279,0) < 1 and GetItemCount(cnum,8279,2) < 1 and 
GetItemCount(cnum,8280,0) < 1 and GetItemCount(cnum,8280,2) < 1 and 
GetItemCount(cnum,8281,0) < 1 and GetItemCount(cnum,8281,2) < 1 and 
GetItemCount(cnum,8282,0) < 1 and GetItemCount(cnum,8282,2) < 1 and 
GetItemCount(cnum,8283,0) < 1 and GetItemCount(cnum,8283,2) < 1 and 
GetItemCount(cnum,8284,0) < 1 and GetItemCount(cnum,8284,2) < 1 and 
GetItemCount(cnum,8285,0) < 1 and GetItemCount(cnum,8285,2) < 1 and 
GetItemCount(cnum,8286,0) < 1 and GetItemCount(cnum,8286,2) < 1 and 
GetItemCount(cnum,8287,0) < 1 and GetItemCount(cnum,8287,2) < 1 and 
GetItemCount(cnum,8288,0) < 1 and GetItemCount(cnum,8288,2) < 1 and 
GetItemCount(cnum,8304,0) < 1 and GetItemCount(cnum,8304,2) < 1 and 
GetItemCount(cnum,8305,0) < 1 and GetItemCount(cnum,8305,2) < 1 and 
GetItemCount(cnum,8310,0) < 1 and GetItemCount(cnum,8310,2) < 1 and 
GetItemCount(cnum,8311,0) < 1 and GetItemCount(cnum,8311,2) < 1 and 
GetItemCount(cnum,8312,0) < 1 and GetItemCount(cnum,8312,2) < 1 and 
GetItemCount(cnum,8313,0) < 1 and GetItemCount(cnum,8313,2) < 1 and 
GetItemCount(cnum,8314,0) < 1 and GetItemCount(cnum,8314,2) < 1 and 
GetItemCount(cnum,8315,0) < 1 and GetItemCount(cnum,8315,2) < 1 and 
GetItemCount(cnum,8316,0) < 1 and GetItemCount(cnum,8316,2) < 1 and 
GetItemCount(cnum,8317,0) < 1 and GetItemCount(cnum,8317,2) < 1 and 
GetItemCount(cnum,8318,0) < 1 and GetItemCount(cnum,8318,2) < 1 and 
GetItemCount(cnum,8319,0) < 1 and GetItemCount(cnum,8319,2) < 1 and 
GetItemCount(cnum,8320,0) < 1 and GetItemCount(cnum,8320,2) < 1 and 
GetItemCount(cnum,8321,0) < 1 and GetItemCount(cnum,8321,2) < 1 and 
GetItemCount(cnum,8337,0) < 1 and GetItemCount(cnum,8337,2) < 1 and 
GetItemCount(cnum,8427,0) < 1 and GetItemCount(cnum,8427,2) < 1 and 
GetItemCount(cnum,8461,0) < 1 and GetItemCount(cnum,8461,2) < 1 and 
GetItemCount(cnum,8462,0) < 1 and GetItemCount(cnum,8462,2) < 1 and 
GetItemCount(cnum,8463,0) < 1 and GetItemCount(cnum,8463,2) < 1 and 
GetItemCount(cnum,8464,0) < 1 and GetItemCount(cnum,8464,2) < 1 and 
GetItemCount(cnum,8465,0) < 1 and GetItemCount(cnum,8465,2) < 1 and 
GetItemCount(cnum,8466,0) < 1 and GetItemCount(cnum,8466,2) < 1 and 
GetItemCount(cnum,8467,0) < 1 and GetItemCount(cnum,8467,2) < 1 and 
GetItemCount(cnum,8468,0) < 1 and GetItemCount(cnum,8468,2) < 1 and 
GetItemCount(cnum,8478,0) < 1 and GetItemCount(cnum,8478,2) < 1 and 
GetItemCount(cnum,8479,0) < 1 and GetItemCount(cnum,8479,2) < 1 and 
GetItemCount(cnum,8480,0) < 1 and GetItemCount(cnum,8480,2) < 1 and 
GetItemCount(cnum,8481,0) < 1 and GetItemCount(cnum,8481,2) < 1 and 
GetItemCount(cnum,8483,0) < 1 and GetItemCount(cnum,8483,2) < 1 and 
GetItemCount(cnum,8484,0) < 1 and GetItemCount(cnum,8484,2) < 1 and 
GetItemCount(cnum,8485,0) < 1 and GetItemCount(cnum,8485,2) < 1 and 
GetItemCount(cnum,8486,0) < 1 and GetItemCount(cnum,8486,2) < 1 and 
GetItemCount(cnum,8487,0) < 1 and GetItemCount(cnum,8487,2) < 1 and 
GetItemCount(cnum,8550,0) < 1 and GetItemCount(cnum,8550,2) < 1 and 
GetItemCount(cnum,8568,0) < 1 and GetItemCount(cnum,8568,2) < 1 and 
GetItemCount(cnum,8569,0) < 1 and GetItemCount(cnum,8569,2) < 1 and 
GetItemCount(cnum,8570,0) < 1 and GetItemCount(cnum,8570,2) < 1 and 
GetItemCount(cnum,8571,0) < 1 and GetItemCount(cnum,8571,2) < 1 and 
GetItemCount(cnum,8572,0) < 1 and GetItemCount(cnum,8572,2) < 1 and 
GetItemCount(cnum,8573,0) < 1 and GetItemCount(cnum,8573,2) < 1 and 
GetItemCount(cnum,8574,0) < 1 and GetItemCount(cnum,8574,2) < 1 and 
GetItemCount(cnum,8575,0) < 1 and GetItemCount(cnum,8575,2) < 1 then

			if GetHeroLv(cnum, 1) < 41 then
				SetSwitchCount(cnum, 573, 1)
				MoveZone(cnum, 208, 254) -- 40���� ���� �̺�Ʈ�� ����

			elseif GetHeroLv(cnum, 1) < 61 then
					SetSwitchCount(cnum, 573, 1)
					MoveZone(cnum, 209, 254) -- 60���� ���� �̺�Ʈ�� ����

			elseif GetHeroLv(cnum, 1) < 81 then
					SetSwitchCount(cnum, 573, 1)
					MoveZone(cnum, 210, 254) -- 80���� ���� �̺�Ʈ�� ����

			elseif GetHeroLv(cnum, 1) < 101 then
					SetSwitchCount(cnum, 573, 1)
					MoveZone(cnum, 211, 254) -- 100���� ���� �̺�Ʈ�� ����

			elseif GetHeroLv(cnum, 1) < 176 then
					SetSwitchCount(cnum, 573, 1)
					MoveZone(cnum, 212, 254) -- 120���� ���� �̺�Ʈ�� ����

			else
				return 1,0,"���� 2"

			end
		else
			return 1,0,"����~! ���Ű���, ���� �������� ����� �ִ� ���� ���ΰ� �;� �����������!! ���� ������� ������ �ǰ�?..����!! �׷��� ���ΰ� �����~!"
		end


	elseif req == 14 then
			return 1,0,"����~! ������ �ǰ�? �̸��� �����! ���� ������� �����ϱ� ������ ��..����!!"



	elseif req == 100 then -- ���� (1,2ȸ)

		random = SetRandom(cnum,0,100)

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@����ŷ���Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 10 then
				AddItemCount(cnum,8585,-100)
				AddItemCount(cnum,8586,1) -- �ݻ� ��������
				AddSwitchCount(cnum, 574, 1)
				return 1,0,"��~ ���� �ֳ�~! �� ���ϸ� ���� �� â���� ���� ���ڸ� �ϳ� ��������� ���״µ� ������� �ʾƼ� �ȿ� ������ ��������� �𸣰ڳ�!? � ������!"


			elseif random >= 11 and random <= 40 then
				AddItemCount(cnum,8585,-100)
				AddItemCount(cnum,8587,1) -- ���� ��������
				AddSwitchCount(cnum, 574, 1)
				return 1,0,"��~ ���� �ֳ�~! �� ���ϸ� ���� �� â���� ���� ���ڸ� �ϳ� ��������� ���״µ� ������� �ʾƼ� �ȿ� ������ ��������� �𸣰ڳ�!? � ������!"

			elseif random >= 41 and random <= 100 then
				AddItemCount(cnum,8585,-100)
				AddItemCount(cnum,8588,1) -- ���� ��������
				AddSwitchCount(cnum, 574, 1)
				return 1,0,"��~ ���� �ֳ�~! �� ���ϸ� ���� �� â���� ���� ���ڸ� �ϳ� ��������� ���״µ� ������� �ʾƼ� �ȿ� ������ ��������� �𸣰ڳ�!? � ������!"

			else
				return 1,0,"���� 2"

			end
		end


	elseif req == 101 then
		return 1,0,"�����޶��!! �̷� ����غ��� �������༮�鶧���� ���� �̰� ���� �����̶�!"




	elseif req == 200 then -- ����(��������)

		random = SetRandom(cnum,0,100)

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@����ŷ���Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		elseif GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@����ŷ ���Լ� ��ġ�� �ޱ����ؼ� [��ġ �κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."



		else

			if random <= 10 then -- �ݻ� �������� ���� ����
				if GetHeroLv(cnum, 1) < 41 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8586,1) -- �ݻ� ��������
					AddHench(cnum,819,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 61 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8586,1) -- �ݻ� ��������
					AddHench(cnum,820,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 81 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8586,1) -- �ݻ� ��������
					AddHench(cnum,821,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 101 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8586,1) -- �ݻ� ��������
					AddHench(cnum,822,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 176 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8586,1) -- �ݻ� ��������
					AddHench(cnum,823,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				else
					return 1,0,"���� 2"

				end



			elseif random >= 11 and random <= 40 then -- ���� �������� ���� ����

				if GetHeroLv(cnum, 1) < 41 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8587,1) -- ���� ��������
					AddHench(cnum,819,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 61 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8587,1) -- ���� ��������
					AddHench(cnum,820,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 81 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8587,1) -- ���� ��������
					AddHench(cnum,821,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 101 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8587,1) -- ���� ��������
					AddHench(cnum,822,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 176 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8587,1) -- ���� ��������
					AddHench(cnum,823,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				else
					return 1,0,"���� 2"

				end


			elseif random >= 41 and random <= 100 then -- ���� �������� ���� ����

				if GetHeroLv(cnum, 1) < 41 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8588,1) -- ���� ��������
					AddHench(cnum,819,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 61 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8588,1) -- ���� ��������
					AddHench(cnum,820,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 81 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8588,1) -- ���� ��������
					AddHench(cnum,821,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 101 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8588,1) -- ���� ��������
					AddHench(cnum,822,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				elseif GetHeroLv(cnum, 1) < 176 then
					AddItemCount(cnum,8585,-100)
					AddItemCount(cnum,8588,1) -- ���� ��������
					AddHench(cnum,823,1)
					SetSwitchCount(cnum, 575, 1)
					return 1,0,"����! �������� �ٽ� �鷯�� ���� ���������� �� �Ʒý��� �ְ�~! "

				else
					return 1,0,"���� 2"

				end

			else
				return 1,0,"���� 2"

			end
		end
	end
end







 function NPC_QUEST_1051(cnum,reqNumber) -- ������

req = reqNumber

	if req == 1 then

		random = SetRandom(cnum,0,100)

		if GetSwitchCount(cnum, 575) < 1 and GetItemCount(cnum, 8585, 0) > 99 then -- ����ŷ �������� �� ��ȭ ����
			if random <= 19 then
				return 1,0,"��ȣȣ~�������~�츮 ���� ����麸�ٴ� �� �ϰ�����..������ ���غ��̴µ���?"

			elseif random >= 20 and random <= 38 then
				return 1,0,"�����Դ� ���� ���� �־��. �ٵ� ��� ������ �Ⱥ��̳׿�?"

			elseif random >= 39 and random <= 57 then
				return 1,0,"���� ���� �� �������� �ֱ� �������������� ǫ �����ִ�ϴ�"

			elseif random >= 58 and random <= 76 then
				return 1,0,"����ŷ���� ������� �̻��ϰ� Ȱ�������̴µ�..�̻��ؿ�..��! �۳� �̸����� �׷��µ�..�� �׷��� �Ƽ���?"

			elseif random >= 77 and random <= 95 then
				return 1,0,"������Ÿ ������ ���� ����ؿ�. Ư�� 300������ ������ �������������� ���� �����ϴٴϱ��."

			elseif random >= 96 and random <= 100 then
				return 3,0,"��..�� ���ڳ׿�..��� �� ���� �����Ÿ�̰� � ������ ���� �ñ��ؿ�! �װ������� �ֽŴٸ� ���� ����ŷ�� ���� �������ڸ� �ϳ� �帱�Կ�! ���?",10,"���ƿ�",11,"�Ⱦ��"


			else
				return 1,0,"���� 2"
			end


		elseif GetSwitchCount(cnum, 575) > 0 and GetSwitchCount(cnum, 576) < 1 and GetItemCount(cnum, 8585, 0) > 99 then -- ���� ���� �� ��ȭ ����
			if random <= 19 then
				return 1,0,"��Ӹ�~���̾��? �� ���� �� ��Ź�ؿ�~��ȣȣ~"

			elseif random >= 20 and random <= 38 then
				return 1,0,"���! �ʹ����� �����ϼ���~! �뷯�Կ����ϸ� ������������ �ƹ��͵� �ƴϳ׿�."

			elseif random >= 39 and random <= 57 then
				return 1,0,"����ŷ���� ������� �̻��ϰ� Ȱ�������̴µ�..�̻��ؿ�..��! �۳� �̸����� �׷��µ�..�� �׷��� �Ƽ���?"

			elseif random >= 58 and random <= 76 then
				return 1,0,"�� �����ϴٴ� ������������ ��� �׷��� ���� ���� �ƴϿ�����? �칰���� ������ ��� ���� �� ��︮�׿�"

			elseif random >= 77 and random <= 95 then
				return 1,0,"����ŷ���� ���� �� ��������� �� ���ƿ�. ������Ÿ ������ ���� �������� ���ؼ� �ϱ��?"

			elseif random >= 96 and random <= 100 then
				return 3,0,"��..�� ���ڳ׿�..��� �� ���� �����Ÿ�̰� � ������ ���� �ñ��ؿ�! �װ������� �ֽŴٸ� ���� ����ŷ�� ���� �������ڸ� �ϳ� �帱�Կ�! ���?",10,"���ƿ�",11,"�Ⱦ��"

			else
				return 1,0,"���� 2"
			end


		elseif GetSwitchCount(cnum, 575) > 0 then -- ���� �̺�Ʈ ���� ���� �� ����
			if random <= 20 then
				return 1,0,"��Ӹ�~���̾��? �� ���� �� ��Ź�ؿ�~��ȣȣ~"

			elseif random >= 21 and random <= 40 then
				return 1,0,"���! �ʹ����� �����ϼ���~! �뷯�Կ����ϸ� ������������ �ƹ��͵� �ƴϳ׿�."

			elseif random >= 41 and random <= 60 then
				return 1,0,"����ŷ���� ������� �̻��ϰ� Ȱ�������̴µ�..�̻��ؿ�..��! �۳� �̸����� �׷��µ�..�� �׷��� �Ƽ���?"

			elseif random >= 61 and random <= 80 then
				return 1,0,"�� �����ϴٴ� ������������ ��� �׷��� ���� ���� �ƴϿ�����? �칰���� ������ ��� ���� �� ��︮�׿�"

			elseif random >= 81 and random <= 100 then
				return 1,0,"����ŷ���� ���� �� ��������� �� ���ƿ�. ������Ÿ ������ ���� �������� ���ؼ� �ϱ��?"

			else
				return 1,0,"���� 2"
			end




		else -- ���� ���¿��� ��ȭ ��

			if random <= 20 then
				return 1,0,"��ȣȣ~�������~�츮 ���� ����麸�ٴ� �� �ϰ�����..������ ���غ��̴µ���?"

			elseif random >= 21 and random <= 40 then
				return 1,0,"�����Դ� ���� ���� �־��. �ٵ� ��� ������ �Ⱥ��̳׿�?"

			elseif random >= 41 and random <= 60 then
				return 1,0,"���� ���� �� �������� �ֱ� �������������� ǫ �����ִ�ϴ�"

			elseif random >= 61 and random <= 80 then
				return 1,0,"����ŷ���� ������� �̻��ϰ� Ȱ�������̴µ�..�̻��ؿ�..��! �۳� �̸����� �׷��µ�..�� �׷��� �Ƽ���?"

			elseif random >= 81 and random <= 100 then
				return 1,0,"������Ÿ ������ ���� ����ؿ�. Ư�� 300������ ������ �������������� ���� �����ϴٴϱ��."

			end
		end



	elseif req == 10 then -- ������ ���� �̺�Ʈ

		random = SetRandom(cnum,0,100)

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@���������Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 10 then
				AddItemCount(cnum,8585,-100)
				AddItemCount(cnum,8586,1) -- �ݻ� ��������
				AddSwitchCount(cnum, 576, 1)
				return 1,0,"��ӳ�! ������! ���� ��������! �� ����������~!"


			elseif random >= 11 and random <= 40 then
				AddItemCount(cnum,8585,-100)
				AddItemCount(cnum,8587,1) -- ���� ��������
				AddSwitchCount(cnum, 576, 1)
				return 1,0,"��ӳ�! ������! ���� ��������! �� ����������~!"

			elseif random >= 41 and random <= 100 then
				AddItemCount(cnum,8585,-100)
				AddItemCount(cnum,8588,1) -- ���� ��������
				AddSwitchCount(cnum, 576, 1)
				return 1,0,"��ӳ�! ������! ���� ��������! �� ����������~!"

			else
				return 1,0,"���� 2"

			end
		end


	elseif req == 11 then
		return 1,0,"���� ������ ������ �ƽ��׿�..."


	else
		return 1,0,"���� 2"

	end
end







 function NPC_QUEST_1052(cnum,reqNumber) -- ��������

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 577) < 1 then
			return 2,0,"�̾�~�ʹ� ���ִ�! �Ų��ϰ� ������ ���� ����..�̾�~@��ӳ�! ������! ���� ������Ÿ�� �� �ȳ��� �ϰ� �־��~! ������Ÿ�� �ٽ� ���ư��Ƿ���? " ,11,"��"

		else
			return 2,0,"��~ ���̾��? ������Ÿ�� �ٽ� ���ư��Ƿ���? " ,11,"��"
		end


	elseif req == 11 then
		SetSwitchCount(cnum, 577, 1)
		MoveZone(cnum,57,253) -- ������Ÿ�� �̵�
	end
end

function NPC_QUEST_1053(cnum,reqNumber) -- ��������

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 577) < 1 then
			return 2,0,"�̾�~�ʹ� ���ִ�! �Ų��ϰ� ������ ���� ����..�̾�~@��ӳ�! ������! ���� ������Ÿ�� �� �ȳ��� �ϰ� �־��~! ������Ÿ�� �ٽ� ���ư��Ƿ���? " ,11,"��"

		else
			return 2,0,"��~ ���̾��? ������Ÿ�� �ٽ� ���ư��Ƿ���? " ,11,"��"
		end


	elseif req == 11 then
		SetSwitchCount(cnum, 577, 1)
		MoveZone(cnum,57,253) -- ������Ÿ�� �̵�
	end
end

function NPC_QUEST_1054(cnum,reqNumber) -- ��������

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 577) < 1 then
			return 2,0,"�̾�~�ʹ� ���ִ�! �Ų��ϰ� ������ ���� ����..�̾�~@��ӳ�! ������! ���� ������Ÿ�� �� �ȳ��� �ϰ� �־��~! ������Ÿ�� �ٽ� ���ư��Ƿ���? " ,11,"��"

		else
			return 2,0,"��~ ���̾��? ������Ÿ�� �ٽ� ���ư��Ƿ���? " ,11,"��"
		end


	elseif req == 11 then
		SetSwitchCount(cnum, 577, 1)
		MoveZone(cnum,57,253) -- ������Ÿ�� �̵�
	end
end

function NPC_QUEST_1055(cnum,reqNumber) -- ��������

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 577) < 1 then
			return 2,0,"�̾�~�ʹ� ���ִ�! �Ų��ϰ� ������ ���� ����..�̾�~@��ӳ�! ������! ���� ������Ÿ�� �� �ȳ��� �ϰ� �־��~! ������Ÿ�� �ٽ� ���ư��Ƿ���? " ,11,"��"

		else
			return 2,0,"��~ ���̾��? ������Ÿ�� �ٽ� ���ư��Ƿ���? " ,11,"��"
		end


	elseif req == 11 then
		SetSwitchCount(cnum, 577, 1)
		MoveZone(cnum,57,253) -- ������Ÿ�� �̵�
	end
end

function NPC_QUEST_1056(cnum,reqNumber) -- ��������

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 577) < 1 then
			return 2,0,"�̾�~�ʹ� ���ִ�! �Ų��ϰ� ������ ���� ����..�̾�~@��ӳ�! ������! ���� ������Ÿ�� �� �ȳ��� �ϰ� �־��~! ������Ÿ�� �ٽ� ���ư��Ƿ���? " ,11,"��"

		else
			return 2,0,"��~ ���̾��? ������Ÿ�� �ٽ� ���ư��Ƿ���? " ,11,"��"
		end


	elseif req == 11 then
		SetSwitchCount(cnum, 577, 1)
		MoveZone(cnum,57,253) -- ������Ÿ�� �̵�
	end
end





