function NPC_QUEST_1569(cnum, reqNumber) -- �����ÿ� / �ٸ�ũ

	req = reqNumber

	if req == 1 then
		return 6,0,"����! ���� �ְ��� ���� ������ ��ϴ� �ٸ�ũ���! ����! �ֱ� �̰��� ���ο� ���Ͱ� �����ߴٰ��ؼ� �ű� 2�� GP�� ���� ����� ����! ���� ��ġ���� ��� �������� ���ư� �� ����. ���� �뷯! �ڳװ� �����ְڴ°�? �ڳ��� ������ �˷��ְԳ�!",2,"����90�̻�",3,"����100�̻�",4,"����110�̻�",5,"����120�̻�",6,"����130�̻�"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 90�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ״� �ϰ� �밨�غ��̴±�! ���� ���ϴ� �ھ�� [��ġ���]��� �༮�ϼ�! ��Ǻ���� �𸻰� ���� 100 �̻��� [��ġ���]�� �ھ� 1���� ��������! �׸��� [�� ���� ������ ����ü] 1������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",101,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 100�̻��� [��ġ���]�� [�� ���� ������ ����ü] 1������ �����Դ°�?",12,"��! �����!",13,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 100�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ�! �� �Ա�! �̹��� ���� ���ϴ� �ھ�� [�����ؼ���]�̶�� �༮�ϼ�! �̹����� ưư�� �����δٰ� ���� 110 �̻��� [�����ؼ���] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 3������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",102,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 110 �̻��� [�����ؼ���]�� [�� ���� ������ ����ü] 3������ �����Դ°�?",22,"��! �����!",23,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 110�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �Դ°�! ����! �̹��� ���� ���ϴ� �ھ�� [��Ʋ��]��� �༮�ϼ�! �̹����� �ǰ��� �����δٰ� ���� 120 �̻��� [��Ʋ��] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 5������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",103,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 120 �̻��� [��Ʋ��]�� [�� ���� ������ ����ü] 5������ �����Դ°�?",32,"��! �����!",33,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 120�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! ����! �ڳ�! �� �Դ°�!@�̹��� ���� ���ϴ� �ھ�� [����ȣũ]��� �༮�ϼ�! �ǰ��� ������ ���� 130 �̻��� [����ȣũ] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 10������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",104,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 130 �̻��� [����ȣũ]�� [�� ���� ������ ����ü] 10������ �����Դ°�?",42,"��! �����!",44,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"�� ������ ����������. ������ �ٸ� �������� �׽�Ʈ�� ġ�� �����̴� �׶����� �� �Ƿ��� �װԳ�."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 130�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"����! �� �Դ°�!@�̹��� [�������]��� �༮�ϼ�! ���� 140 �̻��� [�������] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 15������ ��������!�׷��� �ڳװ� ������ �ھ� 1���� �ϳ�����!",105,"��~! �˰ڽ��ϴ�.!"
			end
		else
			return 4,0,"���� 140 �̻��� [�������]�� [�� ���� ������ ����ü] 15������ �����Դ°�?",52,"��! �����!",54,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end







--����Ʈ ���� ���� �� ó����
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"��ٸ��ڳ�"






--����90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--��ġ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1029, -1)--��ġ��� ����
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--���ƾ߾�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--����ķ��
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--��Ƽ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--�޸�����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 13 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."








--����100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--�����ؼ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--ȥ����Ű
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 23 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."
















--���� 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--��Ʋ�� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--�̽��Ͷ�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--���Ϻ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 33 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--����ȣũ ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--���̾��ũ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--�������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--��Ʈ���̿�ŷ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 43 then
		return 1,0,"�����ÿ¿����� ���� �� �ִ� ������ ������ [���� �� ������ ����ü], [ȸ�� �� ������ ����ü], [�Ķ� �� ������ ����ü], [Ȳ�� �� ������ ����ü], [�ʷ� �� ������ ����ü], [�ϴ� �� ������ ����ü], [���� �� ������ ����ü], [û�� �� ������ ����ü]�� �ֳ�"

	elseif req == 44 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--������� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--�ǿ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--�����̸�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--�ǹ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end




	elseif req == 54 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."

	end
end

