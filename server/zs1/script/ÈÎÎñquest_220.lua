function NPC_QUEST_295(cnum,reqNumber) 
	local req = reqNumber

 	if req == 1 then
	    	return 1, 0,"��������ǰ��һȺ����Ϯ����Ů����������˹����ʥ�ף����������Ů�������������Ľ�ָ����������������ҵ��ҵı������㵽�׸������������Ҿ����ӳ�������(X:127 Y: 161)��"
     	end
  	return 0
end

function NPC_QUEST_263(cnum,reqNumber) 

 	local req = reqNumber
	
 	if req == 1 then
		if GetSwitchCount(cnum, 1016) < 1 then
			if GetSwitchCount(cnum, 1015) < 1 then
		    		return 2,0,"������ǰ;�����������Ǿ����ӳ������أ�Ů�������Ѿ�������Ϯ���������ǣ����ڳ�ʱ��ĺ�ƽ��ʿ���Ǳ�ú�ɢ���ˡ���������ҵ�ף�����������Ҿͻ����1000GP��Ϊ������ץס�����������ӥ���ܵõ�", 12, "�ðɣ��һ�����㡣"
			 else
				return 2,0,"���ҵ���ף����������", 2, "�ǵ�"
			end
		 else
			return 1,0,"��л���İ�������̫�в��ˡ�������Ӧ�õ���˹����ʪ��ȥ�������(X:214, Y:165)"
		end
	 elseif req == 12 then
		
		if GetHeroLv(cnum,1) < 6 then        
			return 1,0,"����Ҫ־Ը�ߣ�����������ȱ���˶�������ﵽ6�������ڻ�����"
		end
	 
		StartQuest(cnum, 104)
		AddSwitchCount(cnum, 1015, 1)
		return 1,0,"�ã��������㡣ף����ˡ�"
 	 elseif req == 2 then
		if GetItemCount(cnum,178,0) == 0 then
			return 1,0,"������������Լ���Ҫ��ʲô��������Ե����Ļ���½ǵġ����񡱰�ť"
		end
		if GetSwitchCount(cnum, 3) < 1 then
			--AddMoney(cnum,1000) 
			AddSwitchCount(cnum,3,1) 
			AddSwitchCount(cnum, 1016, 1)
			EndQuest(cnum, 104)
			return 1,0,"�ö���������С���ӣ�����Ҫ�������������Ե���˹����ʪ��ȥ�������(X:214, Y:165)��������취�������"
		 else
			return 0	
		end
	end
	return 0
end

function NPC_QUEST_220(cnum,reqNumber) 

local req = reqNumber
	if req == 1 then
		if GetSwitchCount(cnum, 1018) < 1 then		
		     	if GetSwitchCount(cnum,3) == 0 then
				return 1,0,"���ܰ������𣿲����ڴ�֮ǰ��Ӧ�õ��׸������������Ҿ����ӳ�������(X:127 Y: 161)"
			 elseif GetSwitchCount(cnum, 1017) < 1 then
			    	return 2,0,"������������Ŷ��л��л�أ�Ů����������һ����Ǵ̴��������͵�ߵģ����Ƕ�����˵����̫ǿ���ˡ��Ҹ���1000GP��������ܰ��Ұ����һ����Ļ���", 12, "����һ������ס�������ʿ"
			 else
				return 2,0,"���ҵ���Ů���������", 2, "�ǵ�"
			end
		 else
			return 1,0,"лл������˵��ά��Ҳ��Ҫ�������������������ںڶ�˹����ڣ�X��227��Y��62����"
		end
	elseif req == 12 then
		if GetHeroLv(cnum,1) < 6 then
			return 1,0,"�Բ�������Ҫ����һ����ʿ��������һ��С���ޡ�����ĵȼ��ﵽ6��������������"
		end
		StartQuest(cnum, 105)
		AddSwitchCount(cnum, 1017, 1)
		return 1,0,"�Ǻǣ�������ų�������ң�"
	elseif req == 2 then
		if GetItemCount(cnum,179,0) == 0 then
			return 1,0,"����Ҫ��İ����ҵ�Ů���������ץס�̴�������߾��ܵõ��������ˣ�"
		end
		if GetSwitchCount(cnum, 4) < 1 then
			--AddMoney(cnum,1000) 
			AddSwitchCount(cnum,4,1) 
			AddSwitchCount(cnum,1018, 1)
			EndQuest(cnum, 105)
			return 1,0,"�ǳ���л�㣡��Ҫ������һ�����;ͺ��ˡ������㵽�ڶ�˹������Ҿ�������ά�°�(X:227, Y:62)������Ҫ��İ�����"
		 else
			return 0
		end
 	end	
	return 0
