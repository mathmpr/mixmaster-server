function NPC_QUEST_1063(cnum,reqNumber) -- 1층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 586, 1) -- 1층 각 순회 퀘스트 스위치(드래곤의 구역)
		MoveZone(cnum,119,254) -- 드래곤의 구역 1층으로 이동
	end
end

function NPC_QUEST_1067(cnum,reqNumber) -- 2층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 586, 2) -- 2층 각 순회 퀘스트 스위치(드래곤의 구역)
		MoveZone(cnum,120,254) -- 드래곤의 구역 2층으로 이동
	end
end

function NPC_QUEST_1071(cnum,reqNumber) -- 3층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 586, 3) -- 3층 각 순회 퀘스트 스위치(드래곤의 구역)
		MoveZone(cnum,121,254) -- 드래곤의 구역 3층으로 이동
	end
end

function NPC_QUEST_1075(cnum,reqNumber) -- 4층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 586, 4) -- 4층 각 순회 퀘스트 스위치(드래곤의 구역)
		MoveZone(cnum,122,254) -- 드래곤의 구역 4층으로 이동
	end
end

function NPC_QUEST_1079(cnum,reqNumber) -- 5층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 586, 5) -- 5층 각 순회 퀘스트 스위치(드래곤의 구역)
		MoveZone(cnum,123,254) -- 드래곤의 구역 5층으로 이동
	end
end

function NPC_QUEST_1083(cnum,reqNumber) -- 6층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 586, 6) -- 6층 각 순회 퀘스트 스위치(드래곤의 구역)
		MoveZone(cnum,124,254) -- 드래곤의 구역 6층으로 이동
	end
end

function NPC_QUEST_1087(cnum,reqNumber) -- 7층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 586, 7) -- 7층 각 순회 퀘스트 스위치(드래곤의 구역)
		MoveZone(cnum,125,254) -- 드래곤의 구역 7층으로 이동
	end
end

function NPC_QUEST_1091(cnum,reqNumber) -- 8층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 586, 8) -- 8층 각 순회 퀘스트 스위치(드래곤의 구역)
		MoveZone(cnum,126,254) -- 드래곤의 구역 8층으로 이동
	end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NPC_QUEST_1095(cnum,reqNumber) -- 드래곤 구역 1층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,103,254) -- 로비 1층 중앙으로 이동
	end
end

function NPC_QUEST_1096(cnum,reqNumber) -- 드래곤 구역 2층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,104,254) -- 로비 2층 중앙으로 이동
	end
end


function NPC_QUEST_1097(cnum,reqNumber) -- 드래곤 구역 3층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,105,254) -- 로비 3층 중앙으로 이동
	end
end


function NPC_QUEST_1098(cnum,reqNumber) -- 드래곤 구역 4층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,106,254) -- 로비 4층 중앙으로 이동
	end
end


function NPC_QUEST_1099(cnum,reqNumber) -- 드래곤 구역 5층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,107,254) -- 로비 5층 중앙으로 이동
	end
end


function NPC_QUEST_1100(cnum,reqNumber) -- 드래곤 구역 6층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,108,254) -- 로비 6층 중앙으로 이동
	end
end


function NPC_QUEST_1101(cnum,reqNumber) -- 드래곤 구역 7층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,109,254) -- 로비 7층 중앙으로 이동
	end
end


function NPC_QUEST_1102(cnum,reqNumber) -- 드래곤 구역 8층 드래곤 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Dragon guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,110,254) -- 로비 8층 중앙으로 이동
	end
end


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NPC_QUEST_1064(cnum,reqNumber) -- 1층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 587, 1) -- 1층 각 순회 퀘스트 스위치(악마의 구역)
		MoveZone(cnum,127,254) -- 악마의 구역 1층으로 이동
	end
end


function NPC_QUEST_1068(cnum,reqNumber) -- 2층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 587, 2) -- 2층 각 순회 퀘스트 스위치(악마의 구역)
		MoveZone(cnum,128,254) -- 악마의 구역 2층으로 이동
	end
end


function NPC_QUEST_1072(cnum,reqNumber) -- 3층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 587, 3) -- 3층 각 순회 퀘스트 스위치(악마의 구역)
		MoveZone(cnum,129,254) -- 악마의 구역 3층으로 이동
	end
end


function NPC_QUEST_1076(cnum,reqNumber) -- 4층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 587, 4) -- 4층 각 순회 퀘스트 스위치(악마의 구역)
		MoveZone(cnum,132,254) -- 악마의 구역 4층으로 이동
	end
end


function NPC_QUEST_1080(cnum,reqNumber) -- 5층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 587, 5) -- 5층 각 순회 퀘스트 스위치(악마의 구역)
		MoveZone(cnum,133,254) -- 악마의 구역 5층으로 이동
	end