function NPC_QUEST_1570(cnum, reqNumber) -- �����ÿ� / �ٸ�ũ

	req = reqNumber

	if req == 1 then
		return 6,0,"����! ���� �ְ��� ���� ������ ��ϴ� �ٸ�ũ���! ����! �ֱ� �̰��� ���ο� ���Ͱ� �����ߴٰ��ؼ� �ű� 2�� GP�� ���� ����� ����! ���� ��ġ���� ��� �������� ���ư� �� ����. ���� �뷯! �ڳװ� �����ְڴ°�? �ڳ��� ������ �˷��ְԳ�!",2,"����90�̻�",3,"����100�̻�",4,"����110�̻�",5,"����120�̻�",6,"����130�̻�"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 90�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ״� �ϰ� �밨�غ��̴±�! ���� ���ϴ� �ھ�� [��ġ���]��� �༮�ϼ�! ��Ǻ���� �𸻰� ���� 100 �̻��� [��ġ���]�� �ھ� 1���� ��������! �׸��� [�� ���� ������ ����ü] 1������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",101,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 100�̻��� [��ġ���]�� [�� ���� ������ ����ü] 1������ �����Դ°�?",12,"��! �����!",13,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 100�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ�! �� �Ա�! �̹��� ���� ���ϴ� �ھ�� [�����ؼ���]�̶�� �༮�ϼ�! �̹����� ưư�� �����δٰ� ���� 110 �̻��� [�����ؼ���] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 3������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",102,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 110 �̻��� [�����ؼ���]�� [�� ���� ������ ����ü] 3������ �����Դ°�?",22,"��! �����!",23,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 110�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �Դ°�! ����! �̹��� ���� ���ϴ� �ھ�� [��Ʋ��]��� �༮�ϼ�! �̹����� �ǰ��� �����δٰ� ���� 120 �̻��� [��Ʋ��] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 5������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",103,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 120 �̻��� [��Ʋ��]�� [�� ���� ������ ����ü] 5������ �����Դ°�?",32,"��! �����!",33,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 120�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! ����! �ڳ�! �� �Դ°�!@�̹��� ���� ���ϴ� �ھ�� [����ȣũ]��� �༮�ϼ�! �ǰ��� ������ ���� 130 �̻��� [����ȣũ] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 10������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",104,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 130 �̻��� [����ȣũ]�� [�� ���� ������ ����ü] 10������ �����Դ°�?",42,"��! �����!",44,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"�� ������ ����������. ������ �ٸ� �������� �׽�Ʈ�� ġ�� �����̴� �׶����� �� �Ƿ��� �װԳ�."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 130�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"����! �� �Դ°�!@�̹��� [�������]��� �༮�ϼ�! ���� 140 �̻��� [�������] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 15������ ��������!�׷��� �ڳװ� ������ �ھ� 1���� �ϳ�����!",105,"��~! �˰ڽ��ϴ�.!"
			end
		else
			return 4,0,"���� 140 �̻��� [�������]�� [�� ���� ������ ����ü] 15������ �����Դ°�?",52,"��! �����!",54,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end







--����Ʈ ���� ���� �� ó����
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"��ٸ��ڳ�"






--����90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--��ġ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1029, -1)--��ġ��� ����
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--���ƾ߾�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--����ķ��
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--��Ƽ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--�޸�����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 13 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."








--����100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--�����ؼ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--ȥ����Ű
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 23 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."
















--���� 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--��Ʋ�� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--�̽��Ͷ�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--���Ϻ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 33 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--����ȣũ ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--���̾��ũ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--�������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--��Ʈ���̿�ŷ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 43 then
		return 1,0,"�����ÿ¿����� ���� �� �ִ� ������ ������ [���� �� ������ ����ü], [ȸ�� �� ������ ����ü], [�Ķ� �� ������ ����ü], [Ȳ�� �� ������ ����ü], [�ʷ� �� ������ ����ü], [�ϴ� �� ������ ����ü], [���� �� ������ ����ü], [û�� �� ������ ����ü]�� �ֳ�"

	elseif req == 44 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--������� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--�ǿ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--�����̸�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--�ǹ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end




	elseif req == 54 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."

	end
end

function NPC_QUEST_1571(cnum, reqNumber) -- �����ÿ� / �ٸ�ũ

	req = reqNumber

	if req == 1 then
		return 6,0,"����! ���� �ְ��� ���� ������ ��ϴ� �ٸ�ũ���! ����! �ֱ� �̰��� ���ο� ���Ͱ� �����ߴٰ��ؼ� �ű� 2�� GP�� ���� ����� ����! ���� ��ġ���� ��� �������� ���ư� �� ����. ���� �뷯! �ڳװ� �����ְڴ°�? �ڳ��� ������ �˷��ְԳ�!",2,"����90�̻�",3,"����100�̻�",4,"����110�̻�",5,"����120�̻�",6,"����130�̻�"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 90�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ״� �ϰ� �밨�غ��̴±�! ���� ���ϴ� �ھ�� [��ġ���]��� �༮�ϼ�! ��Ǻ���� �𸻰� ���� 100 �̻��� [��ġ���]�� �ھ� 1���� ��������! �׸��� [�� ���� ������ ����ü] 1������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",101,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 100�̻��� [��ġ���]�� [�� ���� ������ ����ü] 1������ �����Դ°�?",12,"��! �����!",13,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 100�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ�! �� �Ա�! �̹��� ���� ���ϴ� �ھ�� [�����ؼ���]�̶�� �༮�ϼ�! �̹����� ưư�� �����δٰ� ���� 110 �̻��� [�����ؼ���] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 3������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",102,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 110 �̻��� [�����ؼ���]�� [�� ���� ������ ����ü] 3������ �����Դ°�?",22,"��! �����!",23,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 110�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �Դ°�! ����! �̹��� ���� ���ϴ� �ھ�� [��Ʋ��]��� �༮�ϼ�! �̹����� �ǰ��� �����δٰ� ���� 120 �̻��� [��Ʋ��] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 5������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",103,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 120 �̻��� [��Ʋ��]�� [�� ���� ������ ����ü] 5������ �����Դ°�?",32,"��! �����!",33,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 120�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! ����! �ڳ�! �� �Դ°�!@�̹��� ���� ���ϴ� �ھ�� [����ȣũ]��� �༮�ϼ�! �ǰ��� ������ ���� 130 �̻��� [����ȣũ] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 10������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",104,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 130 �̻��� [����ȣũ]�� [�� ���� ������ ����ü] 10������ �����Դ°�?",42,"��! �����!",44,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"�� ������ ����������. ������ �ٸ� �������� �׽�Ʈ�� ġ�� �����̴� �׶����� �� �Ƿ��� �װԳ�."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 130�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"����! �� �Դ°�!@�̹��� [�������]��� �༮�ϼ�! ���� 140 �̻��� [�������] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 15������ ��������!�׷��� �ڳװ� ������ �ھ� 1���� �ϳ�����!",105,"��~! �˰ڽ��ϴ�.!"
			end
		else
			return 4,0,"���� 140 �̻��� [�������]�� [�� ���� ������ ����ü] 15������ �����Դ°�?",52,"��! �����!",54,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end







