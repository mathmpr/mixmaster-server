function NPC_QUEST_619(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"����� ���� �״�! �������� ����� ȭ���� �����帱���? ��~ �׺��� ����.. ����� ��Ʈ���ݸ��� ����� ������ �����غ�����..",2,"����� ���� �˷��ּ���.",3,"�ַ� õ��! Ŀ�� ����!"

			else
				return 2,0,"īī�� ���Ŵ� ��� ���ϼ̳���? �׷��ٸ� ������ �Ѱ��ּ���. ���ִ� ���ݸ����� ����� �帱�Կ�",22,"īī���� �ѱ��"

			end

		else
			return 3,0,"�������� ���� ���̳���? �������� ���ݸ��� ������ �ֽø� ��Ʈ ���ݸ����� ����� �帳�ϴ�. īī�� 30���� �ֽø� ���ݸ��� �ٽ� ����� �帮�� �־��.",42,"��Ʈ ���ݸ� �����",43,"���ݸ� �����"

		end
		

	elseif req == 2 then
		return 3,0,"�����մϴ�! ���͸� ��ٺ��� īī�����Ű� ���ð̴ϴ�. īī������ 30���� ������ ���� �ָ� ���ִ� ���ڷ����� �����帱����.",12,"�ܲ�! ���� ���ؿ���!",13,"�� ������ ������. �˼�"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."


		else

			return 3,0,"īī������ 30���� ���ؿ��̱���! �ݹ� ���ִ� ���ݸ��� ����� �帱�Կ�. ���ݸ��� �׳� ��ŵ� �Ǵµ� ��ȭ�������� �Ĵ� �������� ���ؿ��ø� ��Ʈ���ݸ����� ����� �帳�ϴٿ�.",32,"��������? ���ؿò���!",33,"�׳� �������ϴ�! �ܲ�!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"�Ϳ�! �� ���̽�! �ϴ� ���ݸ� �����ð�, � ��ȭ�������� �������� ���ؿ�����. ���� �帰 ���ݸ��� ���� ������ �ȵǿ�. �������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"�������� �ֳ׿�? ��.. ������ ����帱���? ���ݸ��� �־�� ��Ʈ���ݸ��� ������. ���ݸ��� īī������ 30���� ��ƿ��� ����� �帳�ϴٿ�. �ƽð���?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"�������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����? � ��ȭ�������� �������� ���ؿ�����."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"�κ��丮�� ��ũ ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"����"

	end
end



function NPC_QUEST_620(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"����� ���� �״�! �������� ����� ȭ���� �����帱���? ��~ �׺��� ����.. ����� ��Ʈ���ݸ��� ����� ������ �����غ�����..",2,"����� ���� �˷��ּ���.",3,"�ַ� õ��! Ŀ�� ����!"

			else
				return 2,0,"īī�� ���Ŵ� ��� ���ϼ̳���? �׷��ٸ� ������ �Ѱ��ּ���. ���ִ� ���ݸ����� ����� �帱�Կ�",22,"īī���� �ѱ��"

			end

		else
			return 3,0,"�������� ���� ���̳���? �������� ���ݸ��� ������ �ֽø� ��Ʈ ���ݸ����� ����� �帳�ϴ�. īī�� 30���� �ֽø� ���ݸ��� �ٽ� ����� �帮�� �־��.",42,"��Ʈ ���ݸ� �����",43,"���ݸ� �����"

		end
		

	elseif req == 2 then
		return 3,0,"�����մϴ�! ���͸� ��ٺ��� īī�����Ű� ���ð̴ϴ�. īī������ 30���� ������ ���� �ָ� ���ִ� ���ڷ����� �����帱����.",12,"�ܲ�! ���� ���ؿ���!",13,"�� ������ ������. �˼�"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."


		else

			return 3,0,"īī������ 30���� ���ؿ��̱���! �ݹ� ���ִ� ���ݸ��� ����� �帱�Կ�. ���ݸ��� �׳� ��ŵ� �Ǵµ� ��ȭ�������� �Ĵ� �������� ���ؿ��ø� ��Ʈ���ݸ����� ����� �帳�ϴٿ�.",32,"��������? ���ؿò���!",33,"�׳� �������ϴ�! �ܲ�!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"�Ϳ�! �� ���̽�! �ϴ� ���ݸ� �����ð�, � ��ȭ�������� �������� ���ؿ�����. ���� �帰 ���ݸ��� ���� ������ �ȵǿ�. �������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"�������� �ֳ׿�? ��.. ������ ����帱���? ���ݸ��� �־�� ��Ʈ���ݸ��� ������. ���ݸ��� īī������ 30���� ��ƿ��� ����� �帳�ϴٿ�. �ƽð���?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"�������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����? � ��ȭ�������� �������� ���ؿ�����."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"�κ��丮�� ��ũ ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"����"

	end
end



function NPC_QUEST_621(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"����� ���� �״�! �������� ����� ȭ���� �����帱���? ��~ �׺��� ����.. ����� ��Ʈ���ݸ��� ����� ������ �����غ�����..",2,"����� ���� �˷��ּ���.",3,"�ַ� õ��! Ŀ�� ����!"

			else
				return 2,0,"īī�� ���Ŵ� ��� ���ϼ̳���? �׷��ٸ� ������ �Ѱ��ּ���. ���ִ� ���ݸ����� ����� �帱�Կ�",22,"īī���� �ѱ��"

			end

		else
			return 3,0,"�������� ���� ���̳���? �������� ���ݸ��� ������ �ֽø� ��Ʈ ���ݸ����� ����� �帳�ϴ�. īī�� 30���� �ֽø� ���ݸ��� �ٽ� ����� �帮�� �־��.",42,"��Ʈ ���ݸ� �����",43,"���ݸ� �����"

		end
		

	elseif req == 2 then
		return 3,0,"�����մϴ�! ���͸� ��ٺ��� īī�����Ű� ���ð̴ϴ�. īī������ 30���� ������ ���� �ָ� ���ִ� ���ڷ����� �����帱����.",12,"�ܲ�! ���� ���ؿ���!",13,"�� ������ ������. �˼�"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."


		else

			return 3,0,"īī������ 30���� ���ؿ��̱���! �ݹ� ���ִ� ���ݸ��� ����� �帱�Կ�. ���ݸ��� �׳� ��ŵ� �Ǵµ� ��ȭ�������� �Ĵ� �������� ���ؿ��ø� ��Ʈ���ݸ����� ����� �帳�ϴٿ�.",32,"��������? ���ؿò���!",33,"�׳� �������ϴ�! �ܲ�!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"�Ϳ�! �� ���̽�! �ϴ� ���ݸ� �����ð�, � ��ȭ�������� �������� ���ؿ�����. ���� �帰 ���ݸ��� ���� ������ �ȵǿ�. �������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"�������� �ֳ׿�? ��.. ������ ����帱���? ���ݸ��� �־�� ��Ʈ���ݸ��� ������. ���ݸ��� īī������ 30���� ��ƿ��� ����� �帳�ϴٿ�. �ƽð���?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"�������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����? � ��ȭ�������� �������� ���ؿ�����."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"�κ��丮�� ��ũ ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"����"

	end
end



function NPC_QUEST_622(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"����� ���� �״�! �������� ����� ȭ���� �����帱���? ��~ �׺��� ����.. ����� ��Ʈ���ݸ��� ����� ������ �����غ�����..",2,"����� ���� �˷��ּ���.",3,"�ַ� õ��! Ŀ�� ����!"

			else
				return 2,0,"īī�� ���Ŵ� ��� ���ϼ̳���? �׷��ٸ� ������ �Ѱ��ּ���. ���ִ� ���ݸ����� ����� �帱�Կ�",22,"īī���� �ѱ��"

			end

		else
			return 3,0,"�������� ���� ���̳���? �������� ���ݸ��� ������ �ֽø� ��Ʈ ���ݸ����� ����� �帳�ϴ�. īī�� 30���� �ֽø� ���ݸ��� �ٽ� ����� �帮�� �־��.",42,"��Ʈ ���ݸ� �����",43,"���ݸ� �����"

		end
		

	elseif req == 2 then
		return 3,0,"�����մϴ�! ���͸� ��ٺ��� īī�����Ű� ���ð̴ϴ�. īī������ 30���� ������ ���� �ָ� ���ִ� ���ڷ����� �����帱����.",12,"�ܲ�! ���� ���ؿ���!",13,"�� ������ ������. �˼�"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."


		else

			return 3,0,"īī������ 30���� ���ؿ��̱���! �ݹ� ���ִ� ���ݸ��� ����� �帱�Կ�. ���ݸ��� �׳� ��ŵ� �Ǵµ� ��ȭ�������� �Ĵ� �������� ���ؿ��ø� ��Ʈ���ݸ����� ����� �帳�ϴٿ�.",32,"��������? ���ؿò���!",33,"�׳� �������ϴ�! �ܲ�!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"�Ϳ�! �� ���̽�! �ϴ� ���ݸ� �����ð�, � ��ȭ�������� �������� ���ؿ�����. ���� �帰 ���ݸ��� ���� ������ �ȵǿ�. �������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"�������� �ֳ׿�? ��.. ������ ����帱���? ���ݸ��� �־�� ��Ʈ���ݸ��� ������. ���ݸ��� īī������ 30���� ��ƿ��� ����� �帳�ϴٿ�. �ƽð���?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"�������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����? � ��ȭ�������� �������� ���ؿ�����."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"�κ��丮�� ��ũ ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"����"

	end
end



function NPC_QUEST_623(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"����� ���� �״�! �������� ����� ȭ���� �����帱���? ��~ �׺��� ����.. ����� ��Ʈ���ݸ��� ����� ������ �����غ�����..",2,"����� ���� �˷��ּ���.",3,"�ַ� õ��! Ŀ�� ����!"

			else
				return 2,0,"īī�� ���Ŵ� ��� ���ϼ̳���? �׷��ٸ� ������ �Ѱ��ּ���. ���ִ� ���ݸ����� ����� �帱�Կ�",22,"īī���� �ѱ��"

			end

		else
			return 3,0,"�������� ���� ���̳���? �������� ���ݸ��� ������ �ֽø� ��Ʈ ���ݸ����� ����� �帳�ϴ�. īī�� 30���� �ֽø� ���ݸ��� �ٽ� ����� �帮�� �־��.",42,"��Ʈ ���ݸ� �����",43,"���ݸ� �����"

		end
		

	elseif req == 2 then
		return 3,0,"�����մϴ�! ���͸� ��ٺ��� īī�����Ű� ���ð̴ϴ�. īī������ 30���� ������ ���� �ָ� ���ִ� ���ڷ����� �����帱����.",12,"�ܲ�! ���� ���ؿ���!",13,"�� ������ ������. �˼�"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."


		else

			return 3,0,"īī������ 30���� ���ؿ��̱���! �ݹ� ���ִ� ���ݸ��� ����� �帱�Կ�. ���ݸ��� �׳� ��ŵ� �Ǵµ� ��ȭ�������� �Ĵ� �������� ���ؿ��ø� ��Ʈ���ݸ����� ����� �帳�ϴٿ�.",32,"��������? ���ؿò���!",33,"�׳� �������ϴ�! �ܲ�!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"�Ϳ�! �� ���̽�! �ϴ� ���ݸ� �����ð�, � ��ȭ�������� �������� ���ؿ�����. ���� �帰 ���ݸ��� ���� ������ �ȵǿ�. �������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"�������� �ֳ׿�? ��.. ������ ����帱���? ���ݸ��� �־�� ��Ʈ���ݸ��� ������. ���ݸ��� īī������ 30���� ��ƿ��� ����� �帳�ϴٿ�. �ƽð���?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"�������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����? � ��ȭ�������� �������� ���ؿ�����."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"�κ��丮�� ��ũ ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"����"

	end
end




function NPC_QUEST_624(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 374 ) < 1 then
			if GetSwitchCount(cnum, 373 ) < 1 then
				return 3,0,"����� ���� �״�! �������� ����� ȭ���� �����帱���? ��~ �׺��� ����.. ����� ��Ʈ���ݸ��� ����� ������ �����غ�����..",2,"����� ���� �˷��ּ���.",3,"�ַ� õ��! Ŀ�� ����!"

			else
				return 2,0,"īī�� ���Ŵ� ��� ���ϼ̳���? �׷��ٸ� ������ �Ѱ��ּ���. ���ִ� ���ݸ����� ����� �帱�Կ�",22,"īī���� �ѱ��"

			end

		else
			return 3,0,"�������� ���� ���̳���? �������� ���ݸ��� ������ �ֽø� ��Ʈ ���ݸ����� ����� �帳�ϴ�. īī�� 30���� �ֽø� ���ݸ��� �ٽ� ����� �帮�� �־��.",42,"��Ʈ ���ݸ� �����",43,"���ݸ� �����"

		end
		

	elseif req == 2 then
		return 3,0,"�����մϴ�! ���͸� ��ٺ��� īī�����Ű� ���ð̴ϴ�. īī������ 30���� ������ ���� �ָ� ���ִ� ���ڷ����� �����帱����.",12,"�ܲ�! ���� ���ؿ���!",13,"�� ������ ������. �˼�"


	elseif req == 3 then
		return 0




	elseif req == 12 then
		AddSwitchCount(cnum, 373, 1)


	elseif req == 13 then
		return 0



	elseif req == 22 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."


		else

			return 3,0,"īī������ 30���� ���ؿ��̱���! �ݹ� ���ִ� ���ݸ��� ����� �帱�Կ�. ���ݸ��� �׳� ��ŵ� �Ǵµ� ��ȭ�������� �Ĵ� �������� ���ؿ��ø� ��Ʈ���ݸ����� ����� �帳�ϴٿ�.",32,"��������? ���ؿò���!",33,"�׳� �������ϴ�! �ܲ�!"


		end



	elseif req == 32 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
			AddSwitchCount(cnum, 374, 1)
			return 1,0,"�Ϳ�! �� ���̽�! �ϴ� ���ݸ� �����ð�, � ��ȭ�������� �������� ���ؿ�����. ���� �帰 ���ݸ��� ���� ������ �ȵǿ�. �������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����?"
		end
	



	
	elseif req == 33 then
		if CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	elseif req == 42 then
		if GetItemCount(cnum, 8205, 0) < 1 then
			return 1,0,"�������� �ֳ׿�? ��.. ������ ����帱���? ���ݸ��� �־�� ��Ʈ���ݸ��� ������. ���ݸ��� īī������ 30���� ��ƿ��� ����� �帳�ϴٿ�. �ƽð���?"


		elseif GetItemCount(cnum, 1259, 0) < 1 then
			return 1,0,"�������� �Բ� �����;����� ��Ʈ ���ݸ��� �����帱 �� �־��. �ƽð�����? � ��ȭ�������� �������� ���ؿ�����."


		elseif CheckItemPocket(cnum, 8206, 1) < 0 then
			return 1,0,"�κ��丮�� ��ũ ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8205, -1)
			AddItemCount(cnum, 1259, -1)
			AddItemCount(cnum, 8206, 1)
		end


	elseif req == 43 then
		if GetItemCount(cnum, 8204, 0) < 30 then
			return 1,0,"īī�����Ű� ���ڶ�׿�. 30���� �����;��� ���ݸ��� �����帱 �� �־��."

		elseif CheckItemPocket(cnum, 8205, 1) < 0 then
			return 1,0,"�κ��丮�� ���ݷ��� ���� ������ �����ϴ�."

		else
			AddItemCount(cnum, 8204, -30)
			AddItemCount(cnum, 8205, 1)
		end



	else
		return 1,0,"����"

	end
end