end


function NPC_QUEST_1084(cnum,reqNumber) -- 6층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 587, 6) -- 6층 각 순회 퀘스트 스위치(악마의 구역)
		MoveZone(cnum,134,254) -- 악마의 구역 6층으로 이동
	end
end


function NPC_QUEST_1088(cnum,reqNumber) -- 7층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 587, 7) -- 7층 각 순회 퀘스트 스위치(악마의 구역)
		MoveZone(cnum,135,254) -- 악마의 구역 7층으로 이동
	end
end


function NPC_QUEST_1092(cnum,reqNumber) -- 8층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 587, 8) -- 8층 각 순회 퀘스트 스위치(악마의 구역)
		MoveZone(cnum,136,254) -- 악마의 구역 8층으로 이동
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NPC_QUEST_1103(cnum,reqNumber) -- 악마 구역 1층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,103,254) -- 로비 1층 중앙으로 이동
	end
end

function NPC_QUEST_1104(cnum,reqNumber) -- 악마 구역 2층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,104,254) -- 로비 2층 중앙으로 이동
	end
end


function NPC_QUEST_1105(cnum,reqNumber) -- 악마 구역 3층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,105,254) -- 로비 3층 중앙으로 이동
	end
end


function NPC_QUEST_1106(cnum,reqNumber) -- 악마 구역 4층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,106,254) -- 로비 4층 중앙으로 이동
	end
end


function NPC_QUEST_1107(cnum,reqNumber) -- 악마 구역 5층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,107,254) -- 로비 5층 중앙으로 이동
	end
end


function NPC_QUEST_1108(cnum,reqNumber) -- 악마 구역 6층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,108,254) -- 로비 6층 중앙으로 이동
	end
end


function NPC_QUEST_1109(cnum,reqNumber) -- 악마 구역 7층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,109,254) -- 로비 7층 중앙으로 이동
	end
end


function NPC_QUEST_1110(cnum,reqNumber) -- 악마 구역 8층 악마 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Devil guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,110,254) -- 로비 8층 중앙으로 이동
	end
end



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



function NPC_QUEST_1065(cnum,reqNumber) -- 1층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 588, 1) -- 1층 각 순회 퀘스트 스위치(식물의 구역)
		MoveZone(cnum,137,254) -- 식물의 구역 1층으로 이동
	end
end

function NPC_QUEST_1069(cnum,reqNumber) -- 2층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 588, 2) -- 2층 각 순회 퀘스트 스위치(식물의 구역)
		MoveZone(cnum,138,254) -- 식물의 구역 2층으로 이동
	end
end

function NPC_QUEST_1073(cnum,reqNumber) -- 3층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 588, 3) -- 3층 각 순회 퀘스트 스위치(식물의 구역)
		MoveZone(cnum,139,254) -- 식물의 구역 3층으로 이동
	end
end

function NPC_QUEST_1077(cnum,reqNumber) -- 4층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 588, 4) -- 4층 각 순회 퀘스트 스위치(식물의 구역)
		MoveZone(cnum,140,254) -- 식물의 구역 4층으로 이동
	end
end

function NPC_QUEST_1081(cnum,reqNumber) -- 5층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 588, 5) -- 5층 각 순회 퀘스트 스위치(식물의 구역)
		MoveZone(cnum,141,254) -- 식물의 구역 5층으로 이동
	end
end

function NPC_QUEST_1085(cnum,reqNumber) -- 6층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 588, 6) -- 6층 각 순회 퀘스트 스위치(식물의 구역)
		MoveZone(cnum,142,254) -- 식물의 구역 6층으로 이동
	end
end

function NPC_QUEST_1089(cnum,reqNumber) -- 7층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 588, 7) -- 7층 각 순회 퀘스트 스위치(식물의 구역)
		MoveZone(cnum,143,254) -- 식물의 구역 7층으로 이동
	end
end

function NPC_QUEST_1093(cnum,reqNumber) -- 8층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 588, 8) -- 8층 각 순회 퀘스트 스위치(식물의 구역)
		MoveZone(cnum,144,254) -- 식물의 구역 8층으로 이동
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NPC_QUEST_1111(cnum,reqNumber) -- 식물 구역 1층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,103,254) -- 로비 1층 중앙으로 이동
	end
end

function NPC_QUEST_1112(cnum,reqNumber) -- 식물 구역 2층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,104,254) -- 로비 2층 중앙으로 이동
	end
end


function NPC_QUEST_1113(cnum,reqNumber) -- 식물 구역 3층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,105,254) -- 로비 3층 중앙으로 이동
	end