--����Ʈ ���� ���� �� ó����
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"��ٸ��ڳ�"






--����90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--��ġ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1029, -1)--��ġ��� ����
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--���ƾ߾�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--����ķ��
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--��Ƽ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--�޸�����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 13 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."








--����100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--�����ؼ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--ȥ����Ű
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 23 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."
















--���� 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--��Ʋ�� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--�̽��Ͷ�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--���Ϻ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 33 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--����ȣũ ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--���̾��ũ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--�������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--��Ʈ���̿�ŷ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 43 then
		return 1,0,"�����ÿ¿����� ���� �� �ִ� ������ ������ [���� �� ������ ����ü], [ȸ�� �� ������ ����ü], [�Ķ� �� ������ ����ü], [Ȳ�� �� ������ ����ü], [�ʷ� �� ������ ����ü], [�ϴ� �� ������ ����ü], [���� �� ������ ����ü], [û�� �� ������ ����ü]�� �ֳ�"

	elseif req == 44 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--������� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--�ǿ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--�����̸�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--�ǹ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end




	elseif req == 54 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."

	end
end

function NPC_QUEST_1572(cnum, reqNumber) -- �����ÿ� / �ٸ�ũ

	req = reqNumber

	if req == 1 then
		return 6,0,"����! ���� �ְ��� ���� ������ ��ϴ� �ٸ�ũ���! ����! �ֱ� �̰��� ���ο� ���Ͱ� �����ߴٰ��ؼ� �ű� 2�� GP�� ���� ����� ����! ���� ��ġ���� ��� �������� ���ư� �� ����. ���� �뷯! �ڳװ� �����ְڴ°�? �ڳ��� ������ �˷��ְԳ�!",2,"����90�̻�",3,"����100�̻�",4,"����110�̻�",5,"����120�̻�",6,"����130�̻�"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 90�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ״� �ϰ� �밨�غ��̴±�! ���� ���ϴ� �ھ�� [��ġ���]��� �༮�ϼ�! ��Ǻ���� �𸻰� ���� 100 �̻��� [��ġ���]�� �ھ� 1���� ��������! �׸��� [�� ���� ������ ����ü] 1������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",101,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 100�̻��� [��ġ���]�� [�� ���� ������ ����ü] 1������ �����Դ°�?",12,"��! �����!",13,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 100�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ�! �� �Ա�! �̹��� ���� ���ϴ� �ھ�� [�����ؼ���]�̶�� �༮�ϼ�! �̹����� ưư�� �����δٰ� ���� 110 �̻��� [�����ؼ���] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 3������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",102,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 110 �̻��� [�����ؼ���]�� [�� ���� ������ ����ü] 3������ �����Դ°�?",22,"��! �����!",23,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 110�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �Դ°�! ����! �̹��� ���� ���ϴ� �ھ�� [��Ʋ��]��� �༮�ϼ�! �̹����� �ǰ��� �����δٰ� ���� 120 �̻��� [��Ʋ��] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 5������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",103,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 120 �̻��� [��Ʋ��]�� [�� ���� ������ ����ü] 5������ �����Դ°�?",32,"��! �����!",33,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 120�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! ����! �ڳ�! �� �Դ°�!@�̹��� ���� ���ϴ� �ھ�� [����ȣũ]��� �༮�ϼ�! �ǰ��� ������ ���� 130 �̻��� [����ȣũ] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 10������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",104,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 130 �̻��� [����ȣũ]�� [�� ���� ������ ����ü] 10������ �����Դ°�?",42,"��! �����!",44,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"�� ������ ����������. ������ �ٸ� �������� �׽�Ʈ�� ġ�� �����̴� �׶����� �� �Ƿ��� �װԳ�."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 130�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"����! �� �Դ°�!@�̹��� [�������]��� �༮�ϼ�! ���� 140 �̻��� [�������] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 15������ ��������!�׷��� �ڳװ� ������ �ھ� 1���� �ϳ�����!",105,"��~! �˰ڽ��ϴ�.!"
			end
		else
			return 4,0,"���� 140 �̻��� [�������]�� [�� ���� ������ ����ü] 15������ �����Դ°�?",52,"��! �����!",54,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end







--����Ʈ ���� ���� �� ó����
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"��ٸ��ڳ�"






--����90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--��ġ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1029, -1)--��ġ��� ����
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--���ƾ߾�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--����ķ��
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--��Ƽ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--�޸�����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 13 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."








--����100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--�����ؼ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--ȥ����Ű
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 23 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."
















--���� 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--��Ʋ�� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--�̽��Ͷ�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--���Ϻ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 33 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--����ȣũ ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--���̾��ũ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--�������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--��Ʈ���̿�ŷ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 43 then
		return 1,0,"�����ÿ¿����� ���� �� �ִ� ������ ������ [���� �� ������ ����ü], [ȸ�� �� ������ ����ü], [�Ķ� �� ������ ����ü], [Ȳ�� �� ������ ����ü], [�ʷ� �� ������ ����ü], [�ϴ� �� ������ ����ü], [���� �� ������ ����ü], [û�� �� ������ ����ü]�� �ֳ�"

	elseif req == 44 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--������� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--�ǿ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--�����̸�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--�ǹ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end




	elseif req == 54 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."

	end
