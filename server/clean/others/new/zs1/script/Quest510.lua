function NPC_QUEST_679(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 399) < 1 then 
			if GetItemCount(cnum, 8208, 0) < 1 then
				return 2,0,"�ڳ״� ��ȯ�� ��簡 �ƴϱ�. ��.. �׷��� ����� ������.. ����� �ϴ� ���� '��ȯ�� ��ǥ' �������� ���� �� �����ž�. '��ȯ�� ��ǥ'�� 50���� ��ƿ��� �����ϰ� ����� �� �ִ� �������� �ֵ��� ����. '��ȯ�� ��ǥ'�� ����� ��𼭵� ������ ������ ��ƺ��ðԳ�.",2,"�׷���. ����"


			else
				return 3,0,"�Ϳ�! ������ �Ĺ� �ϼ̱���! �� �ؾ�����ھ� �� ģ����.. �Ĺ� ������� �����̾� �� ����� 30��¥����  ������ �ֵ��� ����. ������~",12,"�ѽ�!",13,"�װ� ���߿� �޵��� ������."


			end



		else
			if GetItemCount(cnum, 8208, 0) < 1 then -- ��ȯ�� ���� ���� ������ �̺�Ʈ ����
				return 2,0,"���� ���� ��ȯ�� ��ǥ�� ��ƿԳ�?",32,"'��ȯ�� ��ǥ'�� 50�� ��� �Խ��ϴ�." 


			else                                    -- ��ȯ�� ���ڰ� �ִ� ������ �̺�Ʈ ����
				return 2,0,"���� ���� ��ȯ�� ��ǥ�� ��ƿԳ�?",33,"'��ȯ�� ��ǥ'�� 50�� ��� �Խ��ϴ�."


			end
		end
			




	elseif req == 2 then
		AddSwitchCount(cnum, 399, 1) --�̺�Ʈ ���� ���� Ȯ��





	elseif req == 12 then
		return 2,0,"���� �����ϱ� �Ϸ�. ������~ ��ȯ�� ������� �����Ϸ��� �Ѱ��� �� �ʿ��Ѱ� ����. ���� ���� ����Ϳ� ���� ����� �Ͻð�. ����� �ϴ� ���� '��ȯ�� ��ǥ' �������� ���� �� �����ž�. '��ȯ�� ��ǥ'�� 50���� ��ƿ��� �����ϰ� ����� �� �ִ� �����۰� �Բ� ������ȯ���� �ֵ��� ����. '��ȯ�� ��ǥ'�� ����� ��𼭵� ������ ������ ��ƺ��ðԳ�.",22,"�ĵ� �ٳ������."


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�̷�. �κ��丮�� �����̾��� ������� ���� ������ ����. 1ĭ �̻� ���� �ٽ� ���Գ�"


		else
			AddItemCount(cnum, 940, 1)
			AddSwitchCount(cnum, 399, 1) --�̺�Ʈ ���� ���� Ȯ��
			AddSwitchCount(cnum, 400, 1) --�����̾��� ����� ��� Ȯ��


		end
				



	elseif req == 32 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�̷�. �κ��丮�� �� ������ ����. 2ĭ �̻� ���� �ٽ� ���Գ�"


		elseif GetItemCount(cnum, 8207, 0) < 50 then
			return 1,0,"���� ������ ��⸦ ġ�ڴٴ°ǰ�? [��ȯ����ǥ 50��]�� ��ƿ���ϱ�..�̷��� ��ƿ� ������ ������ �� �� �ִٳ�. �ٽ� �ٳ����."


		else
			random = SetRandom(cnum, 1,100)

			if random < 3 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1027, 1)


			elseif random >= 3 and random < 5 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 874, 1)


			elseif random >= 5 and random < 7 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3708, 1)


			elseif random >= 7 and random < 9 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3316, 1)


			elseif random >= 9 and random < 89 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 4491, 10)


			elseif random >= 89 and random < 90 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3501, 1)


			elseif random >= 90 and random < 91 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1333, 1)


			elseif random >= 91 and random <= 100 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 80, 1)
				AddItemCount(cnum, 80, 1)


			else
				return 0

			end			
			return 1,0,"�����߱���.. �������� ������ �ϰ� �ֱ�.. ���� �� ������ �ʿ��� �� ���Գ�. ��~ 1��1�ʰ� �ƽ��� �Ǳ��� ���ϰ� �ֳ�. � �ٽ� ��ƿ;���?"

		end







	elseif req == 33 then

		if GetSwitchCount(cnum, 400) < 1 then
			if GetRemainPocket(cnum) < 4 then
				return 1,0,"�̷�. �κ��丮�� �� ������ ����. 4ĭ �̻� ���� �ٽ� ���Գ�"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"���� ������ ��⸦ ġ�ڴٴ°ǰ�? [��ȯ����ǥ 50��]�� ��ƿ���ϱ�..�̷��� ��ƿ� ������ ������ �� �� �ִٳ�. �ٽ� �ٳ����."


			else

				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				else
					return 0
	
				end
				return 1,0,"�����߱���.. �������� ������ �ϰ� �ֱ�.. ���� �� ������ �ʿ��� �� ����, ������ȯ ������ �� �����ϰ� �ְԳ�.. ���߿� ��÷�ؼ� ���� ���� ������ ���״ϸ���.. �� �׸��� �ڳ״� �����̾��� ������� �޾ư��� �ʾҴ���. �׷� ������ �ؾ������ ���� ì�ܰ������. �̹��� ���� ì���ִ°ž�"

			end

		else
			if GetRemainPocket(cnum) < 3 then
				return 1,0,"�̷�. �κ��丮�� �� ������ ����. 3ĭ �̻� ���� �ٽ� ���Գ�"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"���� ������ ��⸦ ġ�ڴٴ°ǰ�? [��ȯ����ǥ 50��]�� ��ƿ���ϱ�..�̷��� ��ƿ� ������ ������ �� �� �ִٳ�. �ٽ� �ٳ����."


			else
				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				else
					return 0
		
				end
				return 1,0,"�����߱���.. �������� ������ �ϰ� �ֱ�.. ���� �� ������ �ʿ��� �� ����, ������ȯ ������ �� �����ϰ� �ְԳ�.. ���߿� ��÷�ؼ� ���� ���� ������ ���״ϸ���.. ��~ 1��1�ʰ� �ƽ��� �Ǳ��� ���ϰ� �ֳ�. � �ٽ� ��ƿ;���?"
			end
		end

	else
		return 0

	end
