function NPC_QUEST_661(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"������ ���� ������?"

			else
				return 2,0,"������ ���� ������?",101,"������ �ɺθ� �Խ��ϴ�."

			end

		else
			return 1,0,"��ſ� �ð� ��������~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		else
			return 2,0,"��ӳ�? Ȥ�� �̰� ������? ��.. ����� �� �����̸� �þƿ��ô� ���̱���? �̾߱�� ���� ������ϴ�. ���� �� Ű��̳׿�. �׷���, �� ���������? ��? ������ ������ ���´ٰ��? ���.. ������������~ ���� �������~ ��.. ���� �ʹ� ��å����.. ȣȣ �˼ۿ�.",2,"�ູ�غ��� ���׿�. ���� ��������."


		end
		

	elseif req == 2 then
		return 3,0,"�����̴� ���� ���� �ǳ׿�. �׸��� ����� ���� �� �������.. ������ �ٽ� �����ֱ� ������ �� �༮���� �ޱ�� �� �׷��׿�. �� ������ �������� ������ ������ ��� ������..����� ������ �ñ⵵�� �Ҳ���. �����̸� ������ �ּŵ� �ǰ�, �׳� ��� �þƼ� Ű��ŵ� ���ƿ�.",12,"�ƴϿ�, ��Ų� �帱����.",13,"�׷����? �׷�, ���� ����."




	elseif req == 12 then
		return 3,0,"���� �׷��ôٸ�, ���� �� Ű�ﲲ��. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������. ���ֹ��� �����̾� ��ũ 1��, �ູ�� �ó��� ��¹��� 1��, �����ǿ��� 2�� �Դϴ�.. �� ������ ���������?",22,"��! ���� �����մϴ�!",23,"��ø�.. ���� �� �غ�����."




	elseif req == 13 then
		return 3,0,"��.. �׷��� �ϼ���. ������ �༮.. ���� ����� �����ϴ� �� �ϳ׿�. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������.. ������ ���� 2�� �Դϴ�. �� ������ ���������?",32,"��! ���� �����մϴ�!",33,"��ø�.. ���� �� �غ�����."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 4ĭ�� �־�� �մϴ�."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 2ĭ�� �־�� �մϴ�."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end




function NPC_QUEST_662(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"������ ���� ������?"

			else
				return 2,0,"������ ���� ������?",101,"������ �ɺθ� �Խ��ϴ�."

			end

		else
			return 1,0,"��ſ� �ð� ��������~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		else
			return 2,0,"��ӳ�? Ȥ�� �̰� ������? ��.. ����� �� �����̸� �þƿ��ô� ���̱���? �̾߱�� ���� ������ϴ�. ���� �� Ű��̳׿�. �׷���, �� ���������? ��? ������ ������ ���´ٰ��? ���.. ������������~ ���� �������~ ��.. ���� �ʹ� ��å����.. ȣȣ �˼ۿ�.",2,"�ູ�غ��� ���׿�. ���� ��������."


		end
		

	elseif req == 2 then
		return 3,0,"�����̴� ���� ���� �ǳ׿�. �׸��� ����� ���� �� �������.. ������ �ٽ� �����ֱ� ������ �� �༮���� �ޱ�� �� �׷��׿�. �� ������ �������� ������ ������ ��� ������..����� ������ �ñ⵵�� �Ҳ���. �����̸� ������ �ּŵ� �ǰ�, �׳� ��� �þƼ� Ű��ŵ� ���ƿ�.",12,"�ƴϿ�, ��Ų� �帱����.",13,"�׷����? �׷�, ���� ����."




	elseif req == 12 then
		return 3,0,"���� �׷��ôٸ�, ���� �� Ű�ﲲ��. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������. ���ֹ��� �����̾� ��ũ 1��, �ູ�� �ó��� ��¹��� 1��, �����ǿ��� 2�� �Դϴ�.. �� ������ ���������?",22,"��! ���� �����մϴ�!",23,"��ø�.. ���� �� �غ�����."




	elseif req == 13 then
		return 3,0,"��.. �׷��� �ϼ���. ������ �༮.. ���� ����� �����ϴ� �� �ϳ׿�. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������.. ������ ���� 2�� �Դϴ�. �� ������ ���������?",32,"��! ���� �����մϴ�!",33,"��ø�.. ���� �� �غ�����."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 4ĭ�� �־�� �մϴ�."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 2ĭ�� �־�� �մϴ�."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end



function NPC_QUEST_663(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"������ ���� ������?"

			else
				return 2,0,"������ ���� ������?",101,"������ �ɺθ� �Խ��ϴ�."

			end

		else
			return 1,0,"��ſ� �ð� ��������~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		else
			return 2,0,"��ӳ�? Ȥ�� �̰� ������? ��.. ����� �� �����̸� �þƿ��ô� ���̱���? �̾߱�� ���� ������ϴ�. ���� �� Ű��̳׿�. �׷���, �� ���������? ��? ������ ������ ���´ٰ��? ���.. ������������~ ���� �������~ ��.. ���� �ʹ� ��å����.. ȣȣ �˼ۿ�.",2,"�ູ�غ��� ���׿�. ���� ��������."


		end
		

	elseif req == 2 then
		return 3,0,"�����̴� ���� ���� �ǳ׿�. �׸��� ����� ���� �� �������.. ������ �ٽ� �����ֱ� ������ �� �༮���� �ޱ�� �� �׷��׿�. �� ������ �������� ������ ������ ��� ������..����� ������ �ñ⵵�� �Ҳ���. �����̸� ������ �ּŵ� �ǰ�, �׳� ��� �þƼ� Ű��ŵ� ���ƿ�.",12,"�ƴϿ�, ��Ų� �帱����.",13,"�׷����? �׷�, ���� ����."




	elseif req == 12 then
		return 3,0,"���� �׷��ôٸ�, ���� �� Ű�ﲲ��. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������. ���ֹ��� �����̾� ��ũ 1��, �ູ�� �ó��� ��¹��� 1��, �����ǿ��� 2�� �Դϴ�.. �� ������ ���������?",22,"��! ���� �����մϴ�!",23,"��ø�.. ���� �� �غ�����."




	elseif req == 13 then
		return 3,0,"��.. �׷��� �ϼ���. ������ �༮.. ���� ����� �����ϴ� �� �ϳ׿�. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������.. ������ ���� 2�� �Դϴ�. �� ������ ���������?",32,"��! ���� �����մϴ�!",33,"��ø�.. ���� �� �غ�����."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 4ĭ�� �־�� �մϴ�."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 2ĭ�� �־�� �մϴ�."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end




function NPC_QUEST_664(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"������ ���� ������?"

			else
				return 2,0,"������ ���� ������?",101,"������ �ɺθ� �Խ��ϴ�."

			end

		else
			return 1,0,"��ſ� �ð� ��������~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		else
			return 2,0,"��ӳ�? Ȥ�� �̰� ������? ��.. ����� �� �����̸� �þƿ��ô� ���̱���? �̾߱�� ���� ������ϴ�. ���� �� Ű��̳׿�. �׷���, �� ���������? ��? ������ ������ ���´ٰ��? ���.. ������������~ ���� �������~ ��.. ���� �ʹ� ��å����.. ȣȣ �˼ۿ�.",2,"�ູ�غ��� ���׿�. ���� ��������."


		end
		

	elseif req == 2 then
		return 3,0,"�����̴� ���� ���� �ǳ׿�. �׸��� ����� ���� �� �������.. ������ �ٽ� �����ֱ� ������ �� �༮���� �ޱ�� �� �׷��׿�. �� ������ �������� ������ ������ ��� ������..����� ������ �ñ⵵�� �Ҳ���. �����̸� ������ �ּŵ� �ǰ�, �׳� ��� �þƼ� Ű��ŵ� ���ƿ�.",12,"�ƴϿ�, ��Ų� �帱����.",13,"�׷����? �׷�, ���� ����."




	elseif req == 12 then
		return 3,0,"���� �׷��ôٸ�, ���� �� Ű�ﲲ��. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������. ���ֹ��� �����̾� ��ũ 1��, �ູ�� �ó��� ��¹��� 1��, �����ǿ��� 2�� �Դϴ�.. �� ������ ���������?",22,"��! ���� �����մϴ�!",23,"��ø�.. ���� �� �غ�����."




	elseif req == 13 then
		return 3,0,"��.. �׷��� �ϼ���. ������ �༮.. ���� ����� �����ϴ� �� �ϳ׿�. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������.. ������ ���� 2�� �Դϴ�. �� ������ ���������?",32,"��! ���� �����մϴ�!",33,"��ø�.. ���� �� �غ�����."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 4ĭ�� �־�� �մϴ�."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 2ĭ�� �־�� �մϴ�."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end




function NPC_QUEST_665(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"������ ���� ������?"

			else
				return 2,0,"������ ���� ������?",101,"������ �ɺθ� �Խ��ϴ�."

			end

		else
			return 1,0,"��ſ� �ð� ��������~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		else
			return 2,0,"��ӳ�? Ȥ�� �̰� ������? ��.. ����� �� �����̸� �þƿ��ô� ���̱���? �̾߱�� ���� ������ϴ�. ���� �� Ű��̳׿�. �׷���, �� ���������? ��? ������ ������ ���´ٰ��? ���.. ������������~ ���� �������~ ��.. ���� �ʹ� ��å����.. ȣȣ �˼ۿ�.",2,"�ູ�غ��� ���׿�. ���� ��������."


		end
		

	elseif req == 2 then
		return 3,0,"�����̴� ���� ���� �ǳ׿�. �׸��� ����� ���� �� �������.. ������ �ٽ� �����ֱ� ������ �� �༮���� �ޱ�� �� �׷��׿�. �� ������ �������� ������ ������ ��� ������..����� ������ �ñ⵵�� �Ҳ���. �����̸� ������ �ּŵ� �ǰ�, �׳� ��� �þƼ� Ű��ŵ� ���ƿ�.",12,"�ƴϿ�, ��Ų� �帱����.",13,"�׷����? �׷�, ���� ����."




	elseif req == 12 then
		return 3,0,"���� �׷��ôٸ�, ���� �� Ű�ﲲ��. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������. ���ֹ��� �����̾� ��ũ 1��, �ູ�� �ó��� ��¹��� 1��, �����ǿ��� 2�� �Դϴ�.. �� ������ ���������?",22,"��! ���� �����մϴ�!",23,"��ø�.. ���� �� �غ�����."




	elseif req == 13 then
		return 3,0,"��.. �׷��� �ϼ���. ������ �༮.. ���� ����� �����ϴ� �� �ϳ׿�. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������.. ������ ���� 2�� �Դϴ�. �� ������ ���������?",32,"��! ���� �����մϴ�!",33,"��ø�.. ���� �� �غ�����."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 4ĭ�� �־�� �մϴ�."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 2ĭ�� �־�� �մϴ�."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end




function NPC_QUEST_666(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"������ ���� ������?"

			else
				return 2,0,"������ ���� ������?",101,"������ �ɺθ� �Խ��ϴ�."

			end

		else
			return 1,0,"��ſ� �ð� ��������~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		else
			return 2,0,"��ӳ�? Ȥ�� �̰� ������? ��.. ����� �� �����̸� �þƿ��ô� ���̱���? �̾߱�� ���� ������ϴ�. ���� �� Ű��̳׿�. �׷���, �� ���������? ��? ������ ������ ���´ٰ��? ���.. ������������~ ���� �������~ ��.. ���� �ʹ� ��å����.. ȣȣ �˼ۿ�.",2,"�ູ�غ��� ���׿�. ���� ��������."


		end
		

	elseif req == 2 then
		return 3,0,"�����̴� ���� ���� �ǳ׿�. �׸��� ����� ���� �� �������.. ������ �ٽ� �����ֱ� ������ �� �༮���� �ޱ�� �� �׷��׿�. �� ������ �������� ������ ������ ��� ������..����� ������ �ñ⵵�� �Ҳ���. �����̸� ������ �ּŵ� �ǰ�, �׳� ��� �þƼ� Ű��ŵ� ���ƿ�.",12,"�ƴϿ�, ��Ų� �帱����.",13,"�׷����? �׷�, ���� ����."




	elseif req == 12 then
		return 3,0,"���� �׷��ôٸ�, ���� �� Ű�ﲲ��. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������. ���ֹ��� �����̾� ��ũ 1��, �ູ�� �ó��� ��¹��� 1��, �����ǿ��� 2�� �Դϴ�.. �� ������ ���������?",22,"��! ���� �����մϴ�!",23,"��ø�.. ���� �� �غ�����."




	elseif req == 13 then
		return 3,0,"��.. �׷��� �ϼ���. ������ �༮.. ���� ����� �����ϴ� �� �ϳ׿�. �׷��� �� ���� ����ϽŰ� ������ �ڱ׸��� �������� ������ �帱����. ������.. ������ ���� 2�� �Դϴ�. �� ������ ���������?",32,"��! ���� �����մϴ�!",33,"��ø�.. ���� �� �غ�����."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 4ĭ�� �־�� �մϴ�."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"������ �Ǵ� ������� ��������� �����ϴ�."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"���� �������� ���� ������ �����մϴ�. �κ��丮�� ���������� �ּ� 2ĭ�� �־�� �մϴ�."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end