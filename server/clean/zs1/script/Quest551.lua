 function NPC_QUEST_1057(cnum,reqNumber) -- ��Ÿ�Ҿƹ���

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 578) < 1 then --ó�� ��ȭ��
			return 2,0,"���̰�! �̳��� �絹�� �༮�� ��ü ���� �� �Ŷ�.��! �ڳ� Ȥ�� ���� ���� �罿�� ���� ���߳�? ",10,"�ƴ�."

		elseif GetSwitchCount(cnum, 578) == 1 and GetSwitchCount(cnum, 579) == 1 and GetSwitchCount(cnum, 580) < 1  then
			return 3,0,"�ڳ� Ȥ�� �絹���� ã�ҳ�?",12,"��..���� �ϸ�..",13,"�ƴ�! ã�� ���߾��."

		else
			return 1,0,"���������� ����� ��� �޽����� ������ ũ�������� Ʈ���� �����Գ�. �ڳ׿��� ����� �� �ɼ�."
		end



	elseif req == 10 then
			return 2,0,"����ü ���� �� ����? ���� ���� ���̵� ���� ������ ���� �ؾ� �ϴµ� ���̾ߡ� �ڳ� Ȥ�� �絹���� ���� �ȴٸ� �̾߱� �� ���ְ�  ",11,"��. "


	elseif req == 11 then
			AddSwitchCount(cnum, 578, 1) -- �絹���̺�Ʈ ���� ����ġ
			return 1,0,"�������� �ڳ׿��� ���� ������ �˷� ����. ���� ���ؿ��� ������ ���� ã�ư� ���� ���� �� ���� ������ Ŀ�ٶ� Ʈ���� ���� ������ �� �Ŷ��. �ڳװ� �������� �ߴٸ� ���������� ��ǥ�� �޾� �� Ʈ������ ������ ���� �� ���� �Ŷ��. "



	elseif req == 12 then
		random = SetRandom(cnum,0,100)

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@��Ÿ���Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 1 then
				AddItemCount(cnum,8600,1) -- �� ���߾�� ����
				AddSwitchCount(cnum, 579, 1) -- ��Ÿ ���� ����ġ
				return 1,0,"��.. �׳��� �ű� ���� �־��� ������? �̳��� �׳�!!@����.. ���� ����. �������� �̰��� ����."


			elseif random >= 2 and random <= 17 then
				AddItemCount(cnum,8601,1) -- ���߾�� ����
				AddSwitchCount(cnum, 579, 1)
				return 1,0,"��.. �׳��� �ű� ���� �־��� ������? �̳��� �׳�!!@����.. ���� ����. �������� �̰��� ����."

			elseif random >= 18 and random <= 100 then
				AddItemCount(cnum,8602,1) -- ���� ���߾�� ����
				AddSwitchCount(cnum, 579, 1)
				return 1,0,"��.. �׳��� �ű� ���� �־��� ������? �̳��� �׳�!!@����.. ���� ����. �������� �̰��� ����."

			else
				return 1,0,"���� 2"

			end
		end


	elseif req == 13 then
			AddSwitchCount(cnum, 580, 1) -- �絹�� ���� ����ġ
			return 1,0,"���� �� ã�ҳ�? �̳��� ��� ���� ã������.."

	end
end



---------------------------------------------------------------------------------------------------------------------------------



 function NPC_QUEST_1058(cnum,reqNumber) -- �絹��

req = reqNumber


	if req == 1 then
		if GetSwitchCount(cnum, 578) < 1 then --ó�� ��ȭ��
			return 1,0,"...."

		elseif GetSwitchCount(cnum, 578) == 1 and GetSwitchCount(cnum, 579) < 1 then
			return 2,0,"��! ��¦�̾�. �Ҿƹ����� �� �˾Ҿ��.",12,"��Ÿ�Ҿƹ����� �� ã�� �־�."

		elseif GetSwitchCount(cnum, 579) == 2 then
			return 1,0,"�� �����!"

		elseif GetSwitchCount(cnum, 580) == 1 then
			return 2,0,"Ȥ�� ���� �ִ� ���� �˷� �־�����?",14,"�˷����� �ʾҾ�."

		elseif GetSwitchCount(cnum, 580) == 2 then
			return 1,0,"���� ������!"

		else
			return 1,0,"���� ��Ź �����."

		end


	elseif req == 12 then
		return 2,0,"��! �ȵǿ�. ���� �� �ôٰ� ���� �����ּ���.���� ���� �ϸ� �η��԰� �� ���Ѵٰ� �����ϴ� ���� ����̿���.",13,"��.. ���� �� ����.."


	elseif req == 13 then
		AddSwitchCount(cnum, 579, 1) -- ��Ÿ ���� ����ġ
		return 1,0,"���� ��Ź�����."


	elseif req == 14 then

		if GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�絹�����Լ� ��ġ�� �ޱ����ؼ� [��ġ �κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if GetHeroLv(cnum, 1) < 41 then
				AddHench(cnum,938,1) -- �絹�� lv40
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"���� ���� �ּ̱���! ���� ������. ����̶�� �� ���ᰡ �� ����� �ڰ��� �־��. �ʹ� ������!"

			elseif GetHeroLv(cnum, 1) < 61 then
				AddHench(cnum,939,1) -- �絹�� lv60
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"���� ���� �ּ̱���! ���� ������. ����̶�� �� ���ᰡ �� ����� �ڰ��� �־��. �ʹ� ������!"

			elseif GetHeroLv(cnum, 1) < 81 then
				AddHench(cnum,940,1) -- �絹�� lv80
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"���� ���� �ּ̱���! ���� ������. ����̶�� �� ���ᰡ �� ����� �ڰ��� �־��. �ʹ� ������!"

			elseif GetHeroLv(cnum, 1) < 101 then
				AddHench(cnum,941,1) -- �絹�� lv100
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"���� ���� �ּ̱���! ���� ������. ����̶�� �� ���ᰡ �� ����� �ڰ��� �־��. �ʹ� ������!"

			elseif GetHeroLv(cnum, 1) < 176 then
				AddHench(cnum,942,1) -- �絹�� lv120
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"���� ���� �ּ̱���! ���� ������. ����̶�� �� ���ᰡ �� ����� �ڰ��� �־��. �ʹ� ������!"

			else
				return 1,0,"���� 2"
			end
		end

	end
end



---------------------------------------------------------------------------------------------------------------------------------



 function NPC_QUEST_1059(cnum,reqNumber) -- Ʈ��

req = reqNumber
random = SetRandom(cnum,0,100)

	if req == 1 then
		return 4,0,"������ ������ ��ȯ �Ͻðڽ��ϱ�?",10,"[�� ���߾��] ���� ��ȯ.",20,"[���߾��] ���� ��ȯ.",30,"[���� ���߾��] ���� ��ȯ."


	elseif req == 10 then

		if GetItemCount(cnum, 8600, 0) < 1 then --�� ���߾�� ����
			return 1,0,"[�� ���߾��]������ ���� �մϴ�."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@Ʈ�����Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		elseif GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@Ʈ�����Լ� ��ġ�� �ޱ����ؼ� [��ġ �κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 3 then
			random = SetRandom(cnum,0,100)
				if random <= 15 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddItemCount(cnum,70,1) -- ���� ������
					return 1,0,"[Ʈ��]���� [ ����� ��Ŭ���� ]�� ������ϴ�."

				elseif random >= 16 and random <= 32 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddItemCount(cnum,71,1) -- ���� ������
					return 1,0,"[Ʈ��]���� [  ��Ʈ��  ]�� ������ϴ�."

				elseif random >= 33 and random <= 45 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddItemCount(cnum,72,1) -- ���� ������
					return 1,0,"[Ʈ��]���� [  ���� �ϸ�  ]�� ������ϴ�."

				elseif random >= 46 and random <= 60 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddItemCount(cnum,73,1) -- ���� ������
					return 1,0,"[Ʈ��]���� [  �Һ� �۷���  ]�� ������ϴ�."

				elseif random >= 61 and random <= 73 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddItemCount(cnum,74,1) -- ���� ������
					return 1,0,"[Ʈ��]���� [  �ż��� ����  ]�� ������ϴ�."

				elseif random >= 74 and random <= 86 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddItemCount(cnum,75,1) -- ���� ������
					return 1,0,"[Ʈ��]���� [  ���ڵ� ���  ]�� ������ϴ�."

				elseif random >= 87 and random <= 100 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddItemCount(cnum,76,1) -- ���� ������
					return 1,0,"[Ʈ��]���� [  �̽��� �Ƹ�  ]�� ������ϴ�."

				end

			elseif random >= 4 and random <= 90 then
			random = SetRandom(cnum,0,100)
				if random <= 50 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddItemCount(cnum,8603,1) -- ���� ������
					return 1,0,"[Ʈ��]���� [  ��Ÿ�� HP����  ]�� ������ϴ�."

				elseif random >= 51 and random <= 100 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddItemCount(cnum,8604,1) -- ���� ������
					return 1,0,"[Ʈ��]���� [  ��Ÿ�� MP����  ]�� ������ϴ�."
				end

			elseif random >= 91 and random <= 100 then
			random = SetRandom(cnum,0,100)
				if random <= 1 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddHench(cnum,372,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  �� �巡��  ]�� ������ϴ�."

				elseif random >= 2 and random <= 25 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddHench(cnum,717,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  ġġ  ]�� ������ϴ�."

				elseif random >= 26 and random <= 50 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddHench(cnum,722,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  �޾�  ]�� ������ϴ�."

				elseif random >= 51 and random <= 75 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddHench(cnum,727,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  �̸�  ]�� ������ϴ�."

				elseif random >= 76 and random <= 100 then
					AddItemCount(cnum,8600,-1) -- �� ���߾�� ���� ����
					AddHench(cnum,732,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  �ϳ�  ]�� ������ϴ�."
				end

			else
				return 1,0,"���� 2"
			end
		end


	elseif req == 20 then

		if GetItemCount(cnum, 8601, 0) < 1 then --���߾�� ����
			return 1,0,"[���߾��]������ ���� �մϴ�."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@Ʈ�����Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		elseif GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@Ʈ�����Լ� ��ġ�� �ޱ����ؼ� [��ġ �κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 1 then
				AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
				AddItemCount(cnum,8603,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  ��Ÿ�� HP����  ]�� ������ϴ�."

			elseif random >= 2 and random <= 3 then
				AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
				AddItemCount(cnum,8604,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  ��Ÿ�� MP����  ]�� ������ϴ�."

			elseif random >= 4 and random <= 18 then
				AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
				AddItemCount(cnum,1186,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  ����� ���Ű���  ]�� ������ϴ�."

			elseif random >= 19 and random <= 33 then
				AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
				AddItemCount(cnum,1185,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  �絹�� ���Ű���  ]�� ������ϴ�."

			elseif random >= 34 and random <= 48 then
				AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
				AddItemCount(cnum,8589,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  ��ũ����  ]�� ������ϴ�."

			elseif random >= 49 and random <= 90 then
				AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
				AddItemCount(cnum,8591,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  ��������  ]�� ������ϴ�."

			elseif random >= 91 and random <= 100 then
			random = SetRandom(cnum,0,100)
				if random <= 1 then
					AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
					AddHench(cnum,282,1) -- ���� ��ġ�
					return 1,0,"[Ʈ��]���� [  �����跹�̼�  ]�� ������ϴ�."

				elseif random >= 2 and random <= 25 then
					AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
					AddHench(cnum,715,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  ġġ  ]�� ������ϴ�."

				elseif random >= 26 and random <= 50 then
					AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
					AddHench(cnum,720,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  �޾�  ]�� ������ϴ�."

				elseif random >= 51 and random <= 75 then
					AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
					AddHench(cnum,725,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  �̸�  ]�� ������ϴ�."

				elseif random >= 76 and random <= 100 then
					AddItemCount(cnum,8601,-1) -- ���߾�� ���� ����
					AddHench(cnum,730,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  �ϳ�  ]�� ������ϴ�."
				end


			else
				return 1,0,"���� 2"
			end
		end



	elseif req == 30 then

		if GetItemCount(cnum, 8602, 0) < 1 then --���� ���߾�� ����
			return 1,0,"[���� ���߾��]������ ���� �մϴ�."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@Ʈ�����Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		elseif GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@Ʈ�����Լ� ��ġ�� �ޱ����ؼ� [��ġ �κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 1 then
				AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� �����
				AddItemCount(cnum,1186,1) -- ���� ������
				return 1,0,"[Ʈ������ [  ����� ���Ű���  ]�� ������ϴ�."

			elseif random >= 2 and random <= 3 then
				AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� ����
				AddItemCount(cnum,1185,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  �絹�� ���Ű���  ]�� ������ϴ�."

			elseif random >= 4 and random <= 23 then
				AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� ����
				AddItemCount(cnum,8058,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  ����� ���ž�����  ]�� ������ϴ�."

			elseif random >= 24 and random <= 43 then
				AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� ����
				AddItemCount(cnum,8057,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  �絹�� ���ž�����  ]�� ������ϴ�."

			elseif random >= 44 and random <= 63 then
				AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� ����
				AddItemCount(cnum,8059,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  Ʈ�� ���ž�����  ]�� ������ϴ�."

			elseif random >= 64 and random <= 93 then
				AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� ����
				AddItemCount(cnum,8590,1) -- ���� ������
				return 1,0,"[Ʈ��]���� [  �Ͼᱸ��  ]�� ������ϴ�."

			elseif random >= 94 and random <= 100 then
			random = SetRandom(cnum,0,100)
				if random <= 1 then
					AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� ����
					AddHench(cnum,278,1) -- ���� ������
					return 1,0,"[Ʈ��]���� [  ����  ]�� ������ϴ�."

				elseif random >= 2 and random <= 25 then
					AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� ����
					AddHench(cnum,713,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  ġġ  ]�� ������ϴ�."

				elseif random >= 26 and random <= 50 then
					AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� ����
					AddHench(cnum,718,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  �޾�  ]�� ������ϴ�."

				elseif random >= 51 and random <= 75 then
					AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� ����
					AddHench(cnum,723,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  �̸�  ]�� ������ϴ�."

				elseif random >= 76 and random <= 100 then
					AddItemCount(cnum,8602,-1) -- ���� ���߾�� ���� ����
					AddHench(cnum,728,1) -- ���� ��ġ
					return 1,0,"[Ʈ��]���� [  �ϳ�  ]�� ������ϴ�."
				end



			else
				return 1,0,"���� 2"
			end

		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------


 function NPC_QUEST_1060(cnum,reqNumber) -- �ɽ��� ����

req = reqNumber


	if req == 1 then
		if GetSwitchCount(cnum, 581) < 1 then --ó�� ��ȭ��
			return 2,0,"�뷯�α���.. �ڳ� �� �̾߱� �� ��� �ְڳ�?",10,"��."

		elseif GetSwitchCount(cnum, 581) == 1 then
			return 1,0,"�ڳ� �� ���±�! ���� �λ� �ϸ� ������."

		else
			return 1,0,"����1"
		end

	elseif req == 10 then
		return 3,0,"�ڳ� ũ���������� � ������ �ƴ°�? ũ���� ������ ���̾� �� ���� �������κ��� ���� �Ǿ��ٳ�. �����İ�? �ٷ� ����Ʈ ���ݶ� ��� ��������.",20,"�׷�����",100,"���ܿ���"

	elseif req == 11 then
		return 3,0,"�� �׷� �׷���. �׷��� �� ���� ��ô�̳� �ڼ����� ���Ҿ�. �� ���� ����� �̿��� ���� �׻� �ڽ� ���� �ֺ��� �η� ����� ������.",21,"�׷�����",100,"���ܿ���"

	elseif req == 12 then
		return 3,0,"�׷���! �׷��� ���� ���忡 �ִ� ��Ÿ�� 32�� ��Ÿ Ŭ�ν� ���. �����ϱ� ������ �� ���� �Ǹ� �̾ �׷��� ���� ���̵��� ��ô ��������.",22,"�׷�����",100,"���ܿ���"

	elseif req == 13 then
		return 3,0,"��.. �¾� ��� �ٸ� ���� �߱���. ����ư ����Ʈ ���ݶ� �� ���� �׷� ������� ��� �ΰ��鿡�� ���踦 �޾Ұ� ��ħ�� �� ���� �����ϴ� ������� ��Ÿ�� ��ŸŬ�ν��� ź�� �ϰ� �Ȱ���.",14,"�׷�����",100,"���ܿ���"

	elseif req == 14 then
		return 3,0,"��ŸŬ�ν��� ���� ���� �ϴ� ���̵鿡�� ������ �ֱ�ε� ��������. �� �׷� �� �ƴ°�? �ٷ� �ʴ� ��ŸŬ�ν� ���� �ҽ��� �ҳ� ���� ���� ���� �Ͽ� �ȷ����� �� �� ���� �� �ָӴϸ� ���� �־� ���̵��� ���� �־��ٳ�.",23,"�׷�����",100,"���ܿ���"

	elseif req == 15 then
		return 3,0,"�׷�! �Ͽ��� �װ� �ϳ��� �Ұ� �ϰ� ��ô�̳� ���� ������ ��Ǫ�� ������. ��.. ���ڷ� ������ 2000���� �Ƿ���?? �ƴϱ�.. �ű⿡ �� �� ��� �� �ɼ�..",24,"�׷�����",100,"���ܿ���"



	elseif req == 20 then
		return 4,0,"��.. ���� ������ ���߾���? ",11,"����Ʈ ���ݶ󽺶� ���.",200,"���ݶ� ���������",200,"��Ÿ Ŭ�ν� ���.."

	elseif req == 21 then
		return 4,0,"��.. ���� ������ ���߾���? ",200,"�������� ��ô ���ߴٰ�...",12,"�ڼ����� ��ô ���ߴٰ�..",200,"�ڸ����� ��ô ���ߴٰ�.."

	elseif req == 22 then
		return 4,0,"��.. ���� ������ ���߾���? ",200,"35�� ��Ÿ Ŭ�ν� ����.. ",13,"32�� ��Ÿ Ŭ�ν� ����..",200,"23�� ��Ÿ Ŭ�ν� ����.."

	elseif req == 23 then
		return 4,0,"��.. ���� ������ ���߾���? ",15,"���ָӴϸ� ���� �̴ּٰ�..",200,"�����̸� �����ٰ�..",200,"�¸��� �����ٰ�.."

	elseif req == 24 then
		return 4,0,"���̱�.. �̳��� �Ӹ���.. ���̰� ������ �ݹ� ��Գ�.���� �� ���̶� �׷���?",200,"2000",200,"3000",50,"4000"




	elseif req == 50 then
		random = SetRandom(cnum,0,100)

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�ɽ��� ���ο��Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 1 then
				AddItemCount(cnum,8600,1) -- �� ���߾�� ����
				AddSwitchCount(cnum, 581, 1) -- �ɽ��ѳ��� ���� ����ġ
				return 1,0,"�׷���! �ڳ� ���� ��� ���� �� ����� �� �ƴ� ����̱���! �������� �̸� ��ſ� �ð��� ���� �� ����. �� ��ǥ�� �ްԳ�. ���� ���� ���� �Ծ�. "


			elseif random >= 2 and random <= 17 then
				AddItemCount(cnum,8601,1) -- ���߾�� ����
				AddSwitchCount(cnum, 581, 1) -- �ɽ��ѳ��� ���� ����ġ
				return 1,0,"�׷���! �ڳ� ���� ��� ���� �� ����� �� �ƴ� ����̱���! �������� �̸� ��ſ� �ð��� ���� �� ����. �� ��ǥ�� �ްԳ�. ���� ���� ���� �Ծ�. "

			elseif random >= 18 and random <= 100 then
				AddItemCount(cnum,8602,1) -- ���� ���߾�� ����
				AddSwitchCount(cnum, 581, 1) -- �ɽ��ѳ��� ���� ����ġ
				return 1,0,"�׷���! �ڳ� ���� ��� ���� �� ����� �� �ƴ� ����̱���! �������� �̸� ��ſ� �ð��� ���� �� ����. �� ��ǥ�� �ްԳ�. ���� ���� ���� �Ծ�. "

			else
				return 1,0,"���� 2"

			end
		end



	elseif req == 100 then
		return 1,0,"�ڳ� ���ǰ� ������!!"


	elseif req == 200 then
		return 2,0,"���� �׷����� ������ ���µ�? �ٽ� �̾߱� ���ְڳ�",10,"��.."

	end
end


---------------------------------------------------------------------------------------------------------------------------------


 function NPC_QUEST_1061(cnum,reqNumber) -- ������ ������

req = reqNumber
random = SetRandom(cnum,0,100)



	if req == 1 then
		return 6,0,"�ҿ� �̿��� ����ô�.",10,"1000GP ���",20,"10000GP ���",30,"100000GP ���",40,"1000000GP ���",100,"10000000GP ���"


	elseif req == 10 then

		if GetMoney(cnum) < 1000 then
			return 1,0,"���� ���ڸ��� �ʽ��ϱ�?"

		else
			AddMoney(cnum, -1000)
			return 1,0,"�����ϴ�."
		end

	elseif req == 20 then

		if GetMoney(cnum) < 10000 then
			return 1,0,"���� ���ڸ��� �ʽ��ϱ�?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@������ ���������Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 95 then
				AddMoney(cnum, -10000)
				return 1,0,"�����ϴ�."


			elseif random >= 96 and random <= 100 then
				AddItemCount(cnum,8602,1) -- ���� ���߾�� ����
				AddMoney(cnum, -10000) -- 10000�� ����
				return 1,0,"�����ϴ�. ���� ������ ���� �ֱ���. "

			else
				return 1,0,"���� 1"
			end
		end

	elseif req == 30 then

		if GetMoney(cnum) < 100000 then
			return 1,0,"���� ���ڸ��� �ʽ��ϱ�?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@������ ���������Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 70 then
				AddMoney(cnum, -100000)
				return 1,0,"�����ϴ�."


			elseif random >= 71 and random <= 98 then
				AddMoney(cnum, -100000)
				AddItemCount(cnum,8602,1) -- ���� ���߾�� ����
				return 1,0,"�����ϴ�. ���� ������ ���� �ֱ���. "

			elseif random >= 99 and random <= 100 then
				AddMoney(cnum, -100000)
				AddItemCount(cnum,8601,1) -- ���߾�� ����
				return 1,0,"���� �����ϴ�. �� ������ �ſ���!"

			else
				return 1,0,"���� 1"
			end
		end


	elseif req == 40 then

		if GetMoney(cnum) < 1000000 then
			return 1,0,"���� ���ڸ��� �ʽ��ϱ�?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@������ ���������Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 20 then
				AddNPCSwitchCount(cnum, 590,1)
				AddMoney(cnum, -1000000)
				return 1,0,"�����ϴ�."


			elseif random >= 21 and random <= 95 then
				AddMoney(cnum, -1000000)
				AddItemCount(cnum,8602,1) -- ���� ���߾�� ����
				return 1,0,"�����ϴ�. ���� ������ ���� �ֱ���. "

			elseif random >= 96 and random <= 100 then
				AddMoney(cnum, -1000000)
				AddItemCount(cnum,8601,1) -- ���߾�� ����
				return 1,0,"���� �����ϴ�. �� ������ �ſ���!"

			else
				return 1,0,"���� 1"
			end
		end


	elseif req == 100 then
		return 2,0,"���� �̷��� ū ���� ��� �Ͻô� �̴ϱ�??",50,"��~"

	elseif req == 50 then

		if GetMoney(cnum) < 10000000 then
			return 1,0,"���� ���ڸ��� �ʽ��ϱ�?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@������ ���������Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 75 then
				AddMoney(cnum, -10000000)
				AddItemCount(cnum,8602,1) -- ���� ���߾�� ����
				return 1,0,"�����ϴ�. ���� ������ ���� �ֱ���. "

			elseif random >= 76 and random <= 97 then
				AddMoney(cnum, -10000000)
				AddItemCount(cnum,8601,1) -- ���߾�� ����
				return 1,0,"���� �����ϴ�. �� ������ �ſ���! "

			elseif random >= 98 and random <= 100 then
				AddMoney(cnum, -10000000)
				AddNPCSwitchCount(cnum, 585, 1)
				AddItemCount(cnum,8600,1) -- �� ���߾�� ����
				return 1,0,"���.. �̷��Գ� ����! ���� �� ������ �̴ϴ�."

			end
		end
	end
end



---------------------------------------------------------------------------------------------------------------------------------



 function NPC_QUEST_1062(cnum,reqNumber) -- ���� ��Ÿ

req = reqNumber


	if req == 1 then
		if GetSwitchCount(cnum, 582) < 1 then -- ���� ��Ÿ ó�� ��ȭ��
			return 2,0,"�뷯�� ���� ��Ź�� �־��!",10,"���� ���ε�?"

		elseif GetSwitchCount(cnum, 582) == 1 then
			return 2,0,"[���� �ڽ� 100��]�� [������ 100��]�� ��� ���̳���?",40,"����.."

		elseif GetSwitchCount(cnum, 582) > 1 then
			return 2,0,"Ȥ�� [���� �ڽ� 100��]�� [������ 100��]�� �� ���� ���̳���?",40,"����.."

		elseif GetSwitchCount(cnum, 582) < 11 then
			return 1,0,"���� �������. ���� ������ ����� ���� �� �־��."

		else
			return 1,0,"����1"
		end

	elseif req == 10 then
		return 2,0,"�Ǹ��迭 ���� �༮���� �ΰ��� ������ ������ �ؼ��� ���� ���� ���� ������ ���İ��� ������. �༮���� ���� �� [���� �ڽ�] �� [������] �� ���� 100�� ��  ã�� �ּ���!",11,"�˾Ҿ�."


	elseif req == 11 then
		AddSwitchCount(cnum, 582, 1)
		return 1,0,"���� ������!"



	elseif req == 40 then

	random = SetRandom(cnum,0,100)

		if GetItemCount(cnum, 8595, 0) < 100 or GetItemCount(cnum, 8596, 0) < 100  then -- ��������/������
			return 1,0,"������ ���� ������."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@���� ��Ÿ���Լ� �������� �ޱ����ؼ� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."

		else
			if random <= 1 then
				AddSwitchCount(cnum, 582, 1)
				AddItemCount(cnum,8595,-100) -- �����ڽ� ����
				AddItemCount(cnum,8596,-100) -- ������ ����
				AddItemCount(cnum,8600,1) -- �� ���߾�� ����
				return 1,0,"���� ������! ���п� ���� �������ڴ� ���� �� ���� �� ���ƿ�. �� ������ ��ſ��� ����� �� �ſ���!"

			elseif random >= 2 and random <= 17 then
				AddSwitchCount(cnum, 582, 1)
				AddItemCount(cnum,8595,-100) -- �����ڽ� ����
				AddItemCount(cnum,8596,-100) -- ������ ����
				AddItemCount(cnum,8601,1) -- ���߾�� ����
				return 1,0,"���� ������! ���п� ���� �������ڴ� ���� �� ���� �� ���ƿ�. �� ������ ��ſ��� ����� �� �ſ���!"

			elseif random >= 18 and random <= 100 then
				AddSwitchCount(cnum, 582, 1)
				AddItemCount(cnum,8595,-100) -- �����ڽ� ����
				AddItemCount(cnum,8596,-100) -- ������ ����
				AddItemCount(cnum,8602,1) -- ���� ���߾�� ����
				return 1,0,"���� ������! ���п� ���� �������ڴ� ���� �� ���� �� ���ƿ�. �� ������ ��ſ��� ����� �� �ſ���!"

			else
				return 1,0,"���� 1"
			end
		end
	end
end