end

function NPC_QUEST_1573(cnum, reqNumber) -- �����ÿ� / �ٸ�ũ

	req = reqNumber

	if req == 1 then
		return 6,0,"����! ���� �ְ��� ���� ������ ��ϴ� �ٸ�ũ���! ����! �ֱ� �̰��� ���ο� ���Ͱ� �����ߴٰ��ؼ� �ű� 2�� GP�� ���� ����� ����! ���� ��ġ���� ��� �������� ���ư� �� ����. ���� �뷯! �ڳװ� �����ְڴ°�? �ڳ��� ������ �˷��ְԳ�!",2,"����90�̻�",3,"����100�̻�",4,"����110�̻�",5,"����120�̻�",6,"����130�̻�"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 90�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ״� �ϰ� �밨�غ��̴±�! ���� ���ϴ� �ھ�� [��ġ���]��� �༮�ϼ�! ��Ǻ���� �𸻰� ���� 100 �̻��� [��ġ���]�� �ھ� 1���� ��������! �׸��� [�� ���� ������ ����ü] 1������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",101,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 100�̻��� [��ġ���]�� [�� ���� ������ ����ü] 1������ �����Դ°�?",12,"��! �����!",13,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 100�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ�! �� �Ա�! �̹��� ���� ���ϴ� �ھ�� [�����ؼ���]�̶�� �༮�ϼ�! �̹����� ưư�� �����δٰ� ���� 110 �̻��� [�����ؼ���] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 3������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",102,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 110 �̻��� [�����ؼ���]�� [�� ���� ������ ����ü] 3������ �����Դ°�?",22,"��! �����!",23,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 110�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �Դ°�! ����! �̹��� ���� ���ϴ� �ھ�� [��Ʋ��]��� �༮�ϼ�! �̹����� �ǰ��� �����δٰ� ���� 120 �̻��� [��Ʋ��] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 5������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",103,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 120 �̻��� [��Ʋ��]�� [�� ���� ������ ����ü] 5������ �����Դ°�?",32,"��! �����!",33,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 120�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! ����! �ڳ�! �� �Դ°�!@�̹��� ���� ���ϴ� �ھ�� [����ȣũ]��� �༮�ϼ�! �ǰ��� ������ ���� 130 �̻��� [����ȣũ] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 10������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",104,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 130 �̻��� [����ȣũ]�� [�� ���� ������ ����ü] 10������ �����Դ°�?",42,"��! �����!",44,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"�� ������ ����������. ������ �ٸ� �������� �׽�Ʈ�� ġ�� �����̴� �׶����� �� �Ƿ��� �װԳ�."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 130�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"����! �� �Դ°�!@�̹��� [�������]��� �༮�ϼ�! ���� 140 �̻��� [�������] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 15������ ��������!�׷��� �ڳװ� ������ �ھ� 1���� �ϳ�����!",105,"��~! �˰ڽ��ϴ�.!"
			end
		else
			return 4,0,"���� 140 �̻��� [�������]�� [�� ���� ������ ����ü] 15������ �����Դ°�?",52,"��! �����!",54,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end







--����Ʈ ���� ���� �� ó����
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"��ٸ��ڳ�"






--����90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--��ġ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1029, -1)--��ġ��� ����
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--���ƾ߾�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--����ķ��
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--��Ƽ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--�޸�����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 13 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."








--����100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--�����ؼ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--ȥ����Ű
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 23 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."
















--���� 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--��Ʋ�� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--�̽��Ͷ�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--���Ϻ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 33 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--����ȣũ ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--���̾��ũ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--�������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--��Ʈ���̿�ŷ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 43 then
		return 1,0,"�����ÿ¿����� ���� �� �ִ� ������ ������ [���� �� ������ ����ü], [ȸ�� �� ������ ����ü], [�Ķ� �� ������ ����ü], [Ȳ�� �� ������ ����ü], [�ʷ� �� ������ ����ü], [�ϴ� �� ������ ����ü], [���� �� ������ ����ü], [û�� �� ������ ����ü]�� �ֳ�"

	elseif req == 44 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--������� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--�ǿ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--�����̸�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--�ǹ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end




	elseif req == 54 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."

	end
end

