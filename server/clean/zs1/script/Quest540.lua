function NPC_QUEST_744(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 511) < 1 then
			return 2,0,"������ ������ �� ã�ƿԳ׿�!!@���� ��� ���� �丮������ ����� ������ ���� ���� �� �ֽ��ϴ�.@�����п��� ������� �����帮�� �; �Խ��ϴ�!@Ȥ��..������� �𸣴°� �ƴ���?",2,"�����..�˾ƿ�!"
		else
			if GetSwitchCount(cnum, 512) < 1 then
				if GetItemCount(cnum, 8489, 0) > 4 and GetItemCount(cnum, 8490, 0) > 4 and GetItemCount(cnum, 8491, 0) > 4 then
					return 2,0,"���ƿ�!! ��Ḧ �� ���ؿ��̱���!@��ø� ��ٷ�������!@�����Ǹ� �켱 �ٽ� Ȯ���ϰ�...!",52,"��� �� �Ƴ���?"
				else
					return 2,0,"�뷯��! ���� ��ᰡ ���ڸ��׿�~@[�λ� 5��]@[���� 5��]@[�߰�� 5��]@�̷��� ��Ḧ ��ƿ�����~",42,"��~�ٽ� �ðԿ�~!"
				end
			else
				return 2,0,"�뷯�� �� ������� ����� �帱���?",42,"�� �ѹ���!!"
			end

		end

	elseif req == 2 then
		return 2,0,"���� �˰� ��ñ���!@������ ��������δ� �ְ���!@���� ������� ���ְ� ���� �� �־��! �뷯�Ե� ����� ��ź��Ƿ���?",12,"��~!"

	elseif req == 12 then
		return 2,0,"��ð� ������ �� �˾Ҿ��!!@��..�׷� ���..�����Ǹ� �� ����....@@[�λ� 5��]@[���� 5��]@[�߰�� 5��]@@�̷��� ����� ��Ḧ ��ƿ��ø�@���� �ѹ� ������ ����� ���Կ�!!",22,"���� ��� ���ϳ���?"

	elseif req == 22 then
		return 2,0,"�Ƹ���..@@[�λ�]��[����]�� �Ĺ� ����@[�߰��]�� �� ���Ϳ��Լ�@@���� �� �����ſ���!!@�׷� ����� ��Ḧ ���ؿ�����!",32,"��~���ؿðԿ�~!"

	elseif req == 32 then
		StartQuest(cnum, 181)
		SetSwitchCount(cnum, 511, 1)

	elseif req == 42 then
		SetSwitchCount(cnum, 512, 0)
		return 2,0,"���ƿ�!@[�λ�]��[����]�� �Ĺ� ����,@[�߰��]�� �� ���Ϳ��Լ�@�����°� ���� �ʾ���?",32,"��~���ؿðԿ�!~"

	elseif req == 52 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�����]�� ���� ������ �����մϴ�."

		else
			random = SetRandom(cnum, 1, 100)

			if random >= 1 and random <= 60 then	-- ����ȸ�� ����� 60%
				EndQuest(cnum, 181)
				AddItemCount(cnum, 8489, -5)
				AddItemCount(cnum, 8490, -5)
				AddItemCount(cnum, 8491, -5)
				AddItemCount(cnum, 8492, 1)
				SetSwitchCount(cnum, 512, 1)
				return 1,0,"������� ����µ� �����߽��ϴ�!@���ְ� �弼��!!"

			elseif  random >= 61 and random <= 90 then   -- ���̺Ҳ� ����� 30%
				EndQuest(cnum, 181)
				AddItemCount(cnum, 8489, -5)
				AddItemCount(cnum, 8490, -5)
				AddItemCount(cnum, 8491, -5)
				AddItemCount(cnum, 8493, 1)
				SetSwitchCount(cnum, 512, 1)
				return 1,0,"���ִ� ������� ����µ� �����߽��ϴ�!@���ְ� �弼��!!"

			elseif  random >= 91 and random <= 100 then	-- �������� ����� 10%
				EndQuest(cnum, 181)
				AddItemCount(cnum, 8489, -5)
				AddItemCount(cnum, 8490, -5)
				AddItemCount(cnum, 8491, -5)
				AddItemCount(cnum, 8494, 1)
				SetSwitchCount(cnum, 512, 1)
				return 1,0,"�̾�~!���� ���� ���� �Ǹ��� ������� ����µ� �����߽��ϴ�!@���ְ� �弼��!!"
			else
				return 0
			end

		end

	else
		return 0

	end
end
