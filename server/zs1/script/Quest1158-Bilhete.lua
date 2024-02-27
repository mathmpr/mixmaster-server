function NPC_QUEST_1158(cnum,reqNumber) -- NPC Especial

  local resultmsg, req, name, type = nil
  req = reqNumber
  name = GetHeroName(cnum)
  type = GetHeroType(cnum)
  if req == 1 then
      return 3, 0, "Seja bem vindo [" .. name .. "]@Comigo voce podera trocar seu bilhete (Super Boss) ou (Bilhete Dourado) por um NeoBoss ou SuperBoss", 2, "Neo Boss", 15, "Super Boss"

  elseif req == 2 then
    return 7, 0, "[NECESSITA BILHETE DOURADO]@Escolha qual core voce seja obter, vale lembrar deixa seu inventario de cores vazio!!", 3, "[SmallMashimaro]", 4, "[Small Crabs]", 5, "[GreenMiniCat]", 6, "[BlueSoldierHawk]", 7, "[LittleRedHood]", 8, "[Proxima Pagina]"
	
  elseif req == 15 then
    return 9, 0, "[NECESSITA BILHETE SUPER BOSS]@Escolha qual core voce seja obter, vale lembrar deixa seu inventario de cores vazio!!", 16, "[Neo KingGarugon]", 17, "[Neo Anubis]", 18, "[Neo Hellfard]", 19, "[Neo Phoenix]", 20, "[Neo CutterMartins]", 21, "[Neo Napphens]", 22,"[Neo RoofTileGeneral]", 23, "[Neo Destroyer]"
	
    elseif req == 3 then
		return 9, 0, "Escolha o level que voce deseja para seu hench.", 31, "[Lv165]SmallMashimaro", 32, "[Lv170]SmallMashimaro", 33, "[Lv175]SmallMashimaro", 34, "[Lv180]SmallMashimaro", 35, "[Lv185]SmallMashimaro", 36, "[Lv190]SmallMashimaro", 37, "[Lv195]SmallMashimaro", 38, "[Lv200]SmallMashimaro"
	
	elseif req == 31 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
			
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1931, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 32 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1932, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
		
	elseif req == 33 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1933, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 34 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1934, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 35 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1935, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 32 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1936, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 37 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1937, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 38 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1938, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
				
	elseif req == 4 then
		return 9, 0, "Escolha o level que voce deseja para seu hench.", 41, "[Lv165]Small Crabs", 42, "[Lv170]Small Crabs", 43, "[Lv175]Small Crabs", 44, "[Lv180]Small Crabs", 45, "[Lv185]Small Crabs", 46, "[Lv190]Small Crabs", 47, "[Lv195]Small Crabs", 48, "[Lv200]Small Crabs"
     
	elseif req == 41 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1941, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
				
	elseif req == 42 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1942, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 43 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1943, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 44 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1944, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 45 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1945, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 46 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1946, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 47 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1947, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 48 then
	 if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1948, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
				
	elseif req == 5 then
		 return 9, 0, "Escolha o level que voce deseja para seu hench.", 51, "[Lv165]GreenMiniCat", 52, "[Lv170]GreenMiniCat", 53, "[Lv175]GreenMiniCat", 54, "[Lv180]GreenMiniCat", 55, "[Lv185]GreenMiniCat", 56, "[Lv190]GreenMiniCat", 57, "[Lv195]GreenMiniCat", 58, "[Lv200]GreenMiniCat"

		 
	elseif req == 51 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1951, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
	
	elseif req == 52 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1952, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 53 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1953, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 54 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1954, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 55 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1955, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 56 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1956, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 57 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1957, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 58 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1958, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
		elseif req == 6 then
      return 9, 0, "Escolha o level que voce deseja para seu hench.", 61, "[Lv165]BlueSoldierHawk", 62, "[Lv170]BlueSoldierHawk", 63, "[Lv175]BlueSoldierHawk", 64, "[Lv180]BlueSoldierHawk", 65, "[Lv185]BlueSoldierHawk", 66, "[Lv190]BlueSoldierHawk", 67, "[Lv195]BlueSoldierHawk", 68, "[Lv200]BlueSoldierHawk"

	elseif req == 61 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1961, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 62 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1962, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 63 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1963, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 64 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1964, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 65 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1965, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 66 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1966, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 67 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1967, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 68 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1968, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
		
		elseif req == 7 then
      return 9, 0, "Escolha o level que voce deseja para seu hench.", 71, "[Lv165]LittleRedHood", 72, "[Lv170]LittleRedHood", 73, "[Lv175]LittleRedHood", 74, "[Lv180]LittleRedHood", 75, "[Lv185]LittleRedHood", 76, "[Lv190]LittleRedHood", 77, "[Lv195]LittleRedHood", 78, "[Lv200]LittleRedHood"

	elseif req == 71 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1971, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
		elseif req == 72 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1972, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
		elseif req == 73 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1973, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 74 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1974, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 75 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1975, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 76 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1976, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 77 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1977, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 78 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1978, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
		elseif req == 8 then
			return 4,0,"Continuacao dos cores para trocar",9,"[NeoPurpleLeaf]",10,"[NeoBabyStoner]",11,"[NeoSmallKambu]"
			
	elseif req == 9 then
      return 9, 0, "Escolha o level que voce deseja para seu hench.", 81, "[Lv165]NeoPurpleLeaf", 82, "[Lv170]NeoPurpleLeaf", 83, "[Lv175]NeoPurpleLeaf", 84, "[Lv180]NeoPurpleLeaf", 85, "[Lv185]NeoPurpleLeaf", 86, "[Lv190]NeoPurpleLeaf", 87, "[Lv195]NeoPurpleLeaf", 88, "[Lv200]NeoPurpleLeaf"

	  
	elseif req == 81 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1981, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
		elseif req == 82 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1982, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 83 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1983, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 84 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1984, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 85 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1985, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 86 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1986, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 87 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1987, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 88 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1988, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
	elseif req == 10 then
      return 9, 0, "Escolha o level que voce deseja para seu hench.", 91, "[Lv165]NeoBabyStoner", 92, "[Lv170]NeoBabyStoner", 93, "[Lv175]NeoBabyStoner", 94, "[Lv180]NeoBabyStoner", 95, "[Lv185]NeoBabyStoner", 96, "[Lv190]NeoBabyStoner", 97, "[Lv195]NeoBabyStoner", 98, "[Lv200]NeoBabyStoner"
				
				
	elseif req == 91 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1991, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
		elseif req == 92 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1992, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 93 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1993, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 94 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1994, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 95 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1995, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 96 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1996, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 97 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1997, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 98 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 1998, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
				elseif req == 11 then
      return 9, 0, "Escolha o level que voce deseja para seu hench.", 101, "[Lv165]NeoSmallKambu", 102, "[Lv170]NeoSmallKambu", 103, "[Lv175]NeoSmallKambu", 104, "[Lv180]NeoSmallKambu", 105, "[Lv185]NeoSmallKambu", 106, "[Lv190]NeoSmallKambu", 107, "[Lv195]NeoSmallKambu", 108, "[Lv200]NeoSmallKambu"
	
	elseif req == 101 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 2001, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 102 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 2002, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 103 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 2003, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 104 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 2004, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 105 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 2005, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 106 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 2006, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 107 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 2007, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
			elseif req == 108 then
      if GetItemCount(cnum, 9532, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Bilhete Dourado em seu inventario, para obter um compre em nosso webshop .."
						
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9532, -1)
				AddHench(cnum, 2008, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
			end	
		end
		
--SUPER BOSS TICKET		

    elseif req == 16 then
		return 2, 0, "Escolha o level que voce deseja para seu hench.", 160, "[200] Neo KingGarugon"
		
	elseif req == 160 then
	 if GetItemCount(cnum, 9530, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Super Boss Ticket em seu inventario, para obter um compre em nosso webshop .."
			
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9530, -1)
				AddHench(cnum, 1870, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 17 then
		return 2, 0, "Escolha o level que voce deseja para seu hench.", 170, "[200] Neo Anubis"
		
	elseif req == 170 then
	 if GetItemCount(cnum, 9530, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Super Boss Ticket em seu inventario, para obter um compre em nosso webshop .."
			
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9530, -1)
				AddHench(cnum, 1871, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
			
	elseif req == 18 then
		return 2, 0, "Escolha o level que voce deseja para seu hench.", 180, "[200] Neo Hellfard"
		
	elseif req == 180 then
	 if GetItemCount(cnum, 9530, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Super Boss Ticket em seu inventario, para obter um compre em nosso webshop .."
			
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9530, -1)
				AddHench(cnum, 1872, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end

	elseif req == 19 then
		return 2, 0, "Escolha o level que voce deseja para seu hench.", 190, "[200] Neo Phoenix"
		
	elseif req == 190 then
	 if GetItemCount(cnum, 9530, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Super Boss Ticket em seu inventario, para obter um compre em nosso webshop .."
			
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9530, -1)
				AddHench(cnum, 1873, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end

	elseif req == 20 then
		return 2, 0, "Escolha o level que voce deseja para seu hench.", 200, "[200] Neo CutterMartins"
		
	elseif req == 200 then
	 if GetItemCount(cnum, 9530, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Super Boss Ticket em seu inventario, para obter um compre em nosso webshop .."
			
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9530, -1)
				AddHench(cnum, 1874, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end

	elseif req == 21 then
		return 2, 0, "Escolha o level que voce deseja para seu hench.", 210, "[200] Neo Napphens"
		
	elseif req == 210 then
	 if GetItemCount(cnum, 9530, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Super Boss Ticket em seu inventario, para obter um compre em nosso webshop .."
			
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9530, -1)
				AddHench(cnum, 1875, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end

	elseif req == 22 then
		return 2, 0, "Escolha o level que voce deseja para seu hench.", 220, "[200] Neo RoofTileGeneral"
		
	elseif req == 220 then
	 if GetItemCount(cnum, 9530, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Super Boss Ticket em seu inventario, para obter um compre em nosso webshop .."
			
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9530, -1)
				AddHench(cnum, 1876, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end

	elseif req == 23 then
		return 2, 0, "Escolha o level que voce deseja para seu hench.", 230, "[200] Neo Destroyer"
		
	elseif req == 230 then
	 if GetItemCount(cnum, 9530, 0) < 1 then
			return 1,0,"Me desculpe [" .. name .. "] mas nao consegui localizar o Super Boss Ticket em seu inventario, para obter um compre em nosso webshop .."
			
	 elseif GetEmptyHenchPocket(cnum, 1) < 1 then -- Inventario de cores cheio
			return 1,0,"[ERROR]@@Seu inventario de cores esta cheio, limpe e volte novamente aqui!"
			else
			if GetSwitchCount(cnum, 1301) < 1 then
				AddItemCount(cnum, 9530, -1)
				AddHench(cnum, 1877, 1)
				return 1,0,"Obrigado por comprar com a TitanBrasil, aqui esta seu hench"
		end
			end
	

			
	else
		return 0
	end
end
 