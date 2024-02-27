function NPC_QUEST_377(cnum, reqNumber)

req = reqNumber
name = GetHeroName(cnum)



	if req == 1 then
		return 4,0, "[SISTEMA DE STATUS]@@Olá [" .. name .. "], você deseja comprar status para seu personagem ? Caso deseje comprar escolha alguma opção abaixo tendo a moeda de troca.",2,"Status 3600",3,"Status 2400",4,"Status 1200"



	elseif req == 2 then
	 if GetItemCount(cnum, 9605, 0) < 1 then
			return 1,0,"[ERROR]@@ Olá, [" .. name .. "] não consegui localizar a moeda de 3600 Pontos, para obter um compre em nosso webshop .."
			else
				AddItemCount(cnum, 9605, -1)
				AddHeroFreePoint(cnum,3600)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end


	elseif req == 3 then
	 if GetItemCount(cnum, 9606, 0) < 1 then
			return 1,0,"[ERROR]@@ Olá, [" .. name .. "] não consegui localizar a moeda de 2400 Pontos, para obter um compre em nosso webshop .."
			else
				AddItemCount(cnum, 9606, -1)
				AddHeroFreePoint(cnum,2400)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end

	elseif req == 4 then
	 if GetItemCount(cnum, 9607, 0) < 1 then
			return 1,0,"[ERROR]@@ Olá, [" .. name .. "] não consegui localizar a moeda de 1200 Pontos, para obter um compre em nosso webshop .."
			else
				AddItemCount(cnum, 9607, -1)
				AddHeroFreePoint(cnum,1200)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end


	else
		return 0

	end

end
