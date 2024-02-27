function NPC_QUEST_1137(cnum,reqNumber) --- ¿¤¸®½Ã¿Â ·Îºñ 1Ãþ / ¿öÇÁ ºÎÀ¯¼®
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and
			 GetItemCount(cnum,69,0) == 0 and
			 GetItemCount(cnum,95,0) == 0 and
			 GetItemCount(cnum,96,0) == 0 and
			 GetItemCount(cnum,940,0) == 0 and
	                 GetItemCount(cnum,1316,0) == 0 and
			 GetItemCount(cnum,3711,0) == 0 and
			 GetItemCount(cnum,8178,0) == 0 and
			 GetItemCount(cnum,8226,0) == 0 and
			 GetItemCount(cnum,8499,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8641,0) == 0 then

			if GetSwitchCount(cnum, 600) < 2 then
				return 1,0,"Ola, nao encontramos o item [Ticket Premium Zone] em sua BAG, caso nao tenha voce pode fazer as Questes para poder passar de nivel."
			elseif GetSwitchCount(cnum, 600) == 2 then
				return 2,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [2nd]"
			elseif GetSwitchCount(cnum, 600) == 3 then
				return 3,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [2nd]",3,"Elysion Lobby [3rd]"
			elseif GetSwitchCount(cnum, 600) == 4 then
				return 4,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [2nd]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]"
			elseif GetSwitchCount(cnum, 600) == 5 then
				return 5,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [2nd]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]"
			elseif GetSwitchCount(cnum, 600) == 6 then
				return 6,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [2nd]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]"
			elseif GetSwitchCount(cnum, 600) == 7 then
				return 7,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [2nd]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]"
			elseif GetSwitchCount(cnum, 600) == 8 then
				return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [2nd]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"
			end
		end

		return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [2nd]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"

	elseif req == 2 then

		MoveZone(cnum,104,254) --¿¤¸®½Ã¿Â ·Îºñ 2Ãþ

	elseif req == 3 then

		MoveZone(cnum,105,254) --¿¤¸®½Ã¿Â ·Îºñ 3Ãþ

	elseif req == 4 then

		MoveZone(cnum,106,254) --¿¤¸®½Ã¿Â ·Îºñ 4Ãþ

	elseif req == 5 then

		MoveZone(cnum,107,254) --¿¤¸®½Ã¿Â ·Îºñ 5Ãþ

	elseif req == 6 then

		MoveZone(cnum,108,254) --¿¤¸®½Ã¿Â ·Îºñ 6Ãþ

	elseif req == 7 then

		MoveZone(cnum,109,254) --¿¤¸®½Ã¿Â ·Îºñ 7Ãþ

	elseif req == 8 then

		MoveZone(cnum,110,254) --¿¤¸®½Ã¿Â ·Îºñ 8Ãþ


	end
	return 0

end

