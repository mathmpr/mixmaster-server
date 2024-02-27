function NPC_QUEST_661(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"저에게 무슨 볼일이?"

			else
				return 2,0,"저에게 무슨 볼일이?",101,"렉스의 심부름 왔습니다."

			end

		else
			return 1,0,"즐거운 시간 보내세요~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		else
			return 2,0,"어머나? 혹시 이건 뭉뭉이? 아.. 당신이 그 뭉뭉이를 맡아오시던 분이군요? 이야기는 많이 들었습니다. 정말 잘 키우셨네요. 그런데, 그 막대사탕은? 네? 렉스가 저에게 보냈다고요? 어머.. 감동감동감동~ 렉스 사랑쟁이~ 아.. 제가 너무 주책없이.. 호호 죄송요.",2,"행복해보여 좋네요. 사탕 받으세요."


		end
		

	elseif req == 2 then
		return 3,0,"뭉뭉이는 정말 많이 컸네요. 그리고 당신을 정말 잘 따르고요.. 렉스가 다시 보내주긴 했지만 이 녀석까지 받기는 좀 그렇네요. 제 생각에 뭉뭉이의 진정한 주인은 당신 같은데..당신의 결정에 맡기도록 할께요. 뭉뭉이를 저에게 주셔도 되고, 그냥 계속 맡아서 키우셔도 좋아요.",12,"아니요, 당신께 드릴께요.",13,"그럴까요? 그럼, 제가 맡죠."




	elseif req == 12 then
		return 3,0,"진정 그러시다면, 고맙게 잘 키울께요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은. 저주받은 프리미엄 마크 1개, 축복의 시너지 상승물약 1개, 생명의열매 2개 입니다.. 이 정도면 충분하지요?",22,"네! 정말 감사합니다!",23,"잠시만.. 생각 좀 해볼께요."




	elseif req == 13 then
		return 3,0,"네.. 그렇게 하세요. 뭉뭉이 녀석.. 정말 당신을 좋아하는 듯 하네요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은.. 생명의 열매 2개 입니다. 이 정도면 충분하지요?",32,"네! 정말 감사합니다!",33,"잠시만.. 생각 좀 해볼께요."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 4칸이 있어야 합니다."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 2칸이 있어야 합니다."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end




function NPC_QUEST_662(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"저에게 무슨 볼일이?"

			else
				return 2,0,"저에게 무슨 볼일이?",101,"렉스의 심부름 왔습니다."

			end

		else
			return 1,0,"즐거운 시간 보내세요~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		else
			return 2,0,"어머나? 혹시 이건 뭉뭉이? 아.. 당신이 그 뭉뭉이를 맡아오시던 분이군요? 이야기는 많이 들었습니다. 정말 잘 키우셨네요. 그런데, 그 막대사탕은? 네? 렉스가 저에게 보냈다고요? 어머.. 감동감동감동~ 렉스 사랑쟁이~ 아.. 제가 너무 주책없이.. 호호 죄송요.",2,"행복해보여 좋네요. 사탕 받으세요."


		end
		

	elseif req == 2 then
		return 3,0,"뭉뭉이는 정말 많이 컸네요. 그리고 당신을 정말 잘 따르고요.. 렉스가 다시 보내주긴 했지만 이 녀석까지 받기는 좀 그렇네요. 제 생각에 뭉뭉이의 진정한 주인은 당신 같은데..당신의 결정에 맡기도록 할께요. 뭉뭉이를 저에게 주셔도 되고, 그냥 계속 맡아서 키우셔도 좋아요.",12,"아니요, 당신께 드릴께요.",13,"그럴까요? 그럼, 제가 맡죠."




	elseif req == 12 then
		return 3,0,"진정 그러시다면, 고맙게 잘 키울께요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은. 저주받은 프리미엄 마크 1개, 축복의 시너지 상승물약 1개, 생명의열매 2개 입니다.. 이 정도면 충분하지요?",22,"네! 정말 감사합니다!",23,"잠시만.. 생각 좀 해볼께요."




	elseif req == 13 then
		return 3,0,"네.. 그렇게 하세요. 뭉뭉이 녀석.. 정말 당신을 좋아하는 듯 하네요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은.. 생명의 열매 2개 입니다. 이 정도면 충분하지요?",32,"네! 정말 감사합니다!",33,"잠시만.. 생각 좀 해볼께요."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 4칸이 있어야 합니다."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 2칸이 있어야 합니다."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end



function NPC_QUEST_663(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"저에게 무슨 볼일이?"

			else
				return 2,0,"저에게 무슨 볼일이?",101,"렉스의 심부름 왔습니다."

			end

		else
			return 1,0,"즐거운 시간 보내세요~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		else
			return 2,0,"어머나? 혹시 이건 뭉뭉이? 아.. 당신이 그 뭉뭉이를 맡아오시던 분이군요? 이야기는 많이 들었습니다. 정말 잘 키우셨네요. 그런데, 그 막대사탕은? 네? 렉스가 저에게 보냈다고요? 어머.. 감동감동감동~ 렉스 사랑쟁이~ 아.. 제가 너무 주책없이.. 호호 죄송요.",2,"행복해보여 좋네요. 사탕 받으세요."


		end
		

	elseif req == 2 then
		return 3,0,"뭉뭉이는 정말 많이 컸네요. 그리고 당신을 정말 잘 따르고요.. 렉스가 다시 보내주긴 했지만 이 녀석까지 받기는 좀 그렇네요. 제 생각에 뭉뭉이의 진정한 주인은 당신 같은데..당신의 결정에 맡기도록 할께요. 뭉뭉이를 저에게 주셔도 되고, 그냥 계속 맡아서 키우셔도 좋아요.",12,"아니요, 당신께 드릴께요.",13,"그럴까요? 그럼, 제가 맡죠."




	elseif req == 12 then
		return 3,0,"진정 그러시다면, 고맙게 잘 키울께요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은. 저주받은 프리미엄 마크 1개, 축복의 시너지 상승물약 1개, 생명의열매 2개 입니다.. 이 정도면 충분하지요?",22,"네! 정말 감사합니다!",23,"잠시만.. 생각 좀 해볼께요."




	elseif req == 13 then
		return 3,0,"네.. 그렇게 하세요. 뭉뭉이 녀석.. 정말 당신을 좋아하는 듯 하네요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은.. 생명의 열매 2개 입니다. 이 정도면 충분하지요?",32,"네! 정말 감사합니다!",33,"잠시만.. 생각 좀 해볼께요."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 4칸이 있어야 합니다."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 2칸이 있어야 합니다."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end




function NPC_QUEST_664(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"저에게 무슨 볼일이?"

			else
				return 2,0,"저에게 무슨 볼일이?",101,"렉스의 심부름 왔습니다."

			end

		else
			return 1,0,"즐거운 시간 보내세요~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		else
			return 2,0,"어머나? 혹시 이건 뭉뭉이? 아.. 당신이 그 뭉뭉이를 맡아오시던 분이군요? 이야기는 많이 들었습니다. 정말 잘 키우셨네요. 그런데, 그 막대사탕은? 네? 렉스가 저에게 보냈다고요? 어머.. 감동감동감동~ 렉스 사랑쟁이~ 아.. 제가 너무 주책없이.. 호호 죄송요.",2,"행복해보여 좋네요. 사탕 받으세요."


		end
		

	elseif req == 2 then
		return 3,0,"뭉뭉이는 정말 많이 컸네요. 그리고 당신을 정말 잘 따르고요.. 렉스가 다시 보내주긴 했지만 이 녀석까지 받기는 좀 그렇네요. 제 생각에 뭉뭉이의 진정한 주인은 당신 같은데..당신의 결정에 맡기도록 할께요. 뭉뭉이를 저에게 주셔도 되고, 그냥 계속 맡아서 키우셔도 좋아요.",12,"아니요, 당신께 드릴께요.",13,"그럴까요? 그럼, 제가 맡죠."




	elseif req == 12 then
		return 3,0,"진정 그러시다면, 고맙게 잘 키울께요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은. 저주받은 프리미엄 마크 1개, 축복의 시너지 상승물약 1개, 생명의열매 2개 입니다.. 이 정도면 충분하지요?",22,"네! 정말 감사합니다!",23,"잠시만.. 생각 좀 해볼께요."




	elseif req == 13 then
		return 3,0,"네.. 그렇게 하세요. 뭉뭉이 녀석.. 정말 당신을 좋아하는 듯 하네요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은.. 생명의 열매 2개 입니다. 이 정도면 충분하지요?",32,"네! 정말 감사합니다!",33,"잠시만.. 생각 좀 해볼께요."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 4칸이 있어야 합니다."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 2칸이 있어야 합니다."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end




function NPC_QUEST_665(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"저에게 무슨 볼일이?"

			else
				return 2,0,"저에게 무슨 볼일이?",101,"렉스의 심부름 왔습니다."

			end

		else
			return 1,0,"즐거운 시간 보내세요~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		else
			return 2,0,"어머나? 혹시 이건 뭉뭉이? 아.. 당신이 그 뭉뭉이를 맡아오시던 분이군요? 이야기는 많이 들었습니다. 정말 잘 키우셨네요. 그런데, 그 막대사탕은? 네? 렉스가 저에게 보냈다고요? 어머.. 감동감동감동~ 렉스 사랑쟁이~ 아.. 제가 너무 주책없이.. 호호 죄송요.",2,"행복해보여 좋네요. 사탕 받으세요."


		end
		

	elseif req == 2 then
		return 3,0,"뭉뭉이는 정말 많이 컸네요. 그리고 당신을 정말 잘 따르고요.. 렉스가 다시 보내주긴 했지만 이 녀석까지 받기는 좀 그렇네요. 제 생각에 뭉뭉이의 진정한 주인은 당신 같은데..당신의 결정에 맡기도록 할께요. 뭉뭉이를 저에게 주셔도 되고, 그냥 계속 맡아서 키우셔도 좋아요.",12,"아니요, 당신께 드릴께요.",13,"그럴까요? 그럼, 제가 맡죠."




	elseif req == 12 then
		return 3,0,"진정 그러시다면, 고맙게 잘 키울께요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은. 저주받은 프리미엄 마크 1개, 축복의 시너지 상승물약 1개, 생명의열매 2개 입니다.. 이 정도면 충분하지요?",22,"네! 정말 감사합니다!",23,"잠시만.. 생각 좀 해볼께요."




	elseif req == 13 then
		return 3,0,"네.. 그렇게 하세요. 뭉뭉이 녀석.. 정말 당신을 좋아하는 듯 하네요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은.. 생명의 열매 2개 입니다. 이 정도면 충분하지요?",32,"네! 정말 감사합니다!",33,"잠시만.. 생각 좀 해볼께요."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 4칸이 있어야 합니다."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 2칸이 있어야 합니다."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end




function NPC_QUEST_666(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 384) < 1 then
			if GetSwitchCount(cnum, 383) < 1 then
				return 1,0,"저에게 무슨 볼일이?"

			else
				return 2,0,"저에게 무슨 볼일이?",101,"렉스의 심부름 왔습니다."

			end

		else
			return 1,0,"즐거운 시간 보내세요~"


		end



	elseif req == 101 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		else
			return 2,0,"어머나? 혹시 이건 뭉뭉이? 아.. 당신이 그 뭉뭉이를 맡아오시던 분이군요? 이야기는 많이 들었습니다. 정말 잘 키우셨네요. 그런데, 그 막대사탕은? 네? 렉스가 저에게 보냈다고요? 어머.. 감동감동감동~ 렉스 사랑쟁이~ 아.. 제가 너무 주책없이.. 호호 죄송요.",2,"행복해보여 좋네요. 사탕 받으세요."


		end
		

	elseif req == 2 then
		return 3,0,"뭉뭉이는 정말 많이 컸네요. 그리고 당신을 정말 잘 따르고요.. 렉스가 다시 보내주긴 했지만 이 녀석까지 받기는 좀 그렇네요. 제 생각에 뭉뭉이의 진정한 주인은 당신 같은데..당신의 결정에 맡기도록 할께요. 뭉뭉이를 저에게 주셔도 되고, 그냥 계속 맡아서 키우셔도 좋아요.",12,"아니요, 당신께 드릴께요.",13,"그럴까요? 그럼, 제가 맡죠."




	elseif req == 12 then
		return 3,0,"진정 그러시다면, 고맙게 잘 키울께요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은. 저주받은 프리미엄 마크 1개, 축복의 시너지 상승물약 1개, 생명의열매 2개 입니다.. 이 정도면 충분하지요?",22,"네! 정말 감사합니다!",23,"잠시만.. 생각 좀 해볼께요."




	elseif req == 13 then
		return 3,0,"네.. 그렇게 하세요. 뭉뭉이 녀석.. 정말 당신을 좋아하는 듯 하네요. 그래도 그 동안 고생하신게 있으니 자그마한 보답으로 선물을 드릴께요. 선물은.. 생명의 열매 2개 입니다. 이 정도면 충분하지요?",32,"네! 정말 감사합니다!",33,"잠시만.. 생각 좀 해볼께요."




	elseif req == 22 then

		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 4 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 4칸이 있어야 합니다."


		else
			
			AddSwitchCount(cnum, 384, 1)
			AddHench(cnum, 548, -1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3725, 1)				
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end






	elseif req == 32 then
		if GetHench(cnum, 1, 548, 78) < 1 or GetItemCount(cnum, 8128, 0) < 1 then
			return 1,0,"뭉뭉이 또는 사랑가득 막대사탕이 없습니다."


		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상 아이템을 넣을 공간이 부족합니다. 인벤토리에 여유공간이 최소 2칸이 있어야 합니다."


		else
			AddSwitchCount(cnum, 384, 1)
			AddItemCount(cnum, 8128, -1)
			AddItemCount(cnum, 3318, 1)
			AddItemCount(cnum, 3318, 1)
		end



	elseif req == 23 or req == 33 then
		return 0



	else
		return 0

	end
end