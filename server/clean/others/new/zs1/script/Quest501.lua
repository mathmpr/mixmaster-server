function NPC_QUEST_615(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 361) < 1 then
			return 2,0,"�ȳ��Ͻôٴ�~ ��ƮĹ!! �̴ٴ�~ �ٻ� �������� iMBC ģ������ ���� ��Ÿ���ٴ�~!! �׷��� �������̴�??",2,"������ �ݰ�����~!!"

		
		else
			return 5,0,"�ȳ��Ͻô�~ �ٽ� ���� ã�� �Ա���~ ������ �������� ���� iMBC ģ������ ���� ���� �Ѵٴ�~ 15����, 30����, 45����, 60������ �޼��ϸ� ���� ã�� ���Դ�����~",12,"15������ �Ǿ����",13,"30������ �Ǿ����",14,"45������ �Ǿ����",15,"60������ �Ǿ����"

		end


			


	elseif req == 2 then
		if CheckItemPocket(cnum, 8199, 1) < 1  then
			return 1,0,"���� ������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� ���� ����"

		else
			AddSwitchCount(cnum, 361, 1)
			AddItemCount(cnum, 8199, 1)
			AddMoney(cnum, 30000)
			return 1,0,"���� �ݰ�����~ �츮 �̷��� ���� �͵� �ο��ε�~ ������ ģ�� ���ڴ�~ ģ���� �� ������� ������ ���� ��ũ�� 30,000 GP�� ������ �ش�~ ������ ���� ����~"

		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 362) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 15 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 15 ������ �޼����� ���ߴ� ��~! 15 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"15������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 3ĭ �̻� ���� ����"
		

		else
			type = GetHeroType(cnum)

			if type == 0 then
				AddItemCount(cnum, 4673, 1)


			elseif type == 1 then
				AddItemCount(cnum, 4688, 1)


			elseif type == 2 then
				AddItemCount(cnum, 4703, 1)


			elseif type == 3 then
				AddItemCount(cnum, 4721, 1)


			else
				return 1,0,"����"


			end

			AddItemCount(cnum, 8200, 1)
			AddItemCount(cnum, 170, 1)
			AddMoney(cnum, 50000)
			AddSwitchCount(cnum, 362, 1)
			return 1,0,"��~ 15������ �޼��߱��� ..������ 15������ �ͽ� ������ ���踦 ���ݸ� Ž���ص� �޼� �Ҽ� �ִٴ�~ ������ ����� ����̴� ������ �ְٴ� ��~ ������ ����� ������, 50,000 GP�� ������ �ְڴٴ�~ 30������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��! �� �ٻ��� ������ �غ� �� ���� �ְڴٴ�~ ��!! �׸��� �Ź� ���� �ִ� �޼� ������ ���� ������ ����!! ���߿� ��û�� ��ǰ�� ���� �� �ִ� ������̴ٴ�! ������ ���� ���شϱ� �� �����ϰ� �ְԴ�~"

		end			
			





	elseif req == 13 then
		if GetSwitchCount(cnum, 363) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 30 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 30 ������ �޼����� ���ߴ� ��~! 30 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 2  then
			return 1,0,"30������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		elseif GetOccupiedHenchPocket(cnum, 1) > 19  then
			return 1,0,"30������ �޼��� �������� ��ġ�� �� �� �ϴµ� ��ġ �κ��丮�� �� ������ ���ٴ�~ ��ġ �κ��丮�� 1ĭ �̻� ���� ����"
		

		else
			AddHench(cnum, 273, 1)
			AddItemCount(cnum, 8201, 1)
			AddItemCount(cnum, 1018, 1)
			AddSwitchCount(cnum, 363, 1)
			return 1,0,"��... 30������ �޼� �߱���~ �ͽ� ������ ���谡 �ϳ� ������ �������~ ��~ ���� ����� �����̴�~ ����Ķ�� ��ġ�� �ó������� ��¹����� �� �״� �� ����ϵ��� �ϰԴ�~ 45������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��!"

		end





	elseif req == 14 then
		if GetSwitchCount(cnum, 364) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 45 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 45 ������ �޼����� ���ߴ� ��~! 45 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		else
			return 6,0,"��! ���� 45������ �޼� �߱���~ ������~ �ʹ� ���� ���� ���� Ž�� �ϱ� �ٶ���~ �Ʒ��� ���� ��Ͽ��� �Ѱ����� ���Ŵ�~ �׸��� 60������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��!",22,"�����͵�ũ ���Ű���",23,"���� ���Ű���",24,"��� ���Ű���",25,"���� ���Ű���",26,"�����跹�̼� ���Ű���"

		end




	elseif req == 15 then
		if GetSwitchCount(cnum, 365) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 60 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 60 ������ �޼����� ���ߴ� ��~! 60 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"60������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 3ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 365, 1)
			AddItemCount(cnum, 4732, 1)
			AddItemCount(cnum, 95, 1)
			AddItemCount(cnum, 8203, 1)
			return 1,0,"�ͽ��������� ���迡�� ����� �̹� �Ǹ��� Ž�谡!! �ٸ� �̵�� ���� ������ �ϴ� ����, ���� ��� ������ ���踦 ���� �� �����Ŵ�! ������ ������ ưư�� ���ʰ� �����̾��� ������� �ٲ���~ �ε� �� ��� �ϰ�, ���߿� �츮 �� ������!!!!"

		end






	elseif req == 22 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4651, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 23 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4606, 1)
			AddItemCount(cnum, 8202, 1)
		
		end
		


	elseif req == 24 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4582, 1)
			AddItemCount(cnum, 8202, 1)
		
		end



	elseif req == 25 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4660, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 26 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4633, 1)
			AddItemCount(cnum, 8202, 1)
		
		end


	else
		return 1,0,"���� 2"

	end
