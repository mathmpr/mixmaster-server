function NPC_QUEST_696(cnum, reqNumber) -- 누군가의 엄마

req = reqNumber

	if req == 1 then

		if GetSwitchCount(cnum, 409) < 1 then
			return 3,0,"저기요.. 잠시만.. 혹시..?",2,"네?",3,"기나 도에는 관심 없소"


		else
			if GetItemCount(cnum, 1261, 0) < 1 then
				return 2,0,"네? 무엇을 하시려고..",72,"하하.. 잠시만 있어보세요."

			
			else
				if GetSwitchCount(cnum, 410) < 1 then
					return 2,0,"어라? 이건 뭔가요?",82,"하하.. 어머니 받으세요."

				else
					return 2,0,"어머나.. 또 오셨네요.",112,"하하.. 어머니 받으세요."

				end


			end

		end


	elseif req == 2 then
		return 2,0,"아니요.. 죄송해요.@너무 닮았네요.@순간 저도 모르게..",12,"뭘 닮아요?"


	
	elseif req == 12 then
		return 2,0,"3년전.. 잃어버린 저의.. (흑흑)@죄송해요.@초면에 실례가 많았네요.",22,"괜찮습니다. 무슨 일인데요?"




	elseif req == 22 then
		return 2,0,"저에겐 아이가 하나 있었어요.@아이 아빠는 병으로 일찍@돌아가시고, 두 가족이 힘들지만@나름 즐겁게 생활을 하고@있었답니다.@그런데.. 3년전 오늘 밤..@평화롭던 마지리타 성에@몬스터들의 침공이 있었지요.@아이와 저는 무서워서 집 밖으로@나오지도 못하고 있었는데,@몬스터들의 침공에 어느 순간@집은 불타버리고 있었죠.@살아남기 위해 아이의 손을 잡고@정신없이 집을 뛰쳐 나오던 순간..@저는 큰 충격을 받고 정신을@잃었답니다.@어느 순간 깨어나보니 마을@사람들이 피난한 곳에 있더군요.",32,"아이는?"



	elseif req == 32 then
		return 2,0,"(갑자기 울음을 터트리며..)@정신을 차려보니 아이는 없었어요.@피난해온 마을 사람 모두@못 봤다고 하더군요.@몬스터들이 마을을 떠난 후@불타버린 집터를 뒤져봤지만@아이의 흔적은 찾을 수가@없었지요. (흑흑~)@하지만, 분명히 아직 살아 있는걸@느낄 수 있어요.@요즘 같은 날에는 더욱 생각이나서@정말 슬프네요.",42,"저런.. 분명히 살아있을거에요."



	elseif req == 42 then
		return 2,0,"제가 괜히 바쁘신 분을 붙잡고@쓸데없는 이야기를 했네요.@죄송해요. (훌쩍)",52,"괜찮습니다. 잠시만요."



	elseif req == 52 then
		return 2,0,"(어머니가 아이를 무척이나 보고@싶어하는군..조금이라도 기쁘게@해드리고 싶은데..@메크리타에 있는 꽃집 아가씨가@카네이션을 멋지게 만들어준다고@하던데..@우선 거기를 가봐야겠군)",62,"어머니.. 여기서 잠시만 계세요."



	elseif req == 62 then
		AddSwitchCount(cnum, 409, 1)



	elseif req == 82 then
		return 2,0,"이것을 왜 저에게?@네? 제 아이 대신이라고요?",92,"어버이 날이고하니..(쑥쓰~)"



	elseif req == 92 then
		return 2,0,"어머나 정말 고마워요.@그 동안 아이가 보고 싶어 항상@우울했는데..기분이 한결@나아졌네요. ^^@언젠가 우리 아이가 직접 챙겨주는@날이 있겠죠? ^^@정말 고맙게 받을께요.@아.. 대신..@우리 아이가 예전에 사용하던@것들이 있는데.. 보답으로@대신 드릴께요.",102,"네! 감사합니다.(넙죽!)"



	elseif req == 102 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 보상 아이템을 넣을 공간이 없습니다."


		else
			random = SetRandom(cnum, 1, 100)

			if random <= 6 then
				AddItemCount(cnum, 4512, 1)


			elseif random >= 7 and random <= 7 then
				AddItemCount(cnum, 874, 1)


			elseif random >= 8 and random <= 8 then
				AddItemCount(cnum, 3318, 1)


			elseif random >= 9 and random <= 9 then
				AddItemCount(cnum, 3316, 1)


			elseif random >= 10 and random <= 10 then
				AddItemCount(cnum, 1333, 1)


			elseif random >= 11 and random <= 20 then
				AddItemCount(cnum, 80, 3)


			elseif random >= 20 and random <= 100 then
				AddItemCount(cnum, 4491, 10)


			else
				return 0
			
			end

			AddItemCount(cnum, 1261, -1)
			AddSwitchCount(cnum, 410, 1)
			return 1,0,"네.. ^^@덕분에 정말 기분이 좋아졌어요.@앞으로도 종종 찾아오세요. ^^"

		end






	elseif req == 112 then
		return 2,0,"호호.. 또 뭘 이런걸 다.. ^^@저도 보답으로 유용한 것을@하나 드릴께요.@즐거운 하루 되세요. ^^",113,"네! 몸 건강하세요~"



	
	elseif req == 113 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 보상 아이템을 넣을 공간이 없습니다."


		else
			random = SetRandom(cnum, 1, 100)

			if random <= 6 then
				AddItemCount(cnum, 4512, 1)


			elseif random >= 7 and random <= 7 then
				AddItemCount(cnum, 874, 1)


			elseif random >= 8 and random <= 8 then
				AddItemCount(cnum, 3318, 1)


			elseif random >= 9 and random <= 9 then
				AddItemCount(cnum, 3316, 1)


			elseif random >= 10 and random <= 10 then
				AddItemCount(cnum, 1333, 1)


			elseif random >= 11 and random <= 20 then
				AddItemCount(cnum, 80, 3)


			elseif random >= 20 and random <= 100 then
				AddItemCount(cnum, 4491, 10)


			else
				return 0
			
			end

			AddItemCount(cnum, 1261, -1)


		end


	else
		return 0


	end