function NPC_QUEST_1574(cnum, reqNumber) -- �����ÿ� / �ٸ�ũ

	req = reqNumber

	if req == 1 then
		return 6,0,"����! ���� �ְ��� ���� ������ ��ϴ� �ٸ�ũ���! ����! �ֱ� �̰��� ���ο� ���Ͱ� �����ߴٰ��ؼ� �ű� 2�� GP�� ���� ����� ����! ���� ��ġ���� ��� �������� ���ư� �� ����. ���� �뷯! �ڳװ� �����ְڴ°�? �ڳ��� ������ �˷��ְԳ�!",2,"����90�̻�",3,"����100�̻�",4,"����110�̻�",5,"����120�̻�",6,"����130�̻�"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 90�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ״� �ϰ� �밨�غ��̴±�! ���� ���ϴ� �ھ�� [��ġ���]��� �༮�ϼ�! ��Ǻ���� �𸻰� ���� 100 �̻��� [��ġ���]�� �ھ� 1���� ��������! �׸��� [�� ���� ������ ����ü] 1������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",101,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 100�̻��� [��ġ���]�� [�� ���� ������ ����ü] 1������ �����Դ°�?",12,"��! �����!",13,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 100�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ�! �� �Ա�! �̹��� ���� ���ϴ� �ھ�� [�����ؼ���]�̶�� �༮�ϼ�! �̹����� ưư�� �����δٰ� ���� 110 �̻��� [�����ؼ���] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 3������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",102,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 110 �̻��� [�����ؼ���]�� [�� ���� ������ ����ü] 3������ �����Դ°�?",22,"��! �����!",23,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 110�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �Դ°�! ����! �̹��� ���� ���ϴ� �ھ�� [��Ʋ��]��� �༮�ϼ�! �̹����� �ǰ��� �����δٰ� ���� 120 �̻��� [��Ʋ��] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 5������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",103,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 120 �̻��� [��Ʋ��]�� [�� ���� ������ ����ü] 5������ �����Դ°�?",32,"��! �����!",33,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 120�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! ����! �ڳ�! �� �Դ°�!@�̹��� ���� ���ϴ� �ھ�� [����ȣũ]��� �༮�ϼ�! �ǰ��� ������ ���� 130 �̻��� [����ȣũ] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 10������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",104,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 130 �̻��� [����ȣũ]�� [�� ���� ������ ����ü] 10������ �����Դ°�?",42,"��! �����!",44,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"�� ������ ����������. ������ �ٸ� �������� �׽�Ʈ�� ġ�� �����̴� �׶����� �� �Ƿ��� �װԳ�."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 130�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"����! �� �Դ°�!@�̹��� [�������]��� �༮�ϼ�! ���� 140 �̻��� [�������] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 15������ ��������!�׷��� �ڳװ� ������ �ھ� 1���� �ϳ�����!",105,"��~! �˰ڽ��ϴ�.!"
			end
		else
			return 4,0,"���� 140 �̻��� [�������]�� [�� ���� ������ ����ü] 15������ �����Դ°�?",52,"��! �����!",54,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end







--����Ʈ ���� ���� �� ó����
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"��ٸ��ڳ�"






--����90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--��ġ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1029, -1)--��ġ��� ����
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--���ƾ߾�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--����ķ��
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--��Ƽ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--�޸�����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 13 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."








--����100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--�����ؼ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--ȥ����Ű
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 23 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."
















--���� 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--��Ʋ�� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--�̽��Ͷ�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--���Ϻ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 33 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--����ȣũ ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--���̾��ũ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--�������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--��Ʈ���̿�ŷ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 43 then
		return 1,0,"�����ÿ¿����� ���� �� �ִ� ������ ������ [���� �� ������ ����ü], [ȸ�� �� ������ ����ü], [�Ķ� �� ������ ����ü], [Ȳ�� �� ������ ����ü], [�ʷ� �� ������ ����ü], [�ϴ� �� ������ ����ü], [���� �� ������ ����ü], [û�� �� ������ ����ü]�� �ֳ�"

	elseif req == 44 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--������� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--�ǿ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--�����̸�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--�ǹ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end




	elseif req == 54 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."

	end
end

function NPC_QUEST_1575(cnum, reqNumber) -- �����ÿ� / �ٸ�ũ

	req = reqNumber

	if req == 1 then
		return 6,0,"����! ���� �ְ��� ���� ������ ��ϴ� �ٸ�ũ���! ����! �ֱ� �̰��� ���ο� ���Ͱ� �����ߴٰ��ؼ� �ű� 2�� GP�� ���� ����� ����! ���� ��ġ���� ��� �������� ���ư� �� ����. ���� �뷯! �ڳװ� �����ְڴ°�? �ڳ��� ������ �˷��ְԳ�!",2,"����90�̻�",3,"����100�̻�",4,"����110�̻�",5,"����120�̻�",6,"����130�̻�"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 90�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ״� �ϰ� �밨�غ��̴±�! ���� ���ϴ� �ھ�� [��ġ���]��� �༮�ϼ�! ��Ǻ���� �𸻰� ���� 100 �̻��� [��ġ���]�� �ھ� 1���� ��������! �׸��� [�� ���� ������ ����ü] 1������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",101,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 100�̻��� [��ġ���]�� [�� ���� ������ ����ü] 1������ �����Դ°�?",12,"��! �����!",13,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 100�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ�! �� �Ա�! �̹��� ���� ���ϴ� �ھ�� [�����ؼ���]�̶�� �༮�ϼ�! �̹����� ưư�� �����δٰ� ���� 110 �̻��� [�����ؼ���] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 3������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",102,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 110 �̻��� [�����ؼ���]�� [�� ���� ������ ����ü] 3������ �����Դ°�?",22,"��! �����!",23,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 110�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �Դ°�! ����! �̹��� ���� ���ϴ� �ھ�� [��Ʋ��]��� �༮�ϼ�! �̹����� �ǰ��� �����δٰ� ���� 120 �̻��� [��Ʋ��] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 5������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",103,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 120 �̻��� [��Ʋ��]�� [�� ���� ������ ����ü] 5������ �����Դ°�?",32,"��! �����!",33,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 120�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! ����! �ڳ�! �� �Դ°�!@�̹��� ���� ���ϴ� �ھ�� [����ȣũ]��� �༮�ϼ�! �ǰ��� ������ ���� 130 �̻��� [����ȣũ] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 10������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",104,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 130 �̻��� [����ȣũ]�� [�� ���� ������ ����ü] 10������ �����Դ°�?",42,"��! �����!",44,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"�� ������ ����������. ������ �ٸ� �������� �׽�Ʈ�� ġ�� �����̴� �׶����� �� �Ƿ��� �װԳ�."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 130�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"����! �� �Դ°�!@�̹��� [�������]��� �༮�ϼ�! ���� 140 �̻��� [�������] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 15������ ��������!�׷��� �ڳװ� ������ �ھ� 1���� �ϳ�����!",105,"��~! �˰ڽ��ϴ�.!"
			end
		else
			return 4,0,"���� 140 �̻��� [�������]�� [�� ���� ������ ����ü] 15������ �����Դ°�?",52,"��! �����!",54,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end







