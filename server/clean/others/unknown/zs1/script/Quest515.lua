function NPC_QUEST_693(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 406) < 1 then 
			return 2,0,"���¾� ��������. ���� �ͽ��������� �⼮���� �����ϴٴ� �̾߱Ⱑ ��� ���� ������. ����.. �������� �⼮ �սô�.",2,"�⼮ üũ�� ���?"


		else
			return 3,0,"�⼮�Ϸ� �Գ�?@������ �ϰ� �ֱ�..@���� ���������̴�.",32,"�⼮ üũ �Ҳ���.",33,"���ݱ��� �� �� üũ �߳���?"


		end




	elseif req == 2 then
		return 2,0,"�⼮ üũ?? ��������. ���� ã�ƿ��� �ȴٳ�. �⼮�� 2�ð����� �����ѵ�, ���� �ִ� �⼮üũ�� Ÿ�̸� �ϸ��� �����ϰ� 2�ð��� ���� �� �ٽ� ã�ƿ��� �ȴٳ�. ��, ������ �Ѵٸ� �Ϸ翡 �� 12���� �⼮ üũ �� �� �ִٴ� ������. ��, �⼮üũ�� Ÿ�̸� �ϸ��� ���� �ÿ��� �ð��� �帣�ϱ� �������� �Ҹ��ع����°� �����ž�. ���ø� �⼮ üũ �س��� �����ٰ� 2�ð� �ڿ� �����ؼ� ���� ã�ƿ��� ���� ������ �ϽðԳ�.",12,"�⼮ üũ�� �ϸ� ���� ������?"



	elseif req == 12 then
		return 2,0,"����, ����! �⼮ üũ�� 10ȸ �� ������ �������� �����Ͽ� �Ʒ� ������ �� 1���� ������ �ֵ��� ����.@[���ֹ��� �����̾� ��ũ 1��]@[�ູ�� �ó������� ��¹��� 1��]@[�ູ�� Ƽ�Ÿ 1��]@[�ູ�� ������ ���� 1��]@[�뷯�� ���� 1��]@[���۳����� 1��]@[�Ϲ� �ް��� 5��]@�׸��� �̺�Ʈ�� ����� ������ �⼮ üũ�� ���� ���� �� ������Դ� 100,000ĳ�ø� �� �����̴� ������ �⼮�ϽðԳ�.",22,"��! ���ݺ��� �⼮ �մϴ�!"




	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Ÿ�̸� �ϸ��� ���� ������ �����մϴ�."

		else
			SetSwitchCurTime(cnum, 405) -- �⼮üũ ���� �ð� ����
			AddSwitchCount(cnum, 406, 1) -- �⼮üũ ���� Ȯ��
			AddSwitchCount(cnum, 407, 1) -- �⼮üũ ���� Ƚ�� Ȯ��
			AddSwitchCount(cnum, 408, 1) -- �⼮üũ 10ȸ ������ ���� Ȯ�ο�
			AddItemCount(cnum, 8213, 1)
			return 1,0,"Ÿ�̸� �ϸ��� ���޹޾ҽ��ϴ�."
		end





	
	elseif req == 32 then
		GetTime = GetSwitchTime(cnum, 405)
		Today	= GetCurrentTime()


		if Today - GetTime >= 7200 then
