function NPC_QUEST_710(cnum, reqNumber)

req = reqNumber
	
	if req == 1 then
	
		if GetSwitchCount(cnum, 431) < 1 then -- 퀘스트를 반복문을 출력
			
			if GetSwitchCount(cnum, 430) < 1 then -- NPC에게 말 걸었을 때 조건 확인
				return 3,0,"보름달은 매월 뜨지만 유독 이 시기의 보름달은 매우 크고 밝은 것이 특징이지요. @저희는 이러한 현상을 '대보름' 이라고 이야기 합니다. @그런데 놀라운 사실은 이처럼 거대한 보름달에 의해 몬스터들이영향을 받게 된다는 사실이 최근에 밝혀 졌다는 것입니다.",2,"궁금한데요?",3,"관심 없는데요."
			
			else 
				return 2,0,"벌써 다녀오신 건가요?",7,"부탁하신 문양을 모두 모아왔습니다."
			end

		else 
			return 2,0,"지난번에 모아주신 문양에 대한 연구를 거듭한 결과 얻은 해답은...... @역시 아직 자료가 많이 부족하는 것이었습니다. @연구의 박차를 가하기 위해서는 문양 세트가 더 필요할 것 같습니다. @ 다시 한번 A.U.R.O.R.A 6가지 문양을 모아 가져와 주세요. @반드시 사례는 하겠습니다.",7,"부탁하신 문양을 다시 모아 왔습니다."
		end
		
	
	elseif req == 2 then
		return 2,0,"대보름의 영향을 받은 일부 몬스터들은 몸 안에 알 수 없는 문양 모양의 덩어리가 형성 된다는 것이었습니다. @그것도 각각 모양과 색상이 제 각각으로 6종류가 몬스터들의 몸 안에서 형성이 되는 것이죠.",4,"매우 흥미롭네요!"


	elseif req == 3 or req == 8 or req == 9 then
		return 0
	

	elseif req == 4 then
		return 3,0,"저는 이러한 현상들이 과거 시난의 과학기술과 밀접한 연관이 있을 것으로 판단 됩니다. @애초에 몬스터들은 시난들의 기술력으로 창조된 생명체들이기 때문이죠. @하지만 시간이 너무 부족하군요. @올해 대보름은 평소보다 짧기 때문에 저 혼자 힘으로는 도저히 모든 문자를 모으기 힘들어 보이네요. @혹시 저를 도와주실 수 있겠습니까? 도와주신다면 반드시 사례를 해드리겠습니다.",5,"기꺼이 도와드리겠습니다.",8,"귀찮게 하지 말고 알아서 모으세요."
	

	elseif req == 5 then
		return 2,0,"고맙습니다! @이로써 이 세상의 비밀들을 알아내는데 한걸음 더 다가갈 수 있겠어요! @각각의 A.U.R.O.R.A 6가지 문양이 모두 필요합니다. @각 문양은 모양도 색상도 제각각이기 때문에 구분하시는데 큰 무리는 없을 것입니다. @그럼 기다리고 있겠습니다!",6,"금방 다녀오겠습니다!"
	

	elseif req == 6 then
		AddSwitchCount(cnum, 430, 1) -- 퀘스트를 수락하여 조건 충족



	elseif req == 7 then
		if GetItemCount(cnum, 8217, 0) < 1 or GetItemCount(cnum, 8218, 0) < 1 or GetItemCount(cnum, 8219, 0) < 1 or GetItemCount(cnum, 8220, 0) < 1 or GetItemCount(cnum, 8221, 0) < 1 or GetItemCount(cnum, 8222, 0) < 1 then
			return 2,0,"이런...... @다시 말씀 드리지만 각각의 A.U.R.O.R.A 문양을 모두 모아 오셔야 합니다. @모두 모이지 않는 이상 제대로 된 연구를 할 수가 없어요.",9,"죄송합니다, 다시 다녀오겠습니다."
				
		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상을 받고 싶으시면 인벤토리를 정리하고 오세요."

		else
			AddSwitchCount(cnum, 431, 1) -- 퀘스트 완료
			AddItemCount(cnum, 8217, -1)
			AddItemCount(cnum, 8218, -1)
			AddItemCount(cnum, 8219, -1)
			AddItemCount(cnum, 8220, -1)
			AddItemCount(cnum, 8221, -1)
			AddItemCount(cnum, 8222, -1)
			AddItemCount(cnum, 8223, 1)
			AddItemCount(cnum, 8224, 1)
			return 1,0,"다 모아오시다니! @정말 감사합니다! @이로써 이 세상의 비밀들을 알아내는데 두 걸음이나 앞서나간 기분이에요! @아, 그리고 이것은 약속드린 사례입니다. @안에 무엇이 들어있는지는 모르겠지만 여러모로 쓸만한 아이템이 들어있다고 합니다. @인벤토리에 빈 자리가 없진 않나 확인하시고 한번 열어보세요."
		end


	else
		return 0


	end		