end




function NPC_QUEST_697(cnum, reqNumber) -- 꽃집 아가씨

req = reqNumber

	if req == 1 then
		return 2,0,"네네~ 어서오세요.@꽃의 재료를 가져오시면@멋진 꽃으로 만들어드려요.@무슨 일로 오셨나요?",2,"카네이션을 만들려고요."


	elseif req == 2 then
		return 2,0,"카네이션은 다음과 같은 재료가@필요하답니다.@@[꽃잎 10개]@[줄기 10개]@[2,000GP]@@재료는 몬스터들을 사냥하다보면@나오니 쉽게 얻으실 수@있을거에요.@재료를 각각 10개씩 가져오시면@카네이션 1송이를 만들어드려요.",12,"만들어주세요."




	elseif req == 12 then
		if GetItemCount(cnum, 1256, 0) < 10 or GetItemCount(cnum, 1257, 0) < 10 or GetMoney(cnum) < 2000 then
			return 2,0,"재료가 부족하군요.@카네이션 1송이를 만드려면 다음과@같은 재료가 필요해요.@@[꽃잎 10개]@[줄기 10개]@[2,000GP]@@그럼, 수고요~ ^^",22,"네네~"


		else
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"인벤토리에 [카네이션]을 넣을 공간이 부족합니다."


			else
				return 2,0,"재료가 충분하군요.@자~ 여기 카네이션 1송이 받으세요.@아.. 그리고 누군가에게 선물하려면@제 옆의 포장맨에게 물어보시면 됩니다.",32,"감사합니다."


			end

		end


	elseif req == 32 then
		AddItemCount(cnum, 1256, -10)
		AddItemCount(cnum, 1257, -10)
		AddMoney(cnum, -2000)
		AddItemCount(cnum, 1258, 1)



	else
		return 0
		
	
	end
end





function NPC_QUEST_698(cnum, reqNumber) -- 포장맨

req = reqNumber

	if req == 1 then
		return 2,0,"네네~ 어서오세요.@저는 꽃 포장 전문 포장맨이라고@합니다.@포장을 원하십니까?",2,"카네이션 포장 좀.."



	elseif req == 2 then
		return 2,0,"카네이션 포장은 다음과 같은 @재료가 필요하답니다.@@[카네이션 10송이]@[포장지 1개]@[선물상자 1개]@[2,000GP]@@준비가 되셨나요?@[카네이션]은 제 옆의@'꽃집 아가씨'에게@구하시면 되고요.@[포장지]와 [선물상자]는 마을에 있는@'잡화상인'에게 구입할 수 있습니다.",12,"만들어주세요."



	elseif req == 12 then
		if GetItemCount(cnum, 1258, 0) < 10 or GetItemCount(cnum, 1259, 0) < 1 or GetItemCount(cnum, 1260, 0) < 1 or GetMoney(cnum) < 2000 then
			return 2,0,"재료가 부족하군요.@카네이션 포장은 다음과 같은@재료가 필요하답니다.@@[카네이션 10송이]@[포장지 1개]@[선물상자 1개]@[2,000GP]@@빼먹은게 있나 살펴보세요~@[카네이션]은 제 옆의@'꽃집 아가씨'에게@구하시면 되고요.@[포장지]와 [선물상자]는 마을에 있는@'잡화상인'에게 구입할 수 있습니다.@그럼, 수고요~ ^^",22,"네네~"


		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 [포장된 선물상자]를 넣을 공간이 부족합니다."



		else
			AddItemCount(cnum, 1258, -10)
			AddItemCount(cnum, 1259, -1)		
			AddItemCount(cnum, 1260, -1)
			AddMoney(cnum, -2000)
			AddItemCount(cnum, 1261, 1)
			return 1,0,"재료가 충분하군요.@자~ 여기 [포장된 선물상자]를@받으세요.@누가 받을지는 모르겠지만..@정말 좋아하겠는걸요? ^^"


		end


	else
		return 0

	end
end













		