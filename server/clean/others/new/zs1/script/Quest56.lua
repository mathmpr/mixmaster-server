function NPC_QUEST_323(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 6,0,"ůů~ ůů~@���ø���! �ͽ������� ���� �Լ�!@�ְ�� �����۵��� ������ٴ�@���ø��� ������ �ʴ� �մϴ�!@(���ø��� ��ġ�� �������� ����@���� ������ٴ� �ҹ���.. ����~)@���ø��� �� ������� �����ôٸ�@������ ���� �ٷ� �������ּ���!@��~! ���ø��� �� �������..@�͸��������� ���Ͻ� �� �ִ�ϴ�!@",2,"���ø��� ��(LV.1~60����) ����",3,"���ø��� ��(LV.1~80����) ����",4,"���ø��� ��(LV.1~100����) ����",5,"���ø��� ��(LV.1~120����) ����",6,"���ø��� ��(LV.1~175����) ����"



	elseif req == 2 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"

		elseif GetHeroLv(cnum) > 60 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 1, 254)

		end



	elseif req == 3 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 80 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 4, 254)

		end



	elseif req == 4 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 100 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"


		else
			MoveZone(cnum, 5, 254)

		end


	elseif req == 5 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 120 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 7, 254)

		end


	elseif req == 6 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 175 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 8, 254)

		end


	else
		return 0


	end
end




function NPC_QUEST_324(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 6,0,"ůů~ ůů~@���ø���! �ͽ������� ���� �Լ�!@�ְ�� �����۵��� ������ٴ�@���ø��� ������ �ʴ� �մϴ�!@(���ø��� ��ġ�� �������� ����@���� ������ٴ� �ҹ���.. ����~)@���ø��� �� ������� �����ôٸ�@������ ���� �ٷ� �������ּ���!@��~! ���ø��� �� �������..@�͸��������� ���Ͻ� �� �ִ�ϴ�!@",2,"���ø��� ��(LV.1~60����) ����",3,"���ø��� ��(LV.1~80����) ����",4,"���ø��� ��(LV.1~100����) ����",5,"���ø��� ��(LV.1~120����) ����",6,"���ø��� ��(LV.1~175����) ����"



	elseif req == 2 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"

		elseif GetHeroLv(cnum) > 60 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 1, 254)

		end



	elseif req == 3 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 80 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 4, 254)

		end



	elseif req == 4 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 100 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"


		else
			MoveZone(cnum, 5, 254)

		end


	elseif req == 5 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 120 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 7, 254)

		end


	elseif req == 6 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 175 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 8, 254)

		end


	else
		return 0


	end
end





function NPC_QUEST_325(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 6,0,"ůů~ ůů~@���ø���! �ͽ������� ���� �Լ�!@�ְ�� �����۵��� ������ٴ�@���ø��� ������ �ʴ� �մϴ�!@(���ø��� ��ġ�� �������� ����@���� ������ٴ� �ҹ���.. ����~)@���ø��� �� ������� �����ôٸ�@������ ���� �ٷ� �������ּ���!@��~! ���ø��� �� �������..@�͸��������� ���Ͻ� �� �ִ�ϴ�!@",2,"���ø��� ��(LV.1~60����) ����",3,"���ø��� ��(LV.1~80����) ����",4,"���ø��� ��(LV.1~100����) ����",5,"���ø��� ��(LV.1~120����) ����",6,"���ø��� ��(LV.1~175����) ����"



	elseif req == 2 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"

		elseif GetHeroLv(cnum) > 60 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 1, 254)

		end



	elseif req == 3 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 80 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 4, 254)

		end



	elseif req == 4 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 100 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"


		else
			MoveZone(cnum, 5, 254)

		end


	elseif req == 5 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 120 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 7, 254)

		end


	elseif req == 6 then
		if GetItemCount(cnum, 1411, 0) < 1 and GetItemCount(cnum, 8583, 0) < 1 then
			return 1,0,"���ø��� �� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 175 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"ůů~ ůů~@���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 8, 254)

		end


	else
		return 0


	end