--		if Today - GetTime >= 60 then
			if GetItemCount(cnum, 8213, 0) < 1 and GetItemCount(cnum, 8213, 2) < 1 then
				return 2,0,"��.. 2�ð� ���� ������ �߱�. üũ �Ϸ�Ǿ���. ��.. �⼮ üũ�� Ÿ�̸Ӹ� �ٽ� �� �״�.. ��� ������ ������?",42,"�׳�~"


			else
				return 2,0,"Ÿ�̸� �ϸ��� �ð��� ��� ���� �������� ������� �ٽ� ã�ƿ��Գ�.",52,"�׷���. �����~"
				

			end

		
		else
			return 2,0,"������ �⼮ üũ �� �ڷ� ���� 2�ð��� ������ �ʾұ�. 2�ð��� ���� ������ üũ�� �� �� ������. �⼮ üũ Ÿ�̸��� �ð��� ��� ���� �������� ������� �ٽ� ã�ƿ��Գ�.",52,"�׷���. �����~"



		end



	elseif req == 33 then
		Time = GetSwitchCount(cnum, 407)
		return 2,0,"�⼮ Ƚ�� Ȯ���ΰ�..? ��.. �ڳ״� ���� �� ["..Time.."ȸ ] �⼮ �ߴٳ�. ��� ������ ������?",62,"�׳�~"

		




	elseif req == 42 then
		if GetSwitchCount(cnum, 408) < 9 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"���ο� Ÿ�̸� �ϸ��� ���� ������ �����մϴ�."


			else
				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- �⼮üũ ���� �ð� �� ����
				AddSwitchCount(cnum, 407, 1) -- �⼮üũ Ƚ�� Ȯ��
				AddSwitchCount(cnum, 408, 1) -- �⼮üũ 10ȸ Ȯ�ο�
				return 1,0,"���ο� Ÿ�̸� �ϸ��� ���޹޾ҽ��ϴ�."

			end


		else
			if GetRemainPocket(cnum) < 2 then
				return 1,0,"���ο� Ÿ�̸� �ϸ��� �⼮ üũ 10ȸ ���� �������� ���� ������ �����մϴ�."


			else

				random = SetRandom(cnum, 1, 100)


				if random <= 2 then
					AddItemCount(cnum, 1027, 1)


				elseif random >= 3 and random <= 4 then
					AddItemCount(cnum, 874, 1)


				elseif random >= 5 and random <= 6 then
					AddItemCount(cnum, 3708, 1)


				elseif random >= 7 and random <= 8 then
					AddItemCount(cnum, 3316, 1)


				elseif random >= 9 and random <= 88 then
					AddItemCount(cnum, 4491, 5)


				elseif random >= 89 and random <= 89 then
					AddItemCount(cnum, 3501, 1)


				elseif random >= 90 and random <= 90 then
					AddItemCount(cnum, 1333, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 80, 1)


				else
					return 0
		
				end

				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- �⼮üũ ���� �ð� �� ����
				SetSwitchCount(cnum, 408, 0) -- 10ȸ üũ �ʱ�ȭ
				AddSwitchCount(cnum, 407, 1) -- �⼮üũ Ƚ�� Ȯ��
				return 1,0,"���ο� Ÿ�̸� �ϸ��� 10ȸ ���� �������� ���޹޾ҽ��ϴ�."
				

			end	

		end		







	elseif req == 52 then
		return 0
					




	elseif req == 62 then
		return 0





	else
		return 0

	end
end




