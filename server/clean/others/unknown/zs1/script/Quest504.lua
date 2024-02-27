function NPC_QUEST_667(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- 사탕 재발급

			if GetSwitchCount(cnum, 382) < 1 then -- 2차 이벤트 수락 후

				if GetSwitchCount(cnum, 379) < 1 then -- 완료 후

					if GetSwitchCount(cnum, 378) < 1 then -- 4단계

						if GetSwitchCount(cnum, 377) < 1 then -- 3단계
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2단계

								if GetSwitchCount(cnum, 375) < 1 then -- 1단계
									return 3,0,"(시무룩..)",2,"무슨 고민 있으세요?",3,"뭐야. 인상 쓰기는(무시)"
	

								else

									return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 아기뭉뭉이를 31레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",72,"아기뭉뭉이를 보여준다."

								end

							else

								return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 튼튼뭉뭉이를 47레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",82,"튼튼뭉뭉이를 보여준다."
			
	
							end

						else

							return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 덩치뭉뭉이를 62레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",92,"덩치뭉뭉이를 보여준다."

	
						end

					else

						return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 수퍼뭉뭉이를 78레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",102,"수퍼뭉뭉이를 보여준다."

	
					end
		
				else
					return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨어요. 어서 사랑하는 그녀에게 보여주고 싶군요. 하지만 그냥 보여주긴 좀 그렇고. 무슨 좋은 방법이 없을까요?",112,"화이트데이니까. 사탕과 함께"

				end

			else
				return 2,0,"재료는 다 구해 오셨나요?",132,"네"


			end

		else
			return 2,0,"또 오셨군요. 알고 있겠지만 사랑가득 막대사탕을 만들기 위해서는  [나무막대기 30개], [눈깔사탕 30개] 재료가 필요해요. 지금 만드시겠어요?",152,"네"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다. 다시 부탁드릴께요~",142,"이런.. 금방 가져올께요"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"최고에요! 최고! 이것으로 준비는 끝난 것 같군요. 자~ 사랑가득 막대사탕과 뭉뭉이를 저의 사랑스러운 제시카에게 주세요. 아! 뭉뭉이는 인벤토리에서 뺀 상태로 줘야되는 점 잊지 마시고요. 지금 드리는 사랑가득 막대사탕은 사용하시면 안되고, 꼭 뭉뭉이와 함께 제시카에게 건네줘야 합니다. 그리고.. 사랑가득 막대사탕이 더 필요하시면 재료를 모아 갔다주세요. 제가 계속 만들어드릴께요."

		end







	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"사랑가득 막대사탕을 만들 재료가 충분하네요. 지금 바로 만들어 드릴께요. 당신도 사랑하는 사람이 있다면 선물을 해보세요~ 자~ 받으세요."

		end







	elseif req == 2 then
		return 3,0,"(뭉뭉이를 쓰다듬으며..)네.. 사실 발렌타인 기념으로 사랑하는 그녀에게 강아지를 선물 받았어요. 그런데 어쩌지요? 제가 곧 모험을 떠나야해서. 이 녀석을 돌봐줄 사람이 필요하네요. 멋지게 키워서 그녀에게 보여주고 싶은데 말이죠.",12,"음. 그럼 제가 맡아 드리지요",13,"어이쿠! 개털 알러지가 있어서..죄송"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"정말 그래주시겠어요? 이렇게 고마울수가! 그러면 좀 부탁드릴께요. 제가 가끔 이곳에 있으니. 뭉뭉이가 많이 자라면 저에게 보여주세요. 감사의 선물을 드리죠~",22,"제가 전직 조련사였습죠. 기대하셈~",23,"사실 저도 먹고살기 힘들어서.. 죄송" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --처음 지급
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리창에 뭉뭉이를 넣을 공간이 없네요"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"헨치 인벤토리에 아기 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",32,"얼마든지 맡기십쇼!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"헨치 인벤토리에 튼튼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",42,"얼마든지 맡기십쇼!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"헨치 인벤토리에 덩치 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",52,"얼마든지 맡기십쇼!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"헨치 인벤토리에 수퍼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨겠어요. 어서 사랑하는 그녀에게 보여주고 싶지만 저의 모험이 아직 끝나지 않았군요. 모험이 끝날 때 까지만 이 녀석을 조금만 더 맡아주시오. 때가 되면 찾아가리다.",62,"좋소! 기다릴께요!"

		end




	elseif req == 112 then
		return 3,0,"굿! 아이디어! 그런데, 어쩌지요? 제가 사탕 재료를 구할 시간이 없는데..미안하지만, 재료 좀 구해주실 수 있을까요? 이것들이 필요합니다. [나무막대기 30개], [눈깔사탕 30개]",122,"당장 구해올게요",123,"언제까지 부려먹을셈이냐!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1단계 완료
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2단계 완료
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3단계 완료
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4단계 완료

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"오류"

	end
end






function NPC_QUEST_668(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- 사탕 재발급

			if GetSwitchCount(cnum, 382) < 1 then -- 2차 이벤트 수락 후

				if GetSwitchCount(cnum, 379) < 1 then -- 완료 후

					if GetSwitchCount(cnum, 378) < 1 then -- 4단계

						if GetSwitchCount(cnum, 377) < 1 then -- 3단계
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2단계

								if GetSwitchCount(cnum, 375) < 1 then -- 1단계
									return 3,0,"(시무룩..)",2,"무슨 고민 있으세요?",3,"뭐야. 인상 쓰기는(무시)"
	

								else

									return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 아기뭉뭉이를 31레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",72,"아기뭉뭉이를 보여준다."

								end

							else

								return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 튼튼뭉뭉이를 47레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",82,"튼튼뭉뭉이를 보여준다."
			
	
							end

						else

							return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 덩치뭉뭉이를 62레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",92,"덩치뭉뭉이를 보여준다."

	
						end

					else

						return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 수퍼뭉뭉이를 78레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",102,"수퍼뭉뭉이를 보여준다."

	
					end
		
				else
					return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨어요. 어서 사랑하는 그녀에게 보여주고 싶군요. 하지만 그냥 보여주긴 좀 그렇고. 무슨 좋은 방법이 없을까요?",112,"화이트데이니까. 사탕과 함께"

				end

			else
				return 2,0,"재료는 다 구해 오셨나요?",132,"네"


			end

		else
			return 2,0,"또 오셨군요. 알고 있겠지만 사랑가득 막대사탕을 만들기 위해서는  [나무막대기 30개], [눈깔사탕 30개] 재료가 필요해요. 지금 만드시겠어요?",152,"네"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다. 다시 부탁드릴께요~",142,"이런.. 금방 가져올께요"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"최고에요! 최고! 이것으로 준비는 끝난 것 같군요. 자~ 사랑가득 막대사탕과 뭉뭉이를 저의 사랑스러운 제시카에게 주세요. 아! 뭉뭉이는 인벤토리에서 뺀 상태로 줘야되는 점 잊지 마시고요. 지금 드리는 사랑가득 막대사탕은 사용하시면 안되고, 꼭 뭉뭉이와 함께 제시카에게 건네줘야 합니다. 그리고.. 사랑가득 막대사탕이 더 필요하시면 재료를 모아 갔다주세요. 제가 계속 만들어드릴께요."

		end




	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"사랑가득 막대사탕을 만들 재료가 충분하네요. 지금 바로 만들어 드릴께요. 당신도 사랑하는 사람이 있다면 선물을 해보세요~ 자~ 받으세요."

		end







	elseif req == 2 then
		return 3,0,"(뭉뭉이를 쓰다듬으며..)네.. 사실 발렌타인 기념으로 사랑하는 그녀에게 강아지를 선물 받았어요. 그런데 어쩌지요? 제가 곧 모험을 떠나야해서. 이 녀석을 돌봐줄 사람이 필요하네요. 멋지게 키워서 그녀에게 보여주고 싶은데 말이죠.",12,"음. 그럼 제가 맡아 드리지요",13,"어이쿠! 개털 알러지가 있어서..죄송"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"정말 그래주시겠어요? 이렇게 고마울수가! 그러면 좀 부탁드릴께요. 제가 가끔 이곳에 있으니. 뭉뭉이가 많이 자라면 저에게 보여주세요. 감사의 선물을 드리죠~",22,"제가 전직 조련사였습죠. 기대하셈~",23,"사실 저도 먹고살기 힘들어서.. 죄송" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --처음 지급
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리창에 뭉뭉이를 넣을 공간이 없네요"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"헨치 인벤토리에 아기 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",32,"얼마든지 맡기십쇼!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"헨치 인벤토리에 튼튼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",42,"얼마든지 맡기십쇼!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"헨치 인벤토리에 덩치 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",52,"얼마든지 맡기십쇼!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"헨치 인벤토리에 수퍼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨겠어요. 어서 사랑하는 그녀에게 보여주고 싶지만 저의 모험이 아직 끝나지 않았군요. 모험이 끝날 때 까지만 이 녀석을 조금만 더 맡아주시오. 때가 되면 찾아가리다.",62,"좋소! 기다릴께요!"

		end




	elseif req == 112 then
		return 3,0,"굿! 아이디어! 그런데, 어쩌지요? 제가 사탕 재료를 구할 시간이 없는데..미안하지만, 재료 좀 구해주실 수 있을까요? 이것들이 필요합니다. [나무막대기 30개], [눈깔사탕 30개]",122,"당장 구해올게요",123,"언제까지 부려먹을셈이냐!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1단계 완료
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2단계 완료
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3단계 완료
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4단계 완료

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"오류"

	end
end












function NPC_QUEST_669(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- 사탕 재발급

			if GetSwitchCount(cnum, 382) < 1 then -- 2차 이벤트 수락 후

				if GetSwitchCount(cnum, 379) < 1 then -- 완료 후

					if GetSwitchCount(cnum, 378) < 1 then -- 4단계

						if GetSwitchCount(cnum, 377) < 1 then -- 3단계
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2단계

								if GetSwitchCount(cnum, 375) < 1 then -- 1단계
									return 3,0,"(시무룩..)",2,"무슨 고민 있으세요?",3,"뭐야. 인상 쓰기는(무시)"
	

								else

									return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 아기뭉뭉이를 31레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",72,"아기뭉뭉이를 보여준다."

								end

							else

								return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 튼튼뭉뭉이를 47레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",82,"튼튼뭉뭉이를 보여준다."
			
	
							end

						else

							return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 덩치뭉뭉이를 62레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",92,"덩치뭉뭉이를 보여준다."

	
						end

					else

						return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 수퍼뭉뭉이를 78레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",102,"수퍼뭉뭉이를 보여준다."

	
					end
		
				else
					return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨어요. 어서 사랑하는 그녀에게 보여주고 싶군요. 하지만 그냥 보여주긴 좀 그렇고. 무슨 좋은 방법이 없을까요?",112,"화이트데이니까. 사탕과 함께"

				end

			else
				return 2,0,"재료는 다 구해 오셨나요?",132,"네"


			end

		else
			return 2,0,"또 오셨군요. 알고 있겠지만 사랑가득 막대사탕을 만들기 위해서는  [나무막대기 30개], [눈깔사탕 30개] 재료가 필요해요. 지금 만드시겠어요?",152,"네"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다. 다시 부탁드릴께요~",142,"이런.. 금방 가져올께요"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"최고에요! 최고! 이것으로 준비는 끝난 것 같군요. 자~ 사랑가득 막대사탕과 뭉뭉이를 저의 사랑스러운 제시카에게 주세요. 아! 뭉뭉이는 인벤토리에서 뺀 상태로 줘야되는 점 잊지 마시고요. 지금 드리는 사랑가득 막대사탕은 사용하시면 안되고, 꼭 뭉뭉이와 함께 제시카에게 건네줘야 합니다. 그리고.. 사랑가득 막대사탕이 더 필요하시면 재료를 모아 갔다주세요. 제가 계속 만들어드릴께요."

		end




	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"사랑가득 막대사탕을 만들 재료가 충분하네요. 지금 바로 만들어 드릴께요. 당신도 사랑하는 사람이 있다면 선물을 해보세요~ 자~ 받으세요."

		end







	elseif req == 2 then
		return 3,0,"(뭉뭉이를 쓰다듬으며..)네.. 사실 발렌타인 기념으로 사랑하는 그녀에게 강아지를 선물 받았어요. 그런데 어쩌지요? 제가 곧 모험을 떠나야해서. 이 녀석을 돌봐줄 사람이 필요하네요. 멋지게 키워서 그녀에게 보여주고 싶은데 말이죠.",12,"음. 그럼 제가 맡아 드리지요",13,"어이쿠! 개털 알러지가 있어서..죄송"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"정말 그래주시겠어요? 이렇게 고마울수가! 그러면 좀 부탁드릴께요. 제가 가끔 이곳에 있으니. 뭉뭉이가 많이 자라면 저에게 보여주세요. 감사의 선물을 드리죠~",22,"제가 전직 조련사였습죠. 기대하셈~",23,"사실 저도 먹고살기 힘들어서.. 죄송" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --처음 지급
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리창에 뭉뭉이를 넣을 공간이 없네요"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"헨치 인벤토리에 아기 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",32,"얼마든지 맡기십쇼!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"헨치 인벤토리에 튼튼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",42,"얼마든지 맡기십쇼!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"헨치 인벤토리에 덩치 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",52,"얼마든지 맡기십쇼!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"헨치 인벤토리에 수퍼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨겠어요. 어서 사랑하는 그녀에게 보여주고 싶지만 저의 모험이 아직 끝나지 않았군요. 모험이 끝날 때 까지만 이 녀석을 조금만 더 맡아주시오. 때가 되면 찾아가리다.",62,"좋소! 기다릴께요!"

		end




	elseif req == 112 then
		return 3,0,"굿! 아이디어! 그런데, 어쩌지요? 제가 사탕 재료를 구할 시간이 없는데..미안하지만, 재료 좀 구해주실 수 있을까요? 이것들이 필요합니다. [나무막대기 30개], [눈깔사탕 30개]",122,"당장 구해올게요",123,"언제까지 부려먹을셈이냐!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1단계 완료
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2단계 완료
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3단계 완료
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4단계 완료

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"오류"

	end
end






function NPC_QUEST_670(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- 사탕 재발급

			if GetSwitchCount(cnum, 382) < 1 then -- 2차 이벤트 수락 후

				if GetSwitchCount(cnum, 379) < 1 then -- 완료 후

					if GetSwitchCount(cnum, 378) < 1 then -- 4단계

						if GetSwitchCount(cnum, 377) < 1 then -- 3단계
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2단계

								if GetSwitchCount(cnum, 375) < 1 then -- 1단계
									return 3,0,"(시무룩..)",2,"무슨 고민 있으세요?",3,"뭐야. 인상 쓰기는(무시)"
	

								else

									return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 아기뭉뭉이를 31레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",72,"아기뭉뭉이를 보여준다."

								end

							else

								return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 튼튼뭉뭉이를 47레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",82,"튼튼뭉뭉이를 보여준다."
			
	
							end

						else

							return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 덩치뭉뭉이를 62레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",92,"덩치뭉뭉이를 보여준다."

	
						end

					else

						return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 수퍼뭉뭉이를 78레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",102,"수퍼뭉뭉이를 보여준다."

	
					end
		
				else
					return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨어요. 어서 사랑하는 그녀에게 보여주고 싶군요. 하지만 그냥 보여주긴 좀 그렇고. 무슨 좋은 방법이 없을까요?",112,"화이트데이니까. 사탕과 함께"

				end

			else
				return 2,0,"재료는 다 구해 오셨나요?",132,"네"


			end

		else
			return 2,0,"또 오셨군요. 알고 있겠지만 사랑가득 막대사탕을 만들기 위해서는  [나무막대기 30개], [눈깔사탕 30개] 재료가 필요해요. 지금 만드시겠어요?",152,"네"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다. 다시 부탁드릴께요~",142,"이런.. 금방 가져올께요"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"최고에요! 최고! 이것으로 준비는 끝난 것 같군요. 자~ 사랑가득 막대사탕과 뭉뭉이를 저의 사랑스러운 제시카에게 주세요. 아! 뭉뭉이는 인벤토리에서 뺀 상태로 줘야되는 점 잊지 마시고요. 지금 드리는 사랑가득 막대사탕은 사용하시면 안되고, 꼭 뭉뭉이와 함께 제시카에게 건네줘야 합니다. 그리고.. 사랑가득 막대사탕이 더 필요하시면 재료를 모아 갔다주세요. 제가 계속 만들어드릴께요."

		end




	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"사랑가득 막대사탕을 만들 재료가 충분하네요. 지금 바로 만들어 드릴께요. 당신도 사랑하는 사람이 있다면 선물을 해보세요~ 자~ 받으세요."

		end







	elseif req == 2 then
		return 3,0,"(뭉뭉이를 쓰다듬으며..)네.. 사실 발렌타인 기념으로 사랑하는 그녀에게 강아지를 선물 받았어요. 그런데 어쩌지요? 제가 곧 모험을 떠나야해서. 이 녀석을 돌봐줄 사람이 필요하네요. 멋지게 키워서 그녀에게 보여주고 싶은데 말이죠.",12,"음. 그럼 제가 맡아 드리지요",13,"어이쿠! 개털 알러지가 있어서..죄송"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"정말 그래주시겠어요? 이렇게 고마울수가! 그러면 좀 부탁드릴께요. 제가 가끔 이곳에 있으니. 뭉뭉이가 많이 자라면 저에게 보여주세요. 감사의 선물을 드리죠~",22,"제가 전직 조련사였습죠. 기대하셈~",23,"사실 저도 먹고살기 힘들어서.. 죄송" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --처음 지급
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리창에 뭉뭉이를 넣을 공간이 없네요"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"헨치 인벤토리에 아기 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",32,"얼마든지 맡기십쇼!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"헨치 인벤토리에 튼튼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",42,"얼마든지 맡기십쇼!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"헨치 인벤토리에 덩치 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",52,"얼마든지 맡기십쇼!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"헨치 인벤토리에 수퍼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨겠어요. 어서 사랑하는 그녀에게 보여주고 싶지만 저의 모험이 아직 끝나지 않았군요. 모험이 끝날 때 까지만 이 녀석을 조금만 더 맡아주시오. 때가 되면 찾아가리다.",62,"좋소! 기다릴께요!"

		end




	elseif req == 112 then
		return 3,0,"굿! 아이디어! 그런데, 어쩌지요? 제가 사탕 재료를 구할 시간이 없는데..미안하지만, 재료 좀 구해주실 수 있을까요? 이것들이 필요합니다. [나무막대기 30개], [눈깔사탕 30개]",122,"당장 구해올게요",123,"언제까지 부려먹을셈이냐!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1단계 완료
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2단계 완료
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3단계 완료
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4단계 완료

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"오류"

	end
end






function NPC_QUEST_671(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- 사탕 재발급

			if GetSwitchCount(cnum, 382) < 1 then -- 2차 이벤트 수락 후

				if GetSwitchCount(cnum, 379) < 1 then -- 완료 후

					if GetSwitchCount(cnum, 378) < 1 then -- 4단계

						if GetSwitchCount(cnum, 377) < 1 then -- 3단계
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2단계

								if GetSwitchCount(cnum, 375) < 1 then -- 1단계
									return 3,0,"(시무룩..)",2,"무슨 고민 있으세요?",3,"뭐야. 인상 쓰기는(무시)"
	

								else

									return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 아기뭉뭉이를 31레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",72,"아기뭉뭉이를 보여준다."

								end

							else

								return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 튼튼뭉뭉이를 47레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",82,"튼튼뭉뭉이를 보여준다."
			
	
							end

						else

							return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 덩치뭉뭉이를 62레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",92,"덩치뭉뭉이를 보여준다."

	
						end

					else

						return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 수퍼뭉뭉이를 78레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",102,"수퍼뭉뭉이를 보여준다."

	
					end
		
				else
					return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨어요. 어서 사랑하는 그녀에게 보여주고 싶군요. 하지만 그냥 보여주긴 좀 그렇고. 무슨 좋은 방법이 없을까요?",112,"화이트데이니까. 사탕과 함께"

				end

			else
				return 2,0,"재료는 다 구해 오셨나요?",132,"네"


			end

		else
			return 2,0,"또 오셨군요. 알고 있겠지만 사랑가득 막대사탕을 만들기 위해서는  [나무막대기 30개], [눈깔사탕 30개] 재료가 필요해요. 지금 만드시겠어요?",152,"네"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다. 다시 부탁드릴께요~",142,"이런.. 금방 가져올께요"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"최고에요! 최고! 이것으로 준비는 끝난 것 같군요. 자~ 사랑가득 막대사탕과 뭉뭉이를 저의 사랑스러운 제시카에게 주세요. 아! 뭉뭉이는 인벤토리에서 뺀 상태로 줘야되는 점 잊지 마시고요. 지금 드리는 사랑가득 막대사탕은 사용하시면 안되고, 꼭 뭉뭉이와 함께 제시카에게 건네줘야 합니다. 그리고.. 사랑가득 막대사탕이 더 필요하시면 재료를 모아 갔다주세요. 제가 계속 만들어드릴께요."

		end




	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"사랑가득 막대사탕을 만들 재료가 충분하네요. 지금 바로 만들어 드릴께요. 당신도 사랑하는 사람이 있다면 선물을 해보세요~ 자~ 받으세요."

		end







	elseif req == 2 then
		return 3,0,"(뭉뭉이를 쓰다듬으며..)네.. 사실 발렌타인 기념으로 사랑하는 그녀에게 강아지를 선물 받았어요. 그런데 어쩌지요? 제가 곧 모험을 떠나야해서. 이 녀석을 돌봐줄 사람이 필요하네요. 멋지게 키워서 그녀에게 보여주고 싶은데 말이죠.",12,"음. 그럼 제가 맡아 드리지요",13,"어이쿠! 개털 알러지가 있어서..죄송"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"정말 그래주시겠어요? 이렇게 고마울수가! 그러면 좀 부탁드릴께요. 제가 가끔 이곳에 있으니. 뭉뭉이가 많이 자라면 저에게 보여주세요. 감사의 선물을 드리죠~",22,"제가 전직 조련사였습죠. 기대하셈~",23,"사실 저도 먹고살기 힘들어서.. 죄송" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --처음 지급
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리창에 뭉뭉이를 넣을 공간이 없네요"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"헨치 인벤토리에 아기 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",32,"얼마든지 맡기십쇼!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"헨치 인벤토리에 튼튼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",42,"얼마든지 맡기십쇼!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"헨치 인벤토리에 덩치 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",52,"얼마든지 맡기십쇼!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"헨치 인벤토리에 수퍼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨겠어요. 어서 사랑하는 그녀에게 보여주고 싶지만 저의 모험이 아직 끝나지 않았군요. 모험이 끝날 때 까지만 이 녀석을 조금만 더 맡아주시오. 때가 되면 찾아가리다.",62,"좋소! 기다릴께요!"

		end




	elseif req == 112 then
		return 3,0,"굿! 아이디어! 그런데, 어쩌지요? 제가 사탕 재료를 구할 시간이 없는데..미안하지만, 재료 좀 구해주실 수 있을까요? 이것들이 필요합니다. [나무막대기 30개], [눈깔사탕 30개]",122,"당장 구해올게요",123,"언제까지 부려먹을셈이냐!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1단계 완료
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2단계 완료
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3단계 완료
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4단계 완료

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"오류"

	end
end






function NPC_QUEST_672(cnum, reqNumber)

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 383) < 1 then -- 사탕 재발급

			if GetSwitchCount(cnum, 382) < 1 then -- 2차 이벤트 수락 후

				if GetSwitchCount(cnum, 379) < 1 then -- 완료 후

					if GetSwitchCount(cnum, 378) < 1 then -- 4단계

						if GetSwitchCount(cnum, 377) < 1 then -- 3단계
	
							if GetSwitchCount(cnum, 376) < 1 then -- 2단계

								if GetSwitchCount(cnum, 375) < 1 then -- 1단계
									return 3,0,"(시무룩..)",2,"무슨 고민 있으세요?",3,"뭐야. 인상 쓰기는(무시)"
	

								else

									return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 아기뭉뭉이를 31레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",72,"아기뭉뭉이를 보여준다."

								end

							else

								return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 튼튼뭉뭉이를 47레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",82,"튼튼뭉뭉이를 보여준다."
			
	
							end

						else

							return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 덩치뭉뭉이를 62레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",92,"덩치뭉뭉이를 보여준다."

	
						end

					else

						return 2,0,"뭉뭉이는 잘 키우고 계신가요?. 수퍼뭉뭉이를 78레벨까지 성장 시키셨다면 저에게 보여주세요. 감사의 뜻으로 선물을 드리겠습니다.",102,"수퍼뭉뭉이를 보여준다."

	
					end
		
				else
					return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨어요. 어서 사랑하는 그녀에게 보여주고 싶군요. 하지만 그냥 보여주긴 좀 그렇고. 무슨 좋은 방법이 없을까요?",112,"화이트데이니까. 사탕과 함께"

				end

			else
				return 2,0,"재료는 다 구해 오셨나요?",132,"네"


			end

		else
			return 2,0,"또 오셨군요. 알고 있겠지만 사랑가득 막대사탕을 만들기 위해서는  [나무막대기 30개], [눈깔사탕 30개] 재료가 필요해요. 지금 만드시겠어요?",152,"네"


		end



	elseif req == 132 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 2,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다. 다시 부탁드릴께요~",142,"이런.. 금방 가져올께요"



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddSwitchCount(cnum, 383, 1)
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"최고에요! 최고! 이것으로 준비는 끝난 것 같군요. 자~ 사랑가득 막대사탕과 뭉뭉이를 저의 사랑스러운 제시카에게 주세요. 아! 뭉뭉이는 인벤토리에서 뺀 상태로 줘야되는 점 잊지 마시고요. 지금 드리는 사랑가득 막대사탕은 사용하시면 안되고, 꼭 뭉뭉이와 함께 제시카에게 건네줘야 합니다. 그리고.. 사랑가득 막대사탕이 더 필요하시면 재료를 모아 갔다주세요. 제가 계속 만들어드릴께요."

		end




	elseif req == 142 then
		return 0




	elseif req == 152 then
		if GetItemCount(cnum, 8125, 0) < 30 or GetItemCount(cnum, 8126, 0) < 30 then
			return 1,0,"사랑가득 막대사탕을 만들기 위한 재료가 부족하네요. [나무막대기 30개], [눈깔사탕 30개] 이렇게 필요합니다."



		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 사랑 가득 막대사탕을 넣을 공간이 부족합니다."


		else
			AddItemCount(cnum, 8125, -30)
			AddItemCount(cnum, 8126, -30)
			AddItemCount(cnum, 8128, 1)
			return 1,0,"사랑가득 막대사탕을 만들 재료가 충분하네요. 지금 바로 만들어 드릴께요. 당신도 사랑하는 사람이 있다면 선물을 해보세요~ 자~ 받으세요."

		end







	elseif req == 2 then
		return 3,0,"(뭉뭉이를 쓰다듬으며..)네.. 사실 발렌타인 기념으로 사랑하는 그녀에게 강아지를 선물 받았어요. 그런데 어쩌지요? 제가 곧 모험을 떠나야해서. 이 녀석을 돌봐줄 사람이 필요하네요. 멋지게 키워서 그녀에게 보여주고 싶은데 말이죠.",12,"음. 그럼 제가 맡아 드리지요",13,"어이쿠! 개털 알러지가 있어서..죄송"


	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 3,0,"정말 그래주시겠어요? 이렇게 고마울수가! 그러면 좀 부탁드릴께요. 제가 가끔 이곳에 있으니. 뭉뭉이가 많이 자라면 저에게 보여주세요. 감사의 선물을 드리죠~",22,"제가 전직 조련사였습죠. 기대하셈~",23,"사실 저도 먹고살기 힘들어서.. 죄송" 

	elseif req == 13 then
		return 0



	elseif req == 22 then --처음 지급
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리창에 뭉뭉이를 넣을 공간이 없네요"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 375, 1)
			AddHenchAndiSp(cnum, 545, 2)
			AddItemCount(cnum, 4512, 1)
		end


	elseif req == 23 then
		return 0



	elseif req == 72 then

		if GetHench(cnum, 1, 545, 1) < 1 then
			return 1,0,"헨치 인벤토리에 아기 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 545, 31) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",32,"얼마든지 맡기십쇼!"

		end





	elseif req == 82 then

		if GetHench(cnum, 1, 546, 1) < 1 then
			return 1,0,"헨치 인벤토리에 튼튼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 546, 47) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",42,"얼마든지 맡기십쇼!"

		end




	elseif req == 92 then

		if GetHench(cnum, 1, 547, 1) < 1 then
			return 1,0,"헨치 인벤토리에 덩치 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 547, 62) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"뭉뭉이녀석 많이 컸네! 하하! 마침 모험 중 진귀한걸 얻었는데 드릴께요. 그리고 뭉뭉이는 다시 좀 맡아주세요~",52,"얼마든지 맡기십쇼!"

		end




	elseif req == 102 then

		if GetHench(cnum, 1, 548, 1) < 1 then
			return 1,0,"헨치 인벤토리에 수퍼 뭉뭉이가 보이지 않는데요? 혹시 지금 사용 중이라면 헨치 인벤토리로 옮겨주세요"

		elseif GetHench(cnum, 1, 548, 78) < 1 then
			return 1,0,"아직 그다지 성장하지 못한 것 같네요. 좀 더 신경써주세요."
	
		else
			return 2,0,"어이쿠~ 이 녀석 엄청나게 자랐군요. 그 동안 정말 고생하셨겠어요. 어서 사랑하는 그녀에게 보여주고 싶지만 저의 모험이 아직 끝나지 않았군요. 모험이 끝날 때 까지만 이 녀석을 조금만 더 맡아주시오. 때가 되면 찾아가리다.",62,"좋소! 기다릴께요!"

		end




	elseif req == 112 then
		return 3,0,"굿! 아이디어! 그런데, 어쩌지요? 제가 사탕 재료를 구할 시간이 없는데..미안하지만, 재료 좀 구해주실 수 있을까요? 이것들이 필요합니다. [나무막대기 30개], [눈깔사탕 30개]",122,"당장 구해올게요",123,"언제까지 부려먹을셈이냐!"




	elseif req == 122 then
		AddSwitchCount(cnum, 382, 1)



	elseif req == 123 then
		return 0












	elseif req == 32 then -- 1단계 완료
		if GetRemainPocket(cnum) < 2 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 376, 1)
			AddHench(cnum, 545, -1)
			AddHenchAndiSp(cnum, 546, 2)
			AddItemCount(cnum, 4513, 1)
			AddItemCount(cnum, 4492, 1)
		end



	elseif req == 42 then -- 2단계 완료
		if GetRemainPocket(cnum) < 3 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"


		else
			AddSwitchCount(cnum, 377, 1)
			AddHench(cnum, 546, -1)
			AddHenchAndiSp(cnum, 547, 2)
			AddItemCount(cnum, 4514, 1)
			AddItemCount(cnum, 4493, 1)
			AddItemCount(cnum, 1027, 1)

		end


	elseif req == 52 then -- 3단계 완료
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"인벤토리에 선물을 넣을 공간이 없어요"

		else
			AddSwitchCount(cnum, 378, 1)
			AddHench(cnum, 547, -1)
			AddHenchAndiSp(cnum, 548, 2)
			AddItemCount(cnum, 3725, 1)
			AddItemCount(cnum, 1027, 1)
			AddItemCount(cnum, 874, 1)
			AddItemCount(cnum, 918, 1)

		end


	elseif req == 62 then -- 4단계 완료

		AddSwitchCount(cnum, 379, 1)


	else
		return 1,0,"오류"

	end
end