end




function NPC_QUEST_711(cnum, reqNumber)

req = reqNumber
	
	if req == 1 then
	
		if GetSwitchCount(cnum, 431) < 1 then -- 퀘스트를 반복문을 출력
			
			if GetSwitchCount(cnum, 430) < 1 then -- NPC에게 말 걸었을 때 조건 확인
				return 3,0,"보름달은 매월 뜨지만 유독 이 시기의 보름달은 매우 크고 밝은 것이 특징이지요. @저희는 이러한 현상을 '대보름' 이라고 이야기 합니다. @그런데 놀라운 사실은 이처럼 거대한 보름달에 의해 몬스터들이영향을 받게 된다는 사실이 최근에 밝혀 졌다는 것입니다.",2,"궁금한데요?",3,"관심 없는데요."
			
			else 
				return 2,0,"벌써 다녀오신 건가요?",7,"부탁하신 문양을 모두 모아왔습니다."
			end

		else 
			return 2,0,"지난번에 모아주신 문양에 대한 연구를 거듭한 결과 얻은 해답은...... @역시 아직 자료가 많이 부족하는 것이었습니다. @연구의 박차를 가하기 위해서는 문양 세트가 더 필요할 것 같습니다. @ 다시 한번 A.U.R.O.R.A 6가지 문양을 모아 가져와 주세요. @반드시 사례는 하겠습니다.",7,"부탁하신 문양을 다시 모아 왔습니다."
		end
		
	
	elseif req == 2 then
		return 2,0,"대보름의 영향을 받은 일부 몬스터들은 몸 안에 알 수 없는 문양 모양의 덩어리가 형성 된다는 것이었습니다. @그것도 각각 모양과 색상이 제 각각으로 6종류가 몬스터들의 몸 안에서 형성이 되는 것이죠.",4,"매우 흥미롭네요!"


	elseif req == 3 or req == 8 or req == 9 then
		return 0
	

	elseif req == 4 then
		return 3,0,"저는 이러한 현상들이 과거 시난의 과학기술과 밀접한 연관이 있을 것으로 판단 됩니다. @애초에 몬스터들은 시난들의 기술력으로 창조된 생명체들이기 때문이죠. @하지만 시간이 너무 부족하군요. @올해 대보름은 평소보다 짧기 때문에 저 혼자 힘으로는 도저히 모든 문자를 모으기 힘들어 보이네요. @혹시 저를 도와주실 수 있겠습니까? 도와주신다면 반드시 사례를 해드리겠습니다.",5,"기꺼이 도와드리겠습니다.",8,"귀찮게 하지 말고 알아서 모으세요."
	

	elseif req == 5 then
		return 2,0,"고맙습니다! @이로써 이 세상의 비밀들을 알아내는데 한걸음 더 다가갈 수 있겠어요! @각각의 A.U.R.O.R.A 6가지 문양이 모두 필요합니다. @각 문양은 모양도 색상도 제각각이기 때문에 구분하시는데 큰 무리는 없을 것입니다. @그럼 기다리고 있겠습니다!",6,"금방 다녀오겠습니다!"
	

	elseif req == 6 then
		AddSwitchCount(cnum, 430, 1) -- 퀘스트를 수락하여 조건 충족



	elseif req == 7 then
		if GetItemCount(cnum, 8217, 0) < 1 or GetItemCount(cnum, 8218, 0) < 1 or GetItemCount(cnum, 8219, 0) < 1 or GetItemCount(cnum, 8220, 0) < 1 or GetItemCount(cnum, 8221, 0) < 1 or GetItemCount(cnum, 8222, 0) < 1 then
			return 2,0,"이런...... @다시 말씀 드리지만 각각의 A.U.R.O.R.A 문양을 모두 모아 오셔야 합니다. @모두 모이지 않는 이상 제대로 된 연구를 할 수가 없어요.",9,"죄송합니다, 다시 다녀오겠습니다."
				
		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상을 받고 싶으시면 인벤토리를 정리하고 오세요."

		else
			AddSwitchCount(cnum, 431, 1) -- 퀘스트 완료
			AddItemCount(cnum, 8217, -1)
			AddItemCount(cnum, 8218, -1)
			AddItemCount(cnum, 8219, -1)
			AddItemCount(cnum, 8220, -1)
			AddItemCount(cnum, 8221, -1)
			AddItemCount(cnum, 8222, -1)
			AddItemCount(cnum, 8223, 1)
			AddItemCount(cnum, 8224, 1)
			return 1,0,"다 모아오시다니! @정말 감사합니다! @이로써 이 세상의 비밀들을 알아내는데 두 걸음이나 앞서나간 기분이에요! @아, 그리고 이것은 약속드린 사례입니다. @안에 무엇이 들어있는지는 모르겠지만 여러모로 쓸만한 아이템이 들어있다고 합니다. @인벤토리에 빈 자리가 없진 않나 확인하시고 한번 열어보세요."
		end


	else
		return 0


	end		

