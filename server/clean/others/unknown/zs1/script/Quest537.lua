function NPC_QUEST_721(cnum,reqNumber) -- ������ �̺�Ʈ_02 �౸�� �ȳ� ��Ʋ��(����)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"���� �ٱ� ���󿡴� �������� ��â�̶���? ���ѹα��� �׸����� �����ϰ� �����ߴٴ� �ҽ��� �鸮���� ���� ���� ����� ����! �ʵ� �౸�忡 �ѹ� �� ������? Ȥ�� �͸� �౸�� ������̳� ���ѹα� ���� 5000���� ������ �ִ�?",2,"[�͸� �౸�� �����]�� �־�",3,"[���ѹα� ���� 5000��]�� �־�",4,"[ü�� ����]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
		else
			return 1,0,"�͸� �౸�� ������� ���°� ����~! �ѹ� �ٽ� Ȯ���� ����?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� ���������� ������~! ������ �κ��丮�� 1ĭ �̻� ���� �ٽ� �÷�? ���� �װ� ���ѹα� ���� 5000���� ��ƿԴٰ� �ص� �κ��丮�� 1ĭ�̻� ������� ������ ���� �͸� �౸�� ������� �� ���� ����"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"�츮���� �� ����ϴ±���! ���ѹα� ���� 5000���� �͸� �౸�� ��������� ��ȯ���ٰ�! ��~! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
			else
				return 1,0,"���ѹα� ���� 5000���� ���°� ������ Ȯ���غ���?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 9 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"����~! �ѹ��� �ȵ� ������~! ���� ���� 30�� ���� ������� �ٰ�~! �� ���� ����� �º����⸦ �غ�! ����! ����� ���⸦ ���� ��ư��°� ����! ü�� ������ �ѹ����̾�~���� ����?!",11,"��",10,"�ƴ�! ���߿� ����"
		else
			return 1,0,"���� �鿩�����ִ°� �ѹ����̾�~! �౸�� ����� Ȥ�� ���ѹα� ���� 5000���� �־�� �� �� �־�. �̾���!"
		end

	elseif req == 10 then
		return 1,0,"��! �׷�. ���⸦ ���� ��Ƽ� ���°� �����ž�!"

	elseif req == 11 then
		return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",12,"�͸� �౸��(LV1~40)����",13,"�͸� �౸��(LV41~60)����",14,"�͸� �౸��(LV61~80)����",15,"�͸� �౸��(LV81~100)����",16,"�͸� �౸��(LV101~175)����"


	elseif req == 12 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 16 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	end
end


function NPC_QUEST_722(cnum,reqNumber) -- ������ �̺�Ʈ_02 �౸�� �ȳ� ��Ʋ��(����)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"���� �ٱ� ���󿡴� �������� ��â�̶���? ���ѹα��� �׸����� �����ϰ� �����ߴٴ� �ҽ��� �鸮���� ���� ���� ����� ����! �ʵ� �౸�忡 �ѹ� �� ������? Ȥ�� �͸� �౸�� ������̳� ���ѹα� ���� 5000���� ������ �ִ�?",2,"[�͸� �౸�� �����]�� �־�",3,"[���ѹα� ���� 5000��]�� �־�",4,"[ü�� ����]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
		else
			return 1,0,"�͸� �౸�� ������� ���°� ����~! �ѹ� �ٽ� Ȯ���� ����?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� ���������� ������~! ������ �κ��丮�� 1ĭ �̻� ���� �ٽ� �÷�? ���� �װ� ���ѹα� ���� 5000���� ��ƿԴٰ� �ص� �κ��丮�� 1ĭ�̻� ������� ������ ���� �͸� �౸�� ������� �� ���� ����"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"�츮���� �� ����ϴ±���! ���ѹα� ���� 5000���� �͸� �౸�� ��������� ��ȯ���ٰ�! ��~! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
			else
				return 1,0,"���ѹα� ���� 5000���� ���°� ������ Ȯ���غ���?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 9 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"����~! �ѹ��� �ȵ� ������~! ���� ���� 30�� ���� ������� �ٰ�~! �� ���� ����� �º����⸦ �غ�! ����! ����� ���⸦ ���� ��ư��°� ����! ü�� ������ �ѹ����̾�~���� ����?!",11,"��",10,"�ƴ�! ���߿� ����"
		else
			return 1,0,"���� �鿩�����ִ°� �ѹ����̾�~! �౸�� ����� Ȥ�� ���ѹα� ���� 5000���� �־�� �� �� �־�. �̾���!"
		end

	elseif req == 10 then
		return 1,0,"��! �׷�. ���⸦ ���� ��Ƽ� ���°� �����ž�!"

	elseif req == 11 then
		return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",12,"�͸� �౸��(LV1~40)����",13,"�͸� �౸��(LV41~60)����",14,"�͸� �౸��(LV61~80)����",15,"�͸� �౸��(LV81~100)����",16,"�͸� �౸��(LV101~175)����"


	elseif req == 12 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 16 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	end
end


function NPC_QUEST_723(cnum,reqNumber) -- ������ �̺�Ʈ_02 �౸�� �ȳ� ��Ʋ��(����)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"���� �ٱ� ���󿡴� �������� ��â�̶���? ���ѹα��� �׸����� �����ϰ� �����ߴٴ� �ҽ��� �鸮���� ���� ���� ����� ����! �ʵ� �౸�忡 �ѹ� �� ������? Ȥ�� �͸� �౸�� ������̳� ���ѹα� ���� 5000���� ������ �ִ�?",2,"[�͸� �౸�� �����]�� �־�",3,"[���ѹα� ���� 5000��]�� �־�",4,"[ü�� ����]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
		else
			return 1,0,"�͸� �౸�� ������� ���°� ����~! �ѹ� �ٽ� Ȯ���� ����?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� ���������� ������~! ������ �κ��丮�� 1ĭ �̻� ���� �ٽ� �÷�? ���� �װ� ���ѹα� ���� 5000���� ��ƿԴٰ� �ص� �κ��丮�� 1ĭ�̻� ������� ������ ���� �͸� �౸�� ������� �� ���� ����"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"�츮���� �� ����ϴ±���! ���ѹα� ���� 5000���� �͸� �౸�� ��������� ��ȯ���ٰ�! ��~! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
			else
				return 1,0,"���ѹα� ���� 5000���� ���°� ������ Ȯ���غ���?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 9 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"����~! �ѹ��� �ȵ� ������~! ���� ���� 30�� ���� ������� �ٰ�~! �� ���� ����� �º����⸦ �غ�! ����! ����� ���⸦ ���� ��ư��°� ����! ü�� ������ �ѹ����̾�~���� ����?!",11,"��",10,"�ƴ�! ���߿� ����"
		else
			return 1,0,"���� �鿩�����ִ°� �ѹ����̾�~! �౸�� ����� Ȥ�� ���ѹα� ���� 5000���� �־�� �� �� �־�. �̾���!"
		end

	elseif req == 10 then
		return 1,0,"��! �׷�. ���⸦ ���� ��Ƽ� ���°� �����ž�!"

	elseif req == 11 then
		return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",12,"�͸� �౸��(LV1~40)����",13,"�͸� �౸��(LV41~60)����",14,"�͸� �౸��(LV61~80)����",15,"�͸� �౸��(LV81~100)����",16,"�͸� �౸��(LV101~175)����"


	elseif req == 12 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 16 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	end
end


