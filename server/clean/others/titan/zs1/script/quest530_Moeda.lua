NPC_QUEST_1153 = function(cnum, reqNumber)
  local resultmsg, req, name, type = nil
  req = reqNumber
  name = GetHeroName(cnum)
  money = GetMoney(cnum)
  Lv = GetHeroLv(cnum)
  JzPenqian = 1000000001
  fuqian = 1000000000
  if req == 1 then
    if GetHeroLv(cnum) > 149 then
      return 3, 0, "Deseja trocar seu dinheiro por moeda?", 11, "Desejo[Trocar]", 12, "Desejo [Saber mais]"
    else
      return 1, 0, "Ola Senhor: " .. name .. "..���!!\n\nN�o � possivel utilizar fun��o pois seu level � 149 ou menor. Confira seu level:" .. Lv .. "\n\nDesculpe, voc� precisa estar level 150 ou maior.."
    end
  elseif req == 11 then
    if JzPenqian < money and GetHeroLv(cnum) > 149 then
      return 2, 0, "Op��o de troca:\n\nOi tudo bem, sou um palha�o brincalh�o e achei uma forma de fazer o seu GP virar uma moeda.\n\nEsta duvidando, clique ne uma op��o que voc� vai olhar seu GP desaparecer e virar uma moeda de troca\n\n As op��es abaixo vai te dar uma escolha para uma moeda.", 111, "[Moeda] 1kkk"
    else
      return 1, 0, "[Error]\n\nOla Senhor: " .. name .. "..!!\n\nDesculpe acho que seu level n�o esta compativel, precisa estar level 150 + verifique seu level >:" .. Lv .. "\n\nOu ent�o pode ter acontecido que n�o achamos 1kkk no seu inventario, tente novamente quando voc� tiver 1kkk."
    end
  elseif req == 12 then
    if GetHeroLv(cnum) > 149 then
      return 2, 0, "Informa��o sobre a moeda:\n\nOla gostaria de saber algumas informa��es sobre a moeda, a moeda de troca tem uma simples fun��o para voc� trocar uma grande quantidade de GP de uma forma rapida pois voc� pode vender e comprar a moeda pelo mesmo pre�o.", 222, "[Entendeu]"
    else
      return 1, 0, "˵��:\n\n�ȼ�û��..."
    end
  elseif req == 111 then
    if money < JzPenqian and GetHeroLv(cnum) > 149 then
      return 1, 0, "������!\n\n�����ϲ���GP�һ�"
    end
    if GetRemainPocket(cnum) < 1 then
      return 1, 0, "������!\n\n�㱳��û���㹻��λ��,���ȥ�ֿ�,�Ѳ���Ҫ�ĵ��߷Ž��ֿ�.�����һ���!!!"
    end
    AddMoney(cnum, -fuqian)
    AddItemCount(cnum, 9482, 1)
    return 1, 0, "Trocado com sucesso, olhe a magica no seu inventario. ^^"
  elseif req == 222 then
    if GetItemCount(cnum, 8624, 0) < 100 then
      return 1, 0, "������!\n\n��ϵ:[��ɫ������ʯ-�ᾧ��]\n\n����100��,���ռ��������һ���..."
    end
    if GetItemCount(cnum, 8627, 0) < 100 then
      return 1, 0, "������!\n\n��ħϵ:[��ɫ������ʯ-�ᾧ��]\n\n����100��,���ռ��������һ���..."
    end
    if GetItemCount(cnum, 8630, 0) < 100 then
      return 1, 0, "������!\n\nֲ��ϵ:[��ɫ������ʯ-�ᾧ��]\n\n����100��,���ռ��������һ���..."
    end
    if GetItemCount(cnum, 8633, 0) < 100 then
      return 1, 0, "������!\n\n����ϵ:[����ɫ������ʯ-�ᾧ��]\n\n����100��,���ռ��������һ���..."
    end
    if GetItemCount(cnum, 8785, 0) < 100 then
      return 1, 0, "������!\n\n��ϵ:[��ɫ������ʯ-�ᾧ��]\n\n����100��,���ռ��������һ���..."
    end
    if GetItemCount(cnum, 8788, 0) < 100 then
      return 1, 0, "������!\n\n��ϵ:[����ɫ������ʯ-�ᾧ��]\n\n����100��,���ռ��������һ���..."
    end
    if GetItemCount(cnum, 8791, 0) < 100 then
      return 1, 0, "������!\n\n��ϵ:[��ɫ������ʯ-�ᾧ��]\n\n����100��,���ռ��������һ���..."
    end
    if GetItemCount(cnum, 8794, 0) < 100 then
      return 1, 0, "������!\n\n��еϵ:[����ɫ������ʯ-�ᾧ��]\n\n����100��,���ռ��������һ���..."
    end
    AddItemCount(cnum, 8624, -100)
    AddItemCount(cnum, 8627, -100)
    AddItemCount(cnum, 8630, -100)
    AddItemCount(cnum, 8633, -100)
    AddItemCount(cnum, 8785, -100)
    AddItemCount(cnum, 8788, -100)
    AddItemCount(cnum, 8791, -100)
    AddItemCount(cnum, 8794, -100)
    AddHeroFreePoint(cnum, 300)
    return 1, 0, "�ɹ��һ��������:300^^"
  end
end