function NPC_QUEST_1138(cnum,reqNumber) --- ¿¤¸®½Ã¿Â ·Îºñ 2Ãþ / ¿öÇÁ ºÎÀ¯¼®
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and
			 GetItemCount(cnum,69,0) == 0 and
			 GetItemCount(cnum,95,0) == 0 and
			 GetItemCount(cnum,96,0) == 0 and
			 GetItemCount(cnum,940,0) == 0 and
	                 GetItemCount(cnum,1316,0) == 0 and
			 GetItemCount(cnum,3711,0) == 0 and
			 GetItemCount(cnum,8178,0) == 0 and
			 GetItemCount(cnum,8226,0) == 0 and
			 GetItemCount(cnum,8499,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8641,0) == 0 then

			if GetSwitchCount(cnum, 600) < 2 then
				return 1,0,"Ola, nao encontramos o item [Ticket Premium Zone] em sua BAG, caso nao tenha voce pode fazer as Questes para poder passar de nivel."
			elseif GetSwitchCount(cnum, 600) == 2 then
				return 2,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]"
			elseif GetSwitchCount(cnum, 600) == 3 then
				return 3,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [3rd]"
			elseif GetSwitchCount(cnum, 600) == 4 then
				return 4,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]"
			elseif GetSwitchCount(cnum, 600) == 5 then
				return 5,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]"
			elseif GetSwitchCount(cnum, 600) == 6 then
				return 6,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]"
			elseif GetSwitchCount(cnum, 600) == 7 then
				return 7,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]"
			elseif GetSwitchCount(cnum, 600) == 8 then
				return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"
			end
		end

		return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [3rd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"

	elseif req == 2 then

		MoveZone(cnum,103,254) --¿¤¸®½Ã¿Â ·Îºñ 1Ãþ

	elseif req == 3 then

		MoveZone(cnum,105,254) --¿¤¸®½Ã¿Â ·Îºñ 3Ãþ

	elseif req == 4 then

		MoveZone(cnum,106,254) --¿¤¸®½Ã¿Â ·Îºñ 4Ãþ

	elseif req == 5 then

		MoveZone(cnum,107,254) --¿¤¸®½Ã¿Â ·Îºñ 5Ãþ

	elseif req == 6 then

		MoveZone(cnum,108,254) --¿¤¸®½Ã¿Â ·Îºñ 6Ãþ

	elseif req == 7 then

		MoveZone(cnum,109,254) --¿¤¸®½Ã¿Â ·Îºñ 7Ãþ

	elseif req == 8 then

		MoveZone(cnum,110,254) --¿¤¸®½Ã¿Â ·Îºñ 8Ãþ


	end
	return 0

end
function NPC_QUEST_1139(cnum,reqNumber) --- ¿¤¸®½Ã¿Â ·Îºñ 3Ãþ / ¿öÇÁ ºÎÀ¯¼®
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and
			 GetItemCount(cnum,69,0) == 0 and
			 GetItemCount(cnum,95,0) == 0 and
			 GetItemCount(cnum,96,0) == 0 and
			 GetItemCount(cnum,940,0) == 0 and
	                 GetItemCount(cnum,1316,0) == 0 and
			 GetItemCount(cnum,3711,0) == 0 and
			 GetItemCount(cnum,8178,0) == 0 and
			 GetItemCount(cnum,8226,0) == 0 and
			 GetItemCount(cnum,8499,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8641,0) == 0 then

			if GetSwitchCount(cnum, 600) < 2 then
				return 1,0,"Ola, nao encontramos o item [Ticket Premium Zone] em sua BAG, caso nao tenha voce pode fazer as Questes para poder passar de nivel."
			elseif GetSwitchCount(cnum, 600) == 2 then
				return 2,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]"
			elseif GetSwitchCount(cnum, 600) == 3 then
				return 3,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]"
			elseif GetSwitchCount(cnum, 600) == 4 then
				return 4,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [4th]"
			elseif GetSwitchCount(cnum, 600) == 5 then
				return 5,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]"
			elseif GetSwitchCount(cnum, 600) == 6 then
				return 6,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]"
			elseif GetSwitchCount(cnum, 600) == 7 then
				return 7,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]"
			elseif GetSwitchCount(cnum, 600) == 8 then
				return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"
			end
		end

		return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [4th]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"

	elseif req == 2 then

		MoveZone(cnum,103,254) --¿¤¸®½Ã¿Â ·Îºñ 1Ãþ

	elseif req == 3 then

		MoveZone(cnum,104,254) --¿¤¸®½Ã¿Â ·Îºñ 2Ãþ

	elseif req == 4 then

		MoveZone(cnum,106,254) --¿¤¸®½Ã¿Â ·Îºñ 4Ãþ

	elseif req == 5 then

		MoveZone(cnum,107,254) --¿¤¸®½Ã¿Â ·Îºñ 5Ãþ

	elseif req == 6 then

		MoveZone(cnum,108,254) --¿¤¸®½Ã¿Â ·Îºñ 6Ãþ

	elseif req == 7 then

		MoveZone(cnum,109,254) --¿¤¸®½Ã¿Â ·Îºñ 7Ãþ

	elseif req == 8 then

		MoveZone(cnum,110,254) --¿¤¸®½Ã¿Â ·Îºñ 8Ãþ


	end
	return 0

