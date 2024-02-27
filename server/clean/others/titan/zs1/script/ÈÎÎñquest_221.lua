function NPC_QUEST_221(cnum, reqNumber)

local resultmsg, itemname1, itemname2, itemname3, id1, id2, id3, count1, count2, count3

itemname1 = "�ɷ�İ���"
itemname2 = "�ɷ���ǻ�"
itemname3 = "�ɷ������"

id1 = 171
id2 = 172
id3 = 173

count1 = GetItemCount(cnum, id1,0)
count2 = GetItemCount(cnum, id2,0)
count3 = GetItemCount(cnum, id3,0)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1013) < 1 then
			return 2,0,"",2,"��һ��Ҫ�õ�����"
		else
			return 2,0,"��������Ҫ�Ķ�������", 12, "�ǵ�"
		end
	elseif req == 2 then
		AddSwitchCount(cnum, 1013, 1)
		StartQuest(cnum, 101)
		return 1,0,"����Ҫͻ�Ʒ�ӡ�ˣ���㣡"
	elseif req == 12 then
		if GetSwitchCount(cnum, 2) > 0 then
			return 1,0,"�Һܱ�Ǹ����������Ψһ�Ļ����ǣ���Ȼ��Σ�ա�"
		else
			if count1 <= 0 then
				return 1,0,"����û��"..itemname1..""
			elseif count2 <= 0 then
				return 1,0,"����û��"..itemname2..""
			elseif count3 <= 0 then
				return 1,0,"����û��"..itemname3..""
			else
				AddItemCount(cnum, id1, -count1)
				AddItemCount(cnum, id2, -count2)
				AddItemCount(cnum, id3, -count3)
				MoveZone(cnum, 69, 101)
				EndQuest(cnum, 101)
				return 0
			end
		end
	end
end


function NPC_QUEST_222(cnum, reqNumber)

local resultmsg, itemname1, itemname2, itemname3, id1, id2, id3, count1, count2, count3

itemname1 = "�ɷ�İ���"
itemname2 = "�ɷ���ǻ�"
itemname3 = "�ɷ������"

id1 = 171
id2 = 172
id3 = 173

count1 = GetItemCount(cnum, id1,0)
count2 = GetItemCount(cnum, id2,0)
count3 = GetItemCount(cnum, id3,0)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1013) < 1 then
			return 2,0,"",2,"��һ��Ҫ�õ�����"
		else
			return 2,0,"����������", 12, "�ǵ�"
		end
	elseif req == 2 then
		AddSwitchCount(cnum, 1013, 1)
		StartQuest(cnum, 101)
		return 1,0,"����Ҫͻ�Ʒ�ӡ�ˣ���㣡"
	elseif req == 12 then
		if GetSwitchCount(cnum, 2) > 0 then
			return 1,0,"�Һܱ�Ǹ����������Ψһ�Ļ����ǣ���Ȼ��Σ�ա�"
		else
			if count1 <= 0 then
				return 1,0,"����û��"..itemname1..""
			elseif count2 <= 0 then
				return 1,0,"����û��"..itemname2..""
			elseif count3 <= 0 then
				return 1,0,"����û��"..itemname3..""
			else
				AddItemCount(cnum, id1, -count1)
				AddItemCount(cnum, id2, -count2)
				AddItemCount(cnum, id3, -count3)
				MoveZone(cnum, 69, 101)
				EndQuest(cnum, 101)
				return 0
			end
		end
	end
end