--����Ʈ ���� ���� �� ó����
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"��ٸ��ڳ�"






--����90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--��ġ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1029, -1)--��ġ��� ����
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--���ƾ߾�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--����ķ��
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--��Ƽ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--�޸�����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 13 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."








--����100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--�����ؼ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--ȥ����Ű
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 23 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."
















--���� 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--��Ʋ�� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--�̽��Ͷ�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--���Ϻ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 33 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--����ȣũ ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--���̾��ũ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--�������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--��Ʈ���̿�ŷ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 43 then
		return 1,0,"�����ÿ¿����� ���� �� �ִ� ������ ������ [���� �� ������ ����ü], [ȸ�� �� ������ ����ü], [�Ķ� �� ������ ����ü], [Ȳ�� �� ������ ����ü], [�ʷ� �� ������ ����ü], [�ϴ� �� ������ ����ü], [���� �� ������ ����ü], [û�� �� ������ ����ü]�� �ֳ�"

	elseif req == 44 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--������� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--�ǿ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--�����̸�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--�ǹ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end




	elseif req == 54 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."

	end
end

function NPC_QUEST_1576(cnum, reqNumber) -- �����ÿ� / �ٸ�ũ

	req = reqNumber

	if req == 1 then
		return 6,0,"����! ���� �ְ��� ���� ������ ��ϴ� �ٸ�ũ���! ����! �ֱ� �̰��� ���ο� ���Ͱ� �����ߴٰ��ؼ� �ű� 2�� GP�� ���� ����� ����! ���� ��ġ���� ��� �������� ���ư� �� ����. ���� �뷯! �ڳװ� �����ְڴ°�? �ڳ��� ������ �˷��ְԳ�!",2,"����90�̻�",3,"����100�̻�",4,"����110�̻�",5,"����120�̻�",6,"����130�̻�"


	elseif req == 2 then

		if GetSwitchCount(cnum, 671) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 676) < 1 then
			if GetHeroLv(cnum) < 90 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 90�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ״� �ϰ� �밨�غ��̴±�! ���� ���ϴ� �ھ�� [��ġ���]��� �༮�ϼ�! ��Ǻ���� �𸻰� ���� 100 �̻��� [��ġ���]�� �ھ� 1���� ��������! �׸��� [�� ���� ������ ����ü] 1������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",101,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 100�̻��� [��ġ���]�� [�� ���� ������ ����ü] 1������ �����Դ°�?",12,"��! �����!",13,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end

	elseif req == 3 then

		if GetSwitchCount(cnum, 671) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 672) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"


		elseif GetSwitchCount(cnum, 677) < 1 then
			if GetHeroLv(cnum) < 100 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 100�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �ڳ�! �� �Ա�! �̹��� ���� ���ϴ� �ھ�� [�����ؼ���]�̶�� �༮�ϼ�! �̹����� ưư�� �����δٰ� ���� 110 �̻��� [�����ؼ���] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 3������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",102,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 110 �̻��� [�����ؼ���]�� [�� ���� ������ ����ü] 3������ �����Դ°�?",22,"��! �����!",23,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 4 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 673) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 678) < 1 then
			if GetHeroLv(cnum) < 110 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 110�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! �Դ°�! ����! �̹��� ���� ���ϴ� �ھ�� [��Ʋ��]��� �༮�ϼ�! �̹����� �ǰ��� �����δٰ� ���� 120 �̻��� [��Ʋ��] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 5������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",103,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 120 �̻��� [��Ʋ��]�� [�� ���� ������ ����ü] 5������ �����Դ°�?",32,"��! �����!",33,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end



	elseif req == 5 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 674) > 0 then
			return 1,0,"�̹� ���� ��ġ�� �ʿ����~ ���� ���ο� ��ġ�� �ʿ��� �ٸ� ��ġ ���ϱ⿡ �����ϴ� ���� ���?!"

		elseif GetSwitchCount(cnum, 679) < 1 then
			if GetHeroLv(cnum) < 120 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 120�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"��! ����! �ڳ�! �� �Դ°�!@�̹��� ���� ���ϴ� �ھ�� [����ȣũ]��� �༮�ϼ�! �ǰ��� ������ ���� 130 �̻��� [����ȣũ] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 10������ ��������! �׷��� �ڳװ� ������ �ھ �ϳ�����!",104,"��~! �˰ڽ��ϴ�!"
			end
		else
			return 4,0,"���� 130 �̻��� [����ȣũ]�� [�� ���� ������ ����ü] 10������ �����Դ°�?",42,"��! �����!",44,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end


	elseif req == 6 then

		if GetSwitchCount(cnum, 671) < 1 or GetSwitchCount(cnum, 672) < 1 or GetSwitchCount(cnum, 673) < 1 or GetSwitchCount(cnum, 674) < 1 then
			return 1,0,"������ �ȵ�~! �������� �� �ܰ���� �����϶��! ���� ���� ���� ��� ���� �ھ���� ���ϼ�! ����!"

		elseif GetSwitchCount(cnum, 675) > 0 then
			return 1,0,"�� ������ ����������. ������ �ٸ� �������� �׽�Ʈ�� ġ�� �����̴� �׶����� �� �Ƿ��� �װԳ�."


		elseif GetSwitchCount(cnum, 680) < 1 then
			if GetHeroLv(cnum) < 130 then
				return 1,0,"�ƹ��� �ڳװ� �밨�غ����� �� ������ �� ����. ���� 130�̻��� �뷯�� �� �Ŀ� �ٽ� ã�ƿ���"

			else
				return 2,0,"����! �� �Դ°�!@�̹��� [�������]��� �༮�ϼ�! ���� 140 �̻��� [�������] �ھ� 1���� ��������! �׸��� [�� ������ ������ ����ü] 15������ ��������!�׷��� �ڳװ� ������ �ھ� 1���� �ϳ�����!",105,"��~! �˰ڽ��ϴ�.!"
			end
		else
			return 4,0,"���� 140 �̻��� [�������]�� [�� ���� ������ ����ü] 15������ �����Դ°�?",52,"��! �����!",54,"���߿� �帱�Կ�!",43,"[�� ���� ������ ����ü]�� ������?"
		end