end














function NPC_QUEST_680(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 399) < 1 then 
			if GetItemCount(cnum, 8208, 0) < 1 then
				return 2,0,"�ڳ״� ��ȯ�� ��簡 �ƴϱ�. ��.. �׷��� ����� ������.. ����� �ϴ� ���� '��ȯ�� ��ǥ' �������� ���� �� �����ž�. '��ȯ�� ��ǥ'�� 50���� ��ƿ��� �����ϰ� ����� �� �ִ� �������� �ֵ��� ����. '��ȯ�� ��ǥ'�� ����� ��𼭵� ������ ������ ��ƺ��ðԳ�.",2,"�׷���. ����"


			else
				return 3,0,"�Ϳ�! ������ �Ĺ� �ϼ̱���! �� �ؾ�����ھ� �� ģ����.. �Ĺ� ������� �����̾� �� ����� 30��¥����  ������ �ֵ��� ����. ������~",12,"�ѽ�!",13,"�װ� ���߿� �޵��� ������."


			end



		else
			if GetItemCount(cnum, 8208, 0) < 1 then -- ��ȯ�� ���� ���� ������ �̺�Ʈ ����
				return 2,0,"���� ���� ��ȯ�� ��ǥ�� ��ƿԳ�?",32,"'��ȯ�� ��ǥ'�� 50�� ��� �Խ��ϴ�." 


			else                                    -- ��ȯ�� ���ڰ� �ִ� ������ �̺�Ʈ ����
				return 2,0,"���� ���� ��ȯ�� ��ǥ�� ��ƿԳ�?",33,"'��ȯ�� ��ǥ'�� 50�� ��� �Խ��ϴ�."


			end
		end
			




	elseif req == 2 then
		AddSwitchCount(cnum, 399, 1) --�̺�Ʈ ���� ���� Ȯ��





	elseif req == 12 then
		return 2,0,"���� �����ϱ� �Ϸ�. ������~ ��ȯ�� ������� �����Ϸ��� �Ѱ��� �� �ʿ��Ѱ� ����. ���� ���� ����Ϳ� ���� ����� �Ͻð�. ����� �ϴ� ���� '��ȯ�� ��ǥ' �������� ���� �� �����ž�. '��ȯ�� ��ǥ'�� 50���� ��ƿ��� �����ϰ� ����� �� �ִ� �����۰� �Բ� ������ȯ���� �ֵ��� ����. '��ȯ�� ��ǥ'�� ����� ��𼭵� ������ ������ ��ƺ��ðԳ�.",22,"�ĵ� �ٳ������."


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�̷�. �κ��丮�� �����̾��� ������� ���� ������ ����. 1ĭ �̻� ���� �ٽ� ���Գ�"


		else
			AddItemCount(cnum, 940, 1)
			AddSwitchCount(cnum, 399, 1) --�̺�Ʈ ���� ���� Ȯ��
			AddSwitchCount(cnum, 400, 1) --�����̾��� ����� ��� Ȯ��


		end
				



	elseif req == 32 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�̷�. �κ��丮�� �� ������ ����. 2ĭ �̻� ���� �ٽ� ���Գ�"


		elseif GetItemCount(cnum, 8207, 0) < 50 then
			return 1,0,"���� ������ ��⸦ ġ�ڴٴ°ǰ�? [��ȯ����ǥ 50��]�� ��ƿ���ϱ�..�̷��� ��ƿ� ������ ������ �� �� �ִٳ�. �ٽ� �ٳ����."


		else
			random = SetRandom(cnum, 1,100)

			if random < 3 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1027, 1)


			elseif random >= 3 and random < 5 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 874, 1)


			elseif random >= 5 and random < 7 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3708, 1)


			elseif random >= 7 and random < 9 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3316, 1)


			elseif random >= 9 and random < 89 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 4491, 10)


			elseif random >= 89 and random < 90 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3501, 1)


			elseif random >= 90 and random < 91 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1333, 1)


			elseif random >= 91 and random <= 100 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 80, 1)
				AddItemCount(cnum, 80, 1)


			else
				return 0

			end			
			return 1,0,"�����߱���.. �������� ������ �ϰ� �ֱ�.. ���� �� ������ �ʿ��� �� ���Գ�. ��~ 1��1�ʰ� �ƽ��� �Ǳ��� ���ϰ� �ֳ�. � �ٽ� ��ƿ;���?"

		end







	elseif req == 33 then

		if GetSwitchCount(cnum, 400) < 1 then
			if GetRemainPocket(cnum) < 4 then
				return 1,0,"�̷�. �κ��丮�� �� ������ ����. 4ĭ �̻� ���� �ٽ� ���Գ�"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"���� ������ ��⸦ ġ�ڴٴ°ǰ�? [��ȯ����ǥ 50��]�� ��ƿ���ϱ�..�̷��� ��ƿ� ������ ������ �� �� �ִٳ�. �ٽ� �ٳ����."


			else

				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				else
					return 0
	
				end
				return 1,0,"�����߱���.. �������� ������ �ϰ� �ֱ�.. ���� �� ������ �ʿ��� �� ����, ������ȯ ������ �� �����ϰ� �ְԳ�.. ���߿� ��÷�ؼ� ���� ���� ������ ���״ϸ���.. �� �׸��� �ڳ״� �����̾��� ������� �޾ư��� �ʾҴ���. �׷� ������ �ؾ������ ���� ì�ܰ������. �̹��� ���� ì���ִ°ž�"

			end

		else
			if GetRemainPocket(cnum) < 3 then
				return 1,0,"�̷�. �κ��丮�� �� ������ ����. 3ĭ �̻� ���� �ٽ� ���Գ�"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"���� ������ ��⸦ ġ�ڴٴ°ǰ�? [��ȯ����ǥ 50��]�� ��ƿ���ϱ�..�̷��� ��ƿ� ������ ������ �� �� �ִٳ�. �ٽ� �ٳ����."


			else
				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				else
					return 0
		
				end
				return 1,0,"�����߱���.. �������� ������ �ϰ� �ֱ�.. ���� �� ������ �ʿ��� �� ����, ������ȯ ������ �� �����ϰ� �ְԳ�.. ���߿� ��÷�ؼ� ���� ���� ������ ���״ϸ���.. ��~ 1��1�ʰ� �ƽ��� �Ǳ��� ���ϰ� �ֳ�. � �ٽ� ��ƿ;���?"
			end
		end

	else
		return 0

	end
