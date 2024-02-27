function NPC_QUEST_600(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 381) < 1 then
			return 3,0,"삼일절에 대해 잘 알고 있나? 퀴즈를 맞추면 태극기를 주겠네.",2,"네! 잘 알고 있어요.",3,"글쎄요. 공부 좀 하고 올게요"

		else
			return 1,0,"자네는 이미 삼일절에 대해 잘 알고 있네. 자네의 지식을 널리 알리도록 하게나."

		end



	
	elseif req == 2 then

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"질문을 맞추면 아이템을 주려고 했는데, 인벤토리에 빈 공간이 없구만. 나중에 후회하지 않으려면 인벤토리에 빈 공간을 1칸 이상 만들어 오게나"


		else		
			random = SetRandom(cnum, 1, 3)

			if random == 1 then
				return 5,0,"삼일절은 일본 식민지 지배하에 있던 우리 나라에 일어난 범민족항일독립운동이지. 자~ 그러면 몇 년도에 일어난 일인가?",12,"1918년",13,"1919년",14,"1920년",15,"1921년"

		
			elseif random == 2 then
				return 5,0,"삼일운동 명칭에 대한 문제를 내겠네. 삼일운동을 다른 말로 뭐라고 하는지 아는가?",22,"김일 독립 운동",23,"기마 독립 운동",24,"기미 독립 운동",25,"기삼 독립 운동"



			elseif random == 3 then
				return 5,0,"일본의 식민지 정책에 대한 문제를 내겠네. 일본이 우리나라의 민족의식 성장을 억누르고, 고도의 기술을 습득할 기회를 박탈하기 위해 펼친 교육 정책은 무엇인가?",32,"우산 정책",33,"우면 정책",34,"우정 정책",35,"우민 정책"


			else
				return 1,0,"뭐냐"

			end
		end


	elseif req == 3 then
		return 0



	elseif req == 13 or req == 24 or req == 35 then
		AddSwitchCount(cnum, 381, 1)
		AddItemCount(cnum, 4331, 1)
		return 1,0,"그렇지! 정답이네! 삼일절에 대해 정확히 알고 있군. 좋아~ 자네에게 태극기를 줄 테니 삼일절에 대한 의미를 잊지말게나."



 
	elseif req == 12 or req == 14 or req == 15 or req == 22 or req == 23 or req == 25 or req == 32 or req == 33 or req == 34 then
		return 2,0,"틀렸어~ 틀렸어~ 좀 더 공부를 하고 오시게.",42,"네 ㅜ.ㅜ"


	elseif req == 42 then
		return 0


	else
		return 1,0,"뭔가"

	end
end




