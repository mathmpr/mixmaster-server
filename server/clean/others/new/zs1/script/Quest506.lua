function NPC_QUEST_600(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 381) < 1 then
			return 3,0,"�������� ���� �� �˰� �ֳ�? ��� ���߸� �±ر⸦ �ְڳ�.",2,"��! �� �˰� �־��.",3,"�۽��. ���� �� �ϰ� �ðԿ�"

		else
			return 1,0,"�ڳ״� �̹� �������� ���� �� �˰� �ֳ�. �ڳ��� ������ �θ� �˸����� �ϰԳ�."

		end



	
	elseif req == 2 then

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"������ ���߸� �������� �ַ��� �ߴµ�, �κ��丮�� �� ������ ������. ���߿� ��ȸ���� �������� �κ��丮�� �� ������ 1ĭ �̻� ����� ���Գ�"


		else		
			random = SetRandom(cnum, 1, 3)

			if random == 1 then
				return 5,0,"�������� �Ϻ� �Ĺ��� �����Ͽ� �ִ� �츮 ���� �Ͼ ���������ϵ��������. ��~ �׷��� �� �⵵�� �Ͼ ���ΰ�?",12,"1918��",13,"1919��",14,"1920��",15,"1921��"

		
			elseif random == 2 then
				return 5,0,"���Ͽ ��Ī�� ���� ������ ���ڳ�. ���Ͽ�� �ٸ� ���� ����� �ϴ��� �ƴ°�?",22,"���� ���� �",23,"�⸶ ���� �",24,"��� ���� �",25,"��� ���� �"



			elseif random == 3 then
				return 5,0,"�Ϻ��� �Ĺ��� ��å�� ���� ������ ���ڳ�. �Ϻ��� �츮������ �����ǽ� ������ �ﴩ����, ���� ����� ������ ��ȸ�� ��Ż�ϱ� ���� ��ģ ���� ��å�� �����ΰ�?",32,"��� ��å",33,"��� ��å",34,"���� ��å",35,"��� ��å"


			else
				return 1,0,"����"

			end
		end


	elseif req == 3 then
		return 0



	elseif req == 13 or req == 24 or req == 35 then
		AddSwitchCount(cnum, 381, 1)
		AddItemCount(cnum, 4331, 1)
		return 1,0,"�׷���! �����̳�! �������� ���� ��Ȯ�� �˰� �ֱ�. ����~ �ڳ׿��� �±ر⸦ �� �״� �������� ���� �ǹ̸� �������Գ�."



 
	elseif req == 12 or req == 14 or req == 15 or req == 22 or req == 23 or req == 25 or req == 32 or req == 33 or req == 34 then
		return 2,0,"Ʋ�Ⱦ�~ Ʋ�Ⱦ�~ �� �� ���θ� �ϰ� ���ð�.",42,"�� ��.��"


	elseif req == 42 then
		return 0


	else
		return 1,0,"����"

	end
end