end

function NPC_QUEST_217(cnum,reqNumber) 

local req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 1020) < 1 then		
			if GetSwitchCount(cnum,3) == 0 then
				return 1,0,"��������ֵ�࣬���ܸ����˽�̸��������������µĻ�������Ҫ���׸������������Ҿ����ӳ�������˵һ��"
			elseif GetSwitchCount(cnum,4) == 0 then 
				return 1,0,"Ŷ����Ҫ��������˹����ʪ��ȥ�������(X:214, Y:165)��������Ҫ����"
			elseif GetSwitchCount(cnum, 1019) < 1 then
				return 2,0,"Ŷ������һ�������˰ɣ�����Ұɣ��ұ����﹥�������ˣ�����Ҫ�о���Ľ�ָ����Ȭ����ץס�������ͺ������������ҵ���ָ�������һ�����", 12, "�õģ�û������"
			else
				return 2,0,"���ҵ��˾���Ľ�ָ��", 2, "�ҵ���"
			end
		else
			return 1,0,"Terima kasih telah menyelamatkanku! Kini temui Cherrish (X:47 Y:158) yang berada di Rudis. Dia akan memberimu Blessing of Goddess."
		end
	elseif req == 12 then
		if GetHeroLv(cnum,1) < 6 then
			return 1,0,"лл��ĺ��⣬���������ڵ�������Ҫ���һؾ���Ľ�ָ�Ǻ��ѵģ�����Ҫ�������������ĸ�ǿ�ﵽ6����������ܰ�������"
		end
		StartQuest(cnum, 106)
		AddSwitchCount(cnum, 1019, 1)
		return 1,0,"���...�ҵ�����Խ��Խ����"
	 elseif req == 2 then
		if GetItemCount(cnum,180,0) == 0 then
			return 1,0,"�����Ҿ���Ľ�ָ��лл����"
		end
		if GetSwitchCount(cnum, 5) < 1 then
		    --AddMoney(cnum,1000) 
			AddSwitchCount(cnum,5,1) 
			AddSwitchCount(cnum, 1020, 1)
			EndQuest(cnum, 106)
			return 1,0,"Ŷ��лл�㣬�Ҹо��ö��ˣ��������ҵ�����������������ȥ��³��˹�Ľ�������X��47 Y��158���ɣ����������Ů���ף���ġ�"
		 else
			return 0
		end
 	end	
	return 0
end

function NPC_QUEST_296(cnum,reqNumber) 
	local resultmsg,req,itemname1,itemname2,itemname3,id1,id2,id3,count1,count2,count3

  itemname1 = "ף��������"
  itemname2 = "Ů�������"
  itemname3 = "����Ľ�ָ"

	id1 = 178 
	id2 = 179
	id3 = 180

    req = reqNumber

    if req == 1 then
   	 	return 2, 0,"�ޣ�̫�¸��ˣ����һ������е�ʥ��治�����ţ��һ����Ů�����15�����Ե��", 2, "�ǵģ��Ҷ��һ�����"
    elseif req == 2 then
		if GetSwitchCount(cnum,6) > 0 then
			return 1,0, "Ů���ף���Ѿ�������15�����Ե�"
		end
		count1 = GetItemCount(cnum,id1,0)
		if count1 == 0 then 
			resultmsg = itemname1 
		end
		
		count2 = GetItemCount(cnum,id2,0)
		if count2 == 0 then 
			if resultmsg == nil then 
				resultmsg = itemname2 
			 else 
				resultmsg = resultmsg..","..itemname2
			end
		end
		count3 = GetItemCount(cnum,id3,0)
		if count3 == 0 then
			if resultmsg == nil then 
				resultmsg = itemname3 
			 else 
				resultmsg = resultmsg..","..itemname3
			end
		end
		if resultmsg ~= nil then
			return 1,0, "����û�д���" .. resultmsg
		 end
		    AddItemCount(cnum,id1,-count1)
		    AddItemCount(cnum,id2,-count2)
		    AddItemCount(cnum,id3,-count3)
       		--AddHeroFreePoint(cnum,15)
	        AddSwitchCount(cnum,6,1) 
	        return 1,0,"����Ů���ܹ������㡪���������ʿ���ˣ�"
	end 			
	return 0
end