end




function NPC_QUEST_712(cnum, reqNumber)

req = reqNumber
	
	if req == 1 then
	
		if GetSwitchCount(cnum, 431) < 1 then -- 퀘스트를 반복문을 출력
			
			if GetSwitchCount(cnum, 430) < 1 then -- NPC에게 말 걸었을 때 조건 확인
				return 3,0,"보름달은 매월 뜨지만 유독 이 시기의 보름달은 매우 크고 밝은 것이 특징이지요. @저희는 이러한 현상을 '대보름' 이라고 이야기 합니다. @그런데 놀라운 사실은 이처럼 거대한 보름달에 의해 몬스터들이영향을 받게 된다는 사실이 최근에 밝혀 졌다는 것입니다.",2,"궁금한데요?",3,"관심 없는데요."
			
			else 
				return 2,0,"벌써 다녀오신 건가요?",7,"부탁하신 문양을 모두 모아왔습니다."
			end

		else 
			return 2,0,"지난번에 모아주신 문양에 대한 연구를 거듭한 결과 얻은 해답은...... @역시 아직 자료가 많이 부족하는 것이었습니다. @연구의 박차를 가하기 위해서는 문양 세트가 더 필요할 것 같습니다. @ 다시 한번 A.U.R.O.R.A 6가지 문양을 모아 가져와 주세요. @반드시 사례는 하겠습니다.",7,"부탁하신 문양을 다시 모아 왔습니다."
		end
		
	
	elseif req == 2 then
		return 2,0,"대보름의 영향을 받은 일부 몬스터들은 몸 안에 알 수 없는 문양 모양의 덩어리가 형성 된다는 것이었습니다. @그것도 각각 모양과 색상이 제 각각으로 6종류가 몬스터들의 몸 안에서 형성이 되는 것이죠.",4,"매우 흥미롭네요!"


	elseif req == 3 or req == 8 or req == 9 then
		return 0
	

	elseif req == 4 then
		return 3,0,"저는 이러한 현상들이 과거 시난의 과학기술과 밀접한 연관이 있을 것으로 판단 됩니다. @애초에 몬스터들은 시난들의 기술력으로 창조된 생명체들이기 때문이죠. @하지만 시간이 너무 부족하군요. @올해 대보름은 평소보다 짧기 때문에 저 혼자 힘으로는 도저히 모든 문자를 모으기 힘들어 보이네요. @혹시 저를 도와주실 수 있겠습니까? 도와주신다면 반드시 사례를 해드리겠습니다.",5,"기꺼이 도와드리겠습니다.",8,"귀찮게 하지 말고 알아서 모으세요."
	

	elseif req == 5 then
		return 2,0,"고맙습니다! @이로써 이 세상의 비밀들을 알아내는데 한걸음 더 다가갈 수 있겠어요! @각각의 A.U.R.O.R.A 6가지 문양이 모두 필요합니다. @각 문양은 모양도 색상도 제각각이기 때문에 구분하시는데 큰 무리는 없을 것입니다. @그럼 기다리고 있겠습니다!",6,"금방 다녀오겠습니다!"
	

	elseif req == 6 then
		AddSwitchCount(cnum, 430, 1) -- 퀘스트를 수락하여 조건 충족



	elseif req == 7 then
		if GetItemCount(cnum, 8217, 0) < 1 or GetItemCount(cnum, 8218, 0) < 1 or GetItemCount(cnum, 8219, 0) < 1 or GetItemCount(cnum, 8220, 0) < 1 or GetItemCount(cnum, 8221, 0) < 1 or GetItemCount(cnum, 8222, 0) < 1 then
			return 2,0,"이런...... @다시 말씀 드리지만 각각의 A.U.R.O.R.A 문양을 모두 모아 오셔야 합니다. @모두 모이지 않는 이상 제대로 된 연구를 할 수가 없어요.",9,"죄송합니다, 다시 다녀오겠습니다."
				
		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상을 받고 싶으시면 인벤토리를 정리하고 오세요."

		else
			AddSwitchCount(cnum, 431, 1) -- 퀘스트 완료
			AddItemCount(cnum, 8217, -1)
			AddItemCount(cnum, 8218, -1)
			AddItemCount(cnum, 8219, -1)
			AddItemCount(cnum, 8220, -1)
			AddItemCount(cnum, 8221, -1)
			AddItemCount(cnum, 8222, -1)
			AddItemCount(cnum, 8223, 1)
			AddItemCount(cnum, 8224, 1)
			return 1,0,"다 모아오시다니! @정말 감사합니다! @이로써 이 세상의 비밀들을 알아내는데 두 걸음이나 앞서나간 기분이에요! @아, 그리고 이것은 약속드린 사례입니다. @안에 무엇이 들어있는지는 모르겠지만 여러모로 쓸만한 아이템이 들어있다고 합니다. @인벤토리에 빈 자리가 없진 않나 확인하시고 한번 열어보세요."
		end


	else
		return 0


	end		

