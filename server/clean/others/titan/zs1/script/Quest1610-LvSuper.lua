function NPC_QUEST_1610(cnum, reqNumber)

req = reqNumber

item1 = GetItemCount(cnum, 9482, 0)



	if req == 1 then
		return 9,0,"Ola, estou aqui para trocar um Super Boss Mixavel por um Super Boss Tradavel para isso voce ira precisar de 50kkk + O Core@@ Observacao : Nao tenha dois do mesmo tipo no seu bag se nao ira sumir e nao iremos nos responsabilizar.",2,"Trocar Neoking Garugon Tradavel",3,"Trocar Neo Anubis Tradavel",4,"Trocar NeoHelfard Tradavel",5,"Trocar Neo Phoenix Tradavel",6,"Trocar NeoCutter Mants Tradavel",7,"Trocar NeoNapem Tradavel",8,"Trocar NeoRoff Tradavel",9,"Trocar NeoDestroyer Tradavel"



	elseif req == 2 then
	if item1 > 50 and GetHench(cnum, 1, 1860, 0) > 0 then
		AddItemCount(cnum, 9482, -50)
		AddHench(cnum, 1860, -1)
		AddHench(cnum, 1870, 1)
		return 1,0,"Troca Realizada."
		else
		return 1,0, "Voce precisa de 50kkk ou nao tem o core"

		end

		elseif req == 3 then
	if item1 > 50 and GetHench(cnum, 1, 1861, 0) > 0 then
		AddItemCount(cnum, 9482, -50)
		AddHench(cnum, 1861, -1)
		AddHench(cnum, 1871, 1)
		return 1,0,"Troca Realizada."
		else
		return 1,0, "Voce precisa de 50kkk ou nao tem o core"

		end

		elseif req == 4 then
	if item1 > 50 and GetHench(cnum, 1, 1862, 0) > 0 then
		AddItemCount(cnum, 9482, -50)
		AddHench(cnum, 1862, -1)
		AddHench(cnum, 1872, 1)
		return 1,0,"Troca Realizada."
		else
		return 1,0, "Voce precisa de 50kkk ou nao tem o core"

		end

		elseif req == 5 then
	if item1 > 50 and GetHench(cnum, 1, 1863, 0) > 0 then
		AddItemCount(cnum, 9482, -50)
		AddHench(cnum, 1863, -1)
		AddHench(cnum, 1873, 1)
		return 1,0,"Troca Realizada."
		else
		return 1,0, "Voce precisa de 50kkk ou nao tem o core"

		end

		elseif req == 6 then
	if item1 > 50 and GetHench(cnum, 1, 1864, 0) > 0 then
		AddItemCount(cnum, 9482, -50)
		AddHench(cnum, 1864, -1)
		AddHench(cnum, 1874, 1)
		return 1,0,"Troca Realizada."
		else
		return 1,0, "Voce precisa de 50kkk ou nao tem o core"

		end

		elseif req == 7 then
	if item1 > 50 and GetHench(cnum, 1, 1865, 0) > 0 then
		AddItemCount(cnum, 9482, -50)
		AddHench(cnum, 1865, -1)
		AddHench(cnum, 1875, 1)
		return 1,0,"Troca Realizada."
		else
		return 1,0, "Voce precisa de 50kkk ou nao tem o core"

		end

		elseif req == 8 then
	if item1 > 50 and GetHench(cnum, 1, 1866, 0) > 0 then
		AddItemCount(cnum, 9482, -50)
		AddHench(cnum, 1866, -1)
		AddHench(cnum, 1876, 1)
		return 1,0,"Troca Realizada."
		else
		return 1,0, "	"

		end

		elseif req == 9 then
	if item1 > 50 and GetHench(cnum, 1, 1867, 0) > 0 then
		AddItemCount(cnum, 9482, -50)
		AddHench(cnum, 1867, -1)
		AddHench(cnum, 1877, 1)
		return 1,0,"Troca Realizada."
		else
		return 1,0, "Voce precisa de 50kkk ou nao tem o core"

		end




	else
		return 0

	end

end