--����Ʈ ���� ���� �� ó����
	elseif req == 101 then
		StartQuest(cnum, 207)
		AddSwitchCount(cnum, 676, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 102 then
		StartQuest(cnum, 208)
		AddSwitchCount(cnum, 677, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 103 then
		StartQuest(cnum, 209)
		AddSwitchCount(cnum, 678, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 104 then
		StartQuest(cnum, 210)
		AddSwitchCount(cnum, 679, 1)
		return 1,0,"��ٸ��ڳ�"


	elseif req == 105 then
		StartQuest(cnum, 211)
		AddSwitchCount(cnum, 680, 1)
		return 1,0,"��ٸ��ڳ�"






--����90
	elseif req == 12 then
		if GetHench(cnum, 1, 1029,100) == 0 then--��ġ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1029, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 1 or
			GetItemCount(cnum, 8627, 0) < 1 or GetItemCount(cnum, 8630, 0) < 1 or
			GetItemCount(cnum, 8633, 0) < 1 or GetItemCount(cnum, 8785, 0) < 1 or
			GetItemCount(cnum, 8788, 0) < 1 or GetItemCount(cnum, 8791, 0) < 1 or
			GetItemCount(cnum, 8794, 0) < 1 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1029, -1)--��ġ��� ����
			random = SetRandom(cnum, 1, 10000)

------------------------------------------------

			AddItemCount(cnum, 8624, -1)
			AddItemCount(cnum, 8627, -1)
			AddItemCount(cnum, 8630, -1)
			AddItemCount(cnum, 8633, -1)
			AddItemCount(cnum, 8785, -1)
			AddItemCount(cnum, 8788, -1)
			AddItemCount(cnum, 8791, -1)
			AddItemCount(cnum, 8794, -1)
------------------------------------------------

			if random < 5001 then
				result = AddHench(cnum, 374 ,1)--���ƾ߾�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 8501 then
				result = AddHench(cnum, 375 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=8501 and random < 9001 then
				result = AddHench(cnum, 315 ,1)--����ķ��
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9001 and random < 9501 then
				result = AddHench(cnum, 870 ,1)--��Ƽ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 854 ,1)--�޸�����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 207)
				AddSwitchCount(cnum, 671, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 13 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."








--����100
	elseif req == 22 then
		if GetHench(cnum,1, 1046 ,110) == 0 then--�����ؼ���
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1046, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"

		elseif	GetItemCount(cnum, 8624, 0) < 3 or
			GetItemCount(cnum, 8627, 0) < 3 or GetItemCount(cnum, 8630, 0) < 3 or
			GetItemCount(cnum, 8633, 0) < 3 or GetItemCount(cnum, 8785, 0) < 3 or
			GetItemCount(cnum, 8788, 0) < 3 or GetItemCount(cnum, 8791, 0) < 3 or
			GetItemCount(cnum, 8794, 0) < 3 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"


		else
			AddHench(cnum, 1046, -1)
			------------------------------------------------

			AddItemCount(cnum, 8624, -3)
			AddItemCount(cnum, 8627, -3)
			AddItemCount(cnum, 8630, -3)
			AddItemCount(cnum, 8633, -3)
			AddItemCount(cnum, 8785, -3)
			AddItemCount(cnum, 8788, -3)
			AddItemCount(cnum, 8791, -3)
			AddItemCount(cnum, 8794, -3)
------------------------------------------------



			random = SetRandom(cnum, 1, 10000)

			if random < 5001 then
				result = AddHench(cnum, 845 ,1)--ȥ����Ű
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 5001 and random < 9701 then
				result = AddHench(cnum, 378 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9701 and random < 9801 then
				result = AddHench(cnum, 379 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9801 and random < 9901 then
				result = AddHench(cnum, 380 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9901 and random <=10000  then
				result = AddHench(cnum, 294 ,1)--����
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 208)
				AddSwitchCount(cnum, 672, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end



	elseif req == 23 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."
















--���� 110
	elseif req == 32 then
		if GetHench(cnum, 1, 1030,120) == 0 then--��Ʋ�� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"



		elseif GetHench(cnum, 1, 1030, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"


		elseif	GetItemCount(cnum, 8624, 0) < 5 or GetItemCount(cnum, 8627, 0) < 5 or
			GetItemCount(cnum, 8630, 0) < 5 or GetItemCount(cnum, 8633, 0) < 5 or
			GetItemCount(cnum, 8785, 0) < 5 or GetItemCount(cnum, 8788, 0) < 5 or
			GetItemCount(cnum, 8791, 0) < 5 or GetItemCount(cnum, 8794, 0) < 5 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"



		else
			AddHench(cnum, 1030, -1)


			AddItemCount(cnum, 8624, -5)
			AddItemCount(cnum, 8627, -5)
			AddItemCount(cnum, 8630, -5)
			AddItemCount(cnum, 8633, -5)
			AddItemCount(cnum, 8785, -5)
			AddItemCount(cnum, 8788, -5)
			AddItemCount(cnum, 8791, -5)
			AddItemCount(cnum, 8794, -5)


			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 422 ,1)--��������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end


				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 301 ,1)--�̽��Ͷ�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >=9501 and random <= 10000  then
				result = AddHench(cnum, 842 ,1)--���Ϻ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 209)
				AddSwitchCount(cnum, 673, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 33 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 120
	elseif req == 42 then
		if GetHench(cnum, 1, 1013, 130) == 0 then--����ȣũ ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1013, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 10 or GetItemCount(cnum, 8627, 0) < 10 or
			GetItemCount(cnum, 8630, 0) < 10 or GetItemCount(cnum, 8633, 0) < 10 or
			GetItemCount(cnum, 8785, 0) < 10 or GetItemCount(cnum, 8788, 0) < 10 or
			GetItemCount(cnum, 8791, 0) < 10 or GetItemCount(cnum, 8794, 0) < 10 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1013, -1)


			AddItemCount(cnum, 8624, -10)
			AddItemCount(cnum, 8627, -10)
			AddItemCount(cnum, 8630, -10)
			AddItemCount(cnum, 8633, -10)
			AddItemCount(cnum, 8785, -10)
			AddItemCount(cnum, 8788, -10)
			AddItemCount(cnum, 8791, -10)
			AddItemCount(cnum, 8794, -10)

			random = SetRandom(cnum, 1, 10000)

			if random < 9001 then
				result = AddHench(cnum, 289 ,1)--���̾��ũ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 9001 and random < 9501 then
				result = AddHench(cnum, 555 ,1)--�������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >=9501 and random <= 10000 then
				result = AddHench(cnum, 423 ,1)--��Ʈ���̿�ŷ
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 210)
				AddSwitchCount(cnum, 674, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end


	elseif req == 43 then
		return 1,0,"�����ÿ¿����� ���� �� �ִ� ������ ������ [���� �� ������ ����ü], [ȸ�� �� ������ ����ü], [�Ķ� �� ������ ����ü], [Ȳ�� �� ������ ����ü], [�ʷ� �� ������ ����ü], [�ϴ� �� ������ ����ü], [���� �� ������ ����ü], [û�� �� ������ ����ü]�� �ֳ�"

	elseif req == 44 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."













--���� 130
	elseif req == 52 then
		if GetHench(cnum, 1, 1028, 140) == 0 then--������� ����
			return 1,0,"���� ��������� �ھ �� ���̴µ�? �ٽ� �ѹ� Ȯ���غ��Գ�~����!"


		elseif GetHench(cnum, 1, 1028, 1) > 1 then
			return 1,0,"�Ѹ����� �������� �ȴٳ�. ������ �� �ھ� �ܿ��� â�� �����ϰ� ���Գ�"



		elseif	GetItemCount(cnum, 8624, 0) < 15 or
			GetItemCount(cnum, 8627, 0) < 15 or GetItemCount(cnum, 8630, 0) < 15 or
			GetItemCount(cnum, 8633, 0) < 15 or GetItemCount(cnum, 8785, 0) < 15 or
			GetItemCount(cnum, 8788, 0) < 15 or GetItemCount(cnum, 8791, 0) < 15 or
			GetItemCount(cnum, 8794, 0) < 15 then
			return 1,0,"[�� ������ ������]������ ���ڸ���~! �� ��ƿ���!"

		else
			AddHench(cnum, 1028, -1)


			AddItemCount(cnum, 8624, -15)
			AddItemCount(cnum, 8627, -15)
			AddItemCount(cnum, 8630, -15)
			AddItemCount(cnum, 8633, -15)
			AddItemCount(cnum, 8785, -15)
			AddItemCount(cnum, 8788, -15)
			AddItemCount(cnum, 8791, -15)
			AddItemCount(cnum, 8794, -15)

			random = SetRandom(cnum, 1, 10000)

			if random < 7001 then
				result = AddHench(cnum, 324 ,1)--�ǿ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif random >= 7001 and random < 8201 then
				result = AddHench(cnum, 556 ,1)--�����̸�
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 8201 and random < 9401 then
				result = AddHench(cnum, 425 ,1)--�ǹ���
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			elseif	random >= 9401 and random <= 10000 then
				result = AddHench(cnum, 377 ,1)--������
				if result < -1 then
					return 1,0,"�ھ ���� ������ �����ϳ�."
				end

				EndQuest(cnum, 211)
				AddSwitchCount(cnum, 675, 1)
				return 1,0,"����! �� ���� ���� �츮 ���忡 �� Ǯ����ڳ�! �� �༮�� ���� �༮�̴� �� Ű������!"

			end
		end




	elseif req == 54 then
		return 1,0,"�ð� ������ ������ õõ�� �ϰԳ�."

	end
end
