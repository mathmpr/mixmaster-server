function NPC_QUEST_696(cnum, reqNumber) -- �������� ����

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 409) < 1 then
			return 3,0,"�����.. ��ø�.. Ȥ��..?",2,"��?",3,"�⳪ ������ ���� ����"


		else
			if GetItemCount(cnum, 1261, 0) < 1 then
				return 2,0,"��? ������ �Ͻ÷���..",72,"����.. ��ø� �־����."

			
			else
				if GetSwitchCount(cnum, 410) < 1 then
					return 2,0,"���? �̰� ������?",82,"����.. ��Ӵ� ��������."

				else
					return 2,0,"��ӳ�.. �� ���̳׿�.",112,"����.. ��Ӵ� ��������."

				end


			end

		end


	elseif req == 2 then
		return 2,0,"�ƴϿ�.. �˼��ؿ�.@�ʹ� ��ҳ׿�.@���� ���� �𸣰�..",12,"�� ��ƿ�?"


	
	elseif req == 12 then
		return 2,0,"3����.. �Ҿ���� ����.. (����)@�˼��ؿ�.@�ʸ鿡 �Ƿʰ� ���ҳ׿�.",22,"�������ϴ�. ���� ���ε���?"




	elseif req == 22 then
		return 2,0,"������ ���̰� �ϳ� �־����.@���� �ƺ��� ������ ����@���ư��ð�, �� ������ ��������@���� ��̰� ��Ȱ�� �ϰ�@�־���ϴ�.@�׷���.. 3���� ���� ��..@��ȭ�Ӵ� ������Ÿ ����@���͵��� ħ���� �־�����.@���̿� ���� �������� �� ������@�������� ���ϰ� �־��µ�,@���͵��� ħ���� ��� ����@���� ��Ÿ������ �־���.@��Ƴ��� ���� ������ ���� ���@���ž��� ���� ���� ������ ����..@���� ū ����� �ް� ������@�Ҿ���ϴ�.@��� ���� ������� ����@������� �ǳ��� ���� �ִ�����.",32,"���̴�?"



	elseif req == 32 then
		return 2,0,"(���ڱ� ������ ��Ʈ����..)@������ �������� ���̴� �������.@�ǳ��ؿ� ���� ��� ���@�� �ôٰ� �ϴ�����.@���͵��� ������ ���� ��@��Ÿ���� ���͸� ����������@������ ������ ã�� ����@��������. (����~)@������, �и��� ���� ��� �ִ°�@���� �� �־��.@���� ���� ������ ���� �����̳���@���� �����׿�.",42,"����.. �и��� ��������ſ���."



	elseif req == 42 then
		return 2,0,"���� ���� �ٻڽ� ���� �����@�������� �̾߱⸦ �߳׿�.@�˼��ؿ�. (��½)",52,"�������ϴ�. ��ø���."



	elseif req == 52 then
		return 2,0,"(��Ӵϰ� ���̸� ��ô�̳� ����@�;��ϴ±�..�����̶� ��ڰ�@�ص帮�� ������..@��ũ��Ÿ�� �ִ� ���� �ư�����@ī���̼��� ������ ������شٰ�@�ϴ���..@�켱 �ű⸦ �����߰ڱ�)",62,"��Ӵ�.. ���⼭ ��ø� �輼��."



	elseif req == 62 then
		AddSwitchCount(cnum, 409, 1)



	elseif req == 82 then
		return 2,0,"�̰��� �� ������?@��? �� ���� ����̶���?",92,"����� ���̰��ϴ�..(����~)"



	elseif req == 92 then
		return 2,0,"��ӳ� ���� ������.@�� ���� ���̰� ���� �;� �׻�@����ߴµ�..����� �Ѱ�@�������׿�. ^^@������ �츮 ���̰� ���� ì���ִ�@���� �ְ���? ^^@���� ���� ��������.@��.. ���..@�츮 ���̰� ������ ����ϴ�@�͵��� �ִµ�.. ��������@��� �帱����.",102,"��! �����մϴ�.(����!)"



	elseif req == 102 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ���� �������� ���� ������ �����ϴ�."


		else
			random = SetRandom(cnum, 1, 100)

			if random <= 6 then
				AddItemCount(cnum, 4512, 1)


			elseif random >= 7 and random <= 7 then
				AddItemCount(cnum, 874, 1)


			elseif random >= 8 and random <= 8 then
				AddItemCount(cnum, 3318, 1)


			elseif random >= 9 and random <= 9 then
				AddItemCount(cnum, 3316, 1)


			elseif random >= 10 and random <= 10 then
				AddItemCount(cnum, 1333, 1)


			elseif random >= 11 and random <= 20 then
				AddItemCount(cnum, 80, 3)


			elseif random >= 20 and random <= 100 then
				AddItemCount(cnum, 4491, 10)


			else
				return 0
			
			end

			AddItemCount(cnum, 1261, -1)
			AddSwitchCount(cnum, 410, 1)
			return 1,0,"��.. ^^@���п� ���� ����� ���������.@�����ε� ���� ã�ƿ�����. ^^"

		end






	elseif req == 112 then
		return 2,0,"ȣȣ.. �� �� �̷��� ��.. ^^@���� �������� ������ ����@�ϳ� �帱����.@��ſ� �Ϸ� �Ǽ���. ^^",113,"��! �� �ǰ��ϼ���~"



	
	elseif req == 113 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� ���� �������� ���� ������ �����ϴ�."


		else
			random = SetRandom(cnum, 1, 100)

			if random <= 6 then
				AddItemCount(cnum, 4512, 1)


			elseif random >= 7 and random <= 7 then
				AddItemCount(cnum, 874, 1)


			elseif random >= 8 and random <= 8 then
				AddItemCount(cnum, 3318, 1)


			elseif random >= 9 and random <= 9 then
				AddItemCount(cnum, 3316, 1)


			elseif random >= 10 and random <= 10 then
				AddItemCount(cnum, 1333, 1)


			elseif random >= 11 and random <= 20 then
				AddItemCount(cnum, 80, 3)


			elseif random >= 20 and random <= 100 then
				AddItemCount(cnum, 4491, 10)


			else
				return 0
			
			end

			AddItemCount(cnum, 1261, -1)


		end


	else
		return 0


	end