end




function NPC_QUEST_326(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(����~ �˳����� �����ϴ±�)@ůů~ ���ø��� �� �̿���@��ſ�̳���?@��? ���� ������ ���ư��ٰ��?@���ڱ���. ���� �� ���� �ʹ� ����@�ӹ����� �� ������ ���� ����..��@��·��.. @������ ���� �̵��Ͻðڳ���?",2,"������Ÿ ������ �ĵ� �������",3,"��ũ��Ÿ ������ �ĵ� �������",4,"�츣���� ������ �ĵ� �������"


	elseif req == 2 then
		MoveZone(cnum, 57, 254)


	elseif req == 3 then
		MoveZone(cnum, 59, 254)


	elseif req == 4 then
		MoveZone(cnum, 63, 254)



	else
		return 0

	end
end





function NPC_QUEST_327(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(����~ �˳����� �����ϴ±�)@ůů~ ���ø��� �� �̿���@��ſ�̳���?@��? ���� ������ ���ư��ٰ��?@���ڱ���. ���� �� ���� �ʹ� ����@�ӹ����� �� ������ ���� ����..��@��·��.. @������ ���� �̵��Ͻðڳ���?",2,"������Ÿ ������ �ĵ� �������",3,"��ũ��Ÿ ������ �ĵ� �������",4,"�츣���� ������ �ĵ� �������"


	elseif req == 2 then
		MoveZone(cnum, 57, 254)


	elseif req == 3 then
		MoveZone(cnum, 59, 254)


	elseif req == 4 then
		MoveZone(cnum, 63, 254)



	else
		return 0

	end
end




function NPC_QUEST_328(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(����~ �˳����� �����ϴ±�)@ůů~ ���ø��� �� �̿���@��ſ�̳���?@��? ���� ������ ���ư��ٰ��?@���ڱ���. ���� �� ���� �ʹ� ����@�ӹ����� �� ������ ���� ����..��@��·��.. @������ ���� �̵��Ͻðڳ���?",2,"������Ÿ ������ �ĵ� �������",3,"��ũ��Ÿ ������ �ĵ� �������",4,"�츣���� ������ �ĵ� �������"


	elseif req == 2 then
		MoveZone(cnum, 57, 254)


	elseif req == 3 then
		MoveZone(cnum, 59, 254)


	elseif req == 4 then
		MoveZone(cnum, 63, 254)



	else
		return 0

	end
end



function NPC_QUEST_329(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(����~ �˳����� �����ϴ±�)@ůů~ ���ø��� �� �̿���@��ſ�̳���?@��? ���� ������ ���ư��ٰ��?@���ڱ���. ���� �� ���� �ʹ� ����@�ӹ����� �� ������ ���� ����..��@��·��.. @������ ���� �̵��Ͻðڳ���?",2,"������Ÿ ������ �ĵ� �������",3,"��ũ��Ÿ ������ �ĵ� �������",4,"�츣���� ������ �ĵ� �������"


	elseif req == 2 then
		MoveZone(cnum, 57, 254)


	elseif req == 3 then
		MoveZone(cnum, 59, 254)


	elseif req == 4 then
		MoveZone(cnum, 63, 254)



	else
		return 0

	end
end



function NPC_QUEST_330(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(����~ �˳����� �����ϴ±�)@ůů~ ���ø��� �� �̿���@��ſ�̳���?@��? ���� ������ ���ư��ٰ��?@���ڱ���. ���� �� ���� �ʹ� ����@�ӹ����� �� ������ ���� ����..��@��·��.. @������ ���� �̵��Ͻðڳ���?",2,"������Ÿ ������ �ĵ� �������",3,"��ũ��Ÿ ������ �ĵ� �������",4,"�츣���� ������ �ĵ� �������"


	elseif req == 2 then
		MoveZone(cnum, 57, 254)


	elseif req == 3 then
		MoveZone(cnum, 59, 254)


	elseif req == 4 then
		MoveZone(cnum, 63, 254)



	else
		return 0

	end
end
