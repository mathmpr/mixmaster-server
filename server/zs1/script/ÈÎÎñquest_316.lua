function NPC_QUEST_316(cnum, reqNumber)

req = reqNumber

id1= 174
id2= 175
id3= 176
id4= 177

name1 = "��������ȥ�ĵ�ͼ"
name2 = "���������ڵĵ�ͼ"
name3 = "������δ���ĵ�ͼ"
name4 = "����������ĵ�ͼ"

targetitem = 170 -- ������

resultmsg=nil
        count1 = GetItemCount(cnum,id1,0)
        if count1 == 0 then
            resultmsg = name1
        end
        count2 = GetItemCount(cnum,id2,0)
        if count2 == 0 then
            if resultmsg == nil then
                resultmsg = name2
            else
                resultmsg = resultmsg..","..name2
            end
        end
        count3 = GetItemCount(cnum,id3,0)
        if count3 == 0 then
            if resultmsg == nil then
                resultmsg = name3
            else
                resultmsg = resultmsg..","..name3
            end
        end
        count4 = GetItemCount(cnum,id4,0)
        if count4 == 0 then
            if resultmsg == nil then
                resultmsg = name4
            else
                resultmsg = resultmsg..","..name4
            end
        end
	if req == 1 then
		if GetSwitchCount(cnum, 1026) < 1 then
			if GetSwitchCount(cnum, 1014) < 1 then
				return 2,0,"",2,"�һ�������"
			else
				return 2,0,"���ҵ������ŵ�ͼ����", 12, "�ǵ�"
			end
		else
			return 3,0,"�һ����㵽�������У�����Ҫȥ����", 3, "ȥ ������", 4, "ȥ ����³"
		end
	elseif req == 2 then
		StartQuest(cnum, 102)
		AddSwitchCount(cnum, 1014, 1)				
		return 1,0,"�һ�������"
	elseif req == 12 then
	        if resultmsg ~= nil then
	        	return 1,0, "����û��" .. resultmsg
	        end
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		AddItemCount(cnum,targetitem,1)
		AddSwitchCount(cnum, 2, 1)
		AddSwitchCount(cnum, 1026, 1)
		EndQuest(cnum, 102)
		return 1,0,"��ϲ�����Ѿ�֤������������������һ���ϸ����������"
    elseif req == 3 then
		if GetItemCount(cnum,targetitem,0) > 0  then 
			--AddSwitchCount(cnum,2,1)
			MoveZone(cnum,57,101)
			return 0
		else
			return 2,0,"���������", 5, "������������˵���е����ѵġ�"
		end
    elseif req == 4 then
		if GetItemCount(cnum,targetitem,0) > 0  then 
		--	AddSwitchCount(cnum,2,1)
			MoveZone(cnum,60,101)
			return 0
		else
			return 2,0,"���������", 6, "������������˵���е����ѵġ�"
		end
    elseif req == 5 then
		return 2,0,"���������ˣ���Ͳ����ٻ��������ˡ����Ҫ������", 7, "�ǵ�"
    elseif req == 6 then
		return 2,0,"���������ˣ���Ͳ����ٻ��������ˡ����Ҫ������", 8, "�ǵ�"
    elseif req == 7 then
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		AddSwitchCount(cnum,2,1)
		MoveZone(cnum,57,101)
		return 0
    elseif req == 8 then
		AddItemCount(cnum,id1,-count1)
		AddItemCount(cnum,id2,-count2)
		AddItemCount(cnum,id3,-count3)
		AddItemCount(cnum,id4,-count4)
		AddSwitchCount(cnum,2,1)
	    MoveZone(cnum,60,101)
		return 0
	end 				
end