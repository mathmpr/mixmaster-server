function NPC_QUEST_331(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 6,0,"����~ ����~@����! �ͽ������� ���� �Լ�!@�ְ�� �����۵��� ������ٴ�@���� ������ �ʴ� �մϴ�!@(���� ��ġ�� �������� ����@���� ������ٴ� �ҹ���.. ����~)@���� �� ������� �����ôٸ�@������ ���� �ٷ� �������ּ���!@��~! ���� �� �������..@�͸��������� ���Ͻ� �� �ִ�ϴ�!@",2,"���� ��(LV.1~60����) ����",3,"���� ��(LV.1~80����) ����",4,"���� ��(LV.1~100����) ����",5,"���� ��(LV.1~120����) ����",6,"���� ��(LV.1~175����) ����"



	elseif req == 2 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"

		elseif GetHeroLv(cnum) > 60 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 9, 254)

		end



	elseif req == 3 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 80 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 10, 254)

		end



	elseif req == 4 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 100 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"


		else
			MoveZone(cnum, 11, 254)

		end


	elseif req == 5 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 120 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 12, 254)

		end


	elseif req == 6 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 175 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 13, 254)

		end


	else
		return 0


	end
end




function NPC_QUEST_332(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 6,0,"����~ ����~@����! �ͽ������� ���� �Լ�!@�ְ�� �����۵��� ������ٴ�@���� ������ �ʴ� �մϴ�!@(���� ��ġ�� �������� ����@���� ������ٴ� �ҹ���.. ����~)@���� �� ������� �����ôٸ�@������ ���� �ٷ� �������ּ���!@��~! ���� �� �������..@�͸��������� ���Ͻ� �� �ִ�ϴ�!@",2,"���� ��(LV.1~60����) ����",3,"���� ��(LV.1~80����) ����",4,"���� ��(LV.1~100����) ����",5,"���� ��(LV.1~120����) ����",6,"���� ��(LV.1~175����) ����"



	elseif req == 2 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"

		elseif GetHeroLv(cnum) > 60 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 9, 254)

		end



	elseif req == 3 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 80 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 10, 254)

		end



	elseif req == 4 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 100 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"


		else
			MoveZone(cnum, 11, 254)

		end


	elseif req == 5 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 120 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 12, 254)

		end


	elseif req == 6 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 175 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 13, 254)

		end


	else
		return 0


	end
end





function NPC_QUEST_333(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 6,0,"����~ ����~@����! �ͽ������� ���� �Լ�!@�ְ�� �����۵��� ������ٴ�@���� ������ �ʴ� �մϴ�!@(���� ��ġ�� �������� ����@���� ������ٴ� �ҹ���.. ����~)@���� �� ������� �����ôٸ�@������ ���� �ٷ� �������ּ���!@��~! ���� �� �������..@�͸��������� ���Ͻ� �� �ִ�ϴ�!@",2,"���� ��(LV.1~60����) ����",3,"���� ��(LV.1~80����) ����",4,"���� ��(LV.1~100����) ����",5,"���� ��(LV.1~120����) ����",6,"���� ��(LV.1~175����) ����"



	elseif req == 2 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"

		elseif GetHeroLv(cnum) > 60 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 9, 254)

		end



	elseif req == 3 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 80 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 10, 254)

		end



	elseif req == 4 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 100 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"


		else
			MoveZone(cnum, 11, 254)

		end


	elseif req == 5 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 120 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 12, 254)

		end


	elseif req == 6 then
		if GetItemCount(cnum, 1412, 0) < 1 and GetItemCount(cnum, 8584, 0) < 1 then
			return 1,0,"�ش� ������� ������.@����~ �ٽ� �� ���캸�ð�,@������ ���� �������ּ���!",12,"��"


		elseif GetHeroLv(cnum) > 175 then
			heroLv = GetHeroLv(cnum)
			return 1,0,"���� ���� ���� ��������?!@����� ����"..heroLv.."����.@������ ���� �ʹ� ���� �����̴�@���� �Ͻ� �� �����ϴ�. @�ٸ� ������ ���̾�!"

		else
			MoveZone(cnum, 13, 254)

		end


	else
		return 0


	end
end




function NPC_QUEST_334(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(����~ ����~)@���� �� ������ ��ſ�̳���?@��? ���� ������ ���ư��ٰ��?@�̷��̷�~ ���� ������� ����@�� ���� �����ٵ�.. ����~@��·��.. @������ ���� �̵��Ͻðڳ���?@",2,"������Ÿ ������ �ĵ� �������",3,"��ũ��Ÿ ������ �ĵ� �������",4,"�츣���� ������ �ĵ� �������"


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





function NPC_QUEST_335(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(����~ ����~)@���� �� ������ ��ſ�̳���?@��? ���� ������ ���ư��ٰ��?@�̷��̷�~ ���� ������� ����@�� ���� �����ٵ�.. ����~@��·��.. @������ ���� �̵��Ͻðڳ���?@",2,"������Ÿ ������ �ĵ� �������",3,"��ũ��Ÿ ������ �ĵ� �������",4,"�츣���� ������ �ĵ� �������"


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




function NPC_QUEST_336(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(����~ ����~)@���� �� ������ ��ſ�̳���?@��? ���� ������ ���ư��ٰ��?@�̷��̷�~ ���� ������� ����@�� ���� �����ٵ�.. ����~@��·��.. @������ ���� �̵��Ͻðڳ���?@",2,"������Ÿ ������ �ĵ� �������",3,"��ũ��Ÿ ������ �ĵ� �������",4,"�츣���� ������ �ĵ� �������"


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



function NPC_QUEST_337(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(����~ ����~)@���� �� ������ ��ſ�̳���?@��? ���� ������ ���ư��ٰ��?@�̷��̷�~ ���� ������� ����@�� ���� �����ٵ�.. ����~@��·��.. @������ ���� �̵��Ͻðڳ���?@",2,"������Ÿ ������ �ĵ� �������",3,"��ũ��Ÿ ������ �ĵ� �������",4,"�츣���� ������ �ĵ� �������"


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



function NPC_QUEST_338(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		return 4,0,"(����~ ����~)@���� �� ������ ��ſ�̳���?@��? ���� ������ ���ư��ٰ��?@�̷��̷�~ ���� ������� ����@�� ���� �����ٵ�.. ����~@��·��.. @������ ���� �̵��Ͻðڳ���?@",2,"������Ÿ ������ �ĵ� �������",3,"��ũ��Ÿ ������ �ĵ� �������",4,"�츣���� ������ �ĵ� �������"


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
