 function NPC_QUEST_259(cnum,reqNumber) -- ������ ���� (���츣����)
	local req,id1,id2,id3,id4,count1,count2,count3,count4
	
	id1 = 361 --�� ��
	id2 = 363 --Ȳ�ݻ� ������
	id3 = 365 --������ ����
	id4 = 373 --����� ������
	
	Switch1 = GetSwitchCount(cnum, 1010)
	Switch2 = GetSwitchCount(cnum, 18)
	Switch3 = GetSwitchCount(cnum, 17)
	Switch4 = GetSwitchCount(cnum, 1005)
	Switch5 = GetSwitchCount(cnum, 19)

	local req = reqNumber

	if req == 1 then
		if Switch5 < 1 then
			if Switch1 < 1 then
				if Switch2 < 1 then
					if Switch3 < 1 then
						if Switch4 < 1 then
							return 2,0,"������֪������ý�����������ļ��䣬�����ҵ���������ᾧ��������������Ҫ�ҵ�����ᾧ��", 3, "�ǵ�"
						else
							if GetSwitchCount(cnum, 15) < 1 then
								return 2,0,"��������Ҷ�ʧ�Ľ�ָ��", 4, "�ǵ�"
							else
								return 1,0,"�ã������ǵڶ���ᾧ�ˡ������ȥ���ֿ�˹ƽԭȥ�Һ���(X��153 Y��93)����������Ѱ�Ҷ�ʧ����Ʒ"
							end
						end
					else
						return 2,0,"�㻹��ʲô������", 12, "����ȫ�Ҹ�"
					end
				else
					return 1,0,"�����ǻ�ɫ����ᾧ�ˣ�����Ƚ�����Ŷ���ţ�Ҳ����Ӧ�õ�ŷ�Ĳ�ԭȥ����Ƥ˹(X��106 Y��82)"
				end
			else
				return 2,0,"���ҵ���ϣ����Ȩ�ȣ�", 8, "�ǵ�"
			end
		else
			if GetSwitchCount(cnum,19) == 0 then
				return 1,0,"��û���ռ�ȫ��������ᾧ���Ҳ��ܸ������κ�����"
			end
			if GetItemCount(cnum,364,0) == 0 then  --������ ��������(364) 
				return 1,0,"û�к�ɫ����ᾧ"
			end
			if GetItemCount(cnum,370,0) == 0 then  --��Ȳ�� ��������(370) 
				return 1,0,"û�����ɫ����ᾧ"
			end
			if GetItemCount(cnum,374,0) == 0 then  --����� ��������(374)
				return 1,0,"û�л�ɫ����ᾧ"
			end
			return 1,0,"�㻹Ӧ��ȥ��һ���ƽ���ƿ����������ᾧ����ʧȥ��������������ƽ���ƿ����󣬲��������ҵ����㵽֥ʿ����ַȥ�Ҵ峤������(X��150 Y��95)����������������Ϣ��"
			
		end
	elseif req == 3 then
		if GetSwitchCount(cnum, 13) == 0 then
			return 1,0,"*** ��������֮ǰ, ����Ҫ���ڶ�˹�����ȥ�Ұ¶�(X��195��Y��76)"
		end
		if GetSwitchCount(cnum, 13) > 0 then
			return 2,0,"�Ҳ���һ���������ˣ�Ҫ�õ��ҵ����ᣬ������ʲô������ʹ�Ҹж����ᡣ��Ϊ�����Ϯ���ҵ�һ�������Ľ�ָ���ˣ�������ܰ����ҵ���������������Ϊ֮�ж���ץס֥ʿ����ַ��ţţ������ҵ��ҵĽ�ָ", 101, "��ȥ�һ�������"
		end
	elseif req == 101 then
		StartQuest(cnum, 6)
		AddSwitchCount(cnum, 1005, 1)
		return 1,0,"��Ȼ��ָ���˺ܶ����ˣ�����һ�����һ�������޵ĳ嶯"	
	elseif req == 4 then
		count1 = GetItemCount(cnum,id1,0)
		count2 = GetItemCount(cnum,id2,0)
		count3 = GetItemCount(cnum,id3,0)
		if GetSwitchCount(cnum, 13) == 0 then
			return 1,0,"��Ϊʲô��ȥ�Һڶ�˹����ڵİ¶�"
		end
		if GetSwitchCount(cnum, 15) > 0 then
			return 1,0,"���˺�ɫ����ᾧ����û��ʲô�������"
		end
		if GetItemCount(cnum,365, 0) == 0 then -- ������ ����
			return 1,0,"�ҵ��ҵĽ�ָ����"
		end
		if GetItemCount(cnum, 361, 0) == 0 then -- �� ��
			return 1,0,"��Ľ������أ�"
		end
		if GetItemCount(cnum, 363, 0) == 0 then --Ȳ�ݻ� ������
			return 1,0,"����������Ǻܳ����ġ��ƽ�������أ�"
		end
		--AddMoney(cnum,5000) 
		AddSwitchCount(cnum,15,1) -- ���� ���������� ���� ����ġ ��
		AddItemCount(cnum,id1,-count1) -- �� ��(361)
		AddItemCount(cnum,id2,-count2) --Ȳ�ݻ� ������(363)
		AddItemCount(cnum,id3,-count3) --������ ����(365)
		AddItemCount(cnum,364,1) --���� ��������(364)
		EndQuest(cnum, 6)
		return 1,0,"�ɵķǳ��ã����������ָ��һֱ���Ҷ�������ǵġ��ǳ���л�����Ǻ�ɫ����ᾧ�����и���5000GP������"
	elseif req == 12 then
		if GetSwitchCount(cnum, 17) < 1 then
			return 1,0,"�Ҳ�֪����Ϊʲô���������Ҫ����ȥ�����飬��Ϊʲô��ȥ���أ�"					
		elseif GetItemCount(cnum, 371, 0) < 1 then
			return 1,0,"�Ҳ�֪����Ϊʲô���������Ҫ������ҵ�ȫ�Ҹ��أ�"		
		else
			--AddMoney(cnum,10000)
			AddItemCount(cnum,370,1) -- ��Ȳ�� ��������(370)
			AddItemCount(cnum,371,-1)
			AddSwitchCount(cnum,18,1) -- ��Ȳ�� ���������� ���� ����ġ ��
			return 1,0,"���ҵ����ҵ�ȫ�Ҹ�����̫���Ҹж��ˣ�����Ȼ���ҿ����������Һܿ��֡�����������������ɫ����ᾧ��лл�㣬��ȻǮ����̫�࣬���ǻ���Ҫ����10000GP"
		end
	elseif req == 8 then
		count4 = GetItemCount(cnum,id4,0)
		if GetSwitchCount(cnum,19) > 0 then
			return 1,0,"���Ѿ��õ��˻�ɫ����ᾧ����֥ʿ����ַȥ�Ҵ峤������(X��150 Y��95)"
		end
		if GetSwitchCount(cnum,18) == 0 then
			return 1,0,"����Ҫ�õ����ɫ����ᾧ���ܼ����õ���ɫ����ᾧŶ"
		end
		if GetItemCount(cnum,373,0) == 0 then -- 
			return 1,0,"Ҳ����Ӧ�õ�ŷ�Ĳ�ԭȥ����Ƥ˹(X��106 Y��82)"
		end
		AddItemCount(cnum,id4,-count4) -- 
		AddItemCount(cnum,374,1) --
		--AddMoney(cnum,12000)
		AddSwitchCount(cnum,19,1) --
		return 1,0,"Ŷ�����ֿ��ˡ��ҵļ�ͥ��ǰ��ô����������ĺܻ����л�ˣ��Ҹ���12000GP��Ϊ����������ռ�ȫ��������ᾧ��"
	end
	return 0
end