function NPC_QUEST_724(cnum,reqNumber) -- ������ �̺�Ʈ_02 �౸�� �ȳ� ��Ʋ��(����)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"���� �ٱ� ���󿡴� �������� ��â�̶���? ���ѹα��� �׸����� �����ϰ� �����ߴٴ� �ҽ��� �鸮���� ���� ���� ����� ����! �ʵ� �౸�忡 �ѹ� �� ������? Ȥ�� �͸� �౸�� ������̳� ���ѹα� ���� 5000���� ������ �ִ�?",2,"[�͸� �౸�� �����]�� �־�",3,"[���ѹα� ���� 5000��]�� �־�",4,"[ü�� ����]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
		else
			return 1,0,"�͸� �౸�� ������� ���°� ����~! �ѹ� �ٽ� Ȯ���� ����?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� ���������� ������~! ������ �κ��丮�� 1ĭ �̻� ���� �ٽ� �÷�? ���� �װ� ���ѹα� ���� 5000���� ��ƿԴٰ� �ص� �κ��丮�� 1ĭ�̻� ������� ������ ���� �͸� �౸�� ������� �� ���� ����"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"�츮���� �� ����ϴ±���! ���ѹα� ���� 5000���� �͸� �౸�� ��������� ��ȯ���ٰ�! ��~! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
			else
				return 1,0,"���ѹα� ���� 5000���� ���°� ������ Ȯ���غ���?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 9 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"����~! �ѹ��� �ȵ� ������~! ���� ���� 30�� ���� ������� �ٰ�~! �� ���� ����� �º����⸦ �غ�! ����! ����� ���⸦ ���� ��ư��°� ����! ü�� ������ �ѹ����̾�~���� ����?!",11,"��",10,"�ƴ�! ���߿� ����"
		else
			return 1,0,"���� �鿩�����ִ°� �ѹ����̾�~! �౸�� ����� Ȥ�� ���ѹα� ���� 5000���� �־�� �� �� �־�. �̾���!"
		end

	elseif req == 10 then
		return 1,0,"��! �׷�. ���⸦ ���� ��Ƽ� ���°� �����ž�!"

	elseif req == 11 then
		return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",12,"�͸� �౸��(LV1~40)����",13,"�͸� �౸��(LV41~60)����",14,"�͸� �౸��(LV61~80)����",15,"�͸� �౸��(LV81~100)����",16,"�͸� �౸��(LV101~175)����"


	elseif req == 12 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 16 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	end
end


function NPC_QUEST_725(cnum,reqNumber) -- ������ �̺�Ʈ_02 �౸�� �ȳ� ��Ʋ��(����)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"���� �ٱ� ���󿡴� �������� ��â�̶���? ���ѹα��� �׸����� �����ϰ� �����ߴٴ� �ҽ��� �鸮���� ���� ���� ����� ����! �ʵ� �౸�忡 �ѹ� �� ������? Ȥ�� �͸� �౸�� ������̳� ���ѹα� ���� 5000���� ������ �ִ�?",2,"[�͸� �౸�� �����]�� �־�",3,"[���ѹα� ���� 5000��]�� �־�",4,"[ü�� ����]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
		else
			return 1,0,"�͸� �౸�� ������� ���°� ����~! �ѹ� �ٽ� Ȯ���� ����?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� ���������� ������~! ������ �κ��丮�� 1ĭ �̻� ���� �ٽ� �÷�? ���� �װ� ���ѹα� ���� 5000���� ��ƿԴٰ� �ص� �κ��丮�� 1ĭ�̻� ������� ������ ���� �͸� �౸�� ������� �� ���� ����"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"�츮���� �� ����ϴ±���! ���ѹα� ���� 5000���� �͸� �౸�� ��������� ��ȯ���ٰ�! ��~! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
			else
				return 1,0,"���ѹα� ���� 5000���� ���°� ������ Ȯ���غ���?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 9 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"����~! �ѹ��� �ȵ� ������~! ���� ���� 30�� ���� ������� �ٰ�~! �� ���� ����� �º����⸦ �غ�! ����! ����� ���⸦ ���� ��ư��°� ����! ü�� ������ �ѹ����̾�~���� ����?!",11,"��",10,"�ƴ�! ���߿� ����"
		else
			return 1,0,"���� �鿩�����ִ°� �ѹ����̾�~! �౸�� ����� Ȥ�� ���ѹα� ���� 5000���� �־�� �� �� �־�. �̾���!"
		end

	elseif req == 10 then
		return 1,0,"��! �׷�. ���⸦ ���� ��Ƽ� ���°� �����ž�!"

	elseif req == 11 then
		return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",12,"�͸� �౸��(LV1~40)����",13,"�͸� �౸��(LV41~60)����",14,"�͸� �౸��(LV61~80)����",15,"�͸� �౸��(LV81~100)����",16,"�͸� �౸��(LV101~175)����"


	elseif req == 12 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 16 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	end
end


function NPC_QUEST_741(cnum,reqNumber) -- ������ �̺�Ʈ_02 �౸�� �ȳ� ��Ʋ��(����)

