function NPC_QUEST_667(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- ���� ��߱�

			if GetSwitchCount(cnum, 382) < 1 then -- 2�� �̺�Ʈ ���� ��

				if GetSwitchCount(cnum, 379) < 1 then -- �Ϸ� ��

					if GetSwitchCount(cnum, 378) < 1 then -- 4�ܰ�

						if GetSwitchCount(cnum, 377) < 1 then -- 3�ܰ�
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2�ܰ�

								if GetSwitchCount(cnum, 375) < 1 then -- 1�ܰ�
									return 3,0,"(�ù���..)",2,"���� ��� ��������?",3,"����. �λ� �����(����)"
	

								else

									return 2,0,"�����̴� �� Ű��� ��Ű���?. �Ʊ⹶���̸� 31�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",72,"�Ʊ⹶���̸� �����ش�."

								end

							else

								return 2,0,"�����̴� �� Ű��� ��Ű���?. ưư�����̸� 47�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",82,"ưư�����̸� �����ش�."
			
	
							end

						else

							return 2,0,"�����̴� �� Ű��� ��Ű���?. ��ġ�����̸� 62�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",92,"��ġ�����̸� �����ش�."

	
						end

					else

						return 2,0,"�����̴� �� Ű��� ��Ű���?. ���۹����̸� 78�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",102,"���۹����̸� �����ش�."

	
					end
		
				else
					return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̾��. � ����ϴ� �׳࿡�� �����ְ� �ͱ���. ������ �׳� �����ֱ� �� �׷���. ���� ���� ����� �������?",112,"ȭ��Ʈ���̴ϱ�. ������ �Բ�"

				end

			else
				return 2,0,"���� �� ���� ���̳���?",132,"��"


			end

		else
			return 2,0,"�� ���̱���. �˰� �ְ����� ������� ��������� ����� ���ؼ���  [��������� 30��], [������� 30��] ��ᰡ �ʿ��ؿ�. ���� ����ðھ��?",152,"��"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�. �ٽ� ��Ź�帱����~",142,"�̷�.. �ݹ� �����ò���"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"�ְ���! �ְ�! �̰����� �غ�� ���� �� ������. ��~ ������� ��������� �����̸� ���� ��������� ����ī���� �ּ���. ��! �����̴� �κ��丮���� �� ���·� ��ߵǴ� �� ���� ���ð��. ���� �帮�� ������� ��������� ����Ͻø� �ȵǰ�, �� �����̿� �Բ� ����ī���� �ǳ���� �մϴ�. �׸���.. ������� ��������� �� �ʿ��Ͻø� ��Ḧ ��� �����ּ���. ���� ��� �����帱����."

		end







	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"������� ��������� ���� ��ᰡ ����ϳ׿�. ���� �ٷ� ����� �帱����. ��ŵ� ����ϴ� ����� �ִٸ� ������ �غ�����~ ��~ ��������."

		end







	elseif req == 2 then
		return 3,0,"(�����̸� ���ٵ�����..)��.. ��� �߷�Ÿ�� ������� ����ϴ� �׳࿡�� �������� ���� �޾Ҿ��. �׷��� ��¼����? ���� �� ������ �������ؼ�. �� �༮�� ������ ����� �ʿ��ϳ׿�. ������ Ű���� �׳࿡�� �����ְ� ������ ������.",12,"��. �׷� ���� �þ� �帮����",13,"������! ���� �˷����� �־..�˼�"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"���� �׷��ֽðھ��? �̷��� �������! �׷��� �� ��Ź�帱����. ���� ���� �̰��� ������. �����̰� ���� �ڶ�� ������ �����ּ���. ������ ������ �帮��~",22,"���� ���� ���û翴����. ����ϼ�~",23,"��� ���� �԰��� ����.. �˼�" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --ó�� ����
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮â�� �����̸� ���� ������ ���׿�"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� �Ʊ� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",32,"�󸶵��� �ñ�ʼ�!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ưư �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",42,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ��ġ �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",52,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ���� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̰ھ��. � ����ϴ� �׳࿡�� �����ְ� ������ ���� ������ ���� ������ �ʾұ���. ������ ���� �� ������ �� �༮�� ���ݸ� �� �þ��ֽÿ�. ���� �Ǹ� ã�ư�����.",62,"����! ��ٸ�����!"

		end




	elseif req == 112 then
		return 3,0,"��! ���̵��! �׷���, ��¼����? ���� ���� ��Ḧ ���� �ð��� ���µ�..�̾�������, ��� �� �����ֽ� �� �������? �̰͵��� �ʿ��մϴ�. [��������� 30��], [������� 30��]",122,"���� ���ؿðԿ�",123,"�������� �η��������̳�!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4�ܰ� �Ϸ�

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"����"

	end
end






function NPC_QUEST_668(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- ���� ��߱�

			if GetSwitchCount(cnum, 382) < 1 then -- 2�� �̺�Ʈ ���� ��

				if GetSwitchCount(cnum, 379) < 1 then -- �Ϸ� ��

					if GetSwitchCount(cnum, 378) < 1 then -- 4�ܰ�

						if GetSwitchCount(cnum, 377) < 1 then -- 3�ܰ�
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2�ܰ�

								if GetSwitchCount(cnum, 375) < 1 then -- 1�ܰ�
									return 3,0,"(�ù���..)",2,"���� ��� ��������?",3,"����. �λ� �����(����)"
	

								else

									return 2,0,"�����̴� �� Ű��� ��Ű���?. �Ʊ⹶���̸� 31�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",72,"�Ʊ⹶���̸� �����ش�."

								end

							else

								return 2,0,"�����̴� �� Ű��� ��Ű���?. ưư�����̸� 47�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",82,"ưư�����̸� �����ش�."
			
	
							end

						else

							return 2,0,"�����̴� �� Ű��� ��Ű���?. ��ġ�����̸� 62�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",92,"��ġ�����̸� �����ش�."

	
						end

					else

						return 2,0,"�����̴� �� Ű��� ��Ű���?. ���۹����̸� 78�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",102,"���۹����̸� �����ش�."

	
					end
		
				else
					return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̾��. � ����ϴ� �׳࿡�� �����ְ� �ͱ���. ������ �׳� �����ֱ� �� �׷���. ���� ���� ����� �������?",112,"ȭ��Ʈ���̴ϱ�. ������ �Բ�"

				end

			else
				return 2,0,"���� �� ���� ���̳���?",132,"��"


			end

		else
			return 2,0,"�� ���̱���. �˰� �ְ����� ������� ��������� ����� ���ؼ���  [��������� 30��], [������� 30��] ��ᰡ �ʿ��ؿ�. ���� ����ðھ��?",152,"��"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�. �ٽ� ��Ź�帱����~",142,"�̷�.. �ݹ� �����ò���"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"�ְ���! �ְ�! �̰����� �غ�� ���� �� ������. ��~ ������� ��������� �����̸� ���� ��������� ����ī���� �ּ���. ��! �����̴� �κ��丮���� �� ���·� ��ߵǴ� �� ���� ���ð��. ���� �帮�� ������� ��������� ����Ͻø� �ȵǰ�, �� �����̿� �Բ� ����ī���� �ǳ���� �մϴ�. �׸���.. ������� ��������� �� �ʿ��Ͻø� ��Ḧ ��� �����ּ���. ���� ��� �����帱����."

		end




	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"������� ��������� ���� ��ᰡ ����ϳ׿�. ���� �ٷ� ����� �帱����. ��ŵ� ����ϴ� ����� �ִٸ� ������ �غ�����~ ��~ ��������."

		end







	elseif req == 2 then
		return 3,0,"(�����̸� ���ٵ�����..)��.. ��� �߷�Ÿ�� ������� ����ϴ� �׳࿡�� �������� ���� �޾Ҿ��. �׷��� ��¼����? ���� �� ������ �������ؼ�. �� �༮�� ������ ����� �ʿ��ϳ׿�. ������ Ű���� �׳࿡�� �����ְ� ������ ������.",12,"��. �׷� ���� �þ� �帮����",13,"������! ���� �˷����� �־..�˼�"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"���� �׷��ֽðھ��? �̷��� �������! �׷��� �� ��Ź�帱����. ���� ���� �̰��� ������. �����̰� ���� �ڶ�� ������ �����ּ���. ������ ������ �帮��~",22,"���� ���� ���û翴����. ����ϼ�~",23,"��� ���� �԰��� ����.. �˼�" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --ó�� ����
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮â�� �����̸� ���� ������ ���׿�"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� �Ʊ� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",32,"�󸶵��� �ñ�ʼ�!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ưư �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",42,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ��ġ �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",52,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ���� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̰ھ��. � ����ϴ� �׳࿡�� �����ְ� ������ ���� ������ ���� ������ �ʾұ���. ������ ���� �� ������ �� �༮�� ���ݸ� �� �þ��ֽÿ�. ���� �Ǹ� ã�ư�����.",62,"����! ��ٸ�����!"

		end




	elseif req == 112 then
		return 3,0,"��! ���̵��! �׷���, ��¼����? ���� ���� ��Ḧ ���� �ð��� ���µ�..�̾�������, ��� �� �����ֽ� �� �������? �̰͵��� �ʿ��մϴ�. [��������� 30��], [������� 30��]",122,"���� ���ؿðԿ�",123,"�������� �η��������̳�!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4�ܰ� �Ϸ�

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"����"

	end
end












function NPC_QUEST_669(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- ���� ��߱�

			if GetSwitchCount(cnum, 382) < 1 then -- 2�� �̺�Ʈ ���� ��

				if GetSwitchCount(cnum, 379) < 1 then -- �Ϸ� ��

					if GetSwitchCount(cnum, 378) < 1 then -- 4�ܰ�

						if GetSwitchCount(cnum, 377) < 1 then -- 3�ܰ�
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2�ܰ�

								if GetSwitchCount(cnum, 375) < 1 then -- 1�ܰ�
									return 3,0,"(�ù���..)",2,"���� ��� ��������?",3,"����. �λ� �����(����)"
	

								else

									return 2,0,"�����̴� �� Ű��� ��Ű���?. �Ʊ⹶���̸� 31�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",72,"�Ʊ⹶���̸� �����ش�."

								end

							else

								return 2,0,"�����̴� �� Ű��� ��Ű���?. ưư�����̸� 47�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",82,"ưư�����̸� �����ش�."
			
	
							end

						else

							return 2,0,"�����̴� �� Ű��� ��Ű���?. ��ġ�����̸� 62�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",92,"��ġ�����̸� �����ش�."

	
						end

					else

						return 2,0,"�����̴� �� Ű��� ��Ű���?. ���۹����̸� 78�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",102,"���۹����̸� �����ش�."

	
					end
		
				else
					return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̾��. � ����ϴ� �׳࿡�� �����ְ� �ͱ���. ������ �׳� �����ֱ� �� �׷���. ���� ���� ����� �������?",112,"ȭ��Ʈ���̴ϱ�. ������ �Բ�"

				end

			else
				return 2,0,"���� �� ���� ���̳���?",132,"��"


			end

		else
			return 2,0,"�� ���̱���. �˰� �ְ����� ������� ��������� ����� ���ؼ���  [��������� 30��], [������� 30��] ��ᰡ �ʿ��ؿ�. ���� ����ðھ��?",152,"��"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�. �ٽ� ��Ź�帱����~",142,"�̷�.. �ݹ� �����ò���"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"�ְ���! �ְ�! �̰����� �غ�� ���� �� ������. ��~ ������� ��������� �����̸� ���� ��������� ����ī���� �ּ���. ��! �����̴� �κ��丮���� �� ���·� ��ߵǴ� �� ���� ���ð��. ���� �帮�� ������� ��������� ����Ͻø� �ȵǰ�, �� �����̿� �Բ� ����ī���� �ǳ���� �մϴ�. �׸���.. ������� ��������� �� �ʿ��Ͻø� ��Ḧ ��� �����ּ���. ���� ��� �����帱����."

		end




	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"������� ��������� ���� ��ᰡ ����ϳ׿�. ���� �ٷ� ����� �帱����. ��ŵ� ����ϴ� ����� �ִٸ� ������ �غ�����~ ��~ ��������."

		end







	elseif req == 2 then
		return 3,0,"(�����̸� ���ٵ�����..)��.. ��� �߷�Ÿ�� ������� ����ϴ� �׳࿡�� �������� ���� �޾Ҿ��. �׷��� ��¼����? ���� �� ������ �������ؼ�. �� �༮�� ������ ����� �ʿ��ϳ׿�. ������ Ű���� �׳࿡�� �����ְ� ������ ������.",12,"��. �׷� ���� �þ� �帮����",13,"������! ���� �˷����� �־..�˼�"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"���� �׷��ֽðھ��? �̷��� �������! �׷��� �� ��Ź�帱����. ���� ���� �̰��� ������. �����̰� ���� �ڶ�� ������ �����ּ���. ������ ������ �帮��~",22,"���� ���� ���û翴����. ����ϼ�~",23,"��� ���� �԰��� ����.. �˼�" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --ó�� ����
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮â�� �����̸� ���� ������ ���׿�"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� �Ʊ� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",32,"�󸶵��� �ñ�ʼ�!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ưư �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",42,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ��ġ �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",52,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ���� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̰ھ��. � ����ϴ� �׳࿡�� �����ְ� ������ ���� ������ ���� ������ �ʾұ���. ������ ���� �� ������ �� �༮�� ���ݸ� �� �þ��ֽÿ�. ���� �Ǹ� ã�ư�����.",62,"����! ��ٸ�����!"

		end




	elseif req == 112 then
		return 3,0,"��! ���̵��! �׷���, ��¼����? ���� ���� ��Ḧ ���� �ð��� ���µ�..�̾�������, ��� �� �����ֽ� �� �������? �̰͵��� �ʿ��մϴ�. [��������� 30��], [������� 30��]",122,"���� ���ؿðԿ�",123,"�������� �η��������̳�!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4�ܰ� �Ϸ�

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"����"

	end
end






function NPC_QUEST_670(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- ���� ��߱�

			if GetSwitchCount(cnum, 382) < 1 then -- 2�� �̺�Ʈ ���� ��

				if GetSwitchCount(cnum, 379) < 1 then -- �Ϸ� ��

					if GetSwitchCount(cnum, 378) < 1 then -- 4�ܰ�

						if GetSwitchCount(cnum, 377) < 1 then -- 3�ܰ�
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2�ܰ�

								if GetSwitchCount(cnum, 375) < 1 then -- 1�ܰ�
									return 3,0,"(�ù���..)",2,"���� ��� ��������?",3,"����. �λ� �����(����)"
	

								else

									return 2,0,"�����̴� �� Ű��� ��Ű���?. �Ʊ⹶���̸� 31�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",72,"�Ʊ⹶���̸� �����ش�."

								end

							else

								return 2,0,"�����̴� �� Ű��� ��Ű���?. ưư�����̸� 47�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",82,"ưư�����̸� �����ش�."
			
	
							end

						else

							return 2,0,"�����̴� �� Ű��� ��Ű���?. ��ġ�����̸� 62�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",92,"��ġ�����̸� �����ش�."

	
						end

					else

						return 2,0,"�����̴� �� Ű��� ��Ű���?. ���۹����̸� 78�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",102,"���۹����̸� �����ش�."

	
					end
		
				else
					return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̾��. � ����ϴ� �׳࿡�� �����ְ� �ͱ���. ������ �׳� �����ֱ� �� �׷���. ���� ���� ����� �������?",112,"ȭ��Ʈ���̴ϱ�. ������ �Բ�"

				end

			else
				return 2,0,"���� �� ���� ���̳���?",132,"��"


			end

		else
			return 2,0,"�� ���̱���. �˰� �ְ����� ������� ��������� ����� ���ؼ���  [��������� 30��], [������� 30��] ��ᰡ �ʿ��ؿ�. ���� ����ðھ��?",152,"��"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�. �ٽ� ��Ź�帱����~",142,"�̷�.. �ݹ� �����ò���"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"�ְ���! �ְ�! �̰����� �غ�� ���� �� ������. ��~ ������� ��������� �����̸� ���� ��������� ����ī���� �ּ���. ��! �����̴� �κ��丮���� �� ���·� ��ߵǴ� �� ���� ���ð��. ���� �帮�� ������� ��������� ����Ͻø� �ȵǰ�, �� �����̿� �Բ� ����ī���� �ǳ���� �մϴ�. �׸���.. ������� ��������� �� �ʿ��Ͻø� ��Ḧ ��� �����ּ���. ���� ��� �����帱����."

		end




	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"������� ��������� ���� ��ᰡ ����ϳ׿�. ���� �ٷ� ����� �帱����. ��ŵ� ����ϴ� ����� �ִٸ� ������ �غ�����~ ��~ ��������."

		end







	elseif req == 2 then
		return 3,0,"(�����̸� ���ٵ�����..)��.. ��� �߷�Ÿ�� ������� ����ϴ� �׳࿡�� �������� ���� �޾Ҿ��. �׷��� ��¼����? ���� �� ������ �������ؼ�. �� �༮�� ������ ����� �ʿ��ϳ׿�. ������ Ű���� �׳࿡�� �����ְ� ������ ������.",12,"��. �׷� ���� �þ� �帮����",13,"������! ���� �˷����� �־..�˼�"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"���� �׷��ֽðھ��? �̷��� �������! �׷��� �� ��Ź�帱����. ���� ���� �̰��� ������. �����̰� ���� �ڶ�� ������ �����ּ���. ������ ������ �帮��~",22,"���� ���� ���û翴����. ����ϼ�~",23,"��� ���� �԰��� ����.. �˼�" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --ó�� ����
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮â�� �����̸� ���� ������ ���׿�"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� �Ʊ� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",32,"�󸶵��� �ñ�ʼ�!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ưư �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",42,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ��ġ �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",52,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ���� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̰ھ��. � ����ϴ� �׳࿡�� �����ְ� ������ ���� ������ ���� ������ �ʾұ���. ������ ���� �� ������ �� �༮�� ���ݸ� �� �þ��ֽÿ�. ���� �Ǹ� ã�ư�����.",62,"����! ��ٸ�����!"

		end




	elseif req == 112 then
		return 3,0,"��! ���̵��! �׷���, ��¼����? ���� ���� ��Ḧ ���� �ð��� ���µ�..�̾�������, ��� �� �����ֽ� �� �������? �̰͵��� �ʿ��մϴ�. [��������� 30��], [������� 30��]",122,"���� ���ؿðԿ�",123,"�������� �η��������̳�!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4�ܰ� �Ϸ�

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"����"

	end
end






function NPC_QUEST_671(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- ���� ��߱�

			if GetSwitchCount(cnum, 382) < 1 then -- 2�� �̺�Ʈ ���� ��

				if GetSwitchCount(cnum, 379) < 1 then -- �Ϸ� ��

					if GetSwitchCount(cnum, 378) < 1 then -- 4�ܰ�

						if GetSwitchCount(cnum, 377) < 1 then -- 3�ܰ�
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2�ܰ�

								if GetSwitchCount(cnum, 375) < 1 then -- 1�ܰ�
									return 3,0,"(�ù���..)",2,"���� ��� ��������?",3,"����. �λ� �����(����)"
	

								else

									return 2,0,"�����̴� �� Ű��� ��Ű���?. �Ʊ⹶���̸� 31�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",72,"�Ʊ⹶���̸� �����ش�."

								end

							else

								return 2,0,"�����̴� �� Ű��� ��Ű���?. ưư�����̸� 47�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",82,"ưư�����̸� �����ش�."
			
	
							end

						else

							return 2,0,"�����̴� �� Ű��� ��Ű���?. ��ġ�����̸� 62�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",92,"��ġ�����̸� �����ش�."

	
						end

					else

						return 2,0,"�����̴� �� Ű��� ��Ű���?. ���۹����̸� 78�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",102,"���۹����̸� �����ش�."

	
					end
		
				else
					return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̾��. � ����ϴ� �׳࿡�� �����ְ� �ͱ���. ������ �׳� �����ֱ� �� �׷���. ���� ���� ����� �������?",112,"ȭ��Ʈ���̴ϱ�. ������ �Բ�"

				end

			else
				return 2,0,"���� �� ���� ���̳���?",132,"��"


			end

		else
			return 2,0,"�� ���̱���. �˰� �ְ����� ������� ��������� ����� ���ؼ���  [��������� 30��], [������� 30��] ��ᰡ �ʿ��ؿ�. ���� ����ðھ��?",152,"��"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�. �ٽ� ��Ź�帱����~",142,"�̷�.. �ݹ� �����ò���"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"�ְ���! �ְ�! �̰����� �غ�� ���� �� ������. ��~ ������� ��������� �����̸� ���� ��������� ����ī���� �ּ���. ��! �����̴� �κ��丮���� �� ���·� ��ߵǴ� �� ���� ���ð��. ���� �帮�� ������� ��������� ����Ͻø� �ȵǰ�, �� �����̿� �Բ� ����ī���� �ǳ���� �մϴ�. �׸���.. ������� ��������� �� �ʿ��Ͻø� ��Ḧ ��� �����ּ���. ���� ��� �����帱����."

		end




	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"������� ��������� ���� ��ᰡ ����ϳ׿�. ���� �ٷ� ����� �帱����. ��ŵ� ����ϴ� ����� �ִٸ� ������ �غ�����~ ��~ ��������."

		end







	elseif req == 2 then
		return 3,0,"(�����̸� ���ٵ�����..)��.. ��� �߷�Ÿ�� ������� ����ϴ� �׳࿡�� �������� ���� �޾Ҿ��. �׷��� ��¼����? ���� �� ������ �������ؼ�. �� �༮�� ������ ����� �ʿ��ϳ׿�. ������ Ű���� �׳࿡�� �����ְ� ������ ������.",12,"��. �׷� ���� �þ� �帮����",13,"������! ���� �˷����� �־..�˼�"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"���� �׷��ֽðھ��? �̷��� �������! �׷��� �� ��Ź�帱����. ���� ���� �̰��� ������. �����̰� ���� �ڶ�� ������ �����ּ���. ������ ������ �帮��~",22,"���� ���� ���û翴����. ����ϼ�~",23,"��� ���� �԰��� ����.. �˼�" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --ó�� ����
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮â�� �����̸� ���� ������ ���׿�"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� �Ʊ� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",32,"�󸶵��� �ñ�ʼ�!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ưư �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",42,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ��ġ �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",52,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ���� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̰ھ��. � ����ϴ� �׳࿡�� �����ְ� ������ ���� ������ ���� ������ �ʾұ���. ������ ���� �� ������ �� �༮�� ���ݸ� �� �þ��ֽÿ�. ���� �Ǹ� ã�ư�����.",62,"����! ��ٸ�����!"

		end




	elseif req == 112 then
		return 3,0,"��! ���̵��! �׷���, ��¼����? ���� ���� ��Ḧ ���� �ð��� ���µ�..�̾�������, ��� �� �����ֽ� �� �������? �̰͵��� �ʿ��մϴ�. [��������� 30��], [������� 30��]",122,"���� ���ؿðԿ�",123,"�������� �η��������̳�!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4�ܰ� �Ϸ�

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"����"

	end
end






function NPC_QUEST_672(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- ���� ��߱�

			if GetSwitchCount(cnum, 382) < 1 then -- 2�� �̺�Ʈ ���� ��

				if GetSwitchCount(cnum, 379) < 1 then -- �Ϸ� ��

					if GetSwitchCount(cnum, 378) < 1 then -- 4�ܰ�

						if GetSwitchCount(cnum, 377) < 1 then -- 3�ܰ�
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2�ܰ�

								if GetSwitchCount(cnum, 375) < 1 then -- 1�ܰ�
									return 3,0,"(�ù���..)",2,"���� ��� ��������?",3,"����. �λ� �����(����)"
	

								else

									return 2,0,"�����̴� �� Ű��� ��Ű���?. �Ʊ⹶���̸� 31�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",72,"�Ʊ⹶���̸� �����ش�."

								end

							else

								return 2,0,"�����̴� �� Ű��� ��Ű���?. ưư�����̸� 47�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",82,"ưư�����̸� �����ش�."
			
	
							end

						else

							return 2,0,"�����̴� �� Ű��� ��Ű���?. ��ġ�����̸� 62�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",92,"��ġ�����̸� �����ش�."

	
						end

					else

						return 2,0,"�����̴� �� Ű��� ��Ű���?. ���۹����̸� 78�������� ���� ��Ű�̴ٸ� ������ �����ּ���. ������ ������ ������ �帮�ڽ��ϴ�.",102,"���۹����̸� �����ش�."

	
					end
		
				else
					return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̾��. � ����ϴ� �׳࿡�� �����ְ� �ͱ���. ������ �׳� �����ֱ� �� �׷���. ���� ���� ����� �������?",112,"ȭ��Ʈ���̴ϱ�. ������ �Բ�"

				end

			else
				return 2,0,"���� �� ���� ���̳���?",132,"��"


			end

		else
			return 2,0,"�� ���̱���. �˰� �ְ����� ������� ��������� ����� ���ؼ���  [��������� 30��], [������� 30��] ��ᰡ �ʿ��ؿ�. ���� ����ðھ��?",152,"��"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�. �ٽ� ��Ź�帱����~",142,"�̷�.. �ݹ� �����ò���"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"�ְ���! �ְ�! �̰����� �غ�� ���� �� ������. ��~ ������� ��������� �����̸� ���� ��������� ����ī���� �ּ���. ��! �����̴� �κ��丮���� �� ���·� ��ߵǴ� �� ���� ���ð��. ���� �帮�� ������� ��������� ����Ͻø� �ȵǰ�, �� �����̿� �Բ� ����ī���� �ǳ���� �մϴ�. �׸���.. ������� ��������� �� �ʿ��Ͻø� ��Ḧ ��� �����ּ���. ���� ��� �����帱����."

		end




	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"������� ��������� ����� ���� ��ᰡ �����ϳ׿�. [��������� 30��], [������� 30��] �̷��� �ʿ��մϴ�."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ��� ���� ��������� ���� ������ �����մϴ�."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"������� ��������� ���� ��ᰡ ����ϳ׿�. ���� �ٷ� ����� �帱����. ��ŵ� ����ϴ� ����� �ִٸ� ������ �غ�����~ ��~ ��������."

		end







	elseif req == 2 then
		return 3,0,"(�����̸� ���ٵ�����..)��.. ��� �߷�Ÿ�� ������� ����ϴ� �׳࿡�� �������� ���� �޾Ҿ��. �׷��� ��¼����? ���� �� ������ �������ؼ�. �� �༮�� ������ ����� �ʿ��ϳ׿�. ������ Ű���� �׳࿡�� �����ְ� ������ ������.",12,"��. �׷� ���� �þ� �帮����",13,"������! ���� �˷����� �־..�˼�"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"���� �׷��ֽðھ��? �̷��� �������! �׷��� �� ��Ź�帱����. ���� ���� �̰��� ������. �����̰� ���� �ڶ�� ������ �����ּ���. ������ ������ �帮��~",22,"���� ���� ���û翴����. ����ϼ�~",23,"��� ���� �԰��� ����.. �˼�" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --ó�� ����
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"��ġ �κ��丮â�� �����̸� ���� ������ ���׿�"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� �Ʊ� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",32,"�󸶵��� �ñ�ʼ�!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ưư �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",42,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ��ġ �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"�����̳༮ ���� �ǳ�! ����! ��ħ ���� �� �����Ѱ� ����µ� �帱����. �׸��� �����̴� �ٽ� �� �þ��ּ���~",52,"�󸶵��� �ñ�ʼ�!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"��ġ �κ��丮�� ���� �����̰� ������ �ʴµ���? Ȥ�� ���� ��� ���̶�� ��ġ �κ��丮�� �Ű��ּ���"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"���� �״��� �������� ���� �� ���׿�. �� �� �Ű���ּ���."
	
		else
			return 2,0,"������~ �� �༮ ��û���� �ڶ�����. �� ���� ���� ����ϼ̰ھ��. � ����ϴ� �׳࿡�� �����ְ� ������ ���� ������ ���� ������ �ʾұ���. ������ ���� �� ������ �� �༮�� ���ݸ� �� �þ��ֽÿ�. ���� �Ǹ� ã�ư�����.",62,"����! ��ٸ�����!"

		end




	elseif req == 112 then
		return 3,0,"��! ���̵��! �׷���, ��¼����? ���� ���� ��Ḧ ���� �ð��� ���µ�..�̾�������, ��� �� �����ֽ� �� �������? �̰͵��� �ʿ��մϴ�. [��������� 30��], [������� 30��]",122,"���� ���ؿðԿ�",123,"�������� �η��������̳�!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3�ܰ� �Ϸ�
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"�κ��丮�� ������ ���� ������ �����"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4�ܰ� �Ϸ�

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"����"

	end
end