function NPC_QUEST_601(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 381) < 1 then
			return 3,0,"삼일절에 대해 잘 알고 있나? 퀴즈를 맞추면 태극기를 주겠네.",2,"네! 잘 알고 있어요.",3,"글쎄요. 공부 좀 하고 올게요"

		else
			return 1,0,"자네는 이미 삼일절에 대해 잘 알고 있네. 자네의 지식을 널리 알리도록 하게나."

		end



	
	elseif req == 2 then

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"질문을 맞추면 아이템을 주려고 했는데, 인벤토리에 빈 공간이 없구만. 나중에 후회하지 않으려면 인벤토리에 빈 공간을 1칸 이상 만들어 오게나"


		else		
			random = SetRandom(cnum, 1, 3)

			if random == 1 then
				return 5,0,"삼일절은 일본 식민지 지배하에 있던 우리 나라에 일어난 범민족항일독립운동이지. 자~ 그러면 몇 년도에 일어난 일인가?",12,"1918년",13,"1919년",14,"1920년",15,"1921년"

		
			elseif random == 2 then
				return 5,0,"삼일운동 명칭에 대한 문제를 내겠네. 삼일운동을 다른 말로 뭐라고 하는지 아는가?",22,"김일 독립 운동",23,"기마 독립 운동",24,"기미 독립 운동",25,"기삼 독립 운동"



			elseif random == 3 then
				return 5,0,"일본의 식민지 정책에 대한 문제를 내겠네. 일본이 우리나라의 민족의식 성장을 억누르고, 고도의 기술을 습득할 기회를 박탈하기 위해 펼친 교육 정책은 무엇인가?",32,"우산 정책",33,"우면 정책",34,"우정 정책",35,"우민 정책"


			else
				return 1,0,"뭐냐"

			end
		end


	elseif req == 3 then
		return 0



	elseif req == 13 or req == 24 or req == 35 then
		AddSwitchCount(cnum, 381, 1)
		AddItemCount(cnum, 4331, 1)
		return 1,0,"그렇지! 정답이네! 삼일절에 대해 정확히 알고 있군. 좋아~ 자네에게 태극기를 줄 테니 삼일절에 대한 의미를 잊지말게나."



 
	elseif req == 12 or req == 14 or req == 15 or req == 22 or req == 23 or req == 25 or req == 32 or req == 33 or req == 34 then
		return 2,0,"틀렸어~ 틀렸어~ 좀 더 공부를 하고 오시게.",42,"네 ㅜ.ㅜ"


	elseif req == 42 then
		return 0


	else
		return 1,0,"뭔가"

	end
end
		


function NPC_QUEST_602(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 381) < 1 then
			return 3,0,"삼일절에 대해 잘 알고 있나? 퀴즈를 맞추면 태극기를 주겠네.",2,"네! 잘 알고 있어요.",3,"글쎄요. 공부 좀 하고 올게요"

		else
			return 1,0,"자네는 이미 삼일절에 대해 잘 알고 있네. 자네의 지식을 널리 알리도록 하게나."

		end



	
	elseif req == 2 then

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"질문을 맞추면 아이템을 주려고 했는데, 인벤토리에 빈 공간이 없구만. 나중에 후회하지 않으려면 인벤토리에 빈 공간을 1칸 이상 만들어 오게나"


		else		
			random = SetRandom(cnum, 1, 3)

			if random == 1 then
				return 5,0,"삼일절은 일본 식민지 지배하에 있던 우리 나라에 일어난 범민족항일독립운동이지. 자~ 그러면 몇 년도에 일어난 일인가?",12,"1918년",13,"1919년",14,"1920년",15,"1921년"

		
			elseif random == 2 then
				return 5,0,"삼일운동 명칭에 대한 문제를 내겠네. 삼일운동을 다른 말로 뭐라고 하는지 아는가?",22,"김일 독립 운동",23,"기마 독립 운동",24,"기미 독립 운동",25,"기삼 독립 운동"



			elseif random == 3 then
				return 5,0,"일본의 식민지 정책에 대한 문제를 내겠네. 일본이 우리나라의 민족의식 성장을 억누르고, 고도의 기술을 습득할 기회를 박탈하기 위해 펼친 교육 정책은 무엇인가?",32,"우산 정책",33,"우면 정책",34,"우정 정책",35,"우민 정책"


			else
				return 1,0,"뭐냐"

			end
		end


	elseif req == 3 then
		return 0



	elseif req == 13 or req == 24 or req == 35 then
		AddSwitchCount(cnum, 381, 1)
		AddItemCount(cnum, 4331, 1)
		return 1,0,"그렇지! 정답이네! 삼일절에 대해 정확히 알고 있군. 좋아~ 자네에게 태극기를 줄 테니 삼일절에 대한 의미를 잊지말게나."



 
	elseif req == 12 or req == 14 or req == 15 or req == 22 or req == 23 or req == 25 or req == 32 or req == 33 or req == 34 then
		return 2,0,"틀렸어~ 틀렸어~ 좀 더 공부를 하고 오시게.",42,"네 ㅜ.ㅜ"


	elseif req == 42 then
		return 0


	else
		return 1,0,"뭔가"

	end
end