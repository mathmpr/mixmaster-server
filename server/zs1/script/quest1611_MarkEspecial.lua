function NPC_QUEST_1611(cnum, reqNumber)

	req = reqNumber

	CurTime = (GetCurrentTime () - 231204) - 1728000 --32400 : 본섭은 4~5분 느리기 때문에 4분 240 값을 더함..
	Year = CurTime/ 30758400
	Day = (CurTime % 30758400) / 86400
	Hour = (CurTime % 30758400 % 86400) / 3200
	Min = (CurTime % 30758400 % 86400 % 3200) / 60
	Second = (CurTime % 30758400 % 86400 % 3200% 60)


	if req == 1 then

		return 3,0, "[Mark Inicial]@@Ola, estou aqui para dar um presente a cada dia, gostaria de receber o seu ?@Lembrando que e um mark especial@Ele acaba com o tempo!",2,"Informacao",3,"Pegar Mark"


	elseif req == 2 then
		return 4,0, "[INFORMACAO]@@Ola, oque gostaria de saber sobre este NPC?",4,"[MARKS]",5,"[NPC]",6,"[BUG]"


	elseif req == 3 then

		if GetRemainPocket(cnum) < 1 then
		return 1,0,"TEST"
		

		elseif GetSwitchCount(cnum, 750) < 1 then -- 처음 방문
			SetSwitchCount(cnum,750,math.floor(Day))
			SetSwitchCount(cnum, 751, 1)
			AddItemCount(cnum, 8216,1)
			return 1,0, "[SUCESSO]@@Voce acaba de ganhar um poderoso MARK especial!"

		elseif GetSwitchCount(cnum, 750) ~= math.floor(Day) then
			if GetSwitchCount(cnum, 750) < math.floor(Day) then
				if math.floor(Day) - GetSwitchCount(cnum, 750) == 1 then
					if GetSwitchCount(cnum, 751) == 1 then

					SetSwitchCount(cnum,750,math.floor(Day))
					AddSwitchCount(cnum, 751, 1)
					AddItemCount(cnum, 8216,1)
					return 1,0, "[SUCESSO]@@Voce acaba de ganhar um poderoso MARK especial!"

					elseif GetSwitchCount(cnum, 751) == 2 then

					SetSwitchCount(cnum,750,math.floor(Day))
					AddSwitchCount(cnum, 751, 1)
					AddItemCount(cnum, 8216,1)
					return 1,0, "[SUCESSO]@@Voce acaba de ganhar um poderoso MARK especial!"


					elseif GetSwitchCount(cnum, 751) >= 3 then

					SetSwitchCount(cnum,750,math.floor(Day))
					AddSwitchCount(cnum, 751, 1)
					AddItemCount(cnum, 8216,1)
					return 1,0, "[SUCESSO]@@Voce acaba de ganhar um poderoso MARK especial!"

					else
					return 1,0, "오류1"

					end

				elseif math.floor(Day) - GetSwitchCount(cnum, 750) >= 2 then --2분 차이 이상 (중간에 빼먹었군)
				SetSwitchCount(cnum, 750, math.floor(Day))
				SetSwitchCount(cnum, 751, 1)
				AddItemCount(cnum, 8216,1)
				return 1,0, "[SUCESSO]@@Voce acaba de ganhar um poderoso MARK especial!."
				end

			else -- 갖고 있던 값이 현재 시간보다 클 일은 없음.
			return 1,0, "뜨면 안됨" --분 초는 어쩔 수 없음 ㅜㅜ
			end

		else --분홍 구름를 받은 시간과 현재 시간이 같을때 (즉 1일)

				return 1,0, "[ERROR]@@Desculpe-me mas so e possivel pegar um mark especial por dia.@Volte amanha no mesmo horario para pegar novamente.@!!!!!!!!!!!!!!!!!"
		end



	elseif req == 4 then
		return 2,0, "[MARK]@@Cada mark recebida aqui tem duracao de 1 hora. Cuidado, pegue este mark na hora que for usar pois cada minuto ele diminuira o tempo.",2,"[Voltar]"


	elseif req == 5 then
		return 2,0, "[NPC]@@Este NPC foi criado para ajudar novatos do mixmaster a conseguir alcancar objetivos maiores.",2,"[Voltar]"


	elseif req == 6 then
		return 2,0, "[BUG]@@Qualquer problema com este NPC por favor reporte para nossa equipe.",2,"[Voltar]"

	end

end

