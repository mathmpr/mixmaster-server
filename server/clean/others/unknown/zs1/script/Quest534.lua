-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- �Һ�ڻ� ����
function NPC_QUEST_378(cnum,reqNumber) -- �Һ� �ڻ�

req = reqNumber
name = GetHeroName(cnum)
type = GetHeroType(cnum)
random1 = SetRandom(cnum, 1, 2)

	if req == 1 then
--[[    if GetChanelName(cnum) == "CULT" then
      if GetSwitchCount(cnum, 665) < 1 then
        AddSwitchCount(cnum, 665, 1)
        AddItemCount(cnum, 8750, 1)
        ImageQuest(cnum, 0, 29,"��ȣ~! ���ο� �뷯�ΰ�? ���ķ��带 ���� �ͽ��������� ����� ���Ա���! �ڳ׸� ��ٸ��� �־���! ���� ���� ��û�� ȿ���� ������ �� �ִ� ���� �������� ����! �̵��ӵ�! ���ݼӵ�! ���� ������! ��� ȯ�����̴� �� �� �Ẹ���!")
        return;

      else
        if GetSwitchCount(cnum, 470) < 1 then --> �ͽ������� �Ұ�
          ImageQuest(cnum, 2, 29,""..GetChanelName(cnum).."�ͽ��������� ����� �� ���� ȯ���ϳ�~!")
          return;
        else
          ImageQuest(cnum, 0, 32,"����~�ʺ� �뷯! �� �Һ�ڻ���� �ٻڴٱ�~ �� ���� �� �˰� ������ ���� �߾ӿ� �ִ� '����' �� ã�ư�����~! �̹� '����'���� ���� �̾߱⸦ �س����ϱ�~")
        end
      end
    end]]-- ���ķ��� �ű� ĳ���� �̺�Ʈ ������ ����

    	if GetSwitchCount(cnum, 475) < 1 then --> ����Ʈ 3 �Ϸ� �� ��׽� �̵�
			if GetSwitchCount(cnum, 472) < 1 then --> ����Ʈ 3 ���� ����
				if GetSwitchCount(cnum, 479) < 1 then --> ����Ʈ 2 ���� �Ϸ� ����
					if GetSwitchCount(cnum, 471) < 1 then --> ����� ù ��ȭ ����
						if GetSwitchCount(cnum, 470) < 1 then --> �ͽ������� �Ұ�
							ImageQuest(cnum, 2, 29,"Ah! E um novo baller? Eu sou Joe Bickack, que pode ser dito ser a principal autoridade do mundo neste mestrado! Bem-vindo ao mundo do Mixmaster ~!")
						else
							ImageQuest(cnum, 0, 32,"Bastante ~ starter baller! O Dr. Joab esta ocupado. Se voce quiser saber mais, va para 'Patchi' no centro da cidade! Ja lhe falei sobre 'Patchi'")
						end
					else
						ImageQuest(cnum, 0, 69,"Oh ~ bola fresca: "..name.."~! O que voce tem a ver com o Dr. Joe Great? Mas esse corpo agora ah ~! Estou ocupado, entao volte mais tarde.")
					end
				else
					ImageQuest(cnum, 5, 69,"Eu sei que e sua honra. Nao e facil falar com o Dr. Joab.- Ahem! Parece um pouco nu agora! Nesse sentido, o Dr. Joab lhe dara uma missao honrosa!")
				end
			else
				if GetSwitchCount(cnum, 473) < 1 then
					if GetItemCount(cnum, 8423, 0) < 1 then
						if GetSwitchCount(cnum, 474) < 4 then --> ����Ʈ 3�� ���� �ݺ������� ������� ����
							AddSwitchCount(cnum, 474, 1)
							AddItemCount(cnum, 303, 5)
							ImageQuest(cnum, 0, 70,"Deixe a missao honrosa deste Joab ser feito! Eu vou te dar uma recompensa ~! Se voce subir a aldeia, esse cara estara la! Eu lhe darei cinco Pocoes de Recuperacao HP para ajudar a cacar! Se a pocao estiver faltando, volte! Vamos, pegue o molar desse cara!")
						else
							ImageQuest(cnum, 0, 75,"Por que voce continua perguntando ... O porco mutante tambem e forte? Entao eu vou pedir outro balao. Vamos ao mundo mais amplo e ganhamos experiencia atraves de 'Mones'. Verifique a posicao de Monet e encontre-o.")
						end

					else
						if GetOccupiedHenchPocket(cnum, 1) > 19 then
							return 1,0,"Esvazie seu inventario de Hench mais de um espaco e volte ~ e eu lhe darei um Hench bonito!"
						else
							if GetRemainPocket(cnum) < 1 then
								return 1,0,"Nao ha espaco livre suficiente no inventario do item. Vaziara o inventario de itens mais de um espaco?"
							else
								if type == 0 then
									if random1 == 1 then
										EndQuest(cnum, 163) --> ����Ʈ 3 ����Ʈ ����
										SetSwitchCount(cnum, 473, 1) --> ����Ʈ 3 ����
										AddItemCount(cnum, 190, 1) --> ĳ���� �� ��������
										AddItemCount(cnum, 8423, -1) --> ���� �̻� ����
										AddHenchAndState(cnum, 664, 0) --> �Ʊ���� ����
										ImageQuest(cnum, 6, 71,"Demais: "..name.."~! Eu sabia que voce faria isso comigo! Bem, o porco mutante tem um bebe porco. Esse cara esta feliz que ele nao e mutable. E aqui vou dar-lhe armas que serao uteis como eu prometo ~ !")
									elseif random1 == 2 then
										EndQuest(cnum, 163) --> ����Ʈ 3 ����Ʈ ����
										SetSwitchCount(cnum, 473, 1) --> ����Ʈ 3 ����
										AddItemCount(cnum, 8423, -1) --> ���� �̻� ����
										AddItemCount(cnum, 190, 1) --> ĳ���� �� ��������
										AddHenchAndState(cnum, 665, 0) --> �Ʊ���� ����
										ImageQuest(cnum, 6, 71,"Demais: "..name.."! Eu sabia que voce faria isso comigo! Bem, o porco mutante tem um bebe porco. Esse cara esta feliz que ele nao e mutable. E aqui vou dar-lhe armas que serao uteis como eu prometo ~ !!")
									else
										return 0
									end

								elseif type == 1 then
									if random1 == 1 then
										EndQuest(cnum, 163) --> ����Ʈ 3 ����Ʈ ����
										SetSwitchCount(cnum, 473, 1) --> ����Ʈ 3 ����
										AddItemCount(cnum, 8423, -1) --> ���� �̻� ����
										AddItemCount(cnum, 200, 1) --> ĳ���� �� ��������
										AddHenchAndState(cnum, 664, 0) --> �Ʊ���� ����
										ImageQuest(cnum, 6, 72,"Demais "..name.."! Eu sabia que voce faria isso comigo! Bem, o porco mutante tem um bebe porco. Esse cara esta feliz que ele nao e mutable. E aqui vou dar-lhe armas que serao uteis como eu prometo ~ !!")
									elseif random1 == 2 then
										EndQuest(cnum, 163) --> ����Ʈ 3 ����Ʈ ����
										SetSwitchCount(cnum, 473, 1) --> ����Ʈ 3 ����
										AddItemCount(cnum, 8423, -1) --> ���� �̻� ����
										AddItemCount(cnum, 200, 1) --> ĳ���� �� ��������
										AddHenchAndState(cnum, 665, 0) --> �Ʊ���� ����
										ImageQuest(cnum, 6, 72,"Demais "..name.."! Eu sabia que voce faria isso comigo! Bem, o porco mutante tem um bebe porco. Esse cara esta feliz que ele nao e mutable. E aqui vou dar-lhe armas que serao uteis como eu prometo ~ !!")
									else
										return 0
									end



								elseif type == 2 then
									if random1 == 1 then
										EndQuest(cnum, 163) --> ����Ʈ 3 ����Ʈ ����
										SetSwitchCount(cnum, 473, 1) --> ����Ʈ 3 ����
										AddItemCount(cnum, 8423, -1) --> ���� �̻� ����
										AddItemCount(cnum, 220, 1) --> ĳ���� �� ��������
										AddHenchAndState(cnum, 664, 0) --> �Ʊ���� ����
										ImageQuest(cnum, 6, 73,"Demais "..name.."! Eu sabia que voce faria isso comigo! Bem, o porco mutante tem um bebe porco. Esse cara esta feliz que ele nao e mutable. E aqui vou dar-lhe armas que serao uteis como eu prometo ~ !!")
									elseif random1 == 2 then
										EndQuest(cnum, 163) --> ����Ʈ 3 ����Ʈ ����
										SetSwitchCount(cnum, 473, 1) --> ����Ʈ 3 ����
										AddItemCount(cnum, 8423, -1) --> ���� �̻� ����
										AddItemCount(cnum, 220, 1) --> ĳ���� �� ��������
										AddHenchAndState(cnum, 665, 0) --> �Ʊ���� ����
										ImageQuest(cnum, 6, 73,"Demais "..name.."! Eu sabia que voce faria isso comigo! Bem, o porco mutante tem um bebe porco. Esse cara esta feliz que ele nao e mutable. E aqui vou dar-lhe armas que serao uteis como eu prometo ~ !!")
									else
										return 0
									end



								elseif type == 3 then
									if random1 == 1 then
										EndQuest(cnum, 163) --> ����Ʈ 3 ����Ʈ ����
										SetSwitchCount(cnum, 473, 1) --> ����Ʈ 3 ����
										AddItemCount(cnum, 8423, -1) --> ���� �̻� ����
										AddItemCount(cnum, 210, 1) --> ĳ���� �� ��������
										AddHenchAndState(cnum, 664, 0) --> �Ʊ���� ����
										ImageQuest(cnum, 6, 74,"Demais "..name.."! Eu sabia que voce faria isso comigo! Bem, o porco mutante tem um bebe porco. Esse cara esta feliz que ele nao e mutable. E aqui vou dar-lhe armas que serao uteis como eu prometo ~ !!")
									elseif random1 == 2 then
										EndQuest(cnum, 163) --> ����Ʈ 3 ����Ʈ ����
										SetSwitchCount(cnum, 473, 1) --> ����Ʈ 3 ����
										AddItemCount(cnum, 8423, -1) --> ���� �̻� ����
										AddItemCount(cnum, 210, 1) --> ĳ���� �� ��������
										AddHenchAndState(cnum, 665, 0) --> �Ʊ���� ����
										ImageQuest(cnum, 6, 74,"Demais "..name.."! Eu sabia que voce faria isso comigo! Bem, o porco mutante tem um bebe porco. Esse cara esta feliz que ele nao e mutable. E aqui vou dar-lhe armas que serao uteis como eu prometo ~ !!")
									else
										return 0
									end

								else
									return 0
								end

							end
						end
					end
				else
					SetSwitchCount(cnum, 475, 1) --> ����Ʈ 3 �Ϸ� �� ��׽��� �̵�
					ImageQuest(cnum, 98, 75,"Demais "..name.."! Eu sabia que voce faria isso comigo! Bem, o porco mutante tem um bebe porco. Esse cara esta feliz que ele nao e mutable. E aqui vou dar-lhe armas que serao uteis como eu prometo ~ !!")
				end

			end
		else
			ImageQuest(cnum, 98, 75,""..name.."~! Por que voce voltou? Voce esta perdido? Vou leva-lo de volta para Monet. Vamos conversar com Monet.")
		end


	elseif req == 2 then
		ImageQuest(cnum, 3, 30,"O que e um mestre de mixagem? Mixmaster e o lendario dragao que pode combinar e manipular todos os monstros do mundo. Ahem ~! Eu nem sei que voce e iniciante.")

	elseif req == 3 then
		ImageQuest(cnum, 4, 31,"HENCH diz-lhe um monstro domesticado. Alem disso, voce pode \"misturar\" um ao outro para criar um Hench mais poderoso. Se voce trabalha duro, voce pode se tornar um \"legendario guerreiro mix master\"! Voce ve o suficiente para tornar este horrivel mundo cheio de monstros pacificos.")

	elseif req == 4 then
		SetSwitchCount(cnum, 470, 1) --> �ͽ������� �Ұ� �Ϸ�
		ImageQuest(cnum, 0, 32,"Eu espero ansioso por isso. Agora estou ocupado! Conte-me mais? Nao! Eu sou o Dr. Joab, que esta muito ocupado ~ Visite 'Patchi' no centro da aldeia ~! Vou contar 'Patchi'")

	elseif req == 5 then
		ImageQuest(cnum, 7, 70,"Ha um relatorio no norte da aldeia de que um dos porcos gigantes esta atacando aldeoes. Ha uma necessidade para ele estudar a mutacao, e se ele tiver seu molar, ele pode descobrir por que ele se tornou um mutante. Se voce derruba-lo e traga seus molares, eu pagarei voce de volta. Entao eu estarei esperando!")

	elseif req == 6 then
		SetSwitchCount(cnum, 475, 1) --> ����Ʈ 3 �Ϸ� �� ��׽��� �̵�
		ImageQuest(cnum, 98, 75,""..name.."~! Agora que voce tirou completamente o tee novato, vamos fazer uma jornada para se tornar um verdadeiro mestre da mistura. Ha um Monet que pode deformar a cidade de Maridita. Fale com Monet ~ Eu vou te mudar. Entao faca uma excelente viagem !!")

	elseif req == 7 then
		SetSwitchCount(cnum, 472, 1) --> ����Ʈ 3 ����
		StartQuest(cnum, 163) --> ����Ʈ 3 ����Ʈ �߰�

	elseif req == 98 then
		MoveZone(cnum, 130, 101) --> ��׽� ������ �̵�


	else
		return 0
	end

