function NPC_QUEST_853(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 524) < 1 then
			return 3,0,"�밨�� �뷯��!@�� �丣��������� ���� �Ƴ��ʸ���� �մϴ�!@�밨�� �뷯�� �� ��Ź �� ����ֽǷ���?",2,"��~! ���غ���!",12,"�Ⱦ��"
		else 
			return 3,0,"�밨�� �뷯��! �ٽ� �͸����η���� ���ðھ��?",7,"��~!",8,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		return 2,0,"�ֱ� �ҽ��뿡 ���ϸ� 20���� ���Ҹ��� �Ǿ��� �丣�������� ��ģ ����ļ����� ���� �Ƹ����̶�� ���� ���� �ָ� �͸����η��忡 ��� �ִٴ� ������ �Լ��Ǿ����ϴ�!",3,"�׷�����?"

	elseif req == 3 then
		return 2,0,"�丣������Բ��� ������ �Ƹ����� �����϶�� Ư���� �����̴µ�..�� ������ ������...",4,"�ֿ�?"

	elseif req == 12 then
		return 1,0,"�밨�� �뷯�Բ��� �����ֽø� �����ٵ�....������ �ٲ�� �ٽ� �� �ּ���!"

	elseif req == 4 then
		return 3,0,"���..�͸����η���� ���ù����� ���̶��ϴ�. ������ �ּ��̴� ������ ��⵵ ������ ������..�밨�� �뷯�Բ��� �� ��� �͸����η��忡�� �Ƹ������� ã���ֽ��� �ʰھ��?",5,"��! ���ƿ�!",6,"�Ⱦ��"

	elseif req == 5 then
		SetSwitchCount(cnum, 524, 1)
		return 2,0,"���� �����ϴ�! ���� �͸����η������ ��Ŵ� �帱�Կ�!!",7,"��!"

	elseif req == 6 then
		return 1,0,"�װ��� ���ù����� ���̴ϱ�..�ηƱ⵵ �Ͻðڳ׿�.....��û�� ������ �ִٰ� �ϴ� �̾߱�� ������...������ �ٲ�� �ٽ� �� �ּ���~!"

	elseif req == 7 then
		if GetSwitchCount(cnum, 523) < 1 then

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 192, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 193, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 194, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 195, 254)
			end

		else

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 196, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 197, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 198, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 199, 254)
			end
		end


	elseif req == 8 then
		return 1,0,"��~! �͸����η��忡��...��û�� ������ �ִٰ� �ϴ� �̾߱Ⱑ �鸮����..������ �ٲ�� �ٽ� �� �ּ���~!"
	end
end


function NPC_QUEST_854(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 524) < 1 then
			return 3,0,"�밨�� �뷯��!@�� �丣��������� ���� �Ƴ��ʸ���� �մϴ�!@�밨�� �뷯�� �� ��Ź �� ����ֽǷ���?",2,"��~! ���غ���!",12,"�Ⱦ��"
		else 
			return 3,0,"�밨�� �뷯��! �ٽ� �͸����η���� ���ðھ��?",7,"��~!",8,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		return 2,0,"�ֱ� �ҽ��뿡 ���ϸ� 20���� ���Ҹ��� �Ǿ��� �丣�������� ��ģ ����ļ����� ���� �Ƹ����̶�� ���� ���� �ָ� �͸����η��忡 ��� �ִٴ� ������ �Լ��Ǿ����ϴ�!",3,"�׷�����?"

	elseif req == 3 then
		return 2,0,"�丣������Բ��� ������ �Ƹ����� �����϶�� Ư���� �����̴µ�..�� ������ ������...",4,"�ֿ�?"

	elseif req == 12 then
		return 1,0,"�밨�� �뷯�Բ��� �����ֽø� �����ٵ�....������ �ٲ�� �ٽ� �� �ּ���!"

	elseif req == 4 then
		return 3,0,"���..�͸����η���� ���ù����� ���̶��ϴ�. ������ �ּ��̴� ������ ��⵵ ������ ������..�밨�� �뷯�Բ��� �� ��� �͸����η��忡�� �Ƹ������� ã���ֽ��� �ʰھ��?",5,"��! ���ƿ�!",6,"�Ⱦ��"

	elseif req == 5 then
		SetSwitchCount(cnum, 524, 1)
		return 2,0,"���� �����ϴ�! ���� �͸����η������ ��Ŵ� �帱�Կ�!!",7,"��!"

	elseif req == 6 then
		return 1,0,"�װ��� ���ù����� ���̴ϱ�..�ηƱ⵵ �Ͻðڳ׿�.....��û�� ������ �ִٰ� �ϴ� �̾߱�� ������...������ �ٲ�� �ٽ� �� �ּ���~!"

	elseif req == 7 then
		if GetSwitchCount(cnum, 523) < 1 then

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 192, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 193, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 194, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 195, 254)
			end

		else

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 196, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 197, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 198, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 199, 254)
			end
		end


	elseif req == 8 then
		return 1,0,"��~! �͸����η��忡��...��û�� ������ �ִٰ� �ϴ� �̾߱Ⱑ �鸮����..������ �ٲ�� �ٽ� �� �ּ���~!"
	end