req = reqNumber
herolv = GetHeroLv(cnum)


	if req == 1 then
		return 4,0,"���� �ٱ� ���󿡴� �������� ��â�̶���? ���ѹα��� �׸����� �����ϰ� �����ߴٴ� �ҽ��� �鸮���� ���� ���� ����� ����! �ʵ� �౸�忡 �ѹ� �� ������? Ȥ�� �͸� �౸�� ������̳� ���ѹα� ���� 5000���� ������ �ִ�?",2,"[�͸� �౸�� �����]�� �־�",3,"[���ѹα� ���� 5000��]�� �־�",4,"[ü�� ����]"


	elseif req == 2 then
		if GetItemCount(cnum, 8469, 0) > 0 or GetItemCount(cnum, 8470, 0) > 0 or GetItemCount(cnum, 8471, 0) > 0 or GetItemCount(cnum, 8472, 0) > 0 or GetItemCount(cnum, 8482, 0) > 0 then
			return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
		else
			return 1,0,"�͸� �౸�� ������� ���°� ����~! �ѹ� �ٽ� Ȯ���� ����?"
		end

	elseif req == 3 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"������ �κ��丮�� ���������� ������~! ������ �κ��丮�� 1ĭ �̻� ���� �ٽ� �÷�? ���� �װ� ���ѹα� ���� 5000���� ��ƿԴٰ� �ص� �κ��丮�� 1ĭ�̻� ������� ������ ���� �͸� �౸�� ������� �� ���� ����"
		else
			if GetItemCount(cnum, 8436, 0) > 4999 then
				AddItemCount(cnum, 8436, -5000)
				AddItemCount(cnum, 8469, 1)
				return 6,0,"�츮���� �� ����ϴ±���! ���ѹα� ���� 5000���� �͸� �౸�� ��������� ��ȯ���ٰ�! ��~! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",5,"�͸� �౸��(LV1~40)����",6,"�͸� �౸��(LV41~60)����",7,"�͸� �౸��(LV61~80)����",8,"�͸� �౸��(LV81~100)����",9,"�͸� �౸��(LV101~175)����"
			else
				return 1,0,"���ѹα� ���� 5000���� ���°� ������ Ȯ���غ���?"
			end
		end

	elseif req == 5 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 6 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 7 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 8 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 9 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end


	elseif req == 4 then
		if GetSwitchCount(cnum, 509) < 1 then
			return 3,0,"����~! �ѹ��� �ȵ� ������~! ���� ���� 30�� ���� ������� �ٰ�~! �� ���� ����� �º����⸦ �غ�! ����! ����� ���⸦ ���� ��ư��°� ����! ü�� ������ �ѹ����̾�~���� ����?!",11,"��",10,"�ƴ�! ���߿� ����"
		else
			return 1,0,"���� �鿩�����ִ°� �ѹ����̾�~! �౸�� ����� Ȥ�� ���ѹα� ���� 5000���� �־�� �� �� �־�. �̾���!"
		end

	elseif req == 10 then
		return 1,0,"��! �׷�. ���⸦ ���� ��Ƽ� ���°� �����ž�!"

	elseif req == 11 then
		return 6,0,"��~! ����! ���� ������ �ش��ϴ� �͸� �౸���� �� �� �־�!",12,"�͸� �౸��(LV1~40)����",13,"�͸� �౸��(LV41~60)����",14,"�͸� �౸��(LV61~80)����",15,"�͸� �౸��(LV81~100)����",16,"�͸� �౸��(LV101~175)����"


	elseif req == 12 then
		if herolv < 41 then --> ����� ������ 40 ���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,187,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 13 then
		if herolv > 40 and herolv < 61 then --> ����� ������ 41 �̻��̰� 60���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,188,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 14 then
		if herolv > 60 and herolv < 81 then --> ����� ������ 61 �̻��̰� 80���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,189,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 15 then
		if herolv > 80 and herolv < 101 then --> ����� ������ 81 �̻��̰� 100���� �� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,190,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	elseif req == 16 then
		if herolv > 100 then --> ����� ������ 101 �̻��� ��
			SetSwitchCount(cnum, 509, 1)
			AddItemCount(cnum, 8482, 1)
			MoveZone(cnum,191,254)
		else
			return 1,0,"�ȵ�~!�ȵ�~! ���� ������ �´� �͸� �౸�常 �̿��� �� �־�!"
		end

	end
end