end
function NPC_QUEST_1140(cnum,reqNumber) --- ¿¤¸®½Ã¿Â ·Îºñ 4Ãþ / ¿öÇÁ ºÎÀ¯¼®
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and
			 GetItemCount(cnum,69,0) == 0 and
			 GetItemCount(cnum,95,0) == 0 and
			 GetItemCount(cnum,96,0) == 0 and
			 GetItemCount(cnum,940,0) == 0 and
	                 GetItemCount(cnum,1316,0) == 0 and
			 GetItemCount(cnum,3711,0) == 0 and
			 GetItemCount(cnum,8178,0) == 0 and
			 GetItemCount(cnum,8226,0) == 0 and
			 GetItemCount(cnum,8499,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8641,0) == 0 then

			if GetSwitchCount(cnum, 600) < 2 then
				return 1,0,"Ola, nao encontramos o item [Ticket Premium Zone] em sua BAG, caso nao tenha voce pode fazer as Questes para poder passar de nivel."
			elseif GetSwitchCount(cnum, 600) == 2 then
				return 2,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]"
			elseif GetSwitchCount(cnum, 600) == 3 then
				return 3,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]"
			elseif GetSwitchCount(cnum, 600) == 4 then
				return 4,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]"
			elseif GetSwitchCount(cnum, 600) == 5 then
				return 5,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [5th]"
			elseif GetSwitchCount(cnum, 600) == 6 then
				return 6,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]"
			elseif GetSwitchCount(cnum, 600) == 7 then
				return 7,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]"
			elseif GetSwitchCount(cnum, 600) == 8 then
				return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"
			end
		end

		return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [5th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"

	elseif req == 2 then

		MoveZone(cnum,103,254) --¿¤¸®½Ã¿Â ·Îºñ 1Ãþ

	elseif req == 3 then

		MoveZone(cnum,104,254) --¿¤¸®½Ã¿Â ·Îºñ 2Ãþ

	elseif req == 4 then

		MoveZone(cnum,105,254) --¿¤¸®½Ã¿Â ·Îºñ 3Ãþ

	elseif req == 5 then

		MoveZone(cnum,107,254) --¿¤¸®½Ã¿Â ·Îºñ 5Ãþ

	elseif req == 6 then

		MoveZone(cnum,108,254) --¿¤¸®½Ã¿Â ·Îºñ 6Ãþ

	elseif req == 7 then

		MoveZone(cnum,109,254) --¿¤¸®½Ã¿Â ·Îºñ 7Ãþ

	elseif req == 8 then

		MoveZone(cnum,110,254) --¿¤¸®½Ã¿Â ·Îºñ 8Ãþ


	end
	return 0

end
function NPC_QUEST_1141(cnum,reqNumber) --- ¿¤¸®½Ã¿Â ·Îºñ 5Ãþ / ¿öÇÁ ºÎÀ¯¼®
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and
			 GetItemCount(cnum,69,0) == 0 and
			 GetItemCount(cnum,95,0) == 0 and
			 GetItemCount(cnum,96,0) == 0 and
			 GetItemCount(cnum,940,0) == 0 and
	                 GetItemCount(cnum,1316,0) == 0 and
			 GetItemCount(cnum,3711,0) == 0 and
			 GetItemCount(cnum,8178,0) == 0 and
			 GetItemCount(cnum,8226,0) == 0 and
			 GetItemCount(cnum,8499,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8641,0) == 0 then

			if GetSwitchCount(cnum, 600) < 2 then
				return 1,0,"Ola, nao encontramos o item [Ticket Premium Zone] em sua BAG, caso nao tenha voce pode fazer as Questes para poder passar de nivel."
			elseif GetSwitchCount(cnum, 600) == 2 then
				return 2,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]"
			elseif GetSwitchCount(cnum, 600) == 3 then
				return 3,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]"
			elseif GetSwitchCount(cnum, 600) == 4 then
				return 4,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]"
			elseif GetSwitchCount(cnum, 600) == 5 then
				return 5,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]"
			elseif GetSwitchCount(cnum, 600) == 6 then
				return 6,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [6th]"
			elseif GetSwitchCount(cnum, 600) == 7 then
				return 7,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]"
			elseif GetSwitchCount(cnum, 600) == 8 then
				return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"
			end
		end

		return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [6th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"

	elseif req == 2 then

		MoveZone(cnum,103,254) --¿¤¸®½Ã¿Â ·Îºñ 1Ãþ

	elseif req == 3 then

		MoveZone(cnum,104,254) --¿¤¸®½Ã¿Â ·Îºñ 2Ãþ

	elseif req == 4 then

		MoveZone(cnum,105,254) --¿¤¸®½Ã¿Â ·Îºñ 3Ãþ

	elseif req == 5 then

		MoveZone(cnum,106,254) --¿¤¸®½Ã¿Â ·Îºñ 4Ãþ

	elseif req == 6 then

		MoveZone(cnum,108,254) --¿¤¸®½Ã¿Â ·Îºñ 6Ãþ

	elseif req == 7 then

		MoveZone(cnum,109,254) --¿¤¸®½Ã¿Â ·Îºñ 7Ãþ

	elseif req == 8 then

		MoveZone(cnum,110,254) --¿¤¸®½Ã¿Â ·Îºñ 8Ãþ


	end
	return 0

end
function NPC_QUEST_1142(cnum,reqNumber) --- ¿¤¸®½Ã¿Â ·Îºñ 6Ãþ / ¿öÇÁ ºÎÀ¯¼®
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and
			 GetItemCount(cnum,69,0) == 0 and
			 GetItemCount(cnum,95,0) == 0 and
			 GetItemCount(cnum,96,0) == 0 and
			 GetItemCount(cnum,940,0) == 0 and
	                 GetItemCount(cnum,1316,0) == 0 and
			 GetItemCount(cnum,3711,0) == 0 and
			 GetItemCount(cnum,8178,0) == 0 and
			 GetItemCount(cnum,8226,0) == 0 and
			 GetItemCount(cnum,8499,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8641,0) == 0 then

			if GetSwitchCount(cnum, 600) < 2 then
				return 1,0,"Ola, nao encontramos o item [Ticket Premium Zone] em sua BAG, caso nao tenha voce pode fazer as Questes para poder passar de nivel."
			elseif GetSwitchCount(cnum, 600) == 2 then
				return 2,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]"
			elseif GetSwitchCount(cnum, 600) == 3 then
				return 3,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]"
			elseif GetSwitchCount(cnum, 600) == 4 then
				return 4,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]"
			elseif GetSwitchCount(cnum, 600) == 5 then
				return 5,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]"
			elseif GetSwitchCount(cnum, 600) == 6 then
				return 6,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]"
			elseif GetSwitchCount(cnum, 600) == 7 then
				return 7,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]",7,"Elysion Lobby [7th]"
			elseif GetSwitchCount(cnum, 600) == 8 then
				return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"
			end

		end

		return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]",7,"Elysion Lobby [7th]",8,"Elysion Lobby [8th]"

	elseif req == 2 then

		MoveZone(cnum,103,254) --¿¤¸®½Ã¿Â ·Îºñ 1Ãþ

	elseif req == 3 then

		MoveZone(cnum,104,254) --¿¤¸®½Ã¿Â ·Îºñ 2Ãþ

	elseif req == 4 then

		MoveZone(cnum,105,254) --¿¤¸®½Ã¿Â ·Îºñ 3Ãþ

	elseif req == 5 then

		MoveZone(cnum,106,254) --¿¤¸®½Ã¿Â ·Îºñ 4Ãþ

	elseif req == 6 then

		MoveZone(cnum,107,254) --¿¤¸®½Ã¿Â ·Îºñ 5Ãþ

	elseif req == 7 then

		MoveZone(cnum,109,254) --¿¤¸®½Ã¿Â ·Îºñ 7Ãþ

	elseif req == 8 then

		MoveZone(cnum,110,254) --¿¤¸®½Ã¿Â ·Îºñ 8Ãþ


	end
	return 0

end
function NPC_QUEST_1143(cnum,reqNumber) --- ¿¤¸®½Ã¿Â ·Îºñ 7Ãþ / ¿öÇÁ ºÎÀ¯¼®
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and
			 GetItemCount(cnum,69,0) == 0 and
			 GetItemCount(cnum,95,0) == 0 and
			 GetItemCount(cnum,96,0) == 0 and
			 GetItemCount(cnum,940,0) == 0 and
	                 GetItemCount(cnum,1316,0) == 0 and
			 GetItemCount(cnum,3711,0) == 0 and
			 GetItemCount(cnum,8178,0) == 0 and
			 GetItemCount(cnum,8226,0) == 0 and
			 GetItemCount(cnum,8499,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8641,0) == 0 then

			if GetSwitchCount(cnum, 600) < 2 then
				return 1,0,"Ola, nao encontramos o item [Ticket Premium Zone] em sua BAG, caso nao tenha voce pode fazer as Questes para poder passar de nivel."
			elseif GetSwitchCount(cnum, 600) == 2 then
				return 2,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]"
			elseif GetSwitchCount(cnum, 600) == 3 then
				return 3,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]"
			elseif GetSwitchCount(cnum, 600) == 4 then
				return 4,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]"
			elseif GetSwitchCount(cnum, 600) == 5 then
				return 5,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]"
			elseif GetSwitchCount(cnum, 600) == 6 then
				return 6,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]"
			elseif GetSwitchCount(cnum, 600) == 7 then
				return 7,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]",7,"Elysion Lobby [6th]"
			elseif GetSwitchCount(cnum, 600) == 8 then
				return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]",7,"Elysion Lobby [6th]",8,"Elysion Lobby [8th]"
			end
		end

		return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]",7,"Elysion Lobby [6th]",8,"Elysion Lobby [8th]"

	elseif req == 2 then

		MoveZone(cnum,103,254) --¿¤¸®½Ã¿Â ·Îºñ 1Ãþ

	elseif req == 3 then

		MoveZone(cnum,104,254) --¿¤¸®½Ã¿Â ·Îºñ 2Ãþ

	elseif req == 4 then

		MoveZone(cnum,105,254) --¿¤¸®½Ã¿Â ·Îºñ 3Ãþ

	elseif req == 5 then

		MoveZone(cnum,106,254) --¿¤¸®½Ã¿Â ·Îºñ 4Ãþ

	elseif req == 6 then

		MoveZone(cnum,107,254) --¿¤¸®½Ã¿Â ·Îºñ 5Ãþ

	elseif req == 7 then

		MoveZone(cnum,108,254) --¿¤¸®½Ã¿Â ·Îºñ 6Ãþ

	elseif req == 8 then

		MoveZone(cnum,110,254) --¿¤¸®½Ã¿Â ·Îºñ 8Ãþ


	end
	return 0

end
function NPC_QUEST_1144(cnum,reqNumber) --- ¿¤¸®½Ã¿Â ·Îºñ 8Ãþ / ¿öÇÁ ºÎÀ¯¼®
	local req = reqNumber

	if req == 1 then

		if GetItemCount(cnum,68,0) == 0 and
			 GetItemCount(cnum,69,0) == 0 and
			 GetItemCount(cnum,95,0) == 0 and
			 GetItemCount(cnum,96,0) == 0 and
			 GetItemCount(cnum,940,0) == 0 and
	                 GetItemCount(cnum,1316,0) == 0 and
			 GetItemCount(cnum,3711,0) == 0 and
			 GetItemCount(cnum,8178,0) == 0 and
			 GetItemCount(cnum,8226,0) == 0 and
			 GetItemCount(cnum,8499,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8582,0) == 0 and
			 GetItemCount(cnum,8641,0) == 0 then

			if GetSwitchCount(cnum, 600) < 2 then
				return 1,0,"Ola, nao encontramos o item [Ticket Premium Zone] em sua BAG, caso nao tenha voce pode fazer as Questes para poder passar de nivel."
			elseif GetSwitchCount(cnum, 600) == 2 then
				return 2,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]"
			elseif GetSwitchCount(cnum, 600) == 3 then
				return 3,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]"
			elseif GetSwitchCount(cnum, 600) == 4 then
				return 4,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]"
			elseif GetSwitchCount(cnum, 600) == 5 then
				return 5,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]"
			elseif GetSwitchCount(cnum, 600) == 6 then
				return 6,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]"
			elseif GetSwitchCount(cnum, 600) == 7 then
				return 7,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]",7,"Elysion Lobby [6th]"
			elseif GetSwitchCount(cnum, 600) == 8 then
				return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]",7,"Elysion Lobby [6th]",8,"Elysion Lobby [7th]"
			end
		end

		return 8,0,"Gostaria de ir para algum mapa?",2,"Elysion Lobby [1st]",3,"Elysion Lobby [2nd]",4,"Elysion Lobby [3rd]",5,"Elysion Lobby [4th]",6,"Elysion Lobby [5th]",7,"Elysion Lobby [6th]",8,"Elysion Lobby [7th]"

	elseif req == 2 then

		MoveZone(cnum,103,254) --¿¤¸®½Ã¿Â ·Îºñ 1Ãþ

	elseif req == 3 then

		MoveZone(cnum,104,254) --¿¤¸®½Ã¿Â ·Îºñ 2Ãþ

	elseif req == 4 then

		MoveZone(cnum,105,254) --¿¤¸®½Ã¿Â ·Îºñ 3Ãþ

	elseif req == 5 then

		MoveZone(cnum,106,254) --¿¤¸®½Ã¿Â ·Îºñ 4Ãþ

	elseif req == 6 then

		MoveZone(cnum,107,254) --¿¤¸®½Ã¿Â ·Îºñ 5Ãþ

	elseif req == 7 then

		MoveZone(cnum,108,254) --¿¤¸®½Ã¿Â ·Îºñ 6Ãþ

	elseif req == 8 then

		MoveZone(cnum,109,254) --¿¤¸®½Ã¿Â ·Îºñ 7Ãþ


	end
	return 0

end