end






function NPC_QUEST_681(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 399) < 1 then 
			if GetItemCount(cnum, 8208, 0) < 1 then
				return 2,0,"�ڳ״� ��ȯ�� ��簡 �ƴϱ�. ��.. �׷��� ����� ������.. ����� �ϴ� ���� '��ȯ�� ��ǥ' �������� ���� �� �����ž�. '��ȯ�� ��ǥ'�� 50���� ��ƿ��� �����ϰ� ����� �� �ִ� �������� �ֵ��� ����. '��ȯ�� ��ǥ'�� ����� ��𼭵� ������ ������ ��ƺ��ðԳ�.",2,"�׷���. ����"


			else
				return 3,0,"�Ϳ�! ������ �Ĺ� �ϼ̱���! �� �ؾ�����ھ� �� ģ����.. �Ĺ� ������� �����̾� �� ����� 30��¥����  ������ �ֵ��� ����. ������~",12,"�ѽ�!",13,"�װ� ���߿� �޵��� ������."


			end



		else
			if GetItemCount(cnum, 8208, 0) < 1 then -- ��ȯ�� ���� ���� ������ �̺�Ʈ ����
				return 2,0,"���� ���� ��ȯ�� ��ǥ�� ��ƿԳ�?",32,"'��ȯ�� ��ǥ'�� 50�� ��� �Խ��ϴ�." 


			else                                    -- ��ȯ�� ���ڰ� �ִ� ������ �̺�Ʈ ����
				return 2,0,"���� ���� ��ȯ�� ��ǥ�� ��ƿԳ�?",33,"'��ȯ�� ��ǥ'�� 50�� ��� �Խ��ϴ�."


			end
		end
			




	elseif req == 2 then
		AddSwitchCount(cnum, 399, 1) --�̺�Ʈ ���� ���� Ȯ��





	elseif req == 12 then
		return 2,0,"���� �����ϱ� �Ϸ�. ������~ ��ȯ�� ������� �����Ϸ��� �Ѱ��� �� �ʿ��Ѱ� ����. ���� ���� ����Ϳ� ���� ����� �Ͻð�. ����� �ϴ� ���� '��ȯ�� ��ǥ' �������� ���� �� �����ž�. '��ȯ�� ��ǥ'�� 50���� ��ƿ��� �����ϰ� ����� �� �ִ� �����۰� �Բ� ������ȯ���� �ֵ��� ����. '��ȯ�� ��ǥ'�� ����� ��𼭵� ������ ������ ��ƺ��ðԳ�.",22,"�ĵ� �ٳ������."


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�̷�. �κ��丮�� �����̾��� ������� ���� ������ ����. 1ĭ �̻� ���� �ٽ� ���Գ�"


		else
			AddItemCount(cnum, 940, 1)
			AddSwitchCount(cnum, 399, 1) --�̺�Ʈ ���� ���� Ȯ��
			AddSwitchCount(cnum, 400, 1) --�����̾��� ����� ��� Ȯ��


		end
				



	elseif req == 32 then
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"�̷�. �κ��丮�� �� ������ ����. 2ĭ �̻� ���� �ٽ� ���Գ�"


		elseif GetItemCount(cnum, 8207, 0) < 50 then
			return 1,0,"���� ������ ��⸦ ġ�ڴٴ°ǰ�? [��ȯ����ǥ 50��]�� ��ƿ���ϱ�..�̷��� ��ƿ� ������ ������ �� �� �ִٳ�. �ٽ� �ٳ����."


		else
			random = SetRandom(cnum, 1,100)

			if random < 3 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1027, 1)


			elseif random >= 3 and random < 5 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 874, 1)


			elseif random >= 5 and random < 7 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3708, 1)


			elseif random >= 7 and random < 9 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3316, 1)


			elseif random >= 9 and random < 89 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 4491, 10)


			elseif random >= 89 and random < 90 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 3501, 1)


			elseif random >= 90 and random < 91 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 1333, 1)


			elseif random >= 91 and random <= 100 then
				AddItemCount(cnum, 8207, -50)
				AddItemCount(cnum, 80, 1)
				AddItemCount(cnum, 80, 1)


			else
				return 0

			end			
			return 1,0,"�����߱���.. �������� ������ �ϰ� �ֱ�.. ���� �� ������ �ʿ��� �� ���Գ�. ��~ 1��1�ʰ� �ƽ��� �Ǳ��� ���ϰ� �ֳ�. � �ٽ� ��ƿ;���?"

		end







	elseif req == 33 then

		if GetSwitchCount(cnum, 400) < 1 then
			if GetRemainPocket(cnum) < 4 then
				return 1,0,"�̷�. �κ��丮�� �� ������ ����. 4ĭ �̻� ���� �ٽ� ���Գ�"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"���� ������ ��⸦ ġ�ڴٴ°ǰ�? [��ȯ����ǥ 50��]�� ��ƿ���ϱ�..�̷��� ��ƿ� ������ ������ �� �� �ִٳ�. �ٽ� �ٳ����."


			else

				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 940, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����
					AddSwitchCount(cnum, 400, 1)


				else
					return 0
	
				end
				return 1,0,"�����߱���.. �������� ������ �ϰ� �ֱ�.. ���� �� ������ �ʿ��� �� ����, ������ȯ ������ �� �����ϰ� �ְԳ�.. ���߿� ��÷�ؼ� ���� ���� ������ ���״ϸ���.. �� �׸��� �ڳ״� �����̾��� ������� �޾ư��� �ʾҴ���. �׷� ������ �ؾ������ ���� ì�ܰ������. �̹��� ���� ì���ִ°ž�"

			end

		else
			if GetRemainPocket(cnum) < 3 then
				return 1,0,"�̷�. �κ��丮�� �� ������ ����. 3ĭ �̻� ���� �ٽ� ���Գ�"


			elseif GetItemCount(cnum, 8207, 0) < 50 then
				return 1,0,"���� ������ ��⸦ ġ�ڴٴ°ǰ�? [��ȯ����ǥ 50��]�� ��ƿ���ϱ�..�̷��� ��ƿ� ������ ������ �� �� �ִٳ�. �ٽ� �ٳ����."


			else
				random = SetRandom(cnum, 1,100)

				if random < 3 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1027, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����


				elseif random >= 3 and random < 5 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 874, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 5 and random < 7 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3708, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 7 and random < 9 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3316, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 9 and random < 89 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 4491, 10)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 89 and random < 90 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 3501, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 90 and random < 91 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 1333, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 8207, -50)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 80, 1)
					AddItemCount(cnum, 478, 1) -- ���� ��ȯ ����

				else
					return 0
		
				end
				return 1,0,"�����߱���.. �������� ������ �ϰ� �ֱ�.. ���� �� ������ �ʿ��� �� ����, ������ȯ ������ �� �����ϰ� �ְԳ�.. ���߿� ��÷�ؼ� ���� ���� ������ ���״ϸ���.. ��~ 1��1�ʰ� �ƽ��� �Ǳ��� ���ϰ� �ֳ�. � �ٽ� ��ƿ;���?"
			end
		end

	else
		return 0

	end
end