function NPC_QUEST_210(cnum,reqNumber)

local req, id1, id2, id3,count1,count2,count3
local req = reqNumber
local resultmsg,name1,name2,name3
id1=354
id2=355
id3=356
name1="��������Դ"
name2="�����Ĵ���"
name3="��������ʧ"


count1 = GetItemCount(cnum,354,0)

if count1 == 0 then
	resultmsg = name1
end

count2 = GetItemCount(cnum,355,0)

if count2 == 0 then
	if resultmsg == nil then
		resultmsg = name2
	else
		resultmsg = resultmsg..","..name2
	end
end

count3 = GetItemCount(cnum, 356,0)

if count3 == 0 then
	if resultmsg == nil then
		resultmsg = name3
	else
		resultmsg = resultmsg..","..name3
	end
end

	if req == 1 then
		if GetSwitchCount(cnum, 1000) < 1 then
        return 2, 0, "������ͨ������֮��������ʹ���ǵ���������׳��������ǲ�ȥ��ֹ�Ǻ�����������룬����˭�ܽ�����������", 2, "�������㣡"
		else
			if GetSwitchCount(cnum, 7) < 1 then
          return 2, 0, "������ռ�ȫ���е����ӣ�����������˸��������񣬿��Ե�����½ǡ����񡱰�ť�鿴", 12, "�õ�"
			else
            return 1, 0, "���Ѿ��ҵ����е����ӣ�����ȥ���׸�����������������֮�� (X: 125, Y:87)��"
			end
		end
	 elseif req == 2 then
      return 2, 0, "����Ц�ˣ����㣿�ðɣ��Ҹ��㽲�����£��ܾ���ǰ�������е�ʱ��żȻ������һ�����С��ɳ������ܡ����顣�������Ķ��Ȿ���ʱ���ҷ�����һ�����˵����ܡ�����", 3, "ʲô���ܣ�"
	 elseif req == 3 then
      return 2, 0, "һֱ���������Ƕ������Լ�����ķ������ĵ���������֮��������������֮�����������κ����˵Ĺ���ֻҪ�ص�����֮����Χ���ܺܿ�ĸ�ԭ�����һ����ĸ���ǿ��", 4, "�ۣ�̫�����ˣ�"
	 elseif req == 4 then
      return 2, 0, "û��! ������ǲ���ֹ������������׳����ô���ǽ��ᱻ������������������Ҫ������֮���Ի���Ҫ������ֹ����������ܰ�����", 5, "�һ����ģ�"
	 elseif req == 5 then
      return 2, 0, "��ô�¸ң��Ǻðɡ�����Ҫ������֮���Ի������Ǳ���Ҫ���м�������Ŷ�����������������ġ�����Ҫ�ռ�3�����ӣ������ռ������������ң��һ������������ô����", 6, "�õģ������ھ�ȥ"
	 elseif req == 6 then
		StartQuest(cnum, 1)
		AddSwitchCount(cnum, 1000, 1)
      return 1, 0, "̫���ˣ�������˵�ˣ���ץס��������������ʹ�۷䡢���򡢼�׳�Ļ����ܵõ���Ҫ��3������"
 	 elseif req == 12 then
		if resultmsg ~= nil then
        return 1, 0, "����û����Ʒ " .. resultmsg .. ""
		else
			if GetSwitchCount(cnum, 7) < 1 then
				AddSwitchCount(cnum, 7, 1)
				AddSwitchCount(cnum, 8, 1)
				--AddMoney(cnum, 3000)
				EndQuest(cnum, 1)
			end
        return 1, 0, "���ģ���̫���ˣ����Ѿ��ռ������е����ӡ�����˶�����������һ�㡣���ڣ������ڿ����������ˡ�ȥ�׸�����������������֮�� (X: 125, Y:87)�ɡ������������ӣ���Ϳ��Ժ����Ի��ˡ���Ϊ���㲻���ε�Ǹ�⣬�Ҹ���3000GP��Ϊ����"
		end
	 else
		return 0
	end
end