end




function NPC_QUEST_697(cnum, reqNumber) -- ���� �ư���

req = reqNumber

	if req == 1 then
		return 2,0,"�׳�~ �������.@���� ��Ḧ �������ø�@���� ������ ���������.@���� �Ϸ� ���̳���?",2,"ī���̼��� ��������."


	elseif req == 2 then
		return 2,0,"ī���̼��� ������ ���� ��ᰡ@�ʿ��ϴ�ϴ�.@@[���� 10��]@[�ٱ� 10��]@[2,000GP]@@���� ���͵��� ����ϴٺ���@������ ���� ������ ��@�����ſ���.@��Ḧ ���� 10���� �������ø�@ī���̼� 1���̸� ���������.",12,"������ּ���."




	elseif req == 12 then
		if GetItemCount(cnum, 1256, 0) < 10 or GetItemCount(cnum, 1257, 0) < 10 or GetMoney(cnum) < 2000 then
			return 2,0,"��ᰡ �����ϱ���.@ī���̼� 1���̸� ������� ������@���� ��ᰡ �ʿ��ؿ�.@@[���� 10��]@[�ٱ� 10��]@[2,000GP]@@�׷�, �����~ ^^",22,"�׳�~"


		else
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"�κ��丮�� [ī���̼�]�� ���� ������ �����մϴ�."


			else
				return 2,0,"��ᰡ ����ϱ���.@��~ ���� ī���̼� 1���� ��������.@��.. �׸��� ���������� �����Ϸ���@�� ���� ����ǿ��� ����ø� �˴ϴ�.",32,"�����մϴ�."


			end

		end


	elseif req == 32 then
		AddItemCount(cnum, 1256, -10)
		AddItemCount(cnum, 1257, -10)
		AddMoney(cnum, -2000)
		AddItemCount(cnum, 1258, 1)



	else
		return 0
		
	
	end
end





function NPC_QUEST_698(cnum, reqNumber) -- �����

req = reqNumber

	if req == 1 then
		return 2,0,"�׳�~ �������.@���� �� ���� ���� ������̶��@�մϴ�.@������ ���Ͻʴϱ�?",2,"ī���̼� ���� ��.."



	elseif req == 2 then
		return 2,0,"ī���̼� ������ ������ ���� @��ᰡ �ʿ��ϴ�ϴ�.@@[ī���̼� 10����]@[������ 1��]@[�������� 1��]@[2,000GP]@@�غ� �Ǽ̳���?@[ī���̼�]�� �� ����@'���� �ư���'����@���Ͻø� �ǰ��.@[������]�� [��������]�� ������ �ִ�@'��ȭ����'���� ������ �� �ֽ��ϴ�.",12,"������ּ���."



	elseif req == 12 then
		if GetItemCount(cnum, 1258, 0) < 10 or GetItemCount(cnum, 1259, 0) < 1 or GetItemCount(cnum, 1260, 0) < 1 or GetMoney(cnum) < 2000 then
			return 2,0,"��ᰡ �����ϱ���.@ī���̼� ������ ������ ����@��ᰡ �ʿ��ϴ�ϴ�.@@[ī���̼� 10����]@[������ 1��]@[�������� 1��]@[2,000GP]@@�������� �ֳ� ���캸����~@[ī���̼�]�� �� ����@'���� �ư���'����@���Ͻø� �ǰ��.@[������]�� [��������]�� ������ �ִ�@'��ȭ����'���� ������ �� �ֽ��ϴ�.@�׷�, �����~ ^^",22,"�׳�~"


		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�κ��丮�� [����� ��������]�� ���� ������ �����մϴ�."



		else
			AddItemCount(cnum, 1258, -10)
			AddItemCount(cnum, 1259, -1)		
			AddItemCount(cnum, 1260, -1)
			AddMoney(cnum, -2000)
			AddItemCount(cnum, 1261, 1)
			return 1,0,"��ᰡ ����ϱ���.@��~ ���� [����� ��������]��@��������.@���� �������� �𸣰�����..@���� �����ϰڴ°ɿ�? ^^"


		end


	else
		return 0

	end
end













		