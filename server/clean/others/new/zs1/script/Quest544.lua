function NPC_QUEST_849(cnum,reqNumber) -- 믹마무인랜드 퇴장 아나똘리

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"용감한 밸러님! 그럼 아르젬님을 모시고 여기를 빠져나가자구요! 그럼 부탁드려요!! 으악! 여기저기 무서운 꽃게가!!?",2,"네~!"
		else 
			return 3,0,"용감한 밸러님! 아르젬님은요!? 우선 돌아가시겠어요??",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"어느 마을로 모셔다 드릴까요!? ",5,"마지리타로 이동",6,"베헤르세바로 이동",7,"헤르세바로 이동",8,"메크리타로 이동",9,"루디스로 이동",10,"자유전투지역으로 이동"

	elseif req == 4 then
		return 1,0,"네! 그럼 어서 아르젬님을 모셔 와 주세요! 으악~! 뱌암까지!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_850(cnum,reqNumber) -- 믹마무인랜드 퇴장 아나똘리

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"용감한 밸러님! 그럼 아르젬님을 모시고 여기를 빠져나가자구요! 그럼 부탁드려요!! 으악! 여기저기 무서운 꽃게가!!?",2,"네~!"
		else 
			return 3,0,"용감한 밸러님! 아르젬님은요!? 우선 돌아가시겠어요??",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"어느 마을로 모셔다 드릴까요!? ",5,"마지리타로 이동",6,"베헤르세바로 이동",7,"헤르세바로 이동",8,"메크리타로 이동",9,"루디스로 이동",10,"자유전투지역으로 이동"

	elseif req == 4 then
		return 1,0,"네! 그럼 어서 아르젬님을 모셔 와 주세요! 으악~! 뱌암까지!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_851(cnum,reqNumber) -- 믹마무인랜드 퇴장 아나똘리

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"용감한 밸러님! 그럼 아르젬님을 모시고 여기를 빠져나가자구요! 그럼 부탁드려요!! 으악! 여기저기 무서운 꽃게가!!?",2,"네~!"
		else 
			return 3,0,"용감한 밸러님! 아르젬님은요!? 우선 돌아가시겠어요??",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"어느 마을로 모셔다 드릴까요!? ",5,"마지리타로 이동",6,"베헤르세바로 이동",7,"헤르세바로 이동",8,"메크리타로 이동",9,"루디스로 이동",10,"자유전투지역으로 이동"

	elseif req == 4 then
		return 1,0,"네! 그럼 어서 아르젬님을 모셔 와 주세요! 으악~! 뱌암까지!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_852(cnum,reqNumber) -- 믹마무인랜드 퇴장 아나똘리

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"용감한 밸러님! 그럼 아르젬님을 모시고 여기를 빠져나가자구요! 그럼 부탁드려요!! 으악! 여기저기 무서운 꽃게가!!?",2,"네~!"
		else 
			return 3,0,"용감한 밸러님! 아르젬님은요!? 우선 돌아가시겠어요??",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"어느 마을로 모셔다 드릴까요!? ",5,"마지리타로 이동",6,"베헤르세바로 이동",7,"헤르세바로 이동",8,"메크리타로 이동",9,"루디스로 이동",10,"자유전투지역으로 이동"

	elseif req == 4 then
		return 1,0,"네! 그럼 어서 아르젬님을 모셔 와 주세요! 으악~! 뱌암까지!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_858(cnum,reqNumber) -- 믹마무인랜드 퇴장 아나똘리

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"용감한 밸러님! 그럼 아르젬님을 모시고 여기를 빠져나가자구요! 그럼 부탁드려요!! 으악! 여기저기 무서운 꽃게가!!?",2,"네~!"
		else 
			return 3,0,"용감한 밸러님! 아르젬님은요!? 우선 돌아가시겠어요??",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"어느 마을로 모셔다 드릴까요!? ",5,"마지리타로 이동",6,"베헤르세바로 이동",7,"헤르세바로 이동",8,"메크리타로 이동",9,"루디스로 이동",10,"자유전투지역으로 이동"

	elseif req == 4 then
		return 1,0,"네! 그럼 어서 아르젬님을 모셔 와 주세요! 으악~! 뱌암까지!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_859(cnum,reqNumber) -- 믹마무인랜드 퇴장 아나똘리

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"용감한 밸러님! 그럼 아르젬님을 모시고 여기를 빠져나가자구요! 그럼 부탁드려요!! 으악! 여기저기 무서운 꽃게가!!?",2,"네~!"
		else 
			return 3,0,"용감한 밸러님! 아르젬님은요!? 우선 돌아가시겠어요??",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"어느 마을로 모셔다 드릴까요!? ",5,"마지리타로 이동",6,"베헤르세바로 이동",7,"헤르세바로 이동",8,"메크리타로 이동",9,"루디스로 이동",10,"자유전투지역으로 이동"

	elseif req == 4 then
		return 1,0,"네! 그럼 어서 아르젬님을 모셔 와 주세요! 으악~! 뱌암까지!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_860(cnum,reqNumber) -- 믹마무인랜드 퇴장 아나똘리

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"용감한 밸러님! 그럼 아르젬님을 모시고 여기를 빠져나가자구요! 그럼 부탁드려요!! 으악! 여기저기 무서운 꽃게가!!?",2,"네~!"
		else 
			return 3,0,"용감한 밸러님! 아르젬님은요!? 우선 돌아가시겠어요??",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"어느 마을로 모셔다 드릴까요!? ",5,"마지리타로 이동",6,"베헤르세바로 이동",7,"헤르세바로 이동",8,"메크리타로 이동",9,"루디스로 이동",10,"자유전투지역으로 이동"

	elseif req == 4 then
		return 1,0,"네! 그럼 어서 아르젬님을 모셔 와 주세요! 으악~! 뱌암까지!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end

function NPC_QUEST_861(cnum,reqNumber) -- 믹마무인랜드 퇴장 아나똘리

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 532) < 1 then
			return 2,0,"용감한 밸러님! 그럼 아르젬님을 모시고 여기를 빠져나가자구요! 그럼 부탁드려요!! 으악! 여기저기 무서운 꽃게가!!?",2,"네~!"
		else 
			return 3,0,"용감한 밸러님! 아르젬님은요!? 우선 돌아가시겠어요??",3,"네~!",4,"아니요"			
		end	
		

	elseif req == 2 then
		SetSwitchCount(cnum, 532, 1)

	elseif req == 3 then
		return 7,0,"어느 마을로 모셔다 드릴까요!? ",5,"마지리타로 이동",6,"베헤르세바로 이동",7,"헤르세바로 이동",8,"메크리타로 이동",9,"루디스로 이동",10,"자유전투지역으로 이동"

	elseif req == 4 then
		return 1,0,"네! 그럼 어서 아르젬님을 모셔 와 주세요! 으악~! 뱌암까지!"

	elseif req == 5 then
		MoveZone(cnum, 57, 253) 

	elseif req == 6 then
		MoveZone(cnum, 60, 253) 

	elseif req == 7 then
		MoveZone(cnum, 63, 253) 

	elseif req == 8 then
		MoveZone(cnum, 59, 253) 

	elseif req == 9 then
		MoveZone(cnum, 67, 253) 

	elseif req == 10 then
		MoveZone(cnum, 70, 101) 

	end

end