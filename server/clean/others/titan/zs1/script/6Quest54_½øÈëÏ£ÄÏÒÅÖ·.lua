function NPC_QUEST_300(cnum,reqNumber) ---

req = reqNumber
Lv = GetHeroLv(cnum)

if req == 1 then
	return 2,0,"oh~",2,"[������ϣ����ַ���]"

	elseif req == 2 then
    if Lv > 49 and Lv < 199 then --> �˻�
      MoveZone(cnum,116,254)
        else --> �ƴҰ��
      return 1,0,"�ȼ����ܵ���LV.50"
		end
	end
	end


function NPC_QUEST_271(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 215 ) < 1 then
			return 2,0,"�ף�����Ҫʲô�������ں�æ��û��ʱ����������ĺ����棬�뿪�ҵ�����",2,"��֪�������������"
    elseif GetSwitchCount(cnum, 215 ) == 2 then
			return 2,0,"��������������������������",3,"�ǵ�"
		else
			return 4,0,"���ҵ������е���Ƭ����",32,"�ǵģ��ҵ���.",33,"û��",34,"������Ϣ"
		end
	elseif req == 2 then
		return 2,0,"����ô֪���ģ��ҵ����ѿ�������ҵ�һ������Ҳ��ܸ��㣬������������Ҫ������һ��Ҫ����",12,"ʲô��"

  elseif req == 3 then
		if GetItemCount(cnum, 4363, 0) < 1 then
			return 2,0,"�Ҹ�����������������ռ�10����֮��Ƭ��20��������Ƭ����ô��������������",22,"һ��"
		else
			return 1,0,"�����ˣ��´�������"
		end
	elseif req == 12 then
		return 2,0,"����Ե�������������˹��ɭ�֡��ž�������ɱ���������ǵ������֮��Ƭ10����������Ƭ20��",22,"�õģ��һ�ġ�"
	elseif req == 22 then
		EndQuest(cnum, 167)
		SetSwitchCount(cnum, 215, 1)
		StartQuest(cnum, 166)	
	elseif req == 32 then
		if GetItemCount(cnum, 4361, 0) < 10 and GetItemCount(cnum, 4362, 0) < 20 then
			return 1,0,"��ȷ������������е���Ƭ�ˣ�"
		else		
			EndQuest(cnum, 166)
			StartQuest(cnum, 167)
			SetSwitchCount(cnum, 215, 2)
			AddItemCount(cnum, 4361, -10)
			AddItemCount(cnum, 4362, -20)
			AddItemCount(cnum, 4363, 1)	
			return 1,0,"�ţ����ҵ������ˡ� OK�����Ǹ�����������������������ʱ�ޣ�24Сʱ֮������ʧ���������Ҫ�Ŀ����ٻ�������"
		end
	elseif req == 34 then
		return 1,0,"����Ե�������������˹��ɭ�֡��ž�������ɱ���������ǵ������֮��Ƭ10����������Ƭ20��."
	else
		return 0
	end
end