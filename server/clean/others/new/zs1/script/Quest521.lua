function NPC_QUEST_340(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"�̰��� �Ѿ� �� ���ø� ������ �����Դϴ�. ������ ���� ����� ������ ���ù����� ���Ը����� �ֽ��ϴ�. ���׶� �뷯�� �ƴ϶�� ���ư��ñ� �ǰ��մϴ�.",2,"��𽺷� ���ư���."

	elseif req == 2 then
		MoveZone(cnum, 67, 254)

	else
		return 0
	end
end


function NPC_QUEST_341(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"������� ���ôٴ� ����Ͻñ���. ���� �Բ� ����� ���� ������� �Ұ� �� ȥ�� �̰��� ��Ƴ��ҽ��ϴ�. Ȥ�� �ٸ�������� ��ƿ��� ������ ��ٸ��� �ֽ��ϴ�. ����� �����ϴ� � ������ ���ư�������.",2,"��𽺷� ���ư���."

	elseif req == 2 then
		MoveZone(cnum, 67, 254)

	else
		return 0
	end
end


function NPC_QUEST_342(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 2,0,"������ ���� �Ա��� ���� ���͵�� �����ġ�� ������ ��Ȳ�Դϴ�. ���õ��� ���� �뷯�е��� ���ư��ñ⸦ �ǰ��մϴ�.",2,"��𽺷� ���ư���."

	elseif req == 2 then
		MoveZone(cnum, 67, 254)

	else
		return 0

	end
end