end



function NPC_QUEST_713(cnum, reqNumber)

req = reqNumber
	
	if req == 1 then
	
		if GetSwitchCount(cnum, 431) < 1 then -- 퀘스트를 반복문을 출력
			
			if GetSwitchCount(cnum, 430) < 1 then -- NPC에게 말 걸었을 때 조건 확인
				return 3,0,"보름달은 매월 뜨지만 유독 이 시기의 보름달은 매우 크고 밝은 것이 특징이지요. @저희는 이러한 현상을 '대보름' 이라고 이야기 합니다. @그런데 놀라운 사실은 이처럼 거대한 보름달에 의해 몬스터들이영향을 받게 된다는 사실이 최근에 밝혀 졌다는 것입니다.",2,"궁금한데요?",3,"관심 없는데요."
			
			else 
				return 2,0,"벌써 다녀오신 건가요?",7,"부탁하신 문양을 모두 모아왔습니다."
			end

		else 
			return 2,0,"지난번에 모아주신 문양에 대한 연구를 거듭한 결과 얻은 해답은...... @역시 아직 자료가 많이 부족하는 것이었습니다. @연구의 박차를 가하기 위해서는 문양 세트가 더 필요할 것 같습니다. @ 다시 한번 A.U.R.O.R.A 6가지 문양을 모아 가져와 주세요. @반드시 사례는 하겠습니다.",7,"부탁하신 문양을 다시 모아 왔습니다."
		end
		
	
	elseif req == 2 then
		return 2,0,"대보름의 영향을 받은 일부 몬스터들은 몸 안에 알 수 없는 문양 모양의 덩어리가 형성 된다는 것이었습니다. @그것도 각각 모양과 색상이 제 각각으로 6종류가 몬스터들의 몸 안에서 형성이 되는 것이죠.",4,"매우 흥미롭네요!"


	elseif req == 3 or req == 8 or req == 9 then
		return 0
	

	elseif req == 4 then
		return 3,0,"저는 이러한 현상들이 과거 시난의 과학기술과 밀접한 연관이 있을 것으로 판단 됩니다. @애초에 몬스터들은 시난들의 기술력으로 창조된 생명체들이기 때문이죠. @하지만 시간이 너무 부족하군요. @올해 대보름은 평소보다 짧기 때문에 저 혼자 힘으로는 도저히 모든 문자를 모으기 힘들어 보이네요. @혹시 저를 도와주실 수 있겠습니까? 도와주신다면 반드시 사례를 해드리겠습니다.",5,"기꺼이 도와드리겠습니다.",8,"귀찮게 하지 말고 알아서 모으세요."
	

	elseif req == 5 then
		return 2,0,"고맙습니다! @이로써 이 세상의 비밀들을 알아내는데 한걸음 더 다가갈 수 있겠어요! @각각의 A.U.R.O.R.A 6가지 문양이 모두 필요합니다. @각 문양은 모양도 색상도 제각각이기 때문에 구분하시는데 큰 무리는 없을 것입니다. @그럼 기다리고 있겠습니다!",6,"금방 다녀오겠습니다!"
	

	elseif req == 6 then
		AddSwitchCount(cnum, 430, 1) -- 퀘스트를 수락하여 조건 충족



	elseif req == 7 then
		if GetItemCount(cnum, 8217, 0) < 1 or GetItemCount(cnum, 8218, 0) < 1 or GetItemCount(cnum, 8219, 0) < 1 or GetItemCount(cnum, 8220, 0) < 1 or GetItemCount(cnum, 8221, 0) < 1 or GetItemCount(cnum, 8222, 0) < 1 then
			return 2,0,"이런...... @다시 말씀 드리지만 각각의 A.U.R.O.R.A 문양을 모두 모아 오셔야 합니다. @모두 모이지 않는 이상 제대로 된 연구를 할 수가 없어요.",9,"죄송합니다, 다시 다녀오겠습니다."
				
		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상을 받고 싶으시면 인벤토리를 정리하고 오세요."

		else
			AddSwitchCount(cnum, 431, 1) -- 퀘스트 완료
			AddItemCount(cnum, 8217, -1)
			AddItemCount(cnum, 8218, -1)
			AddItemCount(cnum, 8219, -1)
			AddItemCount(cnum, 8220, -1)
			AddItemCount(cnum, 8221, -1)
			AddItemCount(cnum, 8222, -1)
			AddItemCount(cnum, 8223, 1)
			AddItemCount(cnum, 8224, 1)
			return 1,0,"다 모아오시다니! @정말 감사합니다! @이로써 이 세상의 비밀들을 알아내는데 두 걸음이나 앞서나간 기분이에요! @아, 그리고 이것은 약속드린 사례입니다. @안에 무엇이 들어있는지는 모르겠지만 여러모로 쓸만한 아이템이 들어있다고 합니다. @인벤토리에 빈 자리가 없진 않나 확인하시고 한번 열어보세요."
		end


	else
		return 0


	end		

