function NPC_QUEST_673(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 385) < 1 then
			return 3,0,"�ȳ��ϽŰ���? ���� ��ſ��� �������� ȥ�� �������µ�.. Ȥ��, ���� �׸��� ���� ���ý��ϱ�?",2,"�װ� ���ϱ�?",3,"�Դ°ǰ���?(����~)"


		else
			return 4,0,"���� ���ƿԳ���? ��.. � �׸������� ��ƿ��̴��� �����ֽ�����.",52,"�Ķ�ǳ �׸������� ��� �Խ��ϴ�",53,"Į������ �׸������� ��� �Խ��ϴ�",54,"����� �׸������� ��� �Խ��ϴ�"


		end




	elseif req == 2 then
		return 3,0,"���� ���� ������ ���ƴٴϸ� ���� �׸��� �����ϴ� ����Դϴ�. �׳�.. ������ �׸� ������ ������ �ص���. ���.. ���� ���� ���ϰ� ���� �׸����� �ִµ�, [�Ķ�ǳ �׸�, Į������ �׸�, ����� �׸�] �̰͵� �Դϴ�. ������ ���̿����� �α������� ���� �׸�������. �����? ���� ���� ���� �׸��� �� ã���ֽðڳ���?",12,"������. �ðܸ� �ֽ�����.",13,"���̳� ã����."



	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 2,0,"����! �������� ȥ�� �������� ����̱���. �׷�, ������ �帮�ڽ��ϴ�. �� ��������. ���� ã�� [�Ķ�ǳ �׸�, Į������ �׸�, ����� �׸�] ���� �׸����� ���� 9�������� �������� �ֽ��ϴ�. �������� ���� ���ϸ�.. ������ �����ϱ� ���� 9�������� �����ٰ� �ϴµ� ���п� ����ǰ�� ���� ���ܳ��� �Ǿ����ϴ�.",22,"�׷�����?"



	elseif req == 13 then
		return 0	
		



	elseif req == 22 then
		return 2,0,"�׸����� ���͵��� ���� �ִٰ� �ϴµ�.. ����ǰ�� ���� �̰� ������ ����� �ִ� ���Դϴ�. �׷���, ��ƿ��� �� �� ���� ���� ���� �ּ����� �մϴ�. �� �߿��� ��ǰ�� ��󳻾� �� �� ������. �� �׸����� �ʿ��� ������ ������ �����ϴ�. [�Ķ�ǳ �׸����� �� 20����] [Į������ �׸����� �� 40����] [����� �׸����� �� 60����]",32,"������~ �ʹ� ��������?"


		


	elseif req == 32 then
		return 3,0,"���̺��̱� ������.. ��¿ �� ����. ��ǰ�� ���ؼ����.. ����.. ��¶�� ��� �׸��� �Ѳ����� ��ƿ��� �ʿ�� ����, �� �׸� �ʿ� ������ŭ�� �������� �˴ϴ�. �׷���, ���� �� �׸��� ����ġ�� �´� ������ �帮���� ������. ���? �����Ͻ���?",42,"��~ �� ���� ���̾�.. �� ���ƿ�����.",43,"�ʹ� ��Ʊ�. ������ ����."




	elseif req == 42 then
		AddSwitchCount(cnum, 385, 1)



	elseif req == 43 then
		return 0





	elseif req == 52 then
		if GetItemCount(cnum, 54, 0) < 20 or
		   GetItemCount(cnum, 55, 0) < 20 or 		
		   GetItemCount(cnum, 56, 0) < 20 or
		   GetItemCount(cnum, 57, 0) < 20 or
		   GetItemCount(cnum, 58, 0) < 20 or
		   GetItemCount(cnum, 59, 0) < 20 or
		   GetItemCount(cnum, 60, 0) < 20 or
		   GetItemCount(cnum, 61, 0) < 20 or
		   GetItemCount(cnum, 62, 0) < 20 then
			return 1,0,"�ƴ�.. �̰� ������? �׸������� ������ �����ϱ���. �Ķ�ǳ �׸������� 9������ ���� 20���� �ʿ��մϴ�. ������?"




		else
			return 5,0,"�����! �׷���Ʈ! ���� ����� �������� ������ �ֱ���. ���? �̹� ��ȸ�� �� ���ڷ� �����°�.. ������ ��·��.. ����� ������ �帮���� ������. ���� �� ������. ��.. ������ �κ��丮�� ������ ������ ����մϴ�.",62,"ǮEXP ��ũ(4�ð�)",63,"���� ���� ����(10��)",64,"�ͽ���",65,"���� �ް���(30��)"


		end



	elseif req == 53 then
		if GetItemCount(cnum, 45, 0) < 40 or
		   GetItemCount(cnum, 46, 0) < 40 or 		
		   GetItemCount(cnum, 47, 0) < 40 or
		   GetItemCount(cnum, 48, 0) < 40 or
		   GetItemCount(cnum, 49, 0) < 40 or
		   GetItemCount(cnum, 50, 0) < 40 or
		   GetItemCount(cnum, 51, 0) < 40 or
		   GetItemCount(cnum, 52, 0) < 40 or
		   GetItemCount(cnum, 53, 0) < 40 then
			return 1,0,"�ƴ�.. �̰� ������? �׸������� ������ �����ϱ���. Į������ �׸������� 9������ ���� 40���� �ʿ��մϴ�. ������?"


		else
			return 5,0,"�����! �׷���Ʈ! ���� ����� �������� ������ �ֱ���. ���? �̹� ��ȸ�� �� ���ڷ� �����°�.. ������ ��·��.. ����� ������ �帮���� ������. ���� �� ������. ��.. ������ �κ��丮�� ������ ������ ����մϴ�.",72,"ǮEXP ��ũ(6�ð�)",73,"������ ����(1��)",74,"��ȭ�� ����(1��)",75,"���ݼӵ� ���� ��ũ��(10��)"


		end





	elseif req == 54 then
		if GetItemCount(cnum, 36, 0) < 60 or
		   GetItemCount(cnum, 37, 0) < 60 or 		
		   GetItemCount(cnum, 38, 0) < 60 or
		   GetItemCount(cnum, 39, 0) < 60 or
		   GetItemCount(cnum, 40, 0) < 60 or
		   GetItemCount(cnum, 41, 0) < 60 or
		   GetItemCount(cnum, 42, 0) < 60 or
		   GetItemCount(cnum, 43, 0) < 60 or
		   GetItemCount(cnum, 44, 0) < 60 then
			return 1,0,"�ƴ�.. �̰� ������? �׸������� ������ �����ϱ���. ����� �׸������� 9������ ���� 60���� �ʿ��մϴ�. ������?"



		else
			return 5,0,"�����! �׷���Ʈ! ���� ����� �������� ������ �ֱ���. ���? �̹� ��ȸ�� �� ���ڷ� �����°�.. ������ ��·��.. ����� ������ �帮���� ������. ���� �� ������. ��.. ������ �κ��丮�� ������ ������ ����մϴ�.",82,"���ֹ��� �����̾� ��ũ",83,"�ҿ�����-��(4��)",84,"�ູ�� �ó������� ��¹���(2��)",85,"�ð�����(1��)"


		end







	elseif req == 62 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4513, 1)
			AddSwitchCount(cnum, 386, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 63 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4607, 1)
			AddSwitchCount(cnum, 387, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end




	elseif req == 64 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 2700, 1)
			AddSwitchCount(cnum, 388, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 65 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4491, 30)
			AddSwitchCount(cnum, 389, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end		





	elseif req == 72 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 4514, 1)
			AddSwitchCount(cnum, 390, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end




	elseif req == 73 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 3318, 1)
			AddSwitchCount(cnum, 391, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 74 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 917, 1)
			AddSwitchCount(cnum, 392, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 75 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 895, 10)
			AddSwitchCount(cnum, 393, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 82 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3725, 1)
			AddSwitchCount(cnum, 394, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 83 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddSwitchCount(cnum, 395, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 84 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 1027, 2)
			AddSwitchCount(cnum, 396, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end




	elseif req == 85 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 943, 1)
			AddSwitchCount(cnum, 397, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end


	else
		return 0

	end
end














function NPC_QUEST_674(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 385) < 1 then
			return 3,0,"�ȳ��ϽŰ���? ���� ��ſ��� �������� ȥ�� �������µ�.. Ȥ��, ���� �׸��� ���� ���ý��ϱ�?",2,"�װ� ���ϱ�?",3,"�Դ°ǰ���?(����~)"


		else
			return 4,0,"���� ���ƿԳ���? ��.. � �׸������� ��ƿ��̴��� �����ֽ�����.",52,"�Ķ�ǳ �׸������� ��� �Խ��ϴ�",53,"Į������ �׸������� ��� �Խ��ϴ�",54,"����� �׸������� ��� �Խ��ϴ�"


		end




	elseif req == 2 then
		return 3,0,"���� ���� ������ ���ƴٴϸ� ���� �׸��� �����ϴ� ����Դϴ�. �׳�.. ������ �׸� ������ ������ �ص���. ���.. ���� ���� ���ϰ� ���� �׸����� �ִµ�, [�Ķ�ǳ �׸�, Į������ �׸�, ����� �׸�] �̰͵� �Դϴ�. ������ ���̿����� �α������� ���� �׸�������. �����? ���� ���� ���� �׸��� �� ã���ֽðڳ���?",12,"������. �ðܸ� �ֽ�����.",13,"���̳� ã����."



	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 2,0,"����! �������� ȥ�� �������� ����̱���. �׷�, ������ �帮�ڽ��ϴ�. �� ��������. ���� ã�� [�Ķ�ǳ �׸�, Į������ �׸�, ����� �׸�] ���� �׸����� ���� 9�������� �������� �ֽ��ϴ�. �������� ���� ���ϸ�.. ������ �����ϱ� ���� 9�������� �����ٰ� �ϴµ� ���п� ����ǰ�� ���� ���ܳ��� �Ǿ����ϴ�.",22,"�׷�����?"



	elseif req == 13 then
		return 0	
		



	elseif req == 22 then
		return 2,0,"�׸����� ���͵��� ���� �ִٰ� �ϴµ�.. ����ǰ�� ���� �̰� ������ ����� �ִ� ���Դϴ�. �׷���, ��ƿ��� �� �� ���� ���� ���� �ּ����� �մϴ�. �� �߿��� ��ǰ�� ��󳻾� �� �� ������. �� �׸����� �ʿ��� ������ ������ �����ϴ�. [�Ķ�ǳ �׸����� �� 20����] [Į������ �׸����� �� 40����] [����� �׸����� �� 60����]",32,"������~ �ʹ� ��������?"


		


	elseif req == 32 then
		return 3,0,"���̺��̱� ������.. ��¿ �� ����. ��ǰ�� ���ؼ����.. ����.. ��¶�� ��� �׸��� �Ѳ����� ��ƿ��� �ʿ�� ����, �� �׸� �ʿ� ������ŭ�� �������� �˴ϴ�. �׷���, ���� �� �׸��� ����ġ�� �´� ������ �帮���� ������. ���? �����Ͻ���?",42,"��~ �� ���� ���̾�.. �� ���ƿ�����.",43,"�ʹ� ��Ʊ�. ������ ����."




	elseif req == 42 then
		AddSwitchCount(cnum, 385, 1)



	elseif req == 43 then
		return 0





	elseif req == 52 then
		if GetItemCount(cnum, 54, 0) < 20 or
		   GetItemCount(cnum, 55, 0) < 20 or 		
		   GetItemCount(cnum, 56, 0) < 20 or
		   GetItemCount(cnum, 57, 0) < 20 or
		   GetItemCount(cnum, 58, 0) < 20 or
		   GetItemCount(cnum, 59, 0) < 20 or
		   GetItemCount(cnum, 60, 0) < 20 or
		   GetItemCount(cnum, 61, 0) < 20 or
		   GetItemCount(cnum, 62, 0) < 20 then
			return 1,0,"�ƴ�.. �̰� ������? �׸������� ������ �����ϱ���. �Ķ�ǳ �׸������� 9������ ���� 20���� �ʿ��մϴ�. ������?"




		else
			return 5,0,"�����! �׷���Ʈ! ���� ����� �������� ������ �ֱ���. ���? �̹� ��ȸ�� �� ���ڷ� �����°�.. ������ ��·��.. ����� ������ �帮���� ������. ���� �� ������. ��.. ������ �κ��丮�� ������ ������ ����մϴ�.",62,"ǮEXP ��ũ(4�ð�)",63,"���� ���� ����(10��)",64,"�ͽ���",65,"���� �ް���(30��)"


		end



	elseif req == 53 then
		if GetItemCount(cnum, 45, 0) < 40 or
		   GetItemCount(cnum, 46, 0) < 40 or 		
		   GetItemCount(cnum, 47, 0) < 40 or
		   GetItemCount(cnum, 48, 0) < 40 or
		   GetItemCount(cnum, 49, 0) < 40 or
		   GetItemCount(cnum, 50, 0) < 40 or
		   GetItemCount(cnum, 51, 0) < 40 or
		   GetItemCount(cnum, 52, 0) < 40 or
		   GetItemCount(cnum, 53, 0) < 40 then
			return 1,0,"�ƴ�.. �̰� ������? �׸������� ������ �����ϱ���. Į������ �׸������� 9������ ���� 40���� �ʿ��մϴ�. ������?"


		else
			return 5,0,"�����! �׷���Ʈ! ���� ����� �������� ������ �ֱ���. ���? �̹� ��ȸ�� �� ���ڷ� �����°�.. ������ ��·��.. ����� ������ �帮���� ������. ���� �� ������. ��.. ������ �κ��丮�� ������ ������ ����մϴ�.",72,"ǮEXP ��ũ(6�ð�)",73,"������ ����(1��)",74,"��ȭ�� ����(1��)",75,"���ݼӵ� ���� ��ũ��(10��)"


		end





	elseif req == 54 then
		if GetItemCount(cnum, 36, 0) < 60 or
		   GetItemCount(cnum, 37, 0) < 60 or 		
		   GetItemCount(cnum, 38, 0) < 60 or
		   GetItemCount(cnum, 39, 0) < 60 or
		   GetItemCount(cnum, 40, 0) < 60 or
		   GetItemCount(cnum, 41, 0) < 60 or
		   GetItemCount(cnum, 42, 0) < 60 or
		   GetItemCount(cnum, 43, 0) < 60 or
		   GetItemCount(cnum, 44, 0) < 60 then
			return 1,0,"�ƴ�.. �̰� ������? �׸������� ������ �����ϱ���. ����� �׸������� 9������ ���� 60���� �ʿ��մϴ�. ������?"



		else
			return 5,0,"�����! �׷���Ʈ! ���� ����� �������� ������ �ֱ���. ���? �̹� ��ȸ�� �� ���ڷ� �����°�.. ������ ��·��.. ����� ������ �帮���� ������. ���� �� ������. ��.. ������ �κ��丮�� ������ ������ ����մϴ�.",82,"���ֹ��� �����̾� ��ũ",83,"�ҿ�����-��(4��)",84,"�ູ�� �ó������� ��¹���(2��)",85,"�ð�����(1��)"


		end







	elseif req == 62 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4513, 1)
			AddSwitchCount(cnum, 386, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 63 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4607, 1)
			AddSwitchCount(cnum, 387, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end




	elseif req == 64 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 2700, 1)
			AddSwitchCount(cnum, 388, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 65 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4491, 30)
			AddSwitchCount(cnum, 389, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end		





	elseif req == 72 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 4514, 1)
			AddSwitchCount(cnum, 390, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end




	elseif req == 73 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 3318, 1)
			AddSwitchCount(cnum, 391, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 74 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 917, 1)
			AddSwitchCount(cnum, 392, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 75 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 895, 10)
			AddSwitchCount(cnum, 393, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 82 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3725, 1)
			AddSwitchCount(cnum, 394, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 83 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddSwitchCount(cnum, 395, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 84 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 1027, 2)
			AddSwitchCount(cnum, 396, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end




	elseif req == 85 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 943, 1)
			AddSwitchCount(cnum, 397, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end


	else
		return 0

	end
end










function NPC_QUEST_675(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 385) < 1 then
			return 3,0,"�ȳ��ϽŰ���? ���� ��ſ��� �������� ȥ�� �������µ�.. Ȥ��, ���� �׸��� ���� ���ý��ϱ�?",2,"�װ� ���ϱ�?",3,"�Դ°ǰ���?(����~)"


		else
			return 4,0,"���� ���ƿԳ���? ��.. � �׸������� ��ƿ��̴��� �����ֽ�����.",52,"�Ķ�ǳ �׸������� ��� �Խ��ϴ�",53,"Į������ �׸������� ��� �Խ��ϴ�",54,"����� �׸������� ��� �Խ��ϴ�"


		end




	elseif req == 2 then
		return 3,0,"���� ���� ������ ���ƴٴϸ� ���� �׸��� �����ϴ� ����Դϴ�. �׳�.. ������ �׸� ������ ������ �ص���. ���.. ���� ���� ���ϰ� ���� �׸����� �ִµ�, [�Ķ�ǳ �׸�, Į������ �׸�, ����� �׸�] �̰͵� �Դϴ�. ������ ���̿����� �α������� ���� �׸�������. �����? ���� ���� ���� �׸��� �� ã���ֽðڳ���?",12,"������. �ðܸ� �ֽ�����.",13,"���̳� ã����."



	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 2,0,"����! �������� ȥ�� �������� ����̱���. �׷�, ������ �帮�ڽ��ϴ�. �� ��������. ���� ã�� [�Ķ�ǳ �׸�, Į������ �׸�, ����� �׸�] ���� �׸����� ���� 9�������� �������� �ֽ��ϴ�. �������� ���� ���ϸ�.. ������ �����ϱ� ���� 9�������� �����ٰ� �ϴµ� ���п� ����ǰ�� ���� ���ܳ��� �Ǿ����ϴ�.",22,"�׷�����?"



	elseif req == 13 then
		return 0	
		



	elseif req == 22 then
		return 2,0,"�׸����� ���͵��� ���� �ִٰ� �ϴµ�.. ����ǰ�� ���� �̰� ������ ����� �ִ� ���Դϴ�. �׷���, ��ƿ��� �� �� ���� ���� ���� �ּ����� �մϴ�. �� �߿��� ��ǰ�� ��󳻾� �� �� ������. �� �׸����� �ʿ��� ������ ������ �����ϴ�. [�Ķ�ǳ �׸����� �� 20����] [Į������ �׸����� �� 40����] [����� �׸����� �� 60����]",32,"������~ �ʹ� ��������?"


		


	elseif req == 32 then
		return 3,0,"���̺��̱� ������.. ��¿ �� ����. ��ǰ�� ���ؼ����.. ����.. ��¶�� ��� �׸��� �Ѳ����� ��ƿ��� �ʿ�� ����, �� �׸� �ʿ� ������ŭ�� �������� �˴ϴ�. �׷���, ���� �� �׸��� ����ġ�� �´� ������ �帮���� ������. ���? �����Ͻ���?",42,"��~ �� ���� ���̾�.. �� ���ƿ�����.",43,"�ʹ� ��Ʊ�. ������ ����."




	elseif req == 42 then
		AddSwitchCount(cnum, 385, 1)



	elseif req == 43 then
		return 0





	elseif req == 52 then
		if GetItemCount(cnum, 54, 0) < 20 or
		   GetItemCount(cnum, 55, 0) < 20 or 		
		   GetItemCount(cnum, 56, 0) < 20 or
		   GetItemCount(cnum, 57, 0) < 20 or
		   GetItemCount(cnum, 58, 0) < 20 or
		   GetItemCount(cnum, 59, 0) < 20 or
		   GetItemCount(cnum, 60, 0) < 20 or
		   GetItemCount(cnum, 61, 0) < 20 or
		   GetItemCount(cnum, 62, 0) < 20 then
			return 1,0,"�ƴ�.. �̰� ������? �׸������� ������ �����ϱ���. �Ķ�ǳ �׸������� 9������ ���� 20���� �ʿ��մϴ�. ������?"




		else
			return 5,0,"�����! �׷���Ʈ! ���� ����� �������� ������ �ֱ���. ���? �̹� ��ȸ�� �� ���ڷ� �����°�.. ������ ��·��.. ����� ������ �帮���� ������. ���� �� ������. ��.. ������ �κ��丮�� ������ ������ ����մϴ�.",62,"ǮEXP ��ũ(4�ð�)",63,"���� ���� ����(10��)",64,"�ͽ���",65,"���� �ް���(30��)"


		end



	elseif req == 53 then
		if GetItemCount(cnum, 45, 0) < 40 or
		   GetItemCount(cnum, 46, 0) < 40 or 		
		   GetItemCount(cnum, 47, 0) < 40 or
		   GetItemCount(cnum, 48, 0) < 40 or
		   GetItemCount(cnum, 49, 0) < 40 or
		   GetItemCount(cnum, 50, 0) < 40 or
		   GetItemCount(cnum, 51, 0) < 40 or
		   GetItemCount(cnum, 52, 0) < 40 or
		   GetItemCount(cnum, 53, 0) < 40 then
			return 1,0,"�ƴ�.. �̰� ������? �׸������� ������ �����ϱ���. Į������ �׸������� 9������ ���� 40���� �ʿ��մϴ�. ������?"


		else
			return 5,0,"�����! �׷���Ʈ! ���� ����� �������� ������ �ֱ���. ���? �̹� ��ȸ�� �� ���ڷ� �����°�.. ������ ��·��.. ����� ������ �帮���� ������. ���� �� ������. ��.. ������ �κ��丮�� ������ ������ ����մϴ�.",72,"ǮEXP ��ũ(6�ð�)",73,"������ ����(1��)",74,"��ȭ�� ����(1��)",75,"���ݼӵ� ���� ��ũ��(10��)"


		end





	elseif req == 54 then
		if GetItemCount(cnum, 36, 0) < 60 or
		   GetItemCount(cnum, 37, 0) < 60 or 		
		   GetItemCount(cnum, 38, 0) < 60 or
		   GetItemCount(cnum, 39, 0) < 60 or
		   GetItemCount(cnum, 40, 0) < 60 or
		   GetItemCount(cnum, 41, 0) < 60 or
		   GetItemCount(cnum, 42, 0) < 60 or
		   GetItemCount(cnum, 43, 0) < 60 or
		   GetItemCount(cnum, 44, 0) < 60 then
			return 1,0,"�ƴ�.. �̰� ������? �׸������� ������ �����ϱ���. ����� �׸������� 9������ ���� 60���� �ʿ��մϴ�. ������?"



		else
			return 5,0,"�����! �׷���Ʈ! ���� ����� �������� ������ �ֱ���. ���? �̹� ��ȸ�� �� ���ڷ� �����°�.. ������ ��·��.. ����� ������ �帮���� ������. ���� �� ������. ��.. ������ �κ��丮�� ������ ������ ����մϴ�.",82,"���ֹ��� �����̾� ��ũ",83,"�ҿ�����-��(4��)",84,"�ູ�� �ó������� ��¹���(2��)",85,"�ð�����(1��)"


		end







	elseif req == 62 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4513, 1)
			AddSwitchCount(cnum, 386, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 63 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4607, 1)
			AddSwitchCount(cnum, 387, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end




	elseif req == 64 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 2700, 1)
			AddSwitchCount(cnum, 388, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 65 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4491, 30)
			AddSwitchCount(cnum, 389, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end		





	elseif req == 72 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 4514, 1)
			AddSwitchCount(cnum, 390, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end




	elseif req == 73 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 3318, 1)
			AddSwitchCount(cnum, 391, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 74 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 917, 1)
			AddSwitchCount(cnum, 392, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 75 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 895, 10)
			AddSwitchCount(cnum, 393, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 82 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3725, 1)
			AddSwitchCount(cnum, 394, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 83 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddSwitchCount(cnum, 395, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end





	elseif req == 84 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 1027, 2)
			AddSwitchCount(cnum, 396, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end




	elseif req == 85 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� �������� ���� ������ �����մϴ�."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 943, 1)
			AddSwitchCount(cnum, 397, 1)
			return 1,0,"����.. ������ ���� ��ó���? ��.. �׷�, ���� ��ƿ� �׸������� ������ �غ��߰ڱ�.. ��� �߿� �׸������� ������ �Ǹ� �� �����ֽñ�.. �׷�, ���߿� ���ô�."

		end


	else
		return 0

	end
end