function NPC_QUEST_601(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 381) < 1 then
			return 3,0,"�������� ���� �� �˰� �ֳ�? ��� ���߸� �±ر⸦ �ְڳ�.",2,"��! �� �˰� �־��.",3,"�۽��. ���� �� �ϰ� �ðԿ�"

		else
			return 1,0,"�ڳ״� �̹� �������� ���� �� �˰� �ֳ�. �ڳ��� ������ �θ� �˸����� �ϰԳ�."

		end



	
	elseif req == 2 then

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"������ ���߸� �������� �ַ��� �ߴµ�, �κ��丮�� �� ������ ������. ���߿� ��ȸ���� �������� �κ��丮�� �� ������ 1ĭ �̻� ����� ���Գ�"


		else		
			random = SetRandom(cnum, 1, 3)

			if random == 1 then
				return 5,0,"�������� �Ϻ� �Ĺ��� �����Ͽ� �ִ� �츮 ���� �Ͼ ���������ϵ��������. ��~ �׷��� �� �⵵�� �Ͼ ���ΰ�?",12,"1918��",13,"1919��",14,"1920��",15,"1921��"

		
			elseif random == 2 then
				return 5,0,"���Ͽ ��Ī�� ���� ������ ���ڳ�. ���Ͽ�� �ٸ� ���� ����� �ϴ��� �ƴ°�?",22,"���� ���� �",23,"�⸶ ���� �",24,"��� ���� �",25,"��� ���� �"



			elseif random == 3 then
				return 5,0,"�Ϻ��� �Ĺ��� ��å�� ���� ������ ���ڳ�. �Ϻ��� �츮������ �����ǽ� ������ �ﴩ����, ���� ����� ������ ��ȸ�� ��Ż�ϱ� ���� ��ģ ���� ��å�� �����ΰ�?",32,"��� ��å",33,"��� ��å",34,"���� ��å",35,"��� ��å"


			else
				return 1,0,"����"

			end
		end


	elseif req == 3 then
		return 0



	elseif req == 13 or req == 24 or req == 35 then
		AddSwitchCount(cnum, 381, 1)
		AddItemCount(cnum, 4331, 1)
		return 1,0,"�׷���! �����̳�! �������� ���� ��Ȯ�� �˰� �ֱ�. ����~ �ڳ׿��� �±ر⸦ �� �״� �������� ���� �ǹ̸� �������Գ�."



 
	elseif req == 12 or req == 14 or req == 15 or req == 22 or req == 23 or req == 25 or req == 32 or req == 33 or req == 34 then
		return 2,0,"Ʋ�Ⱦ�~ Ʋ�Ⱦ�~ �� �� ���θ� �ϰ� ���ð�.",42,"�� ��.��"


	elseif req == 42 then
		return 0


	else
		return 1,0,"����"

	end
end
		


function NPC_QUEST_602(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 381) < 1 then
			return 3,0,"�������� ���� �� �˰� �ֳ�? ��� ���߸� �±ر⸦ �ְڳ�.",2,"��! �� �˰� �־��.",3,"�۽��. ���� �� �ϰ� �ðԿ�"

		else
			return 1,0,"�ڳ״� �̹� �������� ���� �� �˰� �ֳ�. �ڳ��� ������ �θ� �˸����� �ϰԳ�."

		end



	
	elseif req == 2 then

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"������ ���߸� �������� �ַ��� �ߴµ�, �κ��丮�� �� ������ ������. ���߿� ��ȸ���� �������� �κ��丮�� �� ������ 1ĭ �̻� ����� ���Գ�"


		else		
			random = SetRandom(cnum, 1, 3)

			if random == 1 then
				return 5,0,"�������� �Ϻ� �Ĺ��� �����Ͽ� �ִ� �츮 ���� �Ͼ ���������ϵ��������. ��~ �׷��� �� �⵵�� �Ͼ ���ΰ�?",12,"1918��",13,"1919��",14,"1920��",15,"1921��"

		
			elseif random == 2 then
				return 5,0,"���Ͽ ��Ī�� ���� ������ ���ڳ�. ���Ͽ�� �ٸ� ���� ����� �ϴ��� �ƴ°�?",22,"���� ���� �",23,"�⸶ ���� �",24,"��� ���� �",25,"��� ���� �"



			elseif random == 3 then
				return 5,0,"�Ϻ��� �Ĺ��� ��å�� ���� ������ ���ڳ�. �Ϻ��� �츮������ �����ǽ� ������ �ﴩ����, ���� ����� ������ ��ȸ�� ��Ż�ϱ� ���� ��ģ ���� ��å�� �����ΰ�?",32,"��� ��å",33,"��� ��å",34,"���� ��å",35,"��� ��å"


			else
				return 1,0,"����"

			end
		end


	elseif req == 3 then
		return 0



	elseif req == 13 or req == 24 or req == 35 then
		AddSwitchCount(cnum, 381, 1)
		AddItemCount(cnum, 4331, 1)
		return 1,0,"�׷���! �����̳�! �������� ���� ��Ȯ�� �˰� �ֱ�. ����~ �ڳ׿��� �±ر⸦ �� �״� �������� ���� �ǹ̸� �������Գ�."



 
	elseif req == 12 or req == 14 or req == 15 or req == 22 or req == 23 or req == 25 or req == 32 or req == 33 or req == 34 then
		return 2,0,"Ʋ�Ⱦ�~ Ʋ�Ⱦ�~ �� �� ���θ� �ϰ� ���ð�.",42,"�� ��.��"


	elseif req == 42 then
		return 0


	else
		return 1,0,"����"

	end
end