end










function NPC_QUEST_616(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 361) < 1 then
			return 2,0,"�ȳ��Ͻôٴ�~ ��ƮĹ!! �̴ٴ�~ �ٻ� �������� iMBC ģ������ ���� ��Ÿ���ٴ�~!! �׷��� �������̴�??",2,"������ �ݰ�����~!!"

		
		else
			return 5,0,"�ȳ��Ͻô�~ �ٽ� ���� ã�� �Ա���~ ������ �������� ���� iMBC ģ������ ���� ���� �Ѵٴ�~ 15����, 30����, 45����, 60������ �޼��ϸ� ���� ã�� ���Դ�����~",12,"15������ �Ǿ����",13,"30������ �Ǿ����",14,"45������ �Ǿ����",15,"60������ �Ǿ����"

		end


			


	elseif req == 2 then
		if CheckItemPocket(cnum, 8199, 1) < 1  then
			return 1,0,"���� ������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� ���� ����"

		else
			AddSwitchCount(cnum, 361, 1)
			AddItemCount(cnum, 8199, 1)
			AddMoney(cnum, 30000)
			return 1,0,"���� �ݰ�����~ �츮 �̷��� ���� �͵� �ο��ε�~ ������ ģ�� ���ڴ�~ ģ���� �� ������� ������ ���� ��ũ�� 30,000 GP�� ������ �ش�~ ������ ���� ����~"

		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 362) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 15 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 15 ������ �޼����� ���ߴ� ��~! 15 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"15������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 3ĭ �̻� ���� ����"
		

		else
			type = GetHeroType(cnum)

			if type == 0 then
				AddItemCount(cnum, 4673, 1)


			elseif type == 1 then
				AddItemCount(cnum, 4688, 1)


			elseif type == 2 then
				AddItemCount(cnum, 4703, 1)


			elseif type == 3 then
				AddItemCount(cnum, 4721, 1)


			else
				return 1,0,"����"


			end

			AddItemCount(cnum, 8200, 1)
			AddItemCount(cnum, 170, 1)
			AddMoney(cnum, 50000)
			AddSwitchCount(cnum, 362, 1)
			return 1,0,"��~ 15������ �޼��߱��� ..������ 15������ �ͽ� ������ ���踦 ���ݸ� Ž���ص� �޼� �Ҽ� �ִٴ�~ ������ ����� ����̴� ������ �ְٴ� ��~ ������ ����� ������, 50,000 GP�� ������ �ְڴٴ�~ 30������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��! �� �ٻ��� ������ �غ� �� ���� �ְڴٴ�~ ��!! �׸��� �Ź� ���� �ִ� �޼� ������ ���� ������ ����!! ���߿� ��û�� ��ǰ�� ���� �� �ִ� ������̴ٴ�! ������ ���� ���شϱ� �� �����ϰ� �ְԴ�~"

		end			
			





	elseif req == 13 then
		if GetSwitchCount(cnum, 363) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 30 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 30 ������ �޼����� ���ߴ� ��~! 30 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 2  then
			return 1,0,"30������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		elseif GetOccupiedHenchPocket(cnum, 1) > 19  then
			return 1,0,"30������ �޼��� �������� ��ġ�� �� �� �ϴµ� ��ġ �κ��丮�� �� ������ ���ٴ�~ ��ġ �κ��丮�� 1ĭ �̻� ���� ����"
		

		else
			AddHench(cnum, 273, 1)
			AddItemCount(cnum, 8201, 1)
			AddItemCount(cnum, 1018, 1)
			AddSwitchCount(cnum, 363, 1)
			return 1,0,"��... 30������ �޼� �߱���~ �ͽ� ������ ���谡 �ϳ� ������ �������~ ��~ ���� ����� �����̴�~ ����Ķ�� ��ġ�� �ó������� ��¹����� �� �״� �� ����ϵ��� �ϰԴ�~ 45������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��!"

		end





	elseif req == 14 then
		if GetSwitchCount(cnum, 364) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 45 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 45 ������ �޼����� ���ߴ� ��~! 45 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		else
			return 6,0,"��! ���� 45������ �޼� �߱���~ ������~ �ʹ� ���� ���� ���� Ž�� �ϱ� �ٶ���~ �Ʒ��� ���� ��Ͽ��� �Ѱ����� ���Ŵ�~ �׸��� 60������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��!",22,"�����͵�ũ ���Ű���",23,"���� ���Ű���",24,"��� ���Ű���",25,"���� ���Ű���",26,"�����跹�̼� ���Ű���"

		end




	elseif req == 15 then
		if GetSwitchCount(cnum, 365) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 60 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 60 ������ �޼����� ���ߴ� ��~! 60 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"60������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 3ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 365, 1)
			AddItemCount(cnum, 4732, 1)
			AddItemCount(cnum, 95, 1)
			AddItemCount(cnum, 8203, 1)
			return 1,0,"�ͽ��������� ���迡�� ����� �̹� �Ǹ��� Ž�谡!! �ٸ� �̵�� ���� ������ �ϴ� ����, ���� ��� ������ ���踦 ���� �� �����Ŵ�! ������ ������ ưư�� ���ʰ� �����̾��� ������� �ٲ���~ �ε� �� ��� �ϰ�, ���߿� �츮 �� ������!!!!"

		end






	elseif req == 22 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4651, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 23 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4606, 1)
			AddItemCount(cnum, 8202, 1)
		
		end
		


	elseif req == 24 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4582, 1)
			AddItemCount(cnum, 8202, 1)
		
		end



	elseif req == 25 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4660, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 26 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4633, 1)
			AddItemCount(cnum, 8202, 1)
		
		end


	else
		return 1,0,"���� 2"

	end