end


function NPC_QUEST_1114(cnum,reqNumber) -- 식물 구역 4층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,106,254) -- 로비 4층 중앙으로 이동
	end
end


function NPC_QUEST_1115(cnum,reqNumber) -- 식물 구역 5층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,107,254) -- 로비 5층 중앙으로 이동
	end
end


function NPC_QUEST_1116(cnum,reqNumber) -- 식물 구역 6층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,108,254) -- 로비 6층 중앙으로 이동
	end
end


function NPC_QUEST_1117(cnum,reqNumber) -- 식물 구역 7층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,109,254) -- 로비 7층 중앙으로 이동
	end
end


function NPC_QUEST_1118(cnum,reqNumber) -- 식물 구역 8층 식물 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Plant guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,110,254) -- 로비 8층 중앙으로 이동
	end
end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function NPC_QUEST_1066(cnum,reqNumber) -- 1층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 589, 1) -- 1층 각 순회 퀘스트 스위치(미스터리의 구역)
		MoveZone(cnum,145,254) -- 미스터리의 구역 1층으로 이동
	end
end

function NPC_QUEST_1070(cnum,reqNumber) -- 2층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 589, 2) -- 2층 각 순회 퀘스트 스위치(미스터리의 구역)
		MoveZone(cnum,146,254) -- 미스터리의 구역 2층으로 이동
	end
end

function NPC_QUEST_1074(cnum,reqNumber) -- 3층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 589, 3) -- 3층 각 순회 퀘스트 스위치(미스터리의 구역)
		MoveZone(cnum,147,254) -- 미스터리의 구역 3층으로 이동
	end
end

function NPC_QUEST_1078(cnum,reqNumber) -- 4층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 589, 4) -- 4층 각 순회 퀘스트 스위치(미스터리의 구역)
		MoveZone(cnum,148,254) -- 미스터리의 구역 4층으로 이동
	end
end

function NPC_QUEST_1082(cnum,reqNumber) -- 5층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 589, 5) -- 5층 각 순회 퀘스트 스위치(미스터리의 구역)
		MoveZone(cnum,149,254) -- 미스터리의 구역 5층으로 이동
	end
end

function NPC_QUEST_1086(cnum,reqNumber) -- 6층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 589, 6) -- 6층 각 순회 퀘스트 스위치(미스터리의 구역)
		MoveZone(cnum,154,254) -- 미스터리의 구역 6층으로 이동
	end
end

function NPC_QUEST_1090(cnum,reqNumber) -- 7층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 589, 7) -- 7층 각 순회 퀘스트 스위치(미스터리의 구역)
		MoveZone(cnum,155,254) -- 미스터리의 구역 7층으로 이동
	end
end

function NPC_QUEST_1094(cnum,reqNumber) -- 8층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian yang tampak hidup. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		SetSwitchCount(cnum, 589, 8) -- 8층 각 순회 퀘스트 스위치(미스터리의 구역)
		MoveZone(cnum,156,254) -- 미스터리의 구역 8층으로 이동
	end
end


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NPC_QUEST_1119(cnum,reqNumber) -- 미스터리 구역 1층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,103,254) -- 로비 1층 중앙으로 이동
	end
end

function NPC_QUEST_1120(cnum,reqNumber) -- 미스터리 구역 2층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,104,254) -- 로비 2층 중앙으로 이동
	end
end


function NPC_QUEST_1121(cnum,reqNumber) -- 미스터리 구역 3층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,105,254) -- 로비 3층 중앙으로 이동
	end
end


function NPC_QUEST_1122(cnum,reqNumber) -- 미스터리 구역 4층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,106,254) -- 로비 4층 중앙으로 이동
	end
end


function NPC_QUEST_1123(cnum,reqNumber) -- 미스터리 구역 5층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,107,254) -- 로비 5층 중앙으로 이동
	end
end


function NPC_QUEST_1124(cnum,reqNumber) -- 미스터리 구역 6층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,108,254) -- 로비 6층 중앙으로 이동
	end
end


function NPC_QUEST_1125(cnum,reqNumber) -- 미스터리 구역 7층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,109,254) -- 로비 7층 중앙으로 이동
	end
end


function NPC_QUEST_1126(cnum,reqNumber) -- 미스터리 구역 8층 미스터리 수호석상

req = reqNumber

	if req == 1 then
		return 2,0,"Terdapat patung batu besar Mystery guardian seperti yang kulihat di Elysion lobby. Terdapat benda terang seperti cahaya energi ditengahnya" ,11,"Mencoba merentangkan tangan"

	elseif req == 11 then
		MoveZone(cnum,110,254) -- 로비 8층 중앙으로 이동
	end
end