function NPC_QUEST_694(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 406) < 1 then 
			return 2,0,"���¾� ��������. ���� �ͽ��������� �⼮���� �����ϴٴ� �̾߱Ⱑ ��� ���� ������. ����.. �������� �⼮ �սô�.",2,"�⼮ üũ�� ���?"


		else
			return 3,0,"�⼮�Ϸ� �Գ�?@������ �ϰ� �ֱ�..@���� ���������̴�.",32,"�⼮ üũ �Ҳ���.",33,"���ݱ��� �� �� üũ �߳���?"


		end




	elseif req == 2 then
		return 2,0,"�⼮ üũ?? ��������. ���� ã�ƿ��� �ȴٳ�. �⼮�� 2�ð����� �����ѵ�, ���� �ִ� �⼮üũ�� Ÿ�̸� �ϸ��� �����ϰ� 2�ð��� ���� �� �ٽ� ã�ƿ��� �ȴٳ�. ��, ������ �Ѵٸ� �Ϸ翡 �� 12���� �⼮ üũ �� �� �ִٴ� ������. ��, �⼮üũ�� Ÿ�̸� �ϸ��� ���� �ÿ��� �ð��� �帣�ϱ� �������� �Ҹ��ع����°� �����ž�. ���ø� �⼮ üũ �س��� �����ٰ� 2�ð� �ڿ� �����ؼ� ���� ã�ƿ��� ���� ������ �ϽðԳ�.",12,"�⼮ üũ�� �ϸ� ���� ������?"



	elseif req == 12 then
		return 2,0,"����, ����! �⼮ üũ�� 10ȸ �� ������ �������� �����Ͽ� �Ʒ� ������ �� 1���� ������ �ֵ��� ����.@[���ֹ��� �����̾� ��ũ 1��]@[�ູ�� �ó������� ��¹��� 1��]@[�ູ�� Ƽ�Ÿ 1��]@[�ູ�� ������ ���� 1��]@[�뷯�� ���� 1��]@[���۳����� 1��]@[�Ϲ� �ް��� 5��]@�׸��� �̺�Ʈ�� ����� ������ �⼮ üũ�� ���� ���� �� ������Դ� 100,000ĳ�ø� �� �����̴� ������ �⼮�ϽðԳ�.",22,"��! ���ݺ��� �⼮ �մϴ�!"




	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Ÿ�̸� �ϸ��� ���� ������ �����մϴ�."

		else
			SetSwitchCurTime(cnum, 405) -- �⼮üũ ���� �ð� ����
			AddSwitchCount(cnum, 406, 1) -- �⼮üũ ���� Ȯ��
			AddSwitchCount(cnum, 407, 1) -- �⼮üũ ���� Ƚ�� Ȯ��
			AddSwitchCount(cnum, 408, 1) -- �⼮üũ 10ȸ ������ ���� Ȯ�ο�
			AddItemCount(cnum, 8213, 1)
			return 1,0,"Ÿ�̸� �ϸ��� ���޹޾ҽ��ϴ�."
		end





	
	elseif req == 32 then
		GetTime = GetSwitchTime(cnum, 405)
		Today	= GetCurrentTime()


		if Today - GetTime >= 7200 then
--		if Today - GetTime >= 60 then
			if GetItemCount(cnum, 8213, 0) < 1 and GetItemCount(cnum, 8213, 2) < 1 then
				return 2,0,"��.. 2�ð� ���� ������ �߱�. üũ �Ϸ�Ǿ���. ��.. �⼮ üũ�� Ÿ�̸Ӹ� �ٽ� �� �״�.. ��� ������ ������?",42,"�׳�~"


			else
				return 2,0,"Ÿ�̸� �ϸ��� �ð��� ��� ���� �������� ������� �ٽ� ã�ƿ��Գ�.",52,"�׷���. �����~"
				

			end

		
		else
			return 2,0,"������ �⼮ üũ �� �ڷ� ���� 2�ð��� ������ �ʾұ�. 2�ð��� ���� ������ üũ�� �� �� ������. �⼮ üũ Ÿ�̸��� �ð��� ��� ���� �������� ������� �ٽ� ã�ƿ��Գ�.",52,"�׷���. �����~"



		end



	elseif req == 33 then
		Time = GetSwitchCount(cnum, 407)
		return 2,0,"�⼮ Ƚ�� Ȯ���ΰ�..? ��.. �ڳ״� ���� �� ["..Time.."ȸ ] �⼮ �ߴٳ�. ��� ������ ������?",62,"�׳�~"

		




	elseif req == 42 then
		if GetSwitchCount(cnum, 408) < 9 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"���ο� Ÿ�̸� �ϸ��� ���� ������ �����մϴ�."


			else
				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- �⼮üũ ���� �ð� �� ����
				AddSwitchCount(cnum, 407, 1) -- �⼮üũ Ƚ�� Ȯ��
				AddSwitchCount(cnum, 408, 1) -- �⼮üũ 10ȸ Ȯ�ο�
				return 1,0,"���ο� Ÿ�̸� �ϸ��� ���޹޾ҽ��ϴ�."

			end


		else
			if GetRemainPocket(cnum) < 2 then
				return 1,0,"���ο� Ÿ�̸� �ϸ��� �⼮ üũ 10ȸ ���� �������� ���� ������ �����մϴ�."


			else

				random = SetRandom(cnum, 1, 100)


				if random <= 2 then
					AddItemCount(cnum, 1027, 1)


				elseif random >= 3 and random <= 4 then
					AddItemCount(cnum, 874, 1)


				elseif random >= 5 and random <= 6 then
					AddItemCount(cnum, 3708, 1)


				elseif random >= 7 and random <= 8 then
					AddItemCount(cnum, 3316, 1)


				elseif random >= 9 and random <= 88 then
					AddItemCount(cnum, 4491, 5)


				elseif random >= 89 and random <= 89 then
					AddItemCount(cnum, 3501, 1)


				elseif random >= 90 and random <= 90 then
					AddItemCount(cnum, 1333, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 80, 1)


				else
					return 0
		
				end

				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- �⼮üũ ���� �ð� �� ����
				SetSwitchCount(cnum, 408, 0) -- 10ȸ üũ �ʱ�ȭ
				AddSwitchCount(cnum, 407, 1) -- �⼮üũ Ƚ�� Ȯ��
				return 1,0,"���ο� Ÿ�̸� �ϸ��� 10ȸ ���� �������� ���޹޾ҽ��ϴ�."
				

			end	

		end		







	elseif req == 52 then
		return 0
					




	elseif req == 62 then
		return 0





	else
		return 0

	end
