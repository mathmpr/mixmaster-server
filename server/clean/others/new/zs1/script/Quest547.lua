function NPC_QUEST_985(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..������ �����ڸ��� ù ��° ������� �Ǿ���..."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���谡�� �ذ��̴�..������ �����ڸ��� ù ��° ������� �Ǿ���..."
			end
		end
	end
end

function NPC_QUEST_986(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..���� ���谡�� ��Ͽ��� �׾���."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���谡�� �ذ��̴�..���� ���谡�� ��Ͽ��� �׾���."
			end
		end
	end
end

function NPC_QUEST_987(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�..���� ���� ���� 7�� ������ ���� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�..���� ���� ���� 7�� ������ ���� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_988(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_989(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"������ �ٽ����� ���谡�� �ذ��̴�..���¸� �˾ƺ��⵵ �����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"������ �ٽ����� ���谡�� �ذ��̴�..���¸� �˾ƺ��⵵ �����."
			end
		end
	end
end

function NPC_QUEST_990(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_991(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 3,0,"���׶�..���׶�..��....��..��𼱰� �������� ���ϴ� �Ҹ��� �鸮�� �� ����.",2,"�� ��￩ ����.",3,"�׳� ����."
		elseif GetSwitchCount(cnum, 530) == 1 then
			return 1,0,"�..���� �Ƹ���׿���...������ ������..."
		elseif GetSwitchCount(cnum, 530) == 2 then
			return 2,0,"Ȥ�� ���� �Ƹ���׸� ������?..",12,"��"
		elseif GetSwitchCount(cnum, 530) == 3 then
			return 1,0,"�Ƹ���׸� ����ϴ� �ȶ��� �ذ��̴�."
		end



	elseif req == 2 then
		return 3,0,"��..����..�밨�� �뷯��..����� ��� ���Գ�..�� ���� ������..�� ���� ���� ġ�����̶��..����� �ôٰ� �� ���� ��..",4,"��..",5,"�Ű� ���� ������."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		return 3,0,"���� �ϳ� �����ϱ�..�� �ʿ��� ��Ź�ϳ��� �ص� �ɱ�..",6,"������?",5,"�ƴϿ�"

	elseif req == 5 then
		return 1,0,"�ƹ�ư ������.."

	elseif req == 6 then
		return 2,0,"����..�� ���� �ɰ��ϴ�..�����ϰ� ���� ��...",8,"��.."

	elseif req == 8 then
		return 2,0,"�� ������� ��...�׷��ϱ� �� �������� ������ ������ ã�Ƽ� ������ �Ǹ�...�׳࿡�� ���ܿԴ� ���� ����� ����Ϸ��� ����...������...��..��...",9,"�׷�����.."

	elseif req == 9 then
		return 2,0,"�� �׳�..���� �Ƹ��ٿ�..���� �Ƹ���׵� �� ������ ���Դٰ� ������ �� �߾�..�� ���� ��򰡿� �ִ� �׳��� ����..�� �� �� ��° �հ����� ���� ����� ������ ������..��Ź�̾�..",10,"��.."

	elseif req == 10 then
		return 2,0,"��...��..���� ����! ������ ���� �� �� �׳డ ���� ������ ���̴��� ������ �ٽÿͼ� ���� ��..��..��! �׳�� �񰨱Ⱑ �� �ɷ��� ������ �� ��ī���� �θ��� �ٳ�����..ã�µ� ������ �� �ž�..",11,"��"

	elseif req == 11 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�������� �ޱ����� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."
		else
			AddItemCount(cnum, 8515, 1)
			SetSwitchCount(cnum, 530, 1) -- ����Ʈ ����
			StartQuest(cnum, 186)
			return 1,0,"[�ȶ��� ����� ������ �޾ҽ��ϴ�.]"
		end

	elseif req == 12 then
		return 2,0,"��....! ����� �ϴ���?!",13,"����Ѵٰ� ���ش޷���"

	elseif req == 13 then
		return 2,0,"����?! ��...��..���� ����!!",14,"�׸��� �� �����ڴ���..."

	elseif req == 14 then
		return 2,0,"����...���� ������ �׳࿡�� ������ ���� �׳ฦ ã�� �� �������� ����...! ���� ����...",15,"��.."

	elseif req == 15 then
		return 2,0,"[�ȶ��� �ذ��� ������ ��¦�̴� ������ �����ϰ� ������ �ٴ����� ���������ϴ�.]",16,"�ݴ´�.."

	elseif req == 16 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�������� �ޱ����� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."
		else
			random = SetRandom(cnum, 1, 8)
			if random == 1 then
				AddItemCount(cnum, 875, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� �û��� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 2 then
				AddItemCount(cnum, 876, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ����� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 3 then
				AddItemCount(cnum, 877, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ������ ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 4 then
				AddItemCount(cnum, 878, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ���� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 5 then
				AddItemCount(cnum, 879, 5)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ��ø�� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 6 then
				AddItemCount(cnum, 880, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ��Ȯ�� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 7 then
				AddItemCount(cnum, 881, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ����� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 8 then
				AddItemCount(cnum, 882, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ������ ���� ȹ���Ͽ����ϴ�.]"

			else
				return 0
			end



		end
	end	

end



function NPC_QUEST_992(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� �Ҿ� �����ڱ��� �� �� ������ �ذ��̴�."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� �Ҿ� �����ڱ��� �� �� ������ �ذ��̴�."
			end
		end
	end
end

function NPC_QUEST_993(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�ذ��� ���� 1�ù����� ����Ű�� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�ذ��� ���� 1�ù����� ����Ű�� �� ����."
			end
		end
	end
end

function NPC_QUEST_994(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ� --�Ƹ����

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 1,0,"������ ���� ���� �� �� ���谡�� �ذ��̴�"
		else
			if GetSwitchCount(cnum, 530) == 1 then
				return 3,0,"�� �Ͼ� ��ī�� ���� ���� �ִ� �ذ��̴�.",2,"�ڼ��� ���캻��",3,"������ �д�"
			else
				return 1,0,"�ȶ��� ����ϴ� �Ƹ������ �ذ��̴�."
			end
		end

	elseif req == 2 then
		return 2,0,"��ī���� �Ƹ���׶�� �̸��� �����ִ�.",4,"�հ����� ������ ���ش�."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		AddItemCount(cnum, 8515, -1)
		return 2,0,"�״�� �����Ű���?",5,"�ȶɴԲ��� �����ż�.."

	elseif req == 5 then
		return 2,0,"�ȶ�!.....������..���� �׵� ���� ����ϰ� �־�����..���� ���� �ȶ��� ���� ����ϰ� �־����..������ �̷��� ������ �����ִٴ�..�ȶɿ��� ����Ѵٰ� �����ּ��� �׸��� �� �����ڰ�~",6,"��.."

	elseif req == 6 then
		SetSwitchCount(cnum, 530, 2)


	end
end

function NPC_QUEST_995(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� ������ ġ�� �� �� ���谡�� �ذ��̴�..���� ���� 6�� ������ ����Ű�� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� ������ ġ�� �� �� ���谡�� �ذ��̴�..���� ���� 6�� ������ ����Ű�� �� ����."
			end
		end
	end
end

function NPC_QUEST_996(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�� ã�⸦ �����ߴ��� �� ����� ���� �ɾ� ���� ���谡�� �ذ��̴�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�� ã�⸦ �����ߴ��� �� ����� ���� �ɾ� ���� ���谡�� �ذ��̴�.."
			end
		end
	end
end

function NPC_QUEST_997(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�̰��� �ƴ϶�� �� ������ Xǥ�ø� �ϸ� ���� ���谡�� �ذ��̴�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"�̰��� �ƴ϶�� �� ������ Xǥ�ø� �ϸ� ���� ���谡�� �ذ��̴�.."
			end
		end
	end
end

function NPC_QUEST_998(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� ���� 5�� ������ ����Ű�� �ִ�."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� ���� 5�� ������ ����Ű�� �ִ�."
			end
		end
	end
end

function NPC_QUEST_999(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..���ϰ� ���� �� �ϴ�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"���谡�� �ذ��̴�..���ϰ� ���� �� �ϴ�.."
			end
		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NPC_QUEST_1000(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..������ �����ڸ��� ù ��° ������� �Ǿ���..."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���谡�� �ذ��̴�..������ �����ڸ��� ù ��° ������� �Ǿ���..."
			end
		end
	end
end

function NPC_QUEST_1001(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..���� ���谡�� ��Ͽ��� �׾���."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���谡�� �ذ��̴�..���� ���谡�� ��Ͽ��� �׾���."
			end
		end
	end
end

function NPC_QUEST_1002(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�..���� ���� ���� 7�� ������ ���� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�..���� ���� ���� 7�� ������ ���� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_1003(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_1004(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"������ �ٽ����� ���谡�� �ذ��̴�..���¸� �˾ƺ��⵵ �����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"������ �ٽ����� ���谡�� �ذ��̴�..���¸� �˾ƺ��⵵ �����."
			end
		end
	end
end

function NPC_QUEST_1005(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_1006(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 3,0,"���׶�..���׶�..��....��..��𼱰� �������� ���ϴ� �Ҹ��� �鸮�� �� ����.",2,"�� ��￩ ����.",3,"�׳� ����."
		elseif GetSwitchCount(cnum, 530) == 1 then
			return 1,0,"�..���� �Ƹ���׿���...������ ������..."
		elseif GetSwitchCount(cnum, 530) == 2 then
			return 2,0,"Ȥ�� ���� �Ƹ���׸� ������?..",12,"��"
		elseif GetSwitchCount(cnum, 530) == 3 then
			return 1,0,"�Ƹ���׸� ����ϴ� �ȶ��� �ذ��̴�."
		end



	elseif req == 2 then
		return 3,0,"��..����..�밨�� �뷯��..����� ��� ���Գ�..�� ���� ������..�� ���� ���� ġ�����̶��..����� �ôٰ� �� ���� ��..",4,"��..",5,"�Ű� ���� ������."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		return 3,0,"���� �ϳ� �����ϱ�..�� �ʿ��� ��Ź�ϳ��� �ص� �ɱ�..",6,"������?",5,"�ƴϿ�"

	elseif req == 5 then
		return 1,0,"�ƹ�ư ������.."

	elseif req == 6 then
		return 2,0,"����..�� ���� �ɰ��ϴ�..�����ϰ� ���� ��...",8,"��.."

	elseif req == 8 then
		return 2,0,"�� ������� ��...�׷��ϱ� �� �������� ������ ������ ã�Ƽ� ������ �Ǹ�...�׳࿡�� ���ܿԴ� ���� ����� ����Ϸ��� ����...������...��..��...",9,"�׷�����.."

	elseif req == 9 then
		return 2,0,"�� �׳�..���� �Ƹ��ٿ�..���� �Ƹ���׵� �� ������ ���Դٰ� ������ �� �߾�..�� ���� ��򰡿� �ִ� �׳��� ����..�� �� �� ��° �հ����� ���� ����� ������ ������..��Ź�̾�..",10,"��.."

	elseif req == 10 then
		return 2,0,"��...��..���� ����! ������ ���� �� �� �׳డ ���� ������ ���̴��� ������ �ٽÿͼ� ���� ��..��..��! �׳�� �񰨱Ⱑ �� �ɷ��� ������ �� ��ī���� �θ��� �ٳ�����..ã�µ� ������ �� �ž�..",11,"��"

	elseif req == 11 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�������� �ޱ����� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."
		else
			AddItemCount(cnum, 8515, 1)
			SetSwitchCount(cnum, 530, 1) -- ����Ʈ ����
			StartQuest(cnum, 186)
			return 1,0,"[�ȶ��� ����� ������ �޾ҽ��ϴ�.]"
		end

	elseif req == 12 then
		return 2,0,"��....! ����� �ϴ���?!",13,"����Ѵٰ� ���ش޷���"

	elseif req == 13 then
		return 2,0,"����?! ��...��..���� ����!!",14,"�׸��� �� �����ڴ���..."

	elseif req == 14 then
		return 2,0,"����...���� ������ �׳࿡�� ������ ���� �׳ฦ ã�� �� �������� ����...! ���� ����...",15,"��.."

	elseif req == 15 then
		return 2,0,"[�ȶ��� �ذ��� ������ ��¦�̴� ������ �����ϰ� ������ �ٴ����� ���������ϴ�.]",16,"�ݴ´�.."

	elseif req == 16 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�������� �ޱ����� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."
		else
			random = SetRandom(cnum, 1, 8)
			if random == 1 then
				AddItemCount(cnum, 875, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� �û��� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 2 then
				AddItemCount(cnum, 876, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ����� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 3 then
				AddItemCount(cnum, 877, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ������ ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 4 then
				AddItemCount(cnum, 878, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ���� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 5 then
				AddItemCount(cnum, 879, 5)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ��ø�� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 6 then
				AddItemCount(cnum, 880, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ��Ȯ�� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 7 then
				AddItemCount(cnum, 881, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ����� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 8 then
				AddItemCount(cnum, 882, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ������ ���� ȹ���Ͽ����ϴ�.]"

			else
				return 0
			end



		end
	end

end



function NPC_QUEST_1007(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� �Ҿ� �����ڱ��� �� �� ������ �ذ��̴�."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� �Ҿ� �����ڱ��� �� �� ������ �ذ��̴�."
			end
		end
	end
end

function NPC_QUEST_1008(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�ذ��� ���� 1�ù����� ����Ű�� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�ذ��� ���� 1�ù����� ����Ű�� �� ����."
			end
		end
	end
end

function NPC_QUEST_1009(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ� --�Ƹ����

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 1,0,"������ ���� ���� �� �� ���谡�� �ذ��̴�"
		else
			if GetSwitchCount(cnum, 530) == 1 then
				return 3,0,"�� �Ͼ� ��ī�� ���� ���� �ִ� �ذ��̴�.",2,"�ڼ��� ���캻��",3,"������ �д�"
			else
				return 1,0,"�ȶ��� ����ϴ� �Ƹ������ �ذ��̴�."
			end
		end

	elseif req == 2 then
		return 2,0,"��ī���� �Ƹ���׶�� �̸��� �����ִ�.",4,"�հ����� ������ ���ش�."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		AddItemCount(cnum, 8515, -1)
		return 2,0,"�״�� �����Ű���?",5,"�ȶɴԲ��� �����ż�.."

	elseif req == 5 then
		return 2,0,"�ȶ�!.....������..���� �׵� ���� ����ϰ� �־�����..���� ���� �ȶ��� ���� ����ϰ� �־����..������ �̷��� ������ �����ִٴ�..�ȶɿ��� ����Ѵٰ� �����ּ��� �׸��� �� �����ڰ�~",6,"��.."

	elseif req == 6 then
		SetSwitchCount(cnum, 530, 2)


	end
end

function NPC_QUEST_1010(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� ������ ġ�� �� �� ���谡�� �ذ��̴�..���� ���� 6�� ������ ����Ű�� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� ������ ġ�� �� �� ���谡�� �ذ��̴�..���� ���� 6�� ������ ����Ű�� �� ����."
			end
		end
	end
end

function NPC_QUEST_1011(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�� ã�⸦ �����ߴ��� �� ����� ���� �ɾ� ���� ���谡�� �ذ��̴�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�� ã�⸦ �����ߴ��� �� ����� ���� �ɾ� ���� ���谡�� �ذ��̴�.."
			end
		end
	end
end

function NPC_QUEST_1012(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�̰��� �ƴ϶�� �� ������ Xǥ�ø� �ϸ� ���� ���谡�� �ذ��̴�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"�̰��� �ƴ϶�� �� ������ Xǥ�ø� �ϸ� ���� ���谡�� �ذ��̴�.."
			end
		end
	end
end

function NPC_QUEST_1013(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� ���� 5�� ������ ����Ű�� �ִ�."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� ���� 5�� ������ ����Ű�� �ִ�."
			end
		end
	end
end

function NPC_QUEST_1014(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..���ϰ� ���� �� �ϴ�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"���谡�� �ذ��̴�..���ϰ� ���� �� �ϴ�.."
			end
		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NPC_QUEST_1015(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..������ �����ڸ��� ù ��° ������� �Ǿ���..."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���谡�� �ذ��̴�..������ �����ڸ��� ù ��° ������� �Ǿ���..."
			end
		end
	end
end

function NPC_QUEST_1016(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..���� ���谡�� ��Ͽ��� �׾���."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���谡�� �ذ��̴�..���� ���谡�� ��Ͽ��� �׾���."
			end
		end
	end
end

function NPC_QUEST_1017(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�..���� ���� ���� 7�� ������ ���� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�..���� ���� ���� 7�� ������ ���� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_1018(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_1019(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"������ �ٽ����� ���谡�� �ذ��̴�..���¸� �˾ƺ��⵵ �����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"������ �ٽ����� ���谡�� �ذ��̴�..���¸� �˾ƺ��⵵ �����."
			end
		end
	end
end

function NPC_QUEST_1020(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_1021(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 3,0,"���׶�..���׶�..��....��..��𼱰� �������� ���ϴ� �Ҹ��� �鸮�� �� ����.",2,"�� ��￩ ����.",3,"�׳� ����."
		elseif GetSwitchCount(cnum, 530) == 1 then
			return 1,0,"�..���� �Ƹ���׿���...������ ������..."
		elseif GetSwitchCount(cnum, 530) == 2 then
			return 2,0,"Ȥ�� ���� �Ƹ���׸� ������?..",12,"��"
		elseif GetSwitchCount(cnum, 530) == 3 then
			return 1,0,"�Ƹ���׸� ����ϴ� �ȶ��� �ذ��̴�."
		end



	elseif req == 2 then
		return 3,0,"��..����..�밨�� �뷯��..����� ��� ���Գ�..�� ���� ������..�� ���� ���� ġ�����̶��..����� �ôٰ� �� ���� ��..",4,"��..",5,"�Ű� ���� ������."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		return 3,0,"���� �ϳ� �����ϱ�..�� �ʿ��� ��Ź�ϳ��� �ص� �ɱ�..",6,"������?",5,"�ƴϿ�"

	elseif req == 5 then
		return 1,0,"�ƹ�ư ������.."

	elseif req == 6 then
		return 2,0,"����..�� ���� �ɰ��ϴ�..�����ϰ� ���� ��...",8,"��.."

	elseif req == 8 then
		return 2,0,"�� ������� ��...�׷��ϱ� �� �������� ������ ������ ã�Ƽ� ������ �Ǹ�...�׳࿡�� ���ܿԴ� ���� ����� ����Ϸ��� ����...������...��..��...",9,"�׷�����.."

	elseif req == 9 then
		return 2,0,"�� �׳�..���� �Ƹ��ٿ�..���� �Ƹ���׵� �� ������ ���Դٰ� ������ �� �߾�..�� ���� ��򰡿� �ִ� �׳��� ����..�� �� �� ��° �հ����� ���� ����� ������ ������..��Ź�̾�..",10,"��.."

	elseif req == 10 then
		return 2,0,"��...��..���� ����! ������ ���� �� �� �׳డ ���� ������ ���̴��� ������ �ٽÿͼ� ���� ��..��..��! �׳�� �񰨱Ⱑ �� �ɷ��� ������ �� ��ī���� �θ��� �ٳ�����..ã�µ� ������ �� �ž�..",11,"��"

	elseif req == 11 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�������� �ޱ����� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."
		else
			AddItemCount(cnum, 8515, 1)
			SetSwitchCount(cnum, 530, 1) -- ����Ʈ ����
			StartQuest(cnum, 186)
			return 1,0,"[�ȶ��� ����� ������ �޾ҽ��ϴ�.]"
		end

	elseif req == 12 then
		return 2,0,"��....! ����� �ϴ���?!",13,"����Ѵٰ� ���ش޷���"

	elseif req == 13 then
		return 2,0,"����?! ��...��..���� ����!!",14,"�׸��� �� �����ڴ���..."

	elseif req == 14 then
		return 2,0,"����...���� ������ �׳࿡�� ������ ���� �׳ฦ ã�� �� �������� ����...! ���� ����...",15,"��.."

	elseif req == 15 then
		return 2,0,"[�ȶ��� �ذ��� ������ ��¦�̴� ������ �����ϰ� ������ �ٴ����� ���������ϴ�.]",16,"�ݴ´�.."

	elseif req == 16 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�������� �ޱ����� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."
		else
			random = SetRandom(cnum, 1, 8)
			if random == 1 then
				AddItemCount(cnum, 875, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� �û��� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 2 then
				AddItemCount(cnum, 876, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ����� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 3 then
				AddItemCount(cnum, 877, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ������ ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 4 then
				AddItemCount(cnum, 878, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ���� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 5 then
				AddItemCount(cnum, 879, 5)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ��ø�� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 6 then
				AddItemCount(cnum, 880, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ��Ȯ�� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 7 then
				AddItemCount(cnum, 881, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ����� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 8 then
				AddItemCount(cnum, 882, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ������ ���� ȹ���Ͽ����ϴ�.]"

			else
				return 0
			end



		end
	end	

end



function NPC_QUEST_1022(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� �Ҿ� �����ڱ��� �� �� ������ �ذ��̴�."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� �Ҿ� �����ڱ��� �� �� ������ �ذ��̴�."
			end
		end
	end
end

function NPC_QUEST_1023(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�ذ��� ���� 1�ù����� ����Ű�� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�ذ��� ���� 1�ù����� ����Ű�� �� ����."
			end
		end
	end
end

function NPC_QUEST_1024(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ� --�Ƹ����

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 1,0,"������ ���� ���� �� �� ���谡�� �ذ��̴�"
		else
			if GetSwitchCount(cnum, 530) == 1 then
				return 3,0,"�� �Ͼ� ��ī�� ���� ���� �ִ� �ذ��̴�.",2,"�ڼ��� ���캻��",3,"������ �д�"
			else
				return 1,0,"�ȶ��� ����ϴ� �Ƹ������ �ذ��̴�."
			end
		end

	elseif req == 2 then
		return 2,0,"��ī���� �Ƹ���׶�� �̸��� �����ִ�.",4,"�հ����� ������ ���ش�."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		AddItemCount(cnum, 8515, -1)
		return 2,0,"�״�� �����Ű���?",5,"�ȶɴԲ��� �����ż�.."

	elseif req == 5 then
		return 2,0,"�ȶ�!.....������..���� �׵� ���� ����ϰ� �־�����..���� ���� �ȶ��� ���� ����ϰ� �־����..������ �̷��� ������ �����ִٴ�..�ȶɿ��� ����Ѵٰ� �����ּ��� �׸��� �� �����ڰ�~",6,"��.."

	elseif req == 6 then
		SetSwitchCount(cnum, 530, 2)


	end
end

function NPC_QUEST_1025(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� ������ ġ�� �� �� ���谡�� �ذ��̴�..���� ���� 6�� ������ ����Ű�� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� ������ ġ�� �� �� ���谡�� �ذ��̴�..���� ���� 6�� ������ ����Ű�� �� ����."
			end
		end
	end
end

function NPC_QUEST_1026(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�� ã�⸦ �����ߴ��� �� ����� ���� �ɾ� ���� ���谡�� �ذ��̴�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�� ã�⸦ �����ߴ��� �� ����� ���� �ɾ� ���� ���谡�� �ذ��̴�.."
			end
		end
	end
end

function NPC_QUEST_1027(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�̰��� �ƴ϶�� �� ������ Xǥ�ø� �ϸ� ���� ���谡�� �ذ��̴�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"�̰��� �ƴ϶�� �� ������ Xǥ�ø� �ϸ� ���� ���谡�� �ذ��̴�.."
			end
		end
	end
end

function NPC_QUEST_1028(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� ���� 5�� ������ ����Ű�� �ִ�."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� ���� 5�� ������ ����Ű�� �ִ�."
			end
		end
	end
end

function NPC_QUEST_1029(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..���ϰ� ���� �� �ϴ�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"���谡�� �ذ��̴�..���ϰ� ���� �� �ϴ�.."
			end
		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NPC_QUEST_1030(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..������ �����ڸ��� ù ��° ������� �Ǿ���..."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���谡�� �ذ��̴�..������ �����ڸ��� ù ��° ������� �Ǿ���..."
			end
		end
	end
end

function NPC_QUEST_1031(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..���� ���谡�� ��Ͽ��� �׾���."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���谡�� �ذ��̴�..���� ���谡�� ��Ͽ��� �׾���."
			end
		end
	end
end

function NPC_QUEST_1032(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�..���� ���� ���� 7�� ������ ���� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�..���� ���� ���� 7�� ������ ���� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_1033(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_1034(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"������ �ٽ����� ���谡�� �ذ��̴�..���¸� �˾ƺ��⵵ �����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"������ �ٽ����� ���谡�� �ذ��̴�..���¸� �˾ƺ��⵵ �����."
			end
		end
	end
end

function NPC_QUEST_1035(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�����濡�� ���� ���谡�� �ذ��̴�. ���� ���� ���� 11�ø� ����Ű�� �ִ� �� ����."
			end
		end
	end
end

function NPC_QUEST_1036(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 3,0,"���׶�..���׶�..��....��..��𼱰� �������� ���ϴ� �Ҹ��� �鸮�� �� ����.",2,"�� ��￩ ����.",3,"�׳� ����."
		elseif GetSwitchCount(cnum, 530) == 1 then
			return 1,0,"�..���� �Ƹ���׿���...������ ������..."
		elseif GetSwitchCount(cnum, 530) == 2 then
			return 2,0,"Ȥ�� ���� �Ƹ���׸� ������?..",12,"��"
		elseif GetSwitchCount(cnum, 530) == 3 then
			return 1,0,"�Ƹ���׸� ����ϴ� �ȶ��� �ذ��̴�."
		end



	elseif req == 2 then
		return 3,0,"��..����..�밨�� �뷯��..����� ��� ���Գ�..�� ���� ������..�� ���� ���� ġ�����̶��..����� �ôٰ� �� ���� ��..",4,"��..",5,"�Ű� ���� ������."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		return 3,0,"���� �ϳ� �����ϱ�..�� �ʿ��� ��Ź�ϳ��� �ص� �ɱ�..",6,"������?",5,"�ƴϿ�"

	elseif req == 5 then
		return 1,0,"�ƹ�ư ������.."

	elseif req == 6 then
		return 2,0,"����..�� ���� �ɰ��ϴ�..�����ϰ� ���� ��...",8,"��.."

	elseif req == 8 then
		return 2,0,"�� ������� ��...�׷��ϱ� �� �������� ������ ������ ã�Ƽ� ������ �Ǹ�...�׳࿡�� ���ܿԴ� ���� ����� ����Ϸ��� ����...������...��..��...",9,"�׷�����.."

	elseif req == 9 then
		return 2,0,"�� �׳�..���� �Ƹ��ٿ�..���� �Ƹ���׵� �� ������ ���Դٰ� ������ �� �߾�..�� ���� ��򰡿� �ִ� �׳��� ����..�� �� �� ��° �հ����� ���� ����� ������ ������..��Ź�̾�..",10,"��.."

	elseif req == 10 then
		return 2,0,"��...��..���� ����! ������ ���� �� �� �׳డ ���� ������ ���̴��� ������ �ٽÿͼ� ���� ��..��..��! �׳�� �񰨱Ⱑ �� �ɷ��� ������ �� ��ī���� �θ��� �ٳ�����..ã�µ� ������ �� �ž�..",11,"��"

	elseif req == 11 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�������� �ޱ����� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."
		else
			AddItemCount(cnum, 8515, 1)
			SetSwitchCount(cnum, 530, 1) -- ����Ʈ ����
			StartQuest(cnum, 186)
			return 1,0,"[�ȶ��� ����� ������ �޾ҽ��ϴ�.]"
		end

	elseif req == 12 then
		return 2,0,"��....! ����� �ϴ���?!",13,"����Ѵٰ� ���ش޷���"

	elseif req == 13 then
		return 2,0,"����?! ��...��..���� ����!!",14,"�׸��� �� �����ڴ���..."

	elseif req == 14 then
		return 2,0,"����...���� ������ �׳࿡�� ������ ���� �׳ฦ ã�� �� �������� ����...! ���� ����...",15,"��.."

	elseif req == 15 then
		return 2,0,"[�ȶ��� �ذ��� ������ ��¦�̴� ������ �����ϰ� ������ �ٴ����� ���������ϴ�.]",16,"�ݴ´�.."

	elseif req == 16 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[�κ��丮]�� ����á���ϴ�.@�������� �ޱ����� [�κ��丮]�� �ּ��� 1ĭ �̻� �־�� �մϴ�."
		else
			random = SetRandom(cnum, 1, 8)
			if random == 1 then
				AddItemCount(cnum, 875, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� �û��� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 2 then
				AddItemCount(cnum, 876, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ����� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 3 then
				AddItemCount(cnum, 877, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ������ ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 4 then
				AddItemCount(cnum, 878, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ���� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 5 then
				AddItemCount(cnum, 879, 5)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ��ø�� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 6 then
				AddItemCount(cnum, 880, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ��Ȯ�� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 7 then
				AddItemCount(cnum, 881, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ����� ���� ȹ���Ͽ����ϴ�.]"

			elseif random == 8 then
				AddItemCount(cnum, 882, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[�ູ�� ������ ���� ȹ���Ͽ����ϴ�.]"

			else
				return 0
			end



		end
	end	

end



function NPC_QUEST_1037(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� �Ҿ� �����ڱ��� �� �� ������ �ذ��̴�."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� �Ҿ� �����ڱ��� �� �� ������ �ذ��̴�."
			end
		end
	end
end

function NPC_QUEST_1038(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�ذ��� ���� 1�ù����� ����Ű�� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�ذ��� ���� 1�ù����� ����Ű�� �� ����."
			end
		end
	end
end

function NPC_QUEST_1039(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ� --�Ƹ����

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 1,0,"������ ���� ���� �� �� ���谡�� �ذ��̴�"
		else
			if GetSwitchCount(cnum, 530) == 1 then
				return 3,0,"�� �Ͼ� ��ī�� ���� ���� �ִ� �ذ��̴�.",2,"�ڼ��� ���캻��",3,"������ �д�"
			else
				return 1,0,"�ȶ��� ����ϴ� �Ƹ������ �ذ��̴�."
			end
		end

	elseif req == 2 then
		return 2,0,"��ī���� �Ƹ���׶�� �̸��� �����ִ�.",4,"�հ����� ������ ���ش�."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		AddItemCount(cnum, 8515, -1)
		return 2,0,"�״�� �����Ű���?",5,"�ȶɴԲ��� �����ż�.."

	elseif req == 5 then
		return 2,0,"�ȶ�!.....������..���� �׵� ���� ����ϰ� �־�����..���� ���� �ȶ��� ���� ����ϰ� �־����..������ �̷��� ������ �����ִٴ�..�ȶɿ��� ����Ѵٰ� �����ּ��� �׸��� �� �����ڰ�~",6,"��.."

	elseif req == 6 then
		SetSwitchCount(cnum, 530, 2)


	end
end

function NPC_QUEST_1040(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� ������ ġ�� �� �� ���谡�� �ذ��̴�..���� ���� 6�� ������ ����Ű�� �� ����."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� ������ ġ�� �� �� ���谡�� �ذ��̴�..���� ���� 6�� ������ ����Ű�� �� ����."
			end
		end
	end
end

function NPC_QUEST_1041(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�� ã�⸦ �����ߴ��� �� ����� ���� �ɾ� ���� ���谡�� �ذ��̴�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"�� ã�⸦ �����ߴ��� �� ����� ���� �ɾ� ���� ���谡�� �ذ��̴�.."
			end
		end
	end
end

function NPC_QUEST_1042(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"�̰��� �ƴ϶�� �� ������ Xǥ�ø� �ϸ� ���� ���谡�� �ذ��̴�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"�̰��� �ƴ϶�� �� ������ Xǥ�ø� �ϸ� ���� ���谡�� �ذ��̴�.."
			end
		end
	end
end

function NPC_QUEST_1043(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���� ���� 5�� ������ ����Ű�� �ִ�."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
				return 1,0,"���� ���� 5�� ������ ����Ű�� �ִ�."
			end
		end
	end
end

function NPC_QUEST_1044(cnum,reqNumber) -- �Ҹ����Ϲ�ϵ��� �ذ�

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"���谡�� �ذ��̴�..���ϰ� ���� �� �ϴ�.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"�뷯��! �� ���� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"�뷯��! �� ���� �ʹ� ���� ��޿�����! ���� �ʿ��� ������ �ְڴ�! �� �̻� ����� ���� �� ������ ������ �����⸦...."
			else
			return 1,0,"���谡�� �ذ��̴�..���ϰ� ���� �� �ϴ�.."
			end
		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------