end






function NPC_QUEST_617(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 361) < 1 then
			return 2,0,"�ȳ��Ͻôٴ�~ ��ƮĹ!! �̴ٴ�~ �ٻ� �������� iMBC ģ������ ���� ��Ÿ���ٴ�~!! �׷��� �������̴�??",2,"������ �ݰ�����~!!"

		
		else
			return 5,0,"�ȳ��Ͻô�~ �ٽ� ���� ã�� �Ա���~ ������ �������� ���� iMBC ģ������ ���� ���� �Ѵٴ�~ 15����, 30����, 45����, 60������ �޼��ϸ� ���� ã�� ���Դ�����~",12,"15������ �Ǿ����",13,"30������ �Ǿ����",14,"45������ �Ǿ����",15,"60������ �Ǿ����"

		end


			


	elseif req == 2 then
		if CheckItemPocket(cnum, 8199, 1) < 1  then
			return 1,0,"���� ������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� ���� ����"

		else
			AddSwitchCount(cnum, 361, 1)
			AddItemCount(cnum, 8199, 1)
			AddMoney(cnum, 30000)
			return 1,0,"���� �ݰ�����~ �츮 �̷��� ���� �͵� �ο��ε�~ ������ ģ�� ���ڴ�~ ģ���� �� ������� ������ ���� ��ũ�� 30,000 GP�� ������ �ش�~ ������ ���� ����~"

		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 362) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 15 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 15 ������ �޼����� ���ߴ� ��~! 15 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"15������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 3ĭ �̻� ���� ����"
		

		else
			type = GetHeroType(cnum)

			if type == 0 then
				AddItemCount(cnum, 4673, 1)


			elseif type == 1 then
				AddItemCount(cnum, 4688, 1)


			elseif type == 2 then
				AddItemCount(cnum, 4703, 1)


			elseif type == 3 then
				AddItemCount(cnum, 4721, 1)


			else
				return 1,0,"����"


			end

			AddItemCount(cnum, 8200, 1)
			AddItemCount(cnum, 170, 1)
			AddMoney(cnum, 50000)
			AddSwitchCount(cnum, 362, 1)
			return 1,0,"��~ 15������ �޼��߱��� ..������ 15������ �ͽ� ������ ���踦 ���ݸ� Ž���ص� �޼� �Ҽ� �ִٴ�~ ������ ����� ����̴� ������ �ְٴ� ��~ ������ ����� ������, 50,000 GP�� ������ �ְڴٴ�~ 30������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��! �� �ٻ��� ������ �غ� �� ���� �ְڴٴ�~ ��!! �׸��� �Ź� ���� �ִ� �޼� ������ ���� ������ ����!! ���߿� ��û�� ��ǰ�� ���� �� �ִ� ������̴ٴ�! ������ ���� ���شϱ� �� �����ϰ� �ְԴ�~"

		end			
			





	elseif req == 13 then
		if GetSwitchCount(cnum, 363) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 30 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 30 ������ �޼����� ���ߴ� ��~! 30 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 2  then
			return 1,0,"30������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		elseif GetOccupiedHenchPocket(cnum, 1) > 19  then
			return 1,0,"30������ �޼��� �������� ��ġ�� �� �� �ϴµ� ��ġ �κ��丮�� �� ������ ���ٴ�~ ��ġ �κ��丮�� 1ĭ �̻� ���� ����"
		

		else
			AddHench(cnum, 273, 1)
			AddItemCount(cnum, 8201, 1)
			AddItemCount(cnum, 1018, 1)
			AddSwitchCount(cnum, 363, 1)
			return 1,0,"��... 30������ �޼� �߱���~ �ͽ� ������ ���谡 �ϳ� ������ �������~ ��~ ���� ����� �����̴�~ ����Ķ�� ��ġ�� �ó������� ��¹����� �� �״� �� ����ϵ��� �ϰԴ�~ 45������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��!"

		end





	elseif req == 14 then
		if GetSwitchCount(cnum, 364) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 45 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 45 ������ �޼����� ���ߴ� ��~! 45 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		else
			return 6,0,"��! ���� 45������ �޼� �߱���~ ������~ �ʹ� ���� ���� ���� Ž�� �ϱ� �ٶ���~ �Ʒ��� ���� ��Ͽ��� �Ѱ����� ���Ŵ�~ �׸��� 60������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��!",22,"�����͵�ũ ���Ű���",23,"���� ���Ű���",24,"��� ���Ű���",25,"���� ���Ű���",26,"�����跹�̼� ���Ű���"

		end




	elseif req == 15 then
		if GetSwitchCount(cnum, 365) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 60 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 60 ������ �޼����� ���ߴ� ��~! 60 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"60������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 3ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 365, 1)
			AddItemCount(cnum, 4732, 1)
			AddItemCount(cnum, 95, 1)
			AddItemCount(cnum, 8203, 1)
			return 1,0,"�ͽ��������� ���迡�� ����� �̹� �Ǹ��� Ž�谡!! �ٸ� �̵�� ���� ������ �ϴ� ����, ���� ��� ������ ���踦 ���� �� �����Ŵ�! ������ ������ ưư�� ���ʰ� �����̾��� ������� �ٲ���~ �ε� �� ��� �ϰ�, ���߿� �츮 �� ������!!!!"

		end






	elseif req == 22 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4651, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 23 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4606, 1)
			AddItemCount(cnum, 8202, 1)
		
		end
		


	elseif req == 24 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4582, 1)
			AddItemCount(cnum, 8202, 1)
		
		end



	elseif req == 25 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4660, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 26 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4633, 1)
			AddItemCount(cnum, 8202, 1)
		
		end


	else
		return 1,0,"���� 2"

	end
