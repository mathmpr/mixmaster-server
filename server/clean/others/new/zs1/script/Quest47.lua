function NPC_QUEST_277(cnum,reqNumber) ---- 워프 마법사
	local req = reqNumber

	if req == 1 then
		return 2,0,"Apa kamu ingin pergi ke Resurrection Point terakhir?",2,"[Pergi ke Resurrection Point]"

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end	

function NPC_QUEST_278(cnum,reqNumber) ---- 워프 마법사
	local req = reqNumber

	if req == 1 then
		return 2,0,"Apa kamu ingin pergi ke Resurrection Point terakhir?",2,"[Pergi ke Resurrection Point]"

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end

function NPC_QUEST_279(cnum,reqNumber) ---- 워프 마법사
	local req = reqNumber

	if req == 1 then
		return 2,0,"Apa kamu ingin pergi ke Resurrection Point terakhir?",2,"[Pergi ke Resurrection Point]"

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end

function NPC_QUEST_280(cnum,reqNumber) ---- 워프 마법사
	local req = reqNumber

	if req == 1 then
		return 2,0,"Apa kamu ingin pergi ke Resurrection Point terakhir?",2,"[Pergi ke Resurrection Point]"

	elseif req == 2 then
	
	
	ZoneIdx = GetZone(cnum,1)
	if ZoneIdx > 0 and ZoneIdx <= 255 then
	ZoneLayer = GetReviveLayer(ZoneIdx)
	MoveZone(cnum, ZoneIdx,ZoneLayer)

	end
	end
return 0
end

function NPC_QUEST_275(cnum,reqNumber) ---- 워프 마법사
	local req = reqNumber

	if req == 1 then
		return 2,0,"Kamu tidak dapat memasuki field of honor hingga kompetisi berikutnya jika kamu keluar sekarang. Yakin?",2,"[Pergi ke posisi resurrection]"

	elseif req == 2 then
	
	
		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
			ZoneLayer = GetReviveLayer(ZoneIdx)
			MoveZone(cnum, ZoneIdx,ZoneLayer)

		end
	end
end

function NPC_QUEST_276(cnum,reqNumber) ---- 워프 마법사
	local req = reqNumber

	if req == 1 then
		return 2,0,"Kamu tidak dapat memasuki field of honor hingga kompetisi berikutnya jika kamu keluar sekarang. Yakin?",2,"[Pergi ke posisi Resurrection]"

	elseif req == 2 then
	
	
		ZoneIdx = GetZone(cnum,1)
		if ZoneIdx > 0 and ZoneIdx <= 255 then
			ZoneLayer = GetReviveLayer(ZoneIdx)
			MoveZone(cnum, ZoneIdx,ZoneLayer)

		end
	end
end