end




function NPC_QUEST_714(cnum, reqNumber)

req = reqNumber
	
	if req == 1 then
	
		if GetSwitchCount(cnum, 431) < 1 then -- 퀘스트를 반복문을 출력
			
			if GetSwitchCount(cnum, 430) < 1 then -- NPC에게 말 걸었을 때 조건 확인
				return 3,0,"보름달은 매월 뜨지만 유독 이 시기의 보름달은 매우 크고 밝은 것이 특징이지요. @저희는 이러한 현상을 '대보름' 이라고 이야기 합니다. @그런데 놀라운 사실은 이처럼 거대한 보름달에 의해 몬스터들이영향을 받게 된다는 사실이 최근에 밝혀 졌다는 것입니다.",2,"궁금한데요?",3,"관심 없는데요."
			
			else 
				return 2,0,"벌써 다녀오신 건가요?",7,"부탁하신 문양을 모두 모아왔습니다."
			end

		else 
			return 2,0,"지난번에 모아주신 문양에 대한 연구를 거듭한 결과 얻은 해답은...... @역시 아직 자료가 많이 부족하는 것이었습니다. @연구의 박차를 가하기 위해서는 문양 세트가 더 필요할 것 같습니다. @ 다시 한번 A.U.R.O.R.A 6가지 문양을 모아 가져와 주세요. @반드시 사례는 하겠습니다.",7,"부탁하신 문양을 다시 모아 왔습니다."
		end
		
	
	elseif req == 2 then
		return 2,0,"대보름의 영향을 받은 일부 몬스터들은 몸 안에 알 수 없는 문양 모양의 덩어리가 형성 된다는 것이었습니다. @그것도 각각 모양과 색상이 제 각각으로 6종류가 몬스터들의 몸 안에서 형성이 되는 것이죠.",4,"매우 흥미롭네요!"


	elseif req == 3 or req == 8 or req == 9 then
		return 0
	

	elseif req == 4 then
		return 3,0,"저는 이러한 현상들이 과거 시난의 과학기술과 밀접한 연관이 있을 것으로 판단 됩니다. @애초에 몬스터들은 시난들의 기술력으로 창조된 생명체들이기 때문이죠. @하지만 시간이 너무 부족하군요. @올해 대보름은 평소보다 짧기 때문에 저 혼자 힘으로는 도저히 모든 문자를 모으기 힘들어 보이네요. @혹시 저를 도와주실 수 있겠습니까? 도와주신다면 반드시 사례를 해드리겠습니다.",5,"기꺼이 도와드리겠습니다.",8,"귀찮게 하지 말고 알아서 모으세요."
	

	elseif req == 5 then
		return 2,0,"고맙습니다! @이로써 이 세상의 비밀들을 알아내는데 한걸음 더 다가갈 수 있겠어요! @각각의 A.U.R.O.R.A 6가지 문양이 모두 필요합니다. @각 문양은 모양도 색상도 제각각이기 때문에 구분하시는데 큰 무리는 없을 것입니다. @그럼 기다리고 있겠습니다!",6,"금방 다녀오겠습니다!"
	

	elseif req == 6 then
		AddSwitchCount(cnum, 430, 1) -- 퀘스트를 수락하여 조건 충족



	elseif req == 7 then
		if GetItemCount(cnum, 8217, 0) < 1 or GetItemCount(cnum, 8218, 0) < 1 or GetItemCount(cnum, 8219, 0) < 1 or GetItemCount(cnum, 8220, 0) < 1 or GetItemCount(cnum, 8221, 0) < 1 or GetItemCount(cnum, 8222, 0) < 1 then
			return 2,0,"이런...... @다시 말씀 드리지만 각각의 A.U.R.O.R.A 문양을 모두 모아 오셔야 합니다. @모두 모이지 않는 이상 제대로 된 연구를 할 수가 없어요.",9,"죄송합니다, 다시 다녀오겠습니다."
				
		elseif GetRemainPocket(cnum) < 2 then
			return 1,0,"보상을 받고 싶으시면 인벤토리를 정리하고 오세요."

		else
			AddSwitchCount(cnum, 431, 1) -- 퀘스트 완료
			AddItemCount(cnum, 8217, -1)
			AddItemCount(cnum, 8218, -1)
			AddItemCount(cnum, 8219, -1)
			AddItemCount(cnum, 8220, -1)
			AddItemCount(cnum, 8221, -1)
			AddItemCount(cnum, 8222, -1)
			AddItemCount(cnum, 8223, 1)
			AddItemCount(cnum, 8224, 1)
			return 1,0,"다 모아오시다니! @정말 감사합니다! @이로써 이 세상의 비밀들을 알아내는데 두 걸음이나 앞서나간 기분이에요! @아, 그리고 이것은 약속드린 사례입니다. @안에 무엇이 들어있는지는 모르겠지만 여러모로 쓸만한 아이템이 들어있다고 합니다. @인벤토리에 빈 자리가 없진 않나 확인하시고 한번 열어보세요."
		end


	else
		return 0


	end		

end