end





function NPC_QUEST_855(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 524) < 1 then
			return 3,0,"�밨�� �뷯��!@�� �丣��������� ���� �Ƴ��ʸ���� �մϴ�!@�밨�� �뷯�� �� ��Ź �� ����ֽǷ���?",2,"��~! ���غ���!",12,"�Ⱦ��"
		else 
			return 3,0,"�밨�� �뷯��! �ٽ� �͸����η���� ���ðھ��?",7,"��~!",8,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		return 2,0,"�ֱ� �ҽ��뿡 ���ϸ� 20���� ���Ҹ��� �Ǿ��� �丣�������� ��ģ ����ļ����� ���� �Ƹ����̶�� ���� ���� �ָ� �͸����η��忡 ��� �ִٴ� ������ �Լ��Ǿ����ϴ�!",3,"�׷�����?"

	elseif req == 3 then
		return 2,0,"�丣������Բ��� ������ �Ƹ����� �����϶�� Ư���� �����̴µ�..�� ������ ������...",4,"�ֿ�?"

	elseif req == 12 then
		return 1,0,"�밨�� �뷯�Բ��� �����ֽø� �����ٵ�....������ �ٲ�� �ٽ� �� �ּ���!"

	elseif req == 4 then
		return 3,0,"���..�͸����η���� ���ù����� ���̶��ϴ�. ������ �ּ��̴� ������ ��⵵ ������ ������..�밨�� �뷯�Բ��� �� ��� �͸����η��忡�� �Ƹ������� ã���ֽ��� �ʰھ��?",5,"��! ���ƿ�!",6,"�Ⱦ��"

	elseif req == 5 then
		SetSwitchCount(cnum, 524, 1)
		return 2,0,"���� �����ϴ�! ���� �͸����η������ ��Ŵ� �帱�Կ�!!",7,"��!"

	elseif req == 6 then
		return 1,0,"�װ��� ���ù����� ���̴ϱ�..�ηƱ⵵ �Ͻðڳ׿�.....��û�� ������ �ִٰ� �ϴ� �̾߱�� ������...������ �ٲ�� �ٽ� �� �ּ���~!"

	elseif req == 7 then
		if GetSwitchCount(cnum, 523) < 1 then

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 192, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 193, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 194, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 195, 254)
			end

		else

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 196, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 197, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 198, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 199, 254)
			end
		end


	elseif req == 8 then
		return 1,0,"��~! �͸����η��忡��...��û�� ������ �ִٰ� �ϴ� �̾߱Ⱑ �鸮����..������ �ٲ�� �ٽ� �� �ּ���~!"
	end
end