end





function NPC_QUEST_695(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 406) < 1 then 
			return 2,0,"���¾� ��������. ���� �ͽ��������� �⼮���� �����ϴٴ� �̾߱Ⱑ ��� ���� ������. ����.. �������� �⼮ �սô�.",2,"�⼮ üũ�� ���?"


		else
			return 3,0,"�⼮�Ϸ� �Գ�?@������ �ϰ� �ֱ�..@���� ���������̴�.",32,"�⼮ üũ �Ҳ���.",33,"���ݱ��� �� �� üũ �߳���?"


		end




	elseif req == 2 then
		return 2,0,"�⼮ üũ?? ��������. ���� ã�ƿ��� �ȴٳ�. �⼮�� 2�ð����� �����ѵ�, ���� �ִ� �⼮üũ�� Ÿ�̸� �ϸ��� �����ϰ� 2�ð��� ���� �� �ٽ� ã�ƿ��� �ȴٳ�. ��, ������ �Ѵٸ� �Ϸ翡 �� 12���� �⼮ üũ �� �� �ִٴ� ������. ��, �⼮üũ�� Ÿ�̸� �ϸ��� ���� �ÿ��� �ð��� �帣�ϱ� �������� �Ҹ��ع����°� �����ž�. ���ø� �⼮ üũ �س��� �����ٰ� 2�ð� �ڿ� �����ؼ� ���� ã�ƿ��� ���� ������ �ϽðԳ�.",12,"�⼮ üũ�� �ϸ� ���� ������?"



	elseif req == 12 then
		return 2,0,"����, ����! �⼮ üũ�� 10ȸ �� ������ �������� �����Ͽ� �Ʒ� ������ �� 1���� ������ �ֵ��� ����.@[���ֹ��� �����̾� ��ũ 1��]@[�ູ�� �ó������� ��¹��� 1��]@[�ູ�� Ƽ�Ÿ 1��]@[�ູ�� ������ ���� 1��]@[�뷯�� ���� 1��]@[���۳����� 1��]@[�Ϲ� �ް��� 5��]@�׸��� �̺�Ʈ�� ����� ������ �⼮ üũ�� ���� ���� �� ������Դ� 100,000ĳ�ø� �� �����̴� ������ �⼮�ϽðԳ�.",22,"��! ���ݺ��� �⼮ �մϴ�!"




	elseif req == 22 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"Ÿ�̸� �ϸ��� ���� ������ �����մϴ�."

		else
			SetSwitchCurTime(cnum, 405) -- �⼮üũ ���� �ð� ����
			AddSwitchCount(cnum, 406, 1) -- �⼮üũ ���� Ȯ��
			AddSwitchCount(cnum, 407, 1) -- �⼮üũ ���� Ƚ�� Ȯ��
			AddSwitchCount(cnum, 408, 1) -- �⼮üũ 10ȸ ������ ���� Ȯ�ο�
			AddItemCount(cnum, 8213, 1)
			return 1,0,"Ÿ�̸� �ϸ��� ���޹޾ҽ��ϴ�."
		end





	
	elseif req == 32 then
		GetTime = GetSwitchTime(cnum, 405)
		Today	= GetCurrentTime()


		if Today - GetTime >= 7200 then