end











function NPC_QUEST_618(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 361) < 1 then
			return 2,0,"�ȳ��Ͻôٴ�~ ��ƮĹ!! �̴ٴ�~ �ٻ� �������� iMBC ģ������ ���� ��Ÿ���ٴ�~!! �׷��� �������̴�??",2,"������ �ݰ�����~!!"

		
		else
			return 5,0,"�ȳ��Ͻô�~ �ٽ� ���� ã�� �Ա���~ ������ �������� ���� iMBC ģ������ ���� ���� �Ѵٴ�~ 15����, 30����, 45����, 60������ �޼��ϸ� ���� ã�� ���Դ�����~",12,"15������ �Ǿ����",13,"30������ �Ǿ����",14,"45������ �Ǿ����",15,"60������ �Ǿ����"

		end


			


	elseif req == 2 then
		if CheckItemPocket(cnum, 8199, 1) < 1  then
			return 1,0,"���� ������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� ���� ����"

		else
			AddSwitchCount(cnum, 361, 1)
			AddItemCount(cnum, 8199, 1)
			AddMoney(cnum, 30000)
			return 1,0,"���� �ݰ�����~ �츮 �̷��� ���� �͵� �ο��ε�~ ������ ģ�� ���ڴ�~ ģ���� �� ������� ������ ���� ��ũ�� 30,000 GP�� ������ �ش�~ ������ ���� ����~"

		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 362) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 15 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 15 ������ �޼����� ���ߴ� ��~! 15 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"15������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 3ĭ �̻� ���� ����"
		

		else
			type = GetHeroType(cnum)

			if type == 0 then
				AddItemCount(cnum, 4673, 1)


			elseif type == 1 then
				AddItemCount(cnum, 4688, 1)


			elseif type == 2 then
				AddItemCount(cnum, 4703, 1)


			elseif type == 3 then
				AddItemCount(cnum, 4721, 1)


			else
				return 1,0,"����"


			end

			AddItemCount(cnum, 8200, 1)
			AddItemCount(cnum, 170, 1)
			AddMoney(cnum, 50000)
			AddSwitchCount(cnum, 362, 1)
			return 1,0,"��~ 15������ �޼��߱��� ..������ 15������ �ͽ� ������ ���踦 ���ݸ� Ž���ص� �޼� �Ҽ� �ִٴ�~ ������ ����� ����̴� ������ �ְٴ� ��~ ������ ����� ������, 50,000 GP�� ������ �ְڴٴ�~ 30������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��! �� �ٻ��� ������ �غ� �� ���� �ְڴٴ�~ ��!! �׸��� �Ź� ���� �ִ� �޼� ������ ���� ������ ����!! ���߿� ��û�� ��ǰ�� ���� �� �ִ� ������̴ٴ�! ������ ���� ���شϱ� �� �����ϰ� �ְԴ�~"

		end			
			





	elseif req == 13 then
		if GetSwitchCount(cnum, 363) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 30 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 30 ������ �޼����� ���ߴ� ��~! 30 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 2  then
			return 1,0,"30������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		elseif GetOccupiedHenchPocket(cnum, 1) > 19  then
			return 1,0,"30������ �޼��� �������� ��ġ�� �� �� �ϴµ� ��ġ �κ��丮�� �� ������ ���ٴ�~ ��ġ �κ��丮�� 1ĭ �̻� ���� ����"
		

		else
			AddHench(cnum, 273, 1)
			AddItemCount(cnum, 8201, 1)
			AddItemCount(cnum, 1018, 1)
			AddSwitchCount(cnum, 363, 1)
			return 1,0,"��... 30������ �޼� �߱���~ �ͽ� ������ ���谡 �ϳ� ������ �������~ ��~ ���� ����� �����̴�~ ����Ķ�� ��ġ�� �ó������� ��¹����� �� �״� �� ����ϵ��� �ϰԴ�~ 45������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��!"

		end





	elseif req == 14 then
		if GetSwitchCount(cnum, 364) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 45 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 45 ������ �޼����� ���ߴ� ��~! 45 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		else
			return 6,0,"��! ���� 45������ �޼� �߱���~ ������~ �ʹ� ���� ���� ���� Ž�� �ϱ� �ٶ���~ �Ʒ��� ���� ��Ͽ��� �Ѱ����� ���Ŵ�~ �׸��� 60������ �Ǹ� ���� �ٽ� ã�ƿͶ� ��!",22,"�����͵�ũ ���Ű���",23,"���� ���Ű���",24,"��� ���Ű���",25,"���� ���Ű���",26,"�����跹�̼� ���Ű���"

		end




	elseif req == 15 then
		if GetSwitchCount(cnum, 365) > 0 then
			return 1,0,"����� �̹� ��Ʈ Ĺ�� ������ ��� �޾Ҵ� ��~! �� ��Ʈ Ĺ�� ������ �����ؼ��� �ȵȴٴ�!"


		elseif GetHeroLv(cnum) < 60 then
			return 1,0,"��!! �� ��Ʈ Ĺ�� ���̷��� �ϴٴ�~! ����� ���� 60 ������ �޼����� ���ߴ� ��~! 60 ������ �޼��ϸ� ���� �ٽ� ã�� �Ͷ� ��~!"


		elseif GetRemainPocket(cnum) < 3  then
			return 1,0,"60������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 3ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 365, 1)
			AddItemCount(cnum, 4732, 1)
			AddItemCount(cnum, 95, 1)
			AddItemCount(cnum, 8203, 1)
			return 1,0,"�ͽ��������� ���迡�� ����� �̹� �Ǹ��� Ž�谡!! �ٸ� �̵�� ���� ������ �ϴ� ����, ���� ��� ������ ���踦 ���� �� �����Ŵ�! ������ ������ ưư�� ���ʰ� �����̾��� ������� �ٲ���~ �ε� �� ��� �ϰ�, ���߿� �츮 �� ������!!!!"

		end






	elseif req == 22 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4651, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 23 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4606, 1)
			AddItemCount(cnum, 8202, 1)
		
		end
		


	elseif req == 24 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4582, 1)
			AddItemCount(cnum, 8202, 1)
		
		end



	elseif req == 25 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4660, 1)
			AddItemCount(cnum, 8202, 1)
		
		end




	elseif req == 26 then
		if GetRemainPocket(cnum) < 2  then
			return 1,0,"45������ �޼��� �������� ������ �� �� �ϴµ� �κ��丮�� �� ������ ���ٴ�~ �κ��丮�� 2ĭ �̻� ���� ����"


		else
			AddSwitchCount(cnum, 364, 1)
			AddItemCount(cnum, 4633, 1)
			AddItemCount(cnum, 8202, 1)
		
		end


	else
		return 1,0,"���� 2"

	end
end