function NPC_QUEST_856(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 524) < 1 then
			return 3,0,"�밨�� �뷯��!@�� �丣��������� ���� �Ƴ��ʸ���� �մϴ�!@�밨�� �뷯�� �� ��Ź �� ����ֽǷ���?",2,"��~! ���غ���!",12,"�Ⱦ��"
		else 
			return 3,0,"�밨�� �뷯��! �ٽ� �͸����η���� ���ðھ��?",7,"��~!",8,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		return 2,0,"�ֱ� �ҽ��뿡 ���ϸ� 20���� ���Ҹ��� �Ǿ��� �丣�������� ��ģ ����ļ����� ���� �Ƹ����̶�� ���� ���� �ָ� �͸����η��忡 ��� �ִٴ� ������ �Լ��Ǿ����ϴ�!",3,"�׷�����?"

	elseif req == 3 then
		return 2,0,"�丣������Բ��� ������ �Ƹ����� �����϶�� Ư���� �����̴µ�..�� ������ ������...",4,"�ֿ�?"

	elseif req == 12 then
		return 1,0,"�밨�� �뷯�Բ��� �����ֽø� �����ٵ�....������ �ٲ�� �ٽ� �� �ּ���!"

	elseif req == 4 then
		return 3,0,"���..�͸����η���� ���ù����� ���̶��ϴ�. ������ �ּ��̴� ������ ��⵵ ������ ������..�밨�� �뷯�Բ��� �� ��� �͸����η��忡�� �Ƹ������� ã���ֽ��� �ʰھ��?",5,"��! ���ƿ�!",6,"�Ⱦ��"

	elseif req == 5 then
		SetSwitchCount(cnum, 524, 1)
		return 2,0,"���� �����ϴ�! ���� �͸����η������ ��Ŵ� �帱�Կ�!!",7,"��!"

	elseif req == 6 then
		return 1,0,"�װ��� ���ù����� ���̴ϱ�..�ηƱ⵵ �Ͻðڳ׿�.....��û�� ������ �ִٰ� �ϴ� �̾߱�� ������...������ �ٲ�� �ٽ� �� �ּ���~!"

	elseif req == 7 then
		if GetSwitchCount(cnum, 523) < 1 then

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 192, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 193, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 194, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 195, 254)
			end

		else

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 196, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 197, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 198, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 199, 254)
			end
		end


	elseif req == 8 then
		return 1,0,"��~! �͸����η��忡��...��û�� ������ �ִٰ� �ϴ� �̾߱Ⱑ �鸮����..������ �ٲ�� �ٽ� �� �ּ���~!"
	end
end


function NPC_QUEST_857(cnum,reqNumber) -- �͸����η��� ���� �Ƴ��ʸ�

req = reqNumber
Lv = GetHeroLv(cnum)

	if req == 1 then
		if GetSwitchCount(cnum, 524) < 1 then
			return 3,0,"�밨�� �뷯��!@�� �丣��������� ���� �Ƴ��ʸ���� �մϴ�!@�밨�� �뷯�� �� ��Ź �� ����ֽǷ���?",2,"��~! ���غ���!",12,"�Ⱦ��"
		else 
			return 3,0,"�밨�� �뷯��! �ٽ� �͸����η���� ���ðھ��?",7,"��~!",8,"�ƴϿ�"			
		end	
		

	elseif req == 2 then
		return 2,0,"�ֱ� �ҽ��뿡 ���ϸ� 20���� ���Ҹ��� �Ǿ��� �丣�������� ��ģ ����ļ����� ���� �Ƹ����̶�� ���� ���� �ָ� �͸����η��忡 ��� �ִٴ� ������ �Լ��Ǿ����ϴ�!",3,"�׷�����?"

	elseif req == 3 then
		return 2,0,"�丣������Բ��� ������ �Ƹ����� �����϶�� Ư���� �����̴µ�..�� ������ ������...",4,"�ֿ�?"

	elseif req == 12 then
		return 1,0,"�밨�� �뷯�Բ��� �����ֽø� �����ٵ�....������ �ٲ�� �ٽ� �� �ּ���!"

	elseif req == 4 then
		return 3,0,"���..�͸����η���� ���ù����� ���̶��ϴ�. ������ �ּ��̴� ������ ��⵵ ������ ������..�밨�� �뷯�Բ��� �� ��� �͸����η��忡�� �Ƹ������� ã���ֽ��� �ʰھ��?",5,"��! ���ƿ�!",6,"�Ⱦ��"

	elseif req == 5 then
		SetSwitchCount(cnum, 524, 1)
		return 2,0,"���� �����ϴ�! ���� �͸����η������ ��Ŵ� �帱�Կ�!!",7,"��!"

	elseif req == 6 then
		return 1,0,"�װ��� ���ù����� ���̴ϱ�..�ηƱ⵵ �Ͻðڳ׿�.....��û�� ������ �ִٰ� �ϴ� �̾߱�� ������...������ �ٲ�� �ٽ� �� �ּ���~!"

	elseif req == 7 then
		if GetSwitchCount(cnum, 523) < 1 then

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 192, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 193, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 194, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 195, 254)
			end

		else

			if Lv > 0 and Lv < 51 then
				MoveZone(cnum, 196, 254)
			elseif Lv > 50 and Lv < 101 then
				MoveZone(cnum, 197, 254)
			elseif Lv > 100 and Lv < 131 then
				MoveZone(cnum, 198, 254)
			elseif Lv > 130 and Lv < 176 then
				MoveZone(cnum, 199, 254)
			end
		end


	elseif req == 8 then
		return 1,0,"��~! �͸����η��忡��...��û�� ������ �ִٰ� �ϴ� �̾߱Ⱑ �鸮����..������ �ٲ�� �ٽ� �� �ּ���~!"
	end
end