--		if Today - GetTime >= 60 then
			if GetItemCount(cnum, 8213, 0) < 1 and GetItemCount(cnum, 8213, 2) < 1 then
				return 2,0,"��.. 2�ð� ���� ������ �߱�. üũ �Ϸ�Ǿ���. ��.. �⼮ üũ�� Ÿ�̸Ӹ� �ٽ� �� �״�.. ��� ������ ������?",42,"�׳�~"


			else
				return 2,0,"Ÿ�̸� �ϸ��� �ð��� ��� ���� �������� ������� �ٽ� ã�ƿ��Գ�.",52,"�׷���. �����~"
				

			end

		
		else
			return 2,0,"������ �⼮ üũ �� �ڷ� ���� 2�ð��� ������ �ʾұ�. 2�ð��� ���� ������ üũ�� �� �� ������. �⼮ üũ Ÿ�̸��� �ð��� ��� ���� �������� ������� �ٽ� ã�ƿ��Գ�.",52,"�׷���. �����~"



		end



	elseif req == 33 then
		Time = GetSwitchCount(cnum, 407)
		return 2,0,"�⼮ Ƚ�� Ȯ���ΰ�..? ��.. �ڳ״� ���� �� ["..Time.."ȸ ] �⼮ �ߴٳ�. ��� ������ ������?",62,"�׳�~"

		




	elseif req == 42 then
		if GetSwitchCount(cnum, 408) < 9 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"���ο� Ÿ�̸� �ϸ��� ���� ������ �����մϴ�."


			else
				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- �⼮üũ ���� �ð� �� ����
				AddSwitchCount(cnum, 407, 1) -- �⼮üũ Ƚ�� Ȯ��
				AddSwitchCount(cnum, 408, 1) -- �⼮üũ 10ȸ Ȯ�ο�
				return 1,0,"���ο� Ÿ�̸� �ϸ��� ���޹޾ҽ��ϴ�."

			end


		else
			if GetRemainPocket(cnum) < 2 then
				return 1,0,"���ο� Ÿ�̸� �ϸ��� �⼮ üũ 10ȸ ���� �������� ���� ������ �����մϴ�."


			else

				random = SetRandom(cnum, 1, 100)


				if random <= 2 then
					AddItemCount(cnum, 1027, 1)


				elseif random >= 3 and random <= 4 then
					AddItemCount(cnum, 874, 1)


				elseif random >= 5 and random <= 6 then
					AddItemCount(cnum, 3708, 1)


				elseif random >= 7 and random <= 8 then
					AddItemCount(cnum, 3316, 1)


				elseif random >= 9 and random <= 88 then
					AddItemCount(cnum, 4491, 5)


				elseif random >= 89 and random <= 89 then
					AddItemCount(cnum, 3501, 1)


				elseif random >= 90 and random <= 90 then
					AddItemCount(cnum, 1333, 1)


				elseif random >= 91 and random <= 100 then
					AddItemCount(cnum, 80, 1)


				else
					return 0
		
				end

				AddItemCount(cnum, 8213, 1)
				SetSwitchCurTime(cnum, 405) -- �⼮üũ ���� �ð� �� ����
				SetSwitchCount(cnum, 408, 0) -- 10ȸ üũ �ʱ�ȭ
				AddSwitchCount(cnum, 407, 1) -- �⼮üũ Ƚ�� Ȯ��
				return 1,0,"���ο� Ÿ�̸� �ϸ��� 10ȸ ���� �������� ���޹޾ҽ��ϴ�."
				

			end	

		end		







	elseif req == 52 then
		return 0
					




	elseif req == 62 then
		return 0





	else
		return 0

	end
end