function NPC_QUEST_265(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetHeroType(cnum) > 1 or GetHeroType(cnum) < 1 then
			return 1,0,"���㵺����-��ר������\n\n����û�п������ǵ���ү������˵������������У����Ҳ����ҵ�����."
		else
			if GetSwitchCount(cnum, 312) < 1  and GetSwitchCount(cnum, 313) < 1 then --6
				if GetSwitchCount(cnum, 310) < 1 then --5
					if GetSwitchCount(cnum, 308) < 1 then --4
						if GetSwitchCount(cnum, 306) < 1 then --3
							if GetSwitchCount(cnum, 304) < 1 then -- 2
								if GetSwitchCount(cnum, 303) < 1 then --1
      						return	2, 0,"��ү�����������̫���ˡ��Ѿ��ܳ�һ��ʱ���ˣ��Դ������ϴμ���.",2,"�ǵġ��ܳ�һ��ʱ���ˡ�"
								else
  									if GetHeroLv(cnum) < 10 then
  										return	1, 0,"��ĵȼ�̫���ˣ�������10����û���ʸ����峤"
                                elseif GetRemainPocket(cnum) < 1 then
										return 1,0,"��ı���û���㹻�Ŀռ�"
	  								else
  								   		AddItemCount(cnum, 4427, 1)
									    	AddSwitchCount(cnum, 304, 1)
									    	----------------------------AddHeroExp(cnum, 600)
								    		EndQuest(cnum, 120)
  										return	1, 0,"��ϲ�����ǣ�������Ǹ���ʼ�����Ǽ̳��ߵĽ�ָ�����Ѿ�����˵�һ�ο��顣����뱣��������ܼ���������һ���׶εĿ��飬����Ū���ˡ�"  										      
  									end
  								end
  							else
								if GetSwitchCount(cnum, 305) < 1 then
									if GetHeroLv(cnum) < 30 then
										return	1, 0,"�ȼ�������30������׼��������"
									elseif GetItemCount(cnum, 4427, 0) < 1 then
										return 1,0,"��ү������̳��ߵĽ�ָ����û�н�ָ����Ͳ��ܼ������ܿ���"
 									else
										return	2,0,"��ү����ӭ���ĵ����������Ѿ�����׼�����˵ڶ��ο���",62,"���ڣ�"
									end
								else
									if GetItemCount( cnum, 4432, 0 ) < 10 then
										return	1, 0,"��û������10�������Ľ�"
									else
										return	2,0, "��ϲ�����Ǽ̳��ߵĽ�ָ�����Ѿ�����˵ڶ��ο��顣����뱣��������ܼ���������һ���׶εĿ��飬����Ū���ˡ���Ҳ����׼����һ��С��ϲ��һ��30����β�����ﵰ��",150,"�Ҳ���Ҫ������ﵰ"
									end
								end
   							end--2��
  						else
	  						if GetSwitchCount(cnum, 307) < 1 then
			      			if GetHeroLv(cnum) < 50 then
  									return	1,0,"��û��50�������ܽ��б��׶ο���"
								elseif GetItemCount(cnum, 4428, 0) < 1 then
									return 1,0,"������̳��ߵĽ�ָ����û�н�ָ����Ͳ��ܼ������ܿ���"
								else
									return	2,0,"��ү����ӭ���ĵ����������Ѿ�����׼�����˵����ο���",82,"�������ڣ�"
								end	
  							else
  								if GetSwitchCount( cnum, 315 ) < 1 then
  									return	1, 0, "�㻹û���ҵ��ɾ�������"
                            elseif GetRemainPocket(cnum) < 1 then
									return 1,0,"��ı���û���㹻�Ŀռ�"
	  							else
  		    					AddSwitchCount( cnum, 308, 1 )
  									AddItemCount( cnum, 4428, -1 )
  									AddItemCount( cnum, 4429, 1 )
									----------------------------AddHeroExp(cnum, 100000)
									EndQuest(cnum, 122)
  									return	1,0,"��ϲ�����Ǽ̳��ߵĽ�ָ�����Ѿ�����˵����ο��顣����뱣��������ܼ���������һ���׶εĿ��飬����Ū���ˡ�"
  								end			
   							end
	  					end
	  					
					else
						if GetSwitchCount(cnum, 309) < 1 then
							if GetHeroLv(cnum) < 70 then                		
								return 1,0,"��û��70�������ܽ��б��׶ο���"
				    elseif GetItemCount(cnum, 4429, 0) < 1 then
								return 1,0,"������̳��ߵĽ�ָ����û�н�ָ����Ͳ��ܼ������ܿ���"
							else
								return	2,0,"��ү����ӭ���ĵ����������Ѿ�����׼�����˵��Ĵο���",92,"�õ�"	          
  							end  							
						else
							if GetItemCount( cnum, 4433 , 0) < 1 then
	  							return	1,0, "û�д�������Ҫ��˫����ħ���ֱ۲������㻹�������峤"
	  						else
  								return	2,0,"��ϲ�����Ǽ̳��ߵĽ�ָ�����Ѿ�����˵��Ĵο��顣����뱣��������ܼ���������һ���׶εĿ��飬����Ū���ˡ���Ҳ����׼����һ��С��ϲ��һ��70����β�����ﵰ��",162,"�õ�"
							end			
						end
					end -- 4��
				else
					if GetSwitchCount(cnum, 314) > 0 then
						return	1,0,"���Ѿ���ɴ�����."				
				else
						if GetSwitchCount(cnum, 311) < 1 then
							if GetHeroLv(cnum) < 90 then                		
								return 1,0,"��û��90�������ܽ��б��׶ο���"
				    elseif GetItemCount(cnum, 4430, 0) < 1 and GetItemCount(cnum, 4431, 0) < 1 then
								return 1,0,"�����̳��ߵĽ�ָ����û�н�ָ����Ͳ��ܼ������ܿ���"
							else
								return	2,0,"��ү����ӭ���ĵ����������Ѿ�����׼�����˵���ο���",102,"�õ�"	          
  							end  							
						else
							if GetHench(cnum, 1, 281, 80) < 1 and GetHench(cnum, 1, 282, 80) < 1 then
	  							return	1,0, "��û�д����������˺ͷ���˼�ĳ��ﵰ"
	  						else
  								return	2,0,"��ϲ�����Ѿ�����˵���ο��顣����뱣��������ܼ���������һ���׶εĿ��飬����Ū���ˡ�",142,"�õ�"
							end			
						end
					end -- 4���޸�5��
				end
			else
				if GetSwitchCount(cnum, 314) > 0 then
					return 1,0,"���Ѿ���ɴ�����."
				else
					return 2,0,"Selamat! Kamu telah menyelesaikan ujian kelima. Ini adalah Successor's Ring yang akan kuberikan kepadamu sebagai bukti kamu telah menyelesaikan ujian kelima. Kamu harus menyimpannya agar dapat melanjutkan ke tahap berikutnya. Jangan menghilangkannya."
			end
		end
	end
	elseif req == 2 then
		return 2,0,"�ǰ������뿪�Һܳ�һ��ʱ����",12,"��Ϊʲô�����"
	elseif req == 12 then
		return 2,0,"���峤�������ġ���Ҫ������������ɸѡ��һ���̳���",22,"���Ƿ���ζ����Ҳ��һ���Ļ��᣿"
	elseif req == 22 then
		return	2,0,"��Ȼ������Գ�Ϊһ���峤�������ɹ������������׼������������",32,"������"
	elseif req == 32 then
		return	2,0, "�峤˵��˭�ܳɹ���ͨ�����飬�κ��˶���Ȩ��Ϊ�峤��������������׶Σ������ȫ��Ҫͨ����",42, "����Ӧ����ô���أ�"
	elseif req == 42 then
		return	2,0, "�ðɣ��һ���ߵ�һ�ο��顣�峤��֪�������ڻ�Į���Ƿ�������ļ��ܡ�ǰ����Ҫ�ﵽ10��",52, "�õģ���������"
	elseif req == 52 then
		StartQuest(cnum, 120)
		AddSwitchCount(cnum, 303, 1) --�� 1 ����
	elseif req == 62 then
		return	2,0, "�����ǵڶ��׶ο��顣�峤��֪�������Ƿ��������������ļ�������Σ�յ�ɳĮ������˺����������ֿ�˹ƽԭ�������������ҵ�10�������Ľǣ��ڻ������ҡ�ף����ˣ�",72,"�ð�"
		
	elseif req == 72 then
		StartQuest(cnum, 121)
		AddSwitchCount(cnum, 305, 1) --�� 2 ����
	elseif req == 82 then
		StartQuest(cnum, 122)
		AddSwitchCount(cnum, 307 ,1)
		return	1,0,"�ðɣ��һ���ߵ����ο��顣�峤��֪�������Ƿ����ҵ�һ����ˮ�����ޡ��ü���������Ⱦ̫�����ˡ�����Ҫȥ��һ���ɾ������ޣ�Ȼ����������ҡ������ͨ�����޵�ĳЩֲ���֪���޵�״�������˵�ɳĮ�����˫��Ͽ�ȡ���ɫ��Ұ���������ޣ�������֪���ĸ��Ǹɾ��ġ�ף����ˣ�"
	elseif req == 92 then
		StartQuest(cnum, 123)
		AddSwitchCount(cnum, 309 ,1)
		return	1,0, "���ڣ��һ���ߵ��Ĵο��顣�峤��֪�������Ƿ���������Σ��֮ʱͻ����Χ����Ҫȥ�ͼ�������9�㣬�ҵ�˫����ħ���ֱ۲����ٻ������ҡ�ף����ˣ�"
	elseif req == 102 then
		return 2,0, "�ðɣ��һ���ߵ���ο��顣�峤��֪��������û�������ҵ��������˺ͷ���˼�ĳ��ﵰ��������Ѿ����ˣ��Ǳ��ο���ͼ򵥶���",152,"�š����ƺ�̫��ͳ�˰ɣ�"	
	elseif req == 152 then
		return 2,0,"��..��ͬ����Ĺ۵㡣�һ����һЩ�ҳ��ﵰ�Ŀ����",153,"��"
	elseif req == 153 then
		StartQuest(cnum, 124)
		AddSwitchCount( cnum, 311, 1 )
		return 1,0,"80�������������˺ͷ���˼�ĳ��ﵰŶ"
	elseif req == 142 then
		if GetHench(cnum, 1, 538, 1) < 1 then
			return 1,0,"��û�д���70����β�����ﵰ���ҾͲ��ܹ�����"
		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�����ռ䲻��"
    elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"���ﱳ���ռ䲻��"
		else
			AddItemCount(cnum, 4430, -1)
			AddItemCount(cnum, 4431, 1)
			----------------------------AddHeroExp(cnum, 5000000)
			AddSwitchCount(cnum, 314, 1)
			AddHench(cnum, 538, -1)
			AddHench(cnum, 494, 1)
			EndQuest(cnum, 124)
			EndQuest(cnum, 125)
			return 1,0,"¡�������÷��޵�����һ�������Ľ��������������ġ�������������ʾ���������ð�ա�"
		end

-- ����Ʈ �߰� ����
	elseif req == 150 then
		return 2,0,"����Ȼ�ǳ��ڵģ����ǿ��԰����㡣����������Ѫͳ",151,"лл��"
	elseif req == 151 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"���ﱳ��û���㹻�Ŀռ�"
    elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"��ı���û���㹻�Ŀռ�"
		else
			AddItemCount(cnum, 4427, -1)
			AddItemCount(cnum, 4432, -10)
			AddSwitchCount(cnum, 306, 1)
			AddItemCount(cnum, 4428, 1)
			----------------------------AddHeroExp(cnum, 20000)
			AddHench(cnum, 537, 1)
			EndQuest(cnum, 121)
			return 1,0,"��׼������һ�ο���"
		end
	elseif req == 162 then
		return 2,0,"���ﶼ�ǻ�����ģ����30����β�����ﵰ���ң��Ҹ��㻻70����β�����ﵰ",163,"лл"
	elseif req == 163 then
		if GetHench(cnum, 1, 537, 1) < 1 then
			return 1,0,"��û�д���30����β�����ﵰ���ҾͲ��ܹ�����"
   	elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"�����ռ䲻��"
		elseif GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"���ﱳ���ռ䲻��"
		else
			AddItemCount( cnum, 4433, -1 )
			AddItemCount( cnum, 4429, -1 )
			AddItemCount( cnum, 4430, 1 )
			AddSwitchCount(cnum, 310, 1)
			----------------------------AddHeroExp(cnum, 400000)
			AddHench(cnum, 537, -1)
			AddHench(cnum, 538, 1)
			EndQuest(cnum, 123)
			return 1,0,"��׼���ý�����һ�ο���"
		end
	else
		return 1,0,"����"
	end
end



function NPC_QUEST_310(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"������ڸ��������޿���һЩֲ��."
		else
			return 2,0,"������ڸ��������޿���һЩֲ������Щʲô�أ�",2,"��Ҫ�ռ��㶫��."
		end
	elseif req == 2 then
		return 1,0,"�������ǽ����ģ���������Ϊ���ޡ�������ҵ���һ�����ޡ�"
	else
		return 1,0,"����"
	end
end


function NPC_QUEST_309(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then
			return 1,0,"������ڸ��������޿���һЩֲ��."
		else
			return 2,0,"������ڸ��������޿���һЩֲ������Щʲô�أ�",2,"��Ҫ�ռ��㶫��"
		end
	elseif req == 2 then
		return 1,0,"�������ǽ����ģ���������Ϊ���ޡ�������ҵ���һ�����ޡ�"
	else
		return 1,0,"����"
	end
end


function NPC_QUEST_308(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 307) < 1 then		
			return 1,0,"������ڸ��������޿���һЩֲ��"
		else
			return 2,0,"������ڸ��������޿���һЩֲ������Щʲô�أ�",2,"��Ҫ�ռ��㶫��"
		end
	elseif req == 2 then
		AddSwitchCount(cnum, 315, 1)
		return 1,0,"��Щֲ�￴�����ܽ�������Ϊ���ޡ����Ѿ��ҵ���һ���ɾ������ޣ�"
	else
		return 1,0,"����"
	end
end
