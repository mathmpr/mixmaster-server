function NPC_QUEST_756(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"[�κ��丮]�� ���ڶ��ϴ�. �ּ��� 3ĭ �̻� [�κ��丮]�� ����� �־�� �մϴ�."
		else
			if GetSwitchCount(cnum, 521) > 0 then
				if GetSwitchCount(cnum, 528) < 1 then
					return 2,0,"�ѹ��� ���� ���� �� ������ ������ �޺��� ��¦ ������.",2,"�ݴ´�"
				else
					return 1,0,"�̹� ��¦���� ���������� �ֱ� ������ �ʿ����. ��¦���� ���������� �Ƹ������� ������ ����!"
				end
			else	
				return 1,0,"����� ���������̴�."
			end
		end				

	elseif req == 2 then
		SetSwitchCount(cnum, 528, 1)
		AddItemCount(cnum, 8502, 1)
		return 1,0,"[��¦���� ��������]�� �����Ͽ���."

	end


end	

function NPC_QUEST_768(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"[�κ��丮]�� ���ڶ��ϴ�. �ּ��� 3ĭ �̻� [�κ��丮]�� ����� �־�� �մϴ�."
		else
			if GetSwitchCount(cnum, 521) > 0 then
				if GetSwitchCount(cnum, 528) < 1 then
					return 2,0,"�ѹ��� ���� ���� �� ������ ������ �޺��� ��¦ ������.",2,"�ݴ´�"
				else
					return 1,0,"�̹� ��¦���� ���������� �ֱ� ������ �ʿ����. ��¦���� ���������� �Ƹ������� ������ ����!"
				end
			else	
				return 1,0,"����� ���������̴�."
			end
		end				

	elseif req == 2 then
		SetSwitchCount(cnum, 528, 1)
		AddItemCount(cnum, 8502, 1)
		return 1,0,"[��¦���� ��������]�� �����Ͽ���."

	end

end

function NPC_QUEST_780(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"[�κ��丮]�� ���ڶ��ϴ�. �ּ��� 3ĭ �̻� [�κ��丮]�� ����� �־�� �մϴ�."
		else
			if GetSwitchCount(cnum, 521) > 0 then
				if GetSwitchCount(cnum, 528) < 1 then
					return 2,0,"�ѹ��� ���� ���� �� ������ ������ �޺��� ��¦ ������.",2,"�ݴ´�"
				else
					return 1,0,"�̹� ��¦���� ���������� �ֱ� ������ �ʿ����. ��¦���� ���������� �Ƹ������� ������ ����!"
				end
			else	
				return 1,0,"����� ���������̴�."
			end
		end				

	elseif req == 2 then
		SetSwitchCount(cnum, 528, 1)
		AddItemCount(cnum, 8502, 1)
		return 1,0,"[��¦���� ��������]�� �����Ͽ���."

	end
end

function NPC_QUEST_792(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"[�κ��丮]�� ���ڶ��ϴ�. �ּ��� 3ĭ �̻� [�κ��丮]�� ����� �־�� �մϴ�."
		else
			if GetSwitchCount(cnum, 521) > 0 then
				if GetSwitchCount(cnum, 528) < 1 then
					return 2,0,"�ѹ��� ���� ���� �� ������ ������ �޺��� ��¦ ������.",2,"�ݴ´�"
				else
					return 1,0,"�̹� ��¦���� ���������� �ֱ� ������ �ʿ����. ��¦���� ���������� �Ƹ������� ������ ����!"
				end
			else	
				return 1,0,"����� ���������̴�."
			end
		end				

	elseif req == 2 then
		SetSwitchCount(cnum, 528, 1)
		AddItemCount(cnum, 8502, 1)
		return 1,0,"[��¦���� ��������]�� �����Ͽ���."

	end

end

-----------------------------------------------------------------------


function NPC_QUEST_745(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end


function NPC_QUEST_746(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end

function NPC_QUEST_747(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end

function NPC_QUEST_748(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end

function NPC_QUEST_749(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end

function NPC_QUEST_750(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end

function NPC_QUEST_751(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end


function NPC_QUEST_752(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end

function NPC_QUEST_753(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end

function NPC_QUEST_754(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."

	end
end

function NPC_QUEST_755(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."

	end
end

--------------------------------------------------------------------------------------------------------------------
function NPC_QUEST_757(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."

	end
end

function NPC_QUEST_758(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_759(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_760(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_761(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_762(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_763(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_764(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_765(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_766(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_767(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_769(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_770(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_771(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_772(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_773(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_774(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_775(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_776(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_777(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_778(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_779(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_781(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_782(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_783(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_784(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_785(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_786(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_787(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_788(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_789(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_790(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end
function NPC_QUEST_791(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� ���� ����� ���������̴�."
	end
end

--------------------------------------------------------------------------------------------------------
function NPC_QUEST_793(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_794(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_795(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_796(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_797(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_798(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_799(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_800(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_801(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_802(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_803(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_804(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_805(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_806(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_807(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_808(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_809(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_810(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_811(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_812(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_813(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_814(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_815(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_816(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_817(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_818(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_819(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_820(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_821(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_822(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_823(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_824(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_825(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_826(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_827(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_828(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_829(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_830(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_831(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_832(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_833(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_834(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_835(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_836(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_837(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_838(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_839(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end
function NPC_QUEST_840(cnum,reqNumber) -- �͸����η��� ��������

req = reqNumber

	if req == 1 then
		return 1,0,"���� �� �ʿ䰡 ���� �� ����."
	end
end


