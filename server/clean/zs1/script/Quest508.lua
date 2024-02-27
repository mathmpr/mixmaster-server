function NPC_QUEST_673(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 385) < 1 then
			return 3,0,"안녕하신가요? 왠지 당신에게 수집가의 혼이 느껴지는데.. 혹시, 몬스터 그림에 대해 들어봤습니까?",2,"그게 뭡니까?",3,"먹는건가요?(꼬륵~)"


		else
			return 4,0,"벌써 돌아왔나요? 자.. 어떤 그림조각을 모아오셨는지 보여주시지요.",52,"파라풍 그림조각을 모아 왔습니다",53,"칼린엔젤 그림조각을 모아 왔습니다",54,"가루곤 그림조각을 모아 왔습니다"


		end




	elseif req == 2 then
		return 3,0,"저는 세계 곳곳을 돌아다니며 몬스터 그림을 수집하는 사람입니다. 그냥.. 간단히 그림 수집가 정도로 해두죠. 사실.. 제가 정말 구하고 싶은 그림들이 있는데, [파라풍 그림, 칼린엔젤 그림, 가루곤 그림] 이것들 입니다. 수집가 사이에서는 인기절정의 몬스터 그림이지요. 어떤가요? 저를 도와 몬스터 그림을 좀 찾아주시겠나요?",12,"오케이. 맡겨만 주시지요.",13,"댁이나 찾으슈."



	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 2,0,"역시! 수집가의 혼이 느껴지는 대답이군요. 그럼, 설명을 드리겠습니다. 잘 들으세요. 제가 찾는 [파라풍 그림, 칼린엔젤 그림, 가루곤 그림] 들은 그림마다 각각 9조각으로 나뉘어져 있습니다. 전해지는 말에 의하면.. 도난을 방지하기 위해 9조각으로 나눴다고 하는데 덕분에 위조품도 많이 생겨나게 되었습니다.",22,"그래서요?"



	elseif req == 13 then
		return 0	
		



	elseif req == 22 then
		return 2,0,"그림들은 몬스터들이 갖구 있다고 하는데.. 위조품들 역시 이곳 저곳에 흩어져 있단 말입니다. 그래서, 모아오실 때 좀 여러 개를 갖다 주셨으면 합니다. 그 중에서 진품을 골라내야 될 것 같군요. 각 그림마다 필요한 수량은 다음과 같습니다. [파라풍 그림조각 각 20개씩] [칼린엔젤 그림조각 각 40개씩] [가루곤 그림조각 각 60개씩]",32,"어이쿠~ 너무 많은데요?"


		


	elseif req == 32 then
		return 3,0,"많이보이긴 하지만.. 어쩔 수 없죠. 진품을 위해서라면.. 후후.. 어쨋건 모든 그림을 한꺼번에 모아오실 필요는 없고, 각 그림 필요 수량만큼만 가져오면 됩니다. 그러면, 제가 각 그림의 값어치에 맞는 보상을 드리도록 하지요. 어때요? 결정하시죠?",42,"훗~ 이 정도 쯤이야.. 곧 돌아오리다.",43,"너무 어렵군. 다음에 하죠."




	elseif req == 42 then
		AddSwitchCount(cnum, 385, 1)



	elseif req == 43 then
		return 0





	elseif req == 52 then
		if GetItemCount(cnum, 54, 0) < 20 or
		   GetItemCount(cnum, 55, 0) < 20 or 		
		   GetItemCount(cnum, 56, 0) < 20 or
		   GetItemCount(cnum, 57, 0) < 20 or
		   GetItemCount(cnum, 58, 0) < 20 or
		   GetItemCount(cnum, 59, 0) < 20 or
		   GetItemCount(cnum, 60, 0) < 20 or
		   GetItemCount(cnum, 61, 0) < 20 or
		   GetItemCount(cnum, 62, 0) < 20 then
			return 1,0,"아니.. 이게 뭔가요? 그림조각의 수량이 부족하군요. 파라풍 그림조각은 9조각이 각각 20개씩 필요합니다. 오케이?"




		else
			return 5,0,"우와핫! 그레이트! 역시 당신은 수집가의 소질이 있군요. 어때요? 이번 기회에 내 제자로 들어오는게.. ㅋㅋㅋ 어쨌든.. 약속한 선물을 드리도록 하지요. 다음 중 고르시죠. 아.. 그전에 인벤토리에 공간이 없으면 곤란합니다.",62,"풀EXP 마크(4시간)",63,"뿔콩 변신 갑옷(10일)",64,"믹스건",65,"고성능 메가폰(30개)"


		end



	elseif req == 53 then
		if GetItemCount(cnum, 45, 0) < 40 or
		   GetItemCount(cnum, 46, 0) < 40 or 		
		   GetItemCount(cnum, 47, 0) < 40 or
		   GetItemCount(cnum, 48, 0) < 40 or
		   GetItemCount(cnum, 49, 0) < 40 or
		   GetItemCount(cnum, 50, 0) < 40 or
		   GetItemCount(cnum, 51, 0) < 40 or
		   GetItemCount(cnum, 52, 0) < 40 or
		   GetItemCount(cnum, 53, 0) < 40 then
			return 1,0,"아니.. 이게 뭔가요? 그림조각의 수량이 부족하군요. 칼린엔젤 그림조각은 9조각이 각각 40개씩 필요합니다. 오케이?"


		else
			return 5,0,"우와핫! 그레이트! 역시 당신은 수집가의 소질이 있군요. 어때요? 이번 기회에 내 제자로 들어오는게.. ㅋㅋㅋ 어쨌든.. 약속한 선물을 드리도록 하지요. 다음 중 고르시죠. 아.. 그전에 인벤토리에 공간이 없으면 곤란합니다.",72,"풀EXP 마크(6시간)",73,"생명의 열매(1개)",74,"진화의 성수(1개)",75,"공격속도 증가 스크롤(10개)"


		end





	elseif req == 54 then
		if GetItemCount(cnum, 36, 0) < 60 or
		   GetItemCount(cnum, 37, 0) < 60 or 		
		   GetItemCount(cnum, 38, 0) < 60 or
		   GetItemCount(cnum, 39, 0) < 60 or
		   GetItemCount(cnum, 40, 0) < 60 or
		   GetItemCount(cnum, 41, 0) < 60 or
		   GetItemCount(cnum, 42, 0) < 60 or
		   GetItemCount(cnum, 43, 0) < 60 or
		   GetItemCount(cnum, 44, 0) < 60 then
			return 1,0,"아니.. 이게 뭔가요? 그림조각의 수량이 부족하군요. 가루곤 그림조각은 9조각이 각각 60개씩 필요합니다. 오케이?"



		else
			return 5,0,"우와핫! 그레이트! 역시 당신은 수집가의 소질이 있군요. 어때요? 이번 기회에 내 제자로 들어오는게.. ㅋㅋㅋ 어쨌든.. 약속한 선물을 드리도록 하지요. 다음 중 고르시죠. 아.. 그전에 인벤토리에 공간이 없으면 곤란합니다.",82,"저주받은 프리미엄 마크",83,"소울차저-중(4개)",84,"축복의 시너지레벨 상승물약(2개)",85,"시간충전(1개)"


		end







	elseif req == 62 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4513, 1)
			AddSwitchCount(cnum, 386, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 63 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4607, 1)
			AddSwitchCount(cnum, 387, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end




	elseif req == 64 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 2700, 1)
			AddSwitchCount(cnum, 388, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 65 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4491, 30)
			AddSwitchCount(cnum, 389, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end		





	elseif req == 72 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 4514, 1)
			AddSwitchCount(cnum, 390, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end




	elseif req == 73 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 3318, 1)
			AddSwitchCount(cnum, 391, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 74 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 917, 1)
			AddSwitchCount(cnum, 392, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 75 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 895, 10)
			AddSwitchCount(cnum, 393, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 82 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3725, 1)
			AddSwitchCount(cnum, 394, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 83 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddSwitchCount(cnum, 395, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 84 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 1027, 2)
			AddSwitchCount(cnum, 396, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end




	elseif req == 85 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 943, 1)
			AddSwitchCount(cnum, 397, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end


	else
		return 0

	end
end














function NPC_QUEST_674(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 385) < 1 then
			return 3,0,"안녕하신가요? 왠지 당신에게 수집가의 혼이 느껴지는데.. 혹시, 몬스터 그림에 대해 들어봤습니까?",2,"그게 뭡니까?",3,"먹는건가요?(꼬륵~)"


		else
			return 4,0,"벌써 돌아왔나요? 자.. 어떤 그림조각을 모아오셨는지 보여주시지요.",52,"파라풍 그림조각을 모아 왔습니다",53,"칼린엔젤 그림조각을 모아 왔습니다",54,"가루곤 그림조각을 모아 왔습니다"


		end




	elseif req == 2 then
		return 3,0,"저는 세계 곳곳을 돌아다니며 몬스터 그림을 수집하는 사람입니다. 그냥.. 간단히 그림 수집가 정도로 해두죠. 사실.. 제가 정말 구하고 싶은 그림들이 있는데, [파라풍 그림, 칼린엔젤 그림, 가루곤 그림] 이것들 입니다. 수집가 사이에서는 인기절정의 몬스터 그림이지요. 어떤가요? 저를 도와 몬스터 그림을 좀 찾아주시겠나요?",12,"오케이. 맡겨만 주시지요.",13,"댁이나 찾으슈."



	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 2,0,"역시! 수집가의 혼이 느껴지는 대답이군요. 그럼, 설명을 드리겠습니다. 잘 들으세요. 제가 찾는 [파라풍 그림, 칼린엔젤 그림, 가루곤 그림] 들은 그림마다 각각 9조각으로 나뉘어져 있습니다. 전해지는 말에 의하면.. 도난을 방지하기 위해 9조각으로 나눴다고 하는데 덕분에 위조품도 많이 생겨나게 되었습니다.",22,"그래서요?"



	elseif req == 13 then
		return 0	
		



	elseif req == 22 then
		return 2,0,"그림들은 몬스터들이 갖구 있다고 하는데.. 위조품들 역시 이곳 저곳에 흩어져 있단 말입니다. 그래서, 모아오실 때 좀 여러 개를 갖다 주셨으면 합니다. 그 중에서 진품을 골라내야 될 것 같군요. 각 그림마다 필요한 수량은 다음과 같습니다. [파라풍 그림조각 각 20개씩] [칼린엔젤 그림조각 각 40개씩] [가루곤 그림조각 각 60개씩]",32,"어이쿠~ 너무 많은데요?"


		


	elseif req == 32 then
		return 3,0,"많이보이긴 하지만.. 어쩔 수 없죠. 진품을 위해서라면.. 후후.. 어쨋건 모든 그림을 한꺼번에 모아오실 필요는 없고, 각 그림 필요 수량만큼만 가져오면 됩니다. 그러면, 제가 각 그림의 값어치에 맞는 보상을 드리도록 하지요. 어때요? 결정하시죠?",42,"훗~ 이 정도 쯤이야.. 곧 돌아오리다.",43,"너무 어렵군. 다음에 하죠."




	elseif req == 42 then
		AddSwitchCount(cnum, 385, 1)



	elseif req == 43 then
		return 0





	elseif req == 52 then
		if GetItemCount(cnum, 54, 0) < 20 or
		   GetItemCount(cnum, 55, 0) < 20 or 		
		   GetItemCount(cnum, 56, 0) < 20 or
		   GetItemCount(cnum, 57, 0) < 20 or
		   GetItemCount(cnum, 58, 0) < 20 or
		   GetItemCount(cnum, 59, 0) < 20 or
		   GetItemCount(cnum, 60, 0) < 20 or
		   GetItemCount(cnum, 61, 0) < 20 or
		   GetItemCount(cnum, 62, 0) < 20 then
			return 1,0,"아니.. 이게 뭔가요? 그림조각의 수량이 부족하군요. 파라풍 그림조각은 9조각이 각각 20개씩 필요합니다. 오케이?"




		else
			return 5,0,"우와핫! 그레이트! 역시 당신은 수집가의 소질이 있군요. 어때요? 이번 기회에 내 제자로 들어오는게.. ㅋㅋㅋ 어쨌든.. 약속한 선물을 드리도록 하지요. 다음 중 고르시죠. 아.. 그전에 인벤토리에 공간이 없으면 곤란합니다.",62,"풀EXP 마크(4시간)",63,"뿔콩 변신 갑옷(10일)",64,"믹스건",65,"고성능 메가폰(30개)"


		end



	elseif req == 53 then
		if GetItemCount(cnum, 45, 0) < 40 or
		   GetItemCount(cnum, 46, 0) < 40 or 		
		   GetItemCount(cnum, 47, 0) < 40 or
		   GetItemCount(cnum, 48, 0) < 40 or
		   GetItemCount(cnum, 49, 0) < 40 or
		   GetItemCount(cnum, 50, 0) < 40 or
		   GetItemCount(cnum, 51, 0) < 40 or
		   GetItemCount(cnum, 52, 0) < 40 or
		   GetItemCount(cnum, 53, 0) < 40 then
			return 1,0,"아니.. 이게 뭔가요? 그림조각의 수량이 부족하군요. 칼린엔젤 그림조각은 9조각이 각각 40개씩 필요합니다. 오케이?"


		else
			return 5,0,"우와핫! 그레이트! 역시 당신은 수집가의 소질이 있군요. 어때요? 이번 기회에 내 제자로 들어오는게.. ㅋㅋㅋ 어쨌든.. 약속한 선물을 드리도록 하지요. 다음 중 고르시죠. 아.. 그전에 인벤토리에 공간이 없으면 곤란합니다.",72,"풀EXP 마크(6시간)",73,"생명의 열매(1개)",74,"진화의 성수(1개)",75,"공격속도 증가 스크롤(10개)"


		end





	elseif req == 54 then
		if GetItemCount(cnum, 36, 0) < 60 or
		   GetItemCount(cnum, 37, 0) < 60 or 		
		   GetItemCount(cnum, 38, 0) < 60 or
		   GetItemCount(cnum, 39, 0) < 60 or
		   GetItemCount(cnum, 40, 0) < 60 or
		   GetItemCount(cnum, 41, 0) < 60 or
		   GetItemCount(cnum, 42, 0) < 60 or
		   GetItemCount(cnum, 43, 0) < 60 or
		   GetItemCount(cnum, 44, 0) < 60 then
			return 1,0,"아니.. 이게 뭔가요? 그림조각의 수량이 부족하군요. 가루곤 그림조각은 9조각이 각각 60개씩 필요합니다. 오케이?"



		else
			return 5,0,"우와핫! 그레이트! 역시 당신은 수집가의 소질이 있군요. 어때요? 이번 기회에 내 제자로 들어오는게.. ㅋㅋㅋ 어쨌든.. 약속한 선물을 드리도록 하지요. 다음 중 고르시죠. 아.. 그전에 인벤토리에 공간이 없으면 곤란합니다.",82,"저주받은 프리미엄 마크",83,"소울차저-중(4개)",84,"축복의 시너지레벨 상승물약(2개)",85,"시간충전(1개)"


		end







	elseif req == 62 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4513, 1)
			AddSwitchCount(cnum, 386, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 63 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4607, 1)
			AddSwitchCount(cnum, 387, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end




	elseif req == 64 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 2700, 1)
			AddSwitchCount(cnum, 388, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 65 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4491, 30)
			AddSwitchCount(cnum, 389, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end		





	elseif req == 72 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 4514, 1)
			AddSwitchCount(cnum, 390, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end




	elseif req == 73 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 3318, 1)
			AddSwitchCount(cnum, 391, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 74 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 917, 1)
			AddSwitchCount(cnum, 392, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 75 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 895, 10)
			AddSwitchCount(cnum, 393, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 82 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3725, 1)
			AddSwitchCount(cnum, 394, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 83 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddSwitchCount(cnum, 395, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 84 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 1027, 2)
			AddSwitchCount(cnum, 396, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end




	elseif req == 85 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 943, 1)
			AddSwitchCount(cnum, 397, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end


	else
		return 0

	end
end










function NPC_QUEST_675(cnum, reqNumber)

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 385) < 1 then
			return 3,0,"안녕하신가요? 왠지 당신에게 수집가의 혼이 느껴지는데.. 혹시, 몬스터 그림에 대해 들어봤습니까?",2,"그게 뭡니까?",3,"먹는건가요?(꼬륵~)"


		else
			return 4,0,"벌써 돌아왔나요? 자.. 어떤 그림조각을 모아오셨는지 보여주시지요.",52,"파라풍 그림조각을 모아 왔습니다",53,"칼린엔젤 그림조각을 모아 왔습니다",54,"가루곤 그림조각을 모아 왔습니다"


		end




	elseif req == 2 then
		return 3,0,"저는 세계 곳곳을 돌아다니며 몬스터 그림을 수집하는 사람입니다. 그냥.. 간단히 그림 수집가 정도로 해두죠. 사실.. 제가 정말 구하고 싶은 그림들이 있는데, [파라풍 그림, 칼린엔젤 그림, 가루곤 그림] 이것들 입니다. 수집가 사이에서는 인기절정의 몬스터 그림이지요. 어떤가요? 저를 도와 몬스터 그림을 좀 찾아주시겠나요?",12,"오케이. 맡겨만 주시지요.",13,"댁이나 찾으슈."



	elseif req == 3 then
		return 0


	elseif req == 12 then
		return 2,0,"역시! 수집가의 혼이 느껴지는 대답이군요. 그럼, 설명을 드리겠습니다. 잘 들으세요. 제가 찾는 [파라풍 그림, 칼린엔젤 그림, 가루곤 그림] 들은 그림마다 각각 9조각으로 나뉘어져 있습니다. 전해지는 말에 의하면.. 도난을 방지하기 위해 9조각으로 나눴다고 하는데 덕분에 위조품도 많이 생겨나게 되었습니다.",22,"그래서요?"



	elseif req == 13 then
		return 0	
		



	elseif req == 22 then
		return 2,0,"그림들은 몬스터들이 갖구 있다고 하는데.. 위조품들 역시 이곳 저곳에 흩어져 있단 말입니다. 그래서, 모아오실 때 좀 여러 개를 갖다 주셨으면 합니다. 그 중에서 진품을 골라내야 될 것 같군요. 각 그림마다 필요한 수량은 다음과 같습니다. [파라풍 그림조각 각 20개씩] [칼린엔젤 그림조각 각 40개씩] [가루곤 그림조각 각 60개씩]",32,"어이쿠~ 너무 많은데요?"


		


	elseif req == 32 then
		return 3,0,"많이보이긴 하지만.. 어쩔 수 없죠. 진품을 위해서라면.. 후후.. 어쨋건 모든 그림을 한꺼번에 모아오실 필요는 없고, 각 그림 필요 수량만큼만 가져오면 됩니다. 그러면, 제가 각 그림의 값어치에 맞는 보상을 드리도록 하지요. 어때요? 결정하시죠?",42,"훗~ 이 정도 쯤이야.. 곧 돌아오리다.",43,"너무 어렵군. 다음에 하죠."




	elseif req == 42 then
		AddSwitchCount(cnum, 385, 1)



	elseif req == 43 then
		return 0





	elseif req == 52 then
		if GetItemCount(cnum, 54, 0) < 20 or
		   GetItemCount(cnum, 55, 0) < 20 or 		
		   GetItemCount(cnum, 56, 0) < 20 or
		   GetItemCount(cnum, 57, 0) < 20 or
		   GetItemCount(cnum, 58, 0) < 20 or
		   GetItemCount(cnum, 59, 0) < 20 or
		   GetItemCount(cnum, 60, 0) < 20 or
		   GetItemCount(cnum, 61, 0) < 20 or
		   GetItemCount(cnum, 62, 0) < 20 then
			return 1,0,"아니.. 이게 뭔가요? 그림조각의 수량이 부족하군요. 파라풍 그림조각은 9조각이 각각 20개씩 필요합니다. 오케이?"




		else
			return 5,0,"우와핫! 그레이트! 역시 당신은 수집가의 소질이 있군요. 어때요? 이번 기회에 내 제자로 들어오는게.. ㅋㅋㅋ 어쨌든.. 약속한 선물을 드리도록 하지요. 다음 중 고르시죠. 아.. 그전에 인벤토리에 공간이 없으면 곤란합니다.",62,"풀EXP 마크(4시간)",63,"뿔콩 변신 갑옷(10일)",64,"믹스건",65,"고성능 메가폰(30개)"


		end



	elseif req == 53 then
		if GetItemCount(cnum, 45, 0) < 40 or
		   GetItemCount(cnum, 46, 0) < 40 or 		
		   GetItemCount(cnum, 47, 0) < 40 or
		   GetItemCount(cnum, 48, 0) < 40 or
		   GetItemCount(cnum, 49, 0) < 40 or
		   GetItemCount(cnum, 50, 0) < 40 or
		   GetItemCount(cnum, 51, 0) < 40 or
		   GetItemCount(cnum, 52, 0) < 40 or
		   GetItemCount(cnum, 53, 0) < 40 then
			return 1,0,"아니.. 이게 뭔가요? 그림조각의 수량이 부족하군요. 칼린엔젤 그림조각은 9조각이 각각 40개씩 필요합니다. 오케이?"


		else
			return 5,0,"우와핫! 그레이트! 역시 당신은 수집가의 소질이 있군요. 어때요? 이번 기회에 내 제자로 들어오는게.. ㅋㅋㅋ 어쨌든.. 약속한 선물을 드리도록 하지요. 다음 중 고르시죠. 아.. 그전에 인벤토리에 공간이 없으면 곤란합니다.",72,"풀EXP 마크(6시간)",73,"생명의 열매(1개)",74,"진화의 성수(1개)",75,"공격속도 증가 스크롤(10개)"


		end





	elseif req == 54 then
		if GetItemCount(cnum, 36, 0) < 60 or
		   GetItemCount(cnum, 37, 0) < 60 or 		
		   GetItemCount(cnum, 38, 0) < 60 or
		   GetItemCount(cnum, 39, 0) < 60 or
		   GetItemCount(cnum, 40, 0) < 60 or
		   GetItemCount(cnum, 41, 0) < 60 or
		   GetItemCount(cnum, 42, 0) < 60 or
		   GetItemCount(cnum, 43, 0) < 60 or
		   GetItemCount(cnum, 44, 0) < 60 then
			return 1,0,"아니.. 이게 뭔가요? 그림조각의 수량이 부족하군요. 가루곤 그림조각은 9조각이 각각 60개씩 필요합니다. 오케이?"



		else
			return 5,0,"우와핫! 그레이트! 역시 당신은 수집가의 소질이 있군요. 어때요? 이번 기회에 내 제자로 들어오는게.. ㅋㅋㅋ 어쨌든.. 약속한 선물을 드리도록 하지요. 다음 중 고르시죠. 아.. 그전에 인벤토리에 공간이 없으면 곤란합니다.",82,"저주받은 프리미엄 마크",83,"소울차저-중(4개)",84,"축복의 시너지레벨 상승물약(2개)",85,"시간충전(1개)"


		end







	elseif req == 62 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4513, 1)
			AddSwitchCount(cnum, 386, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 63 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4607, 1)
			AddSwitchCount(cnum, 387, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end




	elseif req == 64 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 2700, 1)
			AddSwitchCount(cnum, 388, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 65 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 54, -20)
			AddItemCount(cnum, 55, -20)
			AddItemCount(cnum, 56, -20)
			AddItemCount(cnum, 57, -20)
			AddItemCount(cnum, 58, -20)
			AddItemCount(cnum, 59, -20)
			AddItemCount(cnum, 60, -20)
			AddItemCount(cnum, 61, -20)
			AddItemCount(cnum, 62, -20)
			AddItemCount(cnum, 4491, 30)
			AddSwitchCount(cnum, 389, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end		





	elseif req == 72 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 4514, 1)
			AddSwitchCount(cnum, 390, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end




	elseif req == 73 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 3318, 1)
			AddSwitchCount(cnum, 391, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 74 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 917, 1)
			AddSwitchCount(cnum, 392, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 75 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 45, -40)
			AddItemCount(cnum, 46, -40)
			AddItemCount(cnum, 47, -40)
			AddItemCount(cnum, 48, -40)
			AddItemCount(cnum, 49, -40)
			AddItemCount(cnum, 50, -40)
			AddItemCount(cnum, 51, -40)
			AddItemCount(cnum, 52, -40)
			AddItemCount(cnum, 53, -40)
			AddItemCount(cnum, 895, 10)
			AddSwitchCount(cnum, 393, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 82 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3725, 1)
			AddSwitchCount(cnum, 394, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 83 then
		if GetRemainPocket(cnum) < 4 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddItemCount(cnum, 3501, 1)
			AddSwitchCount(cnum, 395, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end





	elseif req == 84 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 1027, 2)
			AddSwitchCount(cnum, 396, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end




	elseif req == 85 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"인벤토리에 아이템을 넣을 공간이 부족합니다."

		else
			AddItemCount(cnum, 36, -60)
			AddItemCount(cnum, 37, -60)
			AddItemCount(cnum, 38, -60)
			AddItemCount(cnum, 39, -60)
			AddItemCount(cnum, 40, -60)
			AddItemCount(cnum, 41, -60)
			AddItemCount(cnum, 42, -60)
			AddItemCount(cnum, 43, -60)
			AddItemCount(cnum, 44, -60)
			AddItemCount(cnum, 943, 1)
			AddSwitchCount(cnum, 397, 1)
			return 1,0,"후후.. 선물은 맘에 드시나요? 자.. 그럼, 나는 모아온 그림조각들 감별을 해봐야겠군.. 사냥 중에 그림조각을 모으게 되면 또 갖다주시길.. 그럼, 나중에 봅시다."

		end


	else
		return 0

	end
end