end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- �Һ�ڻ� ��
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ���� ����
function NPC_QUEST_379(cnum,reqNumber) -- ����

req = reqNumber
name = GetHeroName(cnum)
type = GetHeroType(cnum)
random1 = SetRandom(cnum, 1, 20)


hench1 = GetHench(cnum, 1, 9, 0)
bhench1 = GetHench(cnum, 0, 9, 0)
hench2 = GetHench(cnum, 1, 13, 0)
bhench2 = GetHench(cnum, 0, 13, 0)
hench3 = GetHench(cnum, 1, 17, 0)
bhench3 = GetHench(cnum, 0, 17, 0)
hench4 = GetHench(cnum, 1, 49, 0)
bhench4 = GetHench(cnum, 0, 49, 0)
hench5 = GetHench(cnum, 1, 53, 0)
bhench5 = GetHench(cnum, 0, 53, 0)
hench6 = GetHench(cnum, 1, 85, 0)
bhench6 = GetHench(cnum, 0, 85, 0)
hench7 = GetHench(cnum, 1, 89, 0)
bhench7 = GetHench(cnum, 0, 89, 0)
hench8 = GetHench(cnum, 1, 113, 0)
bhench8 = GetHench(cnum, 0, 113, 0)
hench9 = GetHench(cnum, 1, 117, 0)
bhench9 = GetHench(cnum, 0, 117, 0)
hench10 = GetHench(cnum, 1, 121, 0)
bhench10 = GetHench(cnum, 0, 121, 0)
hench11 = GetHench(cnum, 1, 149, 0)
bhench11 = GetHench(cnum, 0, 149, 0)
hench12 = GetHench(cnum, 1, 157, 0)
bhench12 = GetHench(cnum, 0, 157, 0)
hench13 = GetHench(cnum, 1, 161, 0)
bhench13 = GetHench(cnum, 0, 161, 0)
hench14 = GetHench(cnum, 1, 201, 0)
bhench14 = GetHench(cnum, 0, 201, 0)
hench15 = GetHench(cnum, 1, 232, 0)
bhench15 = GetHench(cnum, 0, 232, 0)
hench16 = GetHench(cnum, 1, 243, 0)
bhench16 = GetHench(cnum, 0, 243, 0)
hench17 = GetHench(cnum, 1, 244, 0)
bhench17 = GetHench(cnum, 0, 244, 0)
hench18 = GetHench(cnum, 1, 252, 0)
bhench18 = GetHench(cnum, 0, 252, 0)
hench19 = GetHench(cnum, 1, 253, 0)
bhench19 = GetHench(cnum, 0, 253, 0)
hench20 = GetHench(cnum, 1, 255, 0)
bhench20 = GetHench(cnum, 0, 255, 0)

	if req == 1 then
		if GetSwitchCount(cnum, 479) < 1 then --> ����Ʈ 2 ���� �Ϸ� ����
			if GetSwitchCount(cnum, 478) < 1 then--> ����Ʈ 2 ���� ����
				if GetSwitchCount(cnum, 476) < 1 then --> ����Ʈ 1 ���� ����
					ImageQuest(cnum, 2, 33,"�ȳ�? "..name.."��~! ���� '����' ��� ��! �Һ�ڻ�Կ��� ���� �̾߱⸦ ���� �����~! ��~�츮 ���� �ͽ������Ϳ� ���� �� �� �˾ƺ���? �켱 ���� ȭ�� �Ʒ��� �ִ� ��ư���� ��ɿ� ���� �˾ƺ���~!")
				else
					if GetItemCount(cnum, 259, 0) < 1 and GetItemCount(cnum, 259, 2) < 1 then
						if GetMoney(cnum) < 150 then
							SetSwitchCount(cnum, 477, 1) --> ����Ʈ 1 �Ϸ�
							ImageQuest(cnum, 12, 39,"GP�� ��� ��~���ž�? ��� �ƸӸ� ����� �ʾұ���? ��·�� ����~ �⺻������ ������ �����ϴ� ����� �˾ƾ� �ϰ���? ȭ�� �Ʒ��� �ִ� �޴� �߿� '������'�� Ŭ���ϸ�~")
						else
							ImageQuest(cnum, 0, 43,"'������'���Լ� '��� �Ƹ�'�� ��� ������ ���ƿ��� ��. ����� ����?")
						end
					else
						if GetRemainPocket(cnum) < 1 then
							return 1,0,"������ �κ��丮�� ���������� ������. ������ �κ��丮�� 1ĭ �̻� ���� �ٽ� �÷�?"
						else
							EndQuest(cnum, 161) --> ����Ʈ 1 ����Ʈ ����
							SetSwitchCount(cnum, 477, 1) --> ����Ʈ 1 �Ϸ�
							ImageQuest(cnum, 12, 39,"����! '��� �Ƹ�'�� ��Ա���? ���߾�! ���� �װ� ��� �������� �����ϴ� ����� �˷��ٰ�~! ȭ�� �Ʒ��� �ִ� �޴� �߿� '������'�� Ŭ���ϸ�~")
						end
					end
				end
			else
				if hench1 > 0 or hench2 > 0 or hench3 > 0 or hench3 > 0 or hench4 > 0 or hench5 > 0 or hench6 > 0 or hench7 > 0 or hench8 > 0 or hench9 > 0 or hench10 > 0 or hench11 > 0 or hench12 > 0 or hench13 > 0 or hench14 > 0 or hench15 > 0 or hench16 > 0 or hench17 > 0 or hench18 > 0 or hench19 > 0 or hench20 > 0 or bhench1 >0 or bhench2 >0 or bhench3 >0 or bhench4 >0 or bhench5 >0 or bhench6 >0 or bhench7 >0 or bhench8 >0 or bhench9 >0 or bhench10 >0 or bhench11 >0 or bhench12 >0 or bhench13 >0 or bhench14 >0 or bhench15 >0 or bhench16 >0 or bhench17 >0 or bhench18 >0 or bhench19 >0 or bhench20 >0 then
					if GetOccupiedHenchPocket(cnum, 1) > 19 then
						return 1,0,"��ġ �κ��丮�� 1ĭ �̻� ���� �ٽ� ��~�׷��� ���� ��ġ �� ������ �ٰ�!"
					else
						EndQuest(cnum, 162) --> ����Ʈ 2 ����Ʈ ����
						SetSwitchCount(cnum, 479, 1) --> ����Ʈ 2 ����
						if random1 == 1 then
							AddHenchAndState(cnum, 9, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 2 then
							AddHenchAndState(cnum, 13, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 3 then
  							AddHenchAndState(cnum, 17, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 4 then
  							AddHenchAndState(cnum, 49, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 5 then
  							AddHenchAndState(cnum, 53, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 6 then
  							AddHenchAndState(cnum, 85, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 7 then
  							AddHenchAndState(cnum, 89, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 8 then
	 						AddHenchAndState(cnum, 113, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 9 then
  							AddHenchAndState(cnum, 117, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 10 then
  							AddHenchAndState(cnum, 121, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 11 then
  							AddHenchAndState(cnum, 149, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 12 then
  							AddHenchAndState(cnum, 157, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 13 then
  							AddHenchAndState(cnum, 161, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 14 then
  							AddHenchAndState(cnum, 201, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 15 then
  							AddHenchAndState(cnum, 232, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 16 then
  							AddHenchAndState(cnum, 243, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 17 then
  							AddHenchAndState(cnum, 244, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 18 then
  							AddHenchAndState(cnum, 252, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 19 then
  							AddHenchAndState(cnum, 253, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						elseif random1 == 20 then
  							AddHenchAndState(cnum, 255, 0) --> ���� ��ġ
							ImageQuest(cnum, 0, 68,"�Ǹ���~! �ͽ��� �����߱���!! ���� ���� �װ� ������ ������ ��ġ �� ������ �ٰ�. �Һ�ڻ�Բ��� ������ �ʿ��Ͻôٴµ� �ѹ� ������?")
						else
							return 0
						end
					end
				else
					ImageQuest(cnum, 0, 57,"��ġ �ͽ��� �����ؼ� ������ �������� ��~! �ͽ��� �����ؼ� ���� ��ġ��� � ��ġ�� ������~! �𸣴� ���� ������ ���� ���� �������� ��ô� �� �в� ���޾���� ��~��ٸ���~!!�� ��Ʈ�ϳ� �ٰ�. ����ڿ� �����ڸ� �ͽ��ϸ� ��Ű���� ����~���� ��.")
				end
			end
		else
			ImageQuest(cnum, 0, 68,"�Һ�ڻ�Բ� � ���� ���� ������ �ʿ��Ͻõ�~")
		end

	elseif req == 2 then
		ImageQuest(cnum, 3, 41,"ĳ����: �� ��ư�� ������ ���� ĳ������ ����, ����ġ, HP �� ĳ������ ��� ������ �� �� �־�.")

	elseif req == 3 then
		ImageQuest(cnum, 4, 40,"�ھ�: �� ��ư�� ������ ���� ��ġ���� �����Ǿ� �ִ� �κ��丮�� �� �� �־�. ��ġ���� ����, ���� �� ��ġ���� ��� ���� �� �� �ְ� �� ��ư�� ���� ��ġ�� �����Ͽ� ������ �ٴ� �� ������ �� �˾Ƶξ�� ��~!")

	elseif req == 4 then
		ImageQuest(cnum, 5, 39,"������: �װ� ������ �ִ� �����۵� ��θ� �� �� �־�. �װ� ������ ���, ������ �ִ� ��� Ȯ�� �� �� �־�. ���� ����ϴ� ��ư�̴� �� ����� �ε��� ��.")

	elseif req == 5 then
		ImageQuest(cnum, 6, 38,"��ų: �װ� ����� �� �ִ� ��ų ���� Ȯ���ϰ� ����� �� �־�. ���� ���� ��ġ�� ��ų�� ���⼭ Ȯ�� �� �� ������ �����ϵ��� ��.")

	elseif req == 6 then
		ImageQuest(cnum, 7, 37,"Ŀ�´�Ƽ: �װ� ��� ģ������ ���� ����, �̸�, ��ġ ���� �� �� �־�.")

	elseif req == 7 then
		ImageQuest(cnum, 8, 36,"����Ʈ: �װ� �����ϰ� �ִ� ����Ʈ�� �� �� �־�.")

	elseif req == 8 then
		ImageQuest(cnum, 9, 35,"��: ��ü ������ �� �� �־�. �װ� ��� �ִ��� �˱� ����ų� �������� ã�ư� �� �������� ���ϰ���?")

	elseif req == 9 then
		ImageQuest(cnum, 10, 42,"����: �������� �� �� �ִ� �� �������� ���� ��. ȿ�� ���� �����۵��� ������ �ѹ� �̿��� ��.")

	elseif req == 10 then
		ImageQuest(cnum, 11, 34,"�ý���: �����, ĳ���� ���� ȭ�������� �̵�, ���� ���� �� ����� �� �� �־�. ���� �ϴ� ��ư�� ��ɵ��� ���� �˰���?")

	elseif req == 11 then
		ImageQuest(cnum, 99, 43,"�켱 ���� ������ ������ �ϳ� �� �ٰ�~ ���� ���� ���� �ִ� '������' ���Լ� '��� �Ƹ�' �� �����ؼ� ������ ������ ����? ���� 5000GP�� �ٰ�. �� ������ '��� �Ƹ�' �� �� ���� ��� �����ž�.")

	elseif req == 99 then
		AddMoney(cnum, 5000)
		SetSwitchCount(cnum, 476, 1) --> ����Ʈ 1 ����
		StartQuest(cnum, 161) --> ����Ʈ 1 ����Ʈ �߰�

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ����Ʈ 1 �Ϸ� �� ����
	elseif req == 12 then
		ImageQuest(cnum, 13, 44,"'�κ��丮' â�� ��Ÿ��! â�� ������ ���� ���� '�������� ���' ���� �� �� �ְ�, â�� �Ʒ����� ���� '���� �� ��� ������ ������' ���� �� �� �־�.")

	elseif req == 13 then
		ImageQuest(cnum, 14, 45,"'�κ��丮' â�� �Ʒ� �κп� �����ϰ� ���� �������� ���콺�� Ŭ���� ä�� ��� ���� ĳ���� ���� ȸ�� ���� ���� ����� �ִ� ���� ������ ��. ��, �ƸӶ�� �Ƹ��ڸ���, ���̶�� �� �ڸ��� ���� ������ ��. ����� ����?")

	elseif req == 14 then
		ImageQuest(cnum, 15, 46,"�������� ��� ������ ��ó�� �������� ���� �� �� �� �� ����~ �? �� �� �ְھ�?")

	elseif req == 15 then
		ImageQuest(cnum, 16, 47,"�� �ϳ�! �ͽ������Ϳ��� '�ҵ�', '��Ŭ', '����', '��' �̷��� 4������ ���Ⱑ �־�. ")

	elseif req == 16 then
		ImageQuest(cnum, 17, 48,"�� ���� ĳ���ʹ� �ڽŸ��� ����. ��, �Ѱ��� ������ ���⸸�� �ٷ� �� �־�. ��Ʈ�� '�ҵ�', ���� '��Ŭ' �渱�� '����' ���̴� '��'. �ʿ��� �´� ���⸦ �˾Ƶε��� ��~!")

	elseif req == 17 then
		ImageQuest(cnum, 18, 49,"���� ���� ���ο� �̼��� �ϳ� �ٰ�. �ͽ��������� �ٽ��̶�� �� �� �ִ� ��ġ�ͽ�!! �װ� �ѹ� �غ��� �ž�~! �����ϰ� ��ġ �ͽ��� ���� ������ �ٰ� ���� ����� ������ �� ����~ ��ġ �ͽ��� �ϱ� ���ؼ� ���� ���̴� '�ͽ�����' ���� ���� ��~")

	elseif req == 18 then
		ImageQuest(cnum, 19, 50,"'�ͽ�����' ���� ���� �ɾ� '�ͽ�' �� �����ϸ� ���ʿ��� '�ͽ��ϱ�' â, �����ʿ��� �װ� ���� ��ġ���� �� �� �ִ� '��������' â�� ��Ÿ��~")

	elseif req == 19 then
		ImageQuest(cnum, 20, 51,"'�װ� ���� �� ��ġ�� ���� �ͽ� �� �� �ž� �׷���, ��ġ�� ���������� �Ǿ�����? �� ���´� ��ġ�� '��ȭ' �� ���¾�. '��ȭ' ���¿����� �ͽ��� �� �� ����.  �� ���¿��� ��ġ�� 'ȸ��' ���Ѿ� �ͽ��� �� �� �־�.")

	elseif req == 20 then
		ImageQuest(cnum, 21, 52,"'�ͽ�����' �� '�ھ�ȸ��'�� ���� ��ġ�� 'ȸ��' ��ų �� �־�. ���� '�ھ�ȸ��' â���� '��üȸ��'�� ������ �װ� ���� ��� ��ġ�� 'ȸ��' ��. '��������' â���� �� ������ �����ؼ� ȸ���� �� �� �־�. ���� ȸ���� ��ġ�� ������?")

	elseif req == 21 then
		ImageQuest(cnum, 22, 53,"���� 'ȸ��' �� ��ġ�� ������ �ٽ� '�ͽ�'�� �غ���? '�ͽ�����'�� '�ͽ�'�� ������~ �׸��� �װ� ������ �ִ� ��ġ ���� �ͽ���迡 �ϳ��� ����� ������ ��. ���ʿ� �ϳ�, �����ʿ� �ϳ�.")

	elseif req == 22 then
		ImageQuest(cnum, 23, 54,"����! �߿��� �� �־�! �ͽ� �ÿ��� �ݵ�� ������ �ٸ� ��ġ ������ �ͽ��� �� �� �־�.")

	elseif req == 23 then
		ImageQuest(cnum, 24, 55,"�ͽ��� ������ ��ġ���� �ͽ���迡 ��� ������ ��� �޽����� ��Ÿ��~! ��ġ�ͽ��� ������ ���� �ִٴ� �ž�. ������, �׷��ٰ� �ͽ��� ������ �� ������? ���� �Ʒ� �ͽ� ��ư�� ������ �ͽ��� ���� ��!")

	elseif req == 24 then
		ImageQuest(cnum, 25, 56,"��ġ �ͽ��� �����ϰ� �Ǹ� �� ������ ���ο� ��ġ�� ���� �� �־�! �ͽ� �ϴ� ����� ���� �� �˰���?")

	elseif req == 25 then
		ImageQuest(cnum, 26, 57,"��~������ �װ� �ͽ��� �� ���� �ž�~! �ͽ��� �ؼ� � ��ġ�� ���͵� ����~! �ͽ��� �����ؼ� ���� ��ġ�� ������ ��������, �װ� ������ ��ġ�� ������ ��ġ�� �� ���� �ٰ�. �켱 ���͸� ����ؼ� ��ġ�� ���� ���߰���? ���⼭ ������ �������� ���� ���� �������� ���! ���� �����Բ� ��������� �����!")

	elseif req == 26 then
		if GetItemCount(cnum, 259, 0) < 1 or GetItemCount(cnum, 259, 2) < 1 then
			ImageQuest(cnum, 27, 38,"���� �ʾ���? ȭ�� �Ʒ��� '������' �޴��� Ŭ���ϸ� '�κ��丮'â�� �����ϱ� �ű⼭ ����, ���� �����غ�~! '��� �Ƹ�'�� ��԰�, �̾߱⵵ �� ����־����� �ʿ��� ��︮�� ���⸦ �ϳ� �ٰ�! �����غ�~")
			if type == 0 then
				AddItemCount(cnum, 189, 1)
			elseif 	type == 1 then
				AddItemCount(cnum, 199, 1)
			elseif 	type == 2 then
				AddItemCount(cnum, 219, 1)
			elseif 	type == 3 then
				AddItemCount(cnum, 209, 1)
			end


		else
			ImageQuest(cnum, 27, 38,"���� �ʾ���? ȭ�� �Ʒ��� '������' �޴��� Ŭ���ϸ� '�κ��丮'â�� �����ϱ� �ű⼭ ����, ���� �����غ�~! '��� �Ƹ�'�� ����µ� ���������� �̾߱⸦ �� ����־����� �ʿ��� ��︮�� ���⸦ �ϳ� �ٰ�! �����غ�~")
			if type == 0 then
				AddItemCount(cnum, 189, 1)
			elseif 	type == 1 then
				AddItemCount(cnum, 199, 1)
			elseif 	type == 2 then
				AddItemCount(cnum, 219, 1)
			elseif 	type == 3 then
				AddItemCount(cnum, 209, 1)
			end

		end

	elseif req == 27 then
		ImageQuest(cnum, 28, 57,"��ġ �ͽ��� �����ؼ� ������ �������� ��~! �ͽ��� �����ؼ� ���� ��ġ��� � ��ġ�� ������~! �𸣴°� ������ ���� ���� �������� ��ô� �� �в� ������� ��~��ٸ���~!!")


	elseif req == 28 then
		SetSwitchCount(cnum, 478, 1)
		StartQuest(cnum, 162) --> ����Ʈ 2 ���� ����Ʈ �߰�



	else
		return 0
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ���� ��
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ���� ���� ����
function NPC_QUEST_380(cnum,reqNumber) -- ���� ����

req = reqNumber

	if req == 1 then
		return 5,0,"����! �� ������Ÿ �ձ����� ���� �뷯�� ������ ���� �İ� �� ���������̴�! �ŵ������ϰ�! ������ �����ϰڴ�!@@������ �˰� ������!?",2,"�������",7,"�ھ�/��ġ",10,"��ġ�ͽ�",17,"������"

-- �������

	elseif req == 2 then
		ImageQuest(cnum, 3, 58,"����ϴ� ���� �������ְڴ�! �̰����� ������ �������� �� �׸��� ���� ���͵��� ���� ���̴�!")

	elseif req == 3 then
		ImageQuest(cnum, 4, 59,"������ ȭ��ǥ�� ����Ű�� �͵��� ���̴°�? ���͵��� ������ ó���ؾ� �� ���ʹ�! ���� �ؿ��� ���� ����غ��� ���� �ۿ� ������ ���� ����� �� ���� ���̴�.")

	elseif req == 4 then
		ImageQuest(cnum, 5, 60,"���Ϳ��� ���콺�� �÷������� �������޸� ũ����Ż�� ����� Ŀ���� ���и�ġ�� ������� ���ϰ� �ȴ�. ���콺 Ŀ���� ���и�ġ�� ����� �� ������ �̸��� HP�� �� �� �ְ�, �� ���¿��� ���콺 ���� ��ư�� Ŭ���ϸ� ������ �ȴ�. ���� �������� �ʳ�?")

	elseif req == 5 then
		ImageQuest(cnum, 6, 61,"���͸� ����ϴٺ��� ���Ͱ� ������, �ھ ����߸� ���� �ִ�. ��� �� ���� ��� �ٴ��� ���캸����! 'ALT Ű'�� ������ �ٴڿ� ������ �����۵��� �̸��� �� �� ������ �����ϵ���!")

	elseif req == 6 then
		ImageQuest(cnum, 0, 62,"���Ϳ��� ���� �߿��� HP ������ ö���� �ؾ��Ѵ�! HP�� ���Ǹ� '����' ���¿� ������ �˾��Ǵ� �ý��� â�� '������ �̵�' ��ư�� ������ '����' ���¿��� ��� ������ �̵��ϰ� ����. ���� ��ġ�� HP�� �׻� üũ�ϵ���!")

-- �ھ�/��ġ

	elseif req == 7 then
		ImageQuest(cnum, 8, 63,"�ھ�/��ġ���� �迭�� �ִ�. �巡��, �Ǹ�, ����, ��, ����, �Ĺ�, �̽��͸�, ��Ż �̷��� �� 8�� �迭�� �ִµ� �迭���� Ư¡�� ������ �� �̿��غ�����!")

	elseif req == 8 then
		ImageQuest(cnum, 9, 64,"��ġ�� '����' �̶�� �� �־�.  '����', '����', '��Ȯ��', '������', '�Ӽ�' �̷��� 5���� ����. �� ���� ���� Ư¡�� ������ �־�.")

	elseif req == 9 then
		ImageQuest(cnum, 0, 65,"��ġ�� �ʿ� ���� ������ ����! ��ġ�� ������ �ö� ������ ���⿡ ���� �ڵ����� �ɷ�ġ�� �ö󰡴� �� �� �����ϵ���!!")

-- ��ġ�ͽ�

	elseif req == 10 then --> �ͽ����� �� �̹���
		ImageQuest(cnum, 11, 50,"�װ� '�ͽ�����'�� ���� ���� �� �ٰ�~�����Է� �ͼ� '�ͽ�' �� �����ϸ� ���ʿ��� '�ͽ��ϱ�' â, �����ʿ��� �װ� ���� ��ġ���� �� �� �ִ� '��������' â�� ��Ÿ��~")

	elseif req == 11 then --> �ͽ����� �� �̹���
		ImageQuest(cnum, 12, 51,"�װ� ���� �� ��ġ�� ���� �ͽ� �� ���°ž� �׷���, ��ġ�� ���������� �Ǿ�����? �� ���´� ��ġ�� '��ȭ' �� ���¾�. '��ȭ' ���¿����� �ͽ��� �� �� ����.  �� ���¿��� ��ġ�� ��ȸ���� ���Ѿ� �ͽ��� �� �� �־�.")

	elseif req == 12 then --> �ͽ����� �� �̹���
		ImageQuest(cnum, 13, 52,"'�ھ�ȸ��'�� ���� ��ġ�� 'ȸ��' ��ų �� �־�. ���� '�ھ�ȸ��' â���� '��üȸ��'�� ������ �װ� ���� ��� ��ġ�� 'ȸ��' ��. '��������' â���� �� ������ �����ؼ� ȸ���� �� �� �־�. ���� ȸ���� ��ġ�� ������?")

	elseif req == 13 then --> �ͽ����� �� �̹���
		ImageQuest(cnum, 14, 53,"���� 'ȸ��' �� ��ġ�� ������ �ٽ� '�ͽ�'�� �غ���? ������ �ͼ� '�ͽ�'�� ������~ �׸��� �װ� ������ �ִ� ��ġ ���� �ͽ���迡 �ϳ��� ����� ������ ��. ���ʿ� �ϳ�, �����ʿ� �ϳ�.")

	elseif req == 14 then --> �ͽ����� �� �̹���
		ImageQuest(cnum, 15, 54,"����! �߿��� �� �־�! �ͽ� �ÿ��� �ݵ�� ������ �ٸ� ��ġ������ �ͽ��� �� �� �־�.")

	elseif req == 15 then --> �ͽ����� �� �̹���
		ImageQuest(cnum, 16, 55,"�ͽ��� ������ ��ġ���� �ͽ���迡 ��� ������ ��� �޽����� ��Ÿ��~! ��ġ�ͽ��� ������ ���� �ִٴ� �ž�. ������, �׷��ٰ� �ͽ��� ������ �� ������? ���� �Ʒ� �ͽ� ��ư�� ������ �ͽ��� ���� ��.")

	elseif req == 16 then --> �ͽ����� �� �̹���
		ImageQuest(cnum, 0, 56,"��ġ �ͽ��� �����ϰ� �Ǹ� �� ������ ���ο� ��ġ�� ���� �� �־�! �ͽ� �ϴ� ����� ���� �� �˰���?")

-- ������

	elseif req == 17 then
		ImageQuest(cnum, 18, 66,"���͸� ����ϴٺ��� ĳ���Ͱ� �������� �ϴ� ��찡 �ִ�. �׷��� �Ʒ� ��ư���� ��ĳ���͡��� ������ 'ĳ��������' â�� �˾�����. ���⼭ ���� ������ġ�� �̿��Ͽ� ��, ��ø, ��Ȯ, ��� ���� �ִ� + ��ũ�� �� �ɷ��� �ø� �� �ִ�.")

	elseif req == 18 then
		ImageQuest(cnum, 0, 67,"�װ� ������ ���� �� ��, ��ø, ��Ȯ, �� ��� ���� ������ġ�� ����ϴ°��� ���� ���� �ɷ��� �޶����� ���� �ٸ� ĳ���ͷ� ������ �� �ִ�. �׷��ٰ� �ʹ� ��������� ������ �ض�. ���� ���� ��ġ�� �����ϱ�!")


	else
		return 0
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ���� ���� ��
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ��׽� ����

function NPC_QUEST_383(cnum, reqNumber) -- ��׽�

req = reqNumber

	if req == 1 then
		return 2,0,"�ȳ��ϼ���. ���� ��׽���� �մϴ�.  ���Ͻô� �������� �̵� ���ѵ帮�� ���� �ϰ� �־��. ������ ������Ÿ�θ� �̵� ���� �帮�� ������, �� ������ �ʵ忡 �ִ� �� ������� �� �� ���� ������ �̵����� �帮����. ������ �ּ���.",2,"������Ÿ�� �̵�"

	elseif req == 2 then
		EndQuest(cnum, 161) -- ����Ʈ 1 ����Ʈ ����
		EndQuest(cnum, 162) -- ����Ʈ 2 ����Ʈ ����
		EndQuest(cnum, 163) -- ����Ʈ 3 ����Ʈ ����
		AddItemCount(cnum, 8423, -999) --> ���̵��� �̻� ����
		MoveZone(cnum, 57, 254)
		SetReviveZone(cnum, 57)

	else
		return 0
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ��׽� ��
