function NPC_QUEST_260(cnum, reqNumber)

req= reqNumber

	if req == 1 then
		return 2,0,"Aku adalah sang pencipta SP point. Oleh karena itu aku mengetahui segalanya mengenai semua skill! Aku juga mengetahui cara penggunaan SP Acquire yang memadatkan SP Point kedalam botol. Cukup bawakan aku SP Acquire jika kamu memilikinya.",2,"Aku punya."


	elseif req == 2 then
		if GetItemCount(cnum, 3203, 0) < 1 then
			return 1,0,"Aku tidak punya SP Aquire."

		else
			AddItemCount(cnum, 3203, -1)
			AddSkillPoint(cnum, 3)
			return 1,0,"Semoga hari anda menyenangkan~"

		end

	else
		return 0

	end
end	