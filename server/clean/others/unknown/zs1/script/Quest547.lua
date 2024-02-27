function NPC_QUEST_985(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..동굴에 들어오자마자 첫 번째 희생양이 되었나..."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"모험가의 해골이다..동굴에 들어오자마자 첫 번째 희생양이 되었나..."
			end
		end
	end
end

function NPC_QUEST_986(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..많은 모험가가 뱌암에게 죽었다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"모험가의 해골이다..많은 모험가가 뱌암에게 죽었다."
			end
		end
	end
end

function NPC_QUEST_987(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다..왠지 그의 손이 7시 방향의 길을 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"갈림길에서 죽은 모험가의 해골이다..왠지 그의 손이 7시 방향의 길을 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_988(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_989(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"완전히 바스러진 모험가의 해골이다..형태를 알아보기도 힘들다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"완전히 바스러진 모험가의 해골이다..형태를 알아보기도 힘들다."
			end
		end
	end
end

function NPC_QUEST_990(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_991(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 3,0,"딸그락..딸그락..쉬....쉬..어디선가 누군가가 말하는 소리가 들리는 것 같다.",2,"귀 기울여 본다.",3,"그냥 간다."
		elseif GetSwitchCount(cnum, 530) == 1 then
			return 1,0,"어서..나의 아르띠네에게...반지를 끼워줘..."
		elseif GetSwitchCount(cnum, 530) == 2 then
			return 2,0,"혹시 나의 아르띠네를 만났나?..",12,"네"
		elseif GetSwitchCount(cnum, 530) == 3 then
			return 1,0,"아르띠네를 사랑하는 안똔의 해골이다."
		end



	elseif req == 2 then
		return 3,0,"저..저기..용감한 밸러여..여기는 어떻게 들어왔나..이 곳은 위험해..그 들의 독은 치명적이라고..우습게 봤다간 내 꼴이 돼..",4,"네..",5,"신경 쓰지 마세요."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		return 3,0,"보니 꽤나 강력하군..나 너에게 부탁하나만 해도 될까..",6,"뭔데요?",5,"아니요"

	elseif req == 5 then
		return 1,0,"아무튼 조심해.."

	elseif req == 6 then
		return 2,0,"고맙군..나 정말 심각하니..진지하게 들어봐 줘...",8,"네.."

	elseif req == 8 then
		return 2,0,"내 살아있을 적...그러니까 이 동굴에서 보물을 멋지게 찾아서 나가게 되면...그녀에게 숨겨왔던 나의 사랑을 고백하려고 했지...하지만...흑..흑...",9,"그렇군요.."

	elseif req == 9 then
		return 2,0,"내 그녀..정말 아름다운..나의 아르띠네도 이 동굴에 들어왔다가 나가지 못 했어..이 동굴 어딘가에 있는 그녀의 유골..왼 손 네 번째 손가락에 나의 사랑의 반지를 끼워줘..부탁이야..",10,"네.."

	elseif req == 10 then
		return 2,0,"흑...흑..정말 고마워! 반지를 끼워 준 뒤 그녀가 무슨 반응을 보이는지 나에게 다시와서 말해 줘..아..참! 그녀는 목감기가 잘 걸려서 언제나 목에 스카프를 두르고 다녔으니..찾는데 도움이 될 거야..",11,"네"

	elseif req == 11 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			AddItemCount(cnum, 8515, 1)
			SetSwitchCount(cnum, 530, 1) -- 퀘스트 시작
			StartQuest(cnum, 186)
			return 1,0,"[안똔의 사랑의 반지를 받았습니다.]"
		end

	elseif req == 12 then
		return 2,0,"아....! 뭐라고 하던가?!",13,"사랑한다고 전해달래요"

	elseif req == 13 then
		return 2,0,"정말?! 흑...흑..정말 고마워!!",14,"그리고 곧 만나자던데..."

	elseif req == 14 then
		return 2,0,"고마워...나의 반지가 그녀에게 있으니 이제 그녀를 찾을 수 있을지도 몰라...! 정말 고마워...",15,"네.."

	elseif req == 15 then
		return 2,0,"[안똔의 해골의 눈에서 반짝이는 눈물이 딱딱하게 굳으며 바닥으로 떨어졌습니다.]",16,"줍는다.."

	elseif req == 16 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			random = SetRandom(cnum, 1, 8)
			if random == 1 then
				AddItemCount(cnum, 875, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 궁사의 정을 획득하였습니다.]"

			elseif random == 2 then
				AddItemCount(cnum, 876, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 용기의 정을 획득하였습니다.]"

			elseif random == 3 then
				AddItemCount(cnum, 877, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 도둑의 정을 획득하였습니다.]"

			elseif random == 4 then
				AddItemCount(cnum, 878, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 힘의 정을 획득하였습니다.]"

			elseif random == 5 then
				AddItemCount(cnum, 879, 5)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 민첩의 정을 획득하였습니다.]"

			elseif random == 6 then
				AddItemCount(cnum, 880, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 정확의 정을 획득하였습니다.]"

			elseif random == 7 then
				AddItemCount(cnum, 881, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 행운의 정을 획득하였습니다.]"

			elseif random == 8 then
				AddItemCount(cnum, 882, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 생명의 정을 획득하였습니다.]"

			else
				return 0
			end



		end
	end	

end



function NPC_QUEST_992(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"길을 잃어 자포자기한 듯 한 느낌의 해골이다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"길을 잃어 자포자기한 듯 한 느낌의 해골이다."
			end
		end
	end
end

function NPC_QUEST_993(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"해골의 손이 1시방향을 가르키는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"해골의 손이 1시방향을 가르키는 것 같다."
			end
		end
	end
end

function NPC_QUEST_994(cnum,reqNumber) -- 소름오싹뱌암동굴 해골 --아르띠네

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 1,0,"궁지에 몰려 죽은 듯 한 모험가의 해골이다"
		else
			if GetSwitchCount(cnum, 530) == 1 then
				return 3,0,"목에 하얀 스카프 같은 것이 있는 해골이다.",2,"자세히 살펴본다",3,"가만히 둔다"
			else
				return 1,0,"안똔이 사랑하는 아르띠네의 해골이다."
			end
		end

	elseif req == 2 then
		return 2,0,"스카프에 아르띠네라는 이름이 쓰여있다.",4,"손가락에 반지를 껴준다."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		AddItemCount(cnum, 8515, -1)
		return 2,0,"그대는 누구신가요?",5,"안똔님께서 보내셔서.."

	elseif req == 5 then
		return 2,0,"안똔!.....고마워요..역시 그도 저를 사랑하고 있었군요..저도 역시 안똔을 몰래 사랑하고 있었어요..저에게 이렇게 반지를 끼워주다니..안똔에게 사랑한다고 전해주세요 그리고 곧 만나자고~",6,"네.."

	elseif req == 6 then
		SetSwitchCount(cnum, 530, 2)


	end
end

function NPC_QUEST_995(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"오랜 전투를 치룬 듯 한 모험가의 해골이다..그의 손이 6시 방향을 가르키는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"오랜 전투를 치룬 듯 한 모험가의 해골이다..그의 손이 6시 방향을 가르키는 것 같다."
			end
		end
	end
end

function NPC_QUEST_996(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"길 찾기를 포기했는지 길 가운데에 주저 앉아 죽은 모험가의 해골이다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"길 찾기를 포기했는지 길 가운데에 주저 앉아 죽은 모험가의 해골이다.."
			end
		end
	end
end

function NPC_QUEST_997(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"이곳이 아니라는 듯 손으로 X표시를 하며 죽은 모험가의 해골이다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"이곳이 아니라는 듯 손으로 X표시를 하며 죽은 모험가의 해골이다.."
			end
		end
	end
end

function NPC_QUEST_998(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"그의 손이 5시 방향을 가르키고 있다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"그의 손이 5시 방향을 가르키고 있다."
			end
		end
	end
end

function NPC_QUEST_999(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..심하게 당한 듯 하다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"모험가의 해골이다..심하게 당한 듯 하다.."
			end
		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NPC_QUEST_1000(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..동굴에 들어오자마자 첫 번째 희생양이 되었나..."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"모험가의 해골이다..동굴에 들어오자마자 첫 번째 희생양이 되었나..."
			end
		end
	end
end

function NPC_QUEST_1001(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..많은 모험가가 뱌암에게 죽었다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"모험가의 해골이다..많은 모험가가 뱌암에게 죽었다."
			end
		end
	end
end

function NPC_QUEST_1002(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다..왠지 그의 손이 7시 방향의 길을 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"갈림길에서 죽은 모험가의 해골이다..왠지 그의 손이 7시 방향의 길을 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1003(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1004(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"완전히 바스러진 모험가의 해골이다..형태를 알아보기도 힘들다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"완전히 바스러진 모험가의 해골이다..형태를 알아보기도 힘들다."
			end
		end
	end
end

function NPC_QUEST_1005(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1006(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 3,0,"딸그락..딸그락..쉬....쉬..어디선가 누군가가 말하는 소리가 들리는 것 같다.",2,"귀 기울여 본다.",3,"그냥 간다."
		elseif GetSwitchCount(cnum, 530) == 1 then
			return 1,0,"어서..나의 아르띠네에게...반지를 끼워줘..."
		elseif GetSwitchCount(cnum, 530) == 2 then
			return 2,0,"혹시 나의 아르띠네를 만났나?..",12,"네"
		elseif GetSwitchCount(cnum, 530) == 3 then
			return 1,0,"아르띠네를 사랑하는 안똔의 해골이다."
		end



	elseif req == 2 then
		return 3,0,"저..저기..용감한 밸러여..여기는 어떻게 들어왔나..이 곳은 위험해..그 들의 독은 치명적이라고..우습게 봤다간 내 꼴이 돼..",4,"네..",5,"신경 쓰지 마세요."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		return 3,0,"보니 꽤나 강력하군..나 너에게 부탁하나만 해도 될까..",6,"뭔데요?",5,"아니요"

	elseif req == 5 then
		return 1,0,"아무튼 조심해.."

	elseif req == 6 then
		return 2,0,"고맙군..나 정말 심각하니..진지하게 들어봐 줘...",8,"네.."

	elseif req == 8 then
		return 2,0,"내 살아있을 적...그러니까 이 동굴에서 보물을 멋지게 찾아서 나가게 되면...그녀에게 숨겨왔던 나의 사랑을 고백하려고 했지...하지만...흑..흑...",9,"그렇군요.."

	elseif req == 9 then
		return 2,0,"내 그녀..정말 아름다운..나의 아르띠네도 이 동굴에 들어왔다가 나가지 못 했어..이 동굴 어딘가에 있는 그녀의 유골..왼 손 네 번째 손가락에 나의 사랑의 반지를 끼워줘..부탁이야..",10,"네.."

	elseif req == 10 then
		return 2,0,"흑...흑..정말 고마워! 반지를 끼워 준 뒤 그녀가 무슨 반응을 보이는지 나에게 다시와서 말해 줘..아..참! 그녀는 목감기가 잘 걸려서 언제나 목에 스카프를 두르고 다녔으니..찾는데 도움이 될 거야..",11,"네"

	elseif req == 11 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			AddItemCount(cnum, 8515, 1)
			SetSwitchCount(cnum, 530, 1) -- 퀘스트 시작
			StartQuest(cnum, 186)
			return 1,0,"[안똔의 사랑의 반지를 받았습니다.]"
		end

	elseif req == 12 then
		return 2,0,"아....! 뭐라고 하던가?!",13,"사랑한다고 전해달래요"

	elseif req == 13 then
		return 2,0,"정말?! 흑...흑..정말 고마워!!",14,"그리고 곧 만나자던데..."

	elseif req == 14 then
		return 2,0,"고마워...나의 반지가 그녀에게 있으니 이제 그녀를 찾을 수 있을지도 몰라...! 정말 고마워...",15,"네.."

	elseif req == 15 then
		return 2,0,"[안똔의 해골의 눈에서 반짝이는 눈물이 딱딱하게 굳으며 바닥으로 떨어졌습니다.]",16,"줍는다.."

	elseif req == 16 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			random = SetRandom(cnum, 1, 8)
			if random == 1 then
				AddItemCount(cnum, 875, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 궁사의 정을 획득하였습니다.]"

			elseif random == 2 then
				AddItemCount(cnum, 876, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 용기의 정을 획득하였습니다.]"

			elseif random == 3 then
				AddItemCount(cnum, 877, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 도둑의 정을 획득하였습니다.]"

			elseif random == 4 then
				AddItemCount(cnum, 878, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 힘의 정을 획득하였습니다.]"

			elseif random == 5 then
				AddItemCount(cnum, 879, 5)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 민첩의 정을 획득하였습니다.]"

			elseif random == 6 then
				AddItemCount(cnum, 880, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 정확의 정을 획득하였습니다.]"

			elseif random == 7 then
				AddItemCount(cnum, 881, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 행운의 정을 획득하였습니다.]"

			elseif random == 8 then
				AddItemCount(cnum, 882, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 생명의 정을 획득하였습니다.]"

			else
				return 0
			end



		end
	end

end



function NPC_QUEST_1007(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"길을 잃어 자포자기한 듯 한 느낌의 해골이다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"길을 잃어 자포자기한 듯 한 느낌의 해골이다."
			end
		end
	end
end

function NPC_QUEST_1008(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"해골의 손이 1시방향을 가르키는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"해골의 손이 1시방향을 가르키는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1009(cnum,reqNumber) -- 소름오싹뱌암동굴 해골 --아르띠네

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 1,0,"궁지에 몰려 죽은 듯 한 모험가의 해골이다"
		else
			if GetSwitchCount(cnum, 530) == 1 then
				return 3,0,"목에 하얀 스카프 같은 것이 있는 해골이다.",2,"자세히 살펴본다",3,"가만히 둔다"
			else
				return 1,0,"안똔이 사랑하는 아르띠네의 해골이다."
			end
		end

	elseif req == 2 then
		return 2,0,"스카프에 아르띠네라는 이름이 쓰여있다.",4,"손가락에 반지를 껴준다."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		AddItemCount(cnum, 8515, -1)
		return 2,0,"그대는 누구신가요?",5,"안똔님께서 보내셔서.."

	elseif req == 5 then
		return 2,0,"안똔!.....고마워요..역시 그도 저를 사랑하고 있었군요..저도 역시 안똔을 몰래 사랑하고 있었어요..저에게 이렇게 반지를 끼워주다니..안똔에게 사랑한다고 전해주세요 그리고 곧 만나자고~",6,"네.."

	elseif req == 6 then
		SetSwitchCount(cnum, 530, 2)


	end
end

function NPC_QUEST_1010(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"오랜 전투를 치룬 듯 한 모험가의 해골이다..그의 손이 6시 방향을 가르키는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"오랜 전투를 치룬 듯 한 모험가의 해골이다..그의 손이 6시 방향을 가르키는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1011(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"길 찾기를 포기했는지 길 가운데에 주저 앉아 죽은 모험가의 해골이다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"길 찾기를 포기했는지 길 가운데에 주저 앉아 죽은 모험가의 해골이다.."
			end
		end
	end
end

function NPC_QUEST_1012(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"이곳이 아니라는 듯 손으로 X표시를 하며 죽은 모험가의 해골이다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"이곳이 아니라는 듯 손으로 X표시를 하며 죽은 모험가의 해골이다.."
			end
		end
	end
end

function NPC_QUEST_1013(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"그의 손이 5시 방향을 가르키고 있다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"그의 손이 5시 방향을 가르키고 있다."
			end
		end
	end
end

function NPC_QUEST_1014(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..심하게 당한 듯 하다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"모험가의 해골이다..심하게 당한 듯 하다.."
			end
		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NPC_QUEST_1015(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..동굴에 들어오자마자 첫 번째 희생양이 되었나..."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"모험가의 해골이다..동굴에 들어오자마자 첫 번째 희생양이 되었나..."
			end
		end
	end
end

function NPC_QUEST_1016(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber
random1 = SetRandom(cnum, 1, 10)
	if req == 1 then
		if GetSwitchCount(cnum, 32540) > 0 then
			return 1,0,"Voce ja pegou o tesouro!"
		else
			
		end
	end
end

function NPC_QUEST_1017(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다..왠지 그의 손이 7시 방향의 길을 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"갈림길에서 죽은 모험가의 해골이다..왠지 그의 손이 7시 방향의 길을 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1018(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1019(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"완전히 바스러진 모험가의 해골이다..형태를 알아보기도 힘들다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"완전히 바스러진 모험가의 해골이다..형태를 알아보기도 힘들다."
			end
		end
	end
end

function NPC_QUEST_1020(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1021(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 3,0,"딸그락..딸그락..쉬....쉬..어디선가 누군가가 말하는 소리가 들리는 것 같다.",2,"귀 기울여 본다.",3,"그냥 간다."
		elseif GetSwitchCount(cnum, 530) == 1 then
			return 1,0,"어서..나의 아르띠네에게...반지를 끼워줘..."
		elseif GetSwitchCount(cnum, 530) == 2 then
			return 2,0,"혹시 나의 아르띠네를 만났나?..",12,"네"
		elseif GetSwitchCount(cnum, 530) == 3 then
			return 1,0,"아르띠네를 사랑하는 안똔의 해골이다."
		end



	elseif req == 2 then
		return 3,0,"저..저기..용감한 밸러여..여기는 어떻게 들어왔나..이 곳은 위험해..그 들의 독은 치명적이라고..우습게 봤다간 내 꼴이 돼..",4,"네..",5,"신경 쓰지 마세요."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		return 3,0,"보니 꽤나 강력하군..나 너에게 부탁하나만 해도 될까..",6,"뭔데요?",5,"아니요"

	elseif req == 5 then
		return 1,0,"아무튼 조심해.."

	elseif req == 6 then
		return 2,0,"고맙군..나 정말 심각하니..진지하게 들어봐 줘...",8,"네.."

	elseif req == 8 then
		return 2,0,"내 살아있을 적...그러니까 이 동굴에서 보물을 멋지게 찾아서 나가게 되면...그녀에게 숨겨왔던 나의 사랑을 고백하려고 했지...하지만...흑..흑...",9,"그렇군요.."

	elseif req == 9 then
		return 2,0,"내 그녀..정말 아름다운..나의 아르띠네도 이 동굴에 들어왔다가 나가지 못 했어..이 동굴 어딘가에 있는 그녀의 유골..왼 손 네 번째 손가락에 나의 사랑의 반지를 끼워줘..부탁이야..",10,"네.."

	elseif req == 10 then
		return 2,0,"흑...흑..정말 고마워! 반지를 끼워 준 뒤 그녀가 무슨 반응을 보이는지 나에게 다시와서 말해 줘..아..참! 그녀는 목감기가 잘 걸려서 언제나 목에 스카프를 두르고 다녔으니..찾는데 도움이 될 거야..",11,"네"

	elseif req == 11 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			AddItemCount(cnum, 8515, 1)
			SetSwitchCount(cnum, 530, 1) -- 퀘스트 시작
			StartQuest(cnum, 186)
			return 1,0,"[안똔의 사랑의 반지를 받았습니다.]"
		end

	elseif req == 12 then
		return 2,0,"아....! 뭐라고 하던가?!",13,"사랑한다고 전해달래요"

	elseif req == 13 then
		return 2,0,"정말?! 흑...흑..정말 고마워!!",14,"그리고 곧 만나자던데..."

	elseif req == 14 then
		return 2,0,"고마워...나의 반지가 그녀에게 있으니 이제 그녀를 찾을 수 있을지도 몰라...! 정말 고마워...",15,"네.."

	elseif req == 15 then
		return 2,0,"[안똔의 해골의 눈에서 반짝이는 눈물이 딱딱하게 굳으며 바닥으로 떨어졌습니다.]",16,"줍는다.."

	elseif req == 16 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			random = SetRandom(cnum, 1, 8)
			if random == 1 then
				AddItemCount(cnum, 875, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 궁사의 정을 획득하였습니다.]"

			elseif random == 2 then
				AddItemCount(cnum, 876, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 용기의 정을 획득하였습니다.]"

			elseif random == 3 then
				AddItemCount(cnum, 877, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 도둑의 정을 획득하였습니다.]"

			elseif random == 4 then
				AddItemCount(cnum, 878, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 힘의 정을 획득하였습니다.]"

			elseif random == 5 then
				AddItemCount(cnum, 879, 5)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 민첩의 정을 획득하였습니다.]"

			elseif random == 6 then
				AddItemCount(cnum, 880, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 정확의 정을 획득하였습니다.]"

			elseif random == 7 then
				AddItemCount(cnum, 881, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 행운의 정을 획득하였습니다.]"

			elseif random == 8 then
				AddItemCount(cnum, 882, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 생명의 정을 획득하였습니다.]"

			else
				return 0
			end



		end
	end	

end



function NPC_QUEST_1022(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"길을 잃어 자포자기한 듯 한 느낌의 해골이다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"길을 잃어 자포자기한 듯 한 느낌의 해골이다."
			end
		end
	end
end

function NPC_QUEST_1023(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"해골의 손이 1시방향을 가르키는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"해골의 손이 1시방향을 가르키는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1024(cnum,reqNumber) -- 소름오싹뱌암동굴 해골 --아르띠네

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 1,0,"궁지에 몰려 죽은 듯 한 모험가의 해골이다"
		else
			if GetSwitchCount(cnum, 530) == 1 then
				return 3,0,"목에 하얀 스카프 같은 것이 있는 해골이다.",2,"자세히 살펴본다",3,"가만히 둔다"
			else
				return 1,0,"안똔이 사랑하는 아르띠네의 해골이다."
			end
		end

	elseif req == 2 then
		return 2,0,"스카프에 아르띠네라는 이름이 쓰여있다.",4,"손가락에 반지를 껴준다."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		AddItemCount(cnum, 8515, -1)
		return 2,0,"그대는 누구신가요?",5,"안똔님께서 보내셔서.."

	elseif req == 5 then
		return 2,0,"안똔!.....고마워요..역시 그도 저를 사랑하고 있었군요..저도 역시 안똔을 몰래 사랑하고 있었어요..저에게 이렇게 반지를 끼워주다니..안똔에게 사랑한다고 전해주세요 그리고 곧 만나자고~",6,"네.."

	elseif req == 6 then
		SetSwitchCount(cnum, 530, 2)


	end
end

function NPC_QUEST_1025(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"오랜 전투를 치룬 듯 한 모험가의 해골이다..그의 손이 6시 방향을 가르키는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"오랜 전투를 치룬 듯 한 모험가의 해골이다..그의 손이 6시 방향을 가르키는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1026(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"길 찾기를 포기했는지 길 가운데에 주저 앉아 죽은 모험가의 해골이다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"길 찾기를 포기했는지 길 가운데에 주저 앉아 죽은 모험가의 해골이다.."
			end
		end
	end
end

function NPC_QUEST_1027(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"이곳이 아니라는 듯 손으로 X표시를 하며 죽은 모험가의 해골이다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"이곳이 아니라는 듯 손으로 X표시를 하며 죽은 모험가의 해골이다.."
			end
		end
	end
end

function NPC_QUEST_1028(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"그의 손이 5시 방향을 가르키고 있다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"그의 손이 5시 방향을 가르키고 있다."
			end
		end
	end
end

function NPC_QUEST_1029(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..심하게 당한 듯 하다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"모험가의 해골이다..심하게 당한 듯 하다.."
			end
		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NPC_QUEST_1030(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..동굴에 들어오자마자 첫 번째 희생양이 되었나..."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"모험가의 해골이다..동굴에 들어오자마자 첫 번째 희생양이 되었나..."
			end
		end
	end
end

function NPC_QUEST_1031(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..많은 모험가가 뱌암에게 죽었다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"모험가의 해골이다..많은 모험가가 뱌암에게 죽었다."
			end
		end
	end
end

function NPC_QUEST_1032(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
	
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다..왠지 그의 손이 7시 방향의 길을 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"갈림길에서 죽은 모험가의 해골이다..왠지 그의 손이 7시 방향의 길을 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1033(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1034(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"완전히 바스러진 모험가의 해골이다..형태를 알아보기도 힘들다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"완전히 바스러진 모험가의 해골이다..형태를 알아보기도 힘들다."
			end
		end
	end
end

function NPC_QUEST_1035(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"갈림길에서 죽은 모험가의 해골이다. 왠지 그의 손이 11시를 가르키고 있는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1036(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 3,0,"딸그락..딸그락..쉬....쉬..어디선가 누군가가 말하는 소리가 들리는 것 같다.",2,"귀 기울여 본다.",3,"그냥 간다."
		elseif GetSwitchCount(cnum, 530) == 1 then
			return 1,0,"어서..나의 아르띠네에게...반지를 끼워줘..."
		elseif GetSwitchCount(cnum, 530) == 2 then
			return 2,0,"혹시 나의 아르띠네를 만났나?..",12,"네"
		elseif GetSwitchCount(cnum, 530) == 3 then
			return 1,0,"아르띠네를 사랑하는 안똔의 해골이다."
		end



	elseif req == 2 then
		return 3,0,"저..저기..용감한 밸러여..여기는 어떻게 들어왔나..이 곳은 위험해..그 들의 독은 치명적이라고..우습게 봤다간 내 꼴이 돼..",4,"네..",5,"신경 쓰지 마세요."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		return 3,0,"보니 꽤나 강력하군..나 너에게 부탁하나만 해도 될까..",6,"뭔데요?",5,"아니요"

	elseif req == 5 then
		return 1,0,"아무튼 조심해.."

	elseif req == 6 then
		return 2,0,"고맙군..나 정말 심각하니..진지하게 들어봐 줘...",8,"네.."

	elseif req == 8 then
		return 2,0,"내 살아있을 적...그러니까 이 동굴에서 보물을 멋지게 찾아서 나가게 되면...그녀에게 숨겨왔던 나의 사랑을 고백하려고 했지...하지만...흑..흑...",9,"그렇군요.."

	elseif req == 9 then
		return 2,0,"내 그녀..정말 아름다운..나의 아르띠네도 이 동굴에 들어왔다가 나가지 못 했어..이 동굴 어딘가에 있는 그녀의 유골..왼 손 네 번째 손가락에 나의 사랑의 반지를 끼워줘..부탁이야..",10,"네.."

	elseif req == 10 then
		return 2,0,"흑...흑..정말 고마워! 반지를 끼워 준 뒤 그녀가 무슨 반응을 보이는지 나에게 다시와서 말해 줘..아..참! 그녀는 목감기가 잘 걸려서 언제나 목에 스카프를 두르고 다녔으니..찾는데 도움이 될 거야..",11,"네"

	elseif req == 11 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			AddItemCount(cnum, 8515, 1)
			SetSwitchCount(cnum, 530, 1) -- 퀘스트 시작
			StartQuest(cnum, 186)
			return 1,0,"[안똔의 사랑의 반지를 받았습니다.]"
		end

	elseif req == 12 then
		return 2,0,"아....! 뭐라고 하던가?!",13,"사랑한다고 전해달래요"

	elseif req == 13 then
		return 2,0,"정말?! 흑...흑..정말 고마워!!",14,"그리고 곧 만나자던데..."

	elseif req == 14 then
		return 2,0,"고마워...나의 반지가 그녀에게 있으니 이제 그녀를 찾을 수 있을지도 몰라...! 정말 고마워...",15,"네.."

	elseif req == 15 then
		return 2,0,"[안똔의 해골의 눈에서 반짝이는 눈물이 딱딱하게 굳으며 바닥으로 떨어졌습니다.]",16,"줍는다.."

	elseif req == 16 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			random = SetRandom(cnum, 1, 8)
			if random == 1 then
				AddItemCount(cnum, 875, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 궁사의 정을 획득하였습니다.]"

			elseif random == 2 then
				AddItemCount(cnum, 876, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 용기의 정을 획득하였습니다.]"

			elseif random == 3 then
				AddItemCount(cnum, 877, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 도둑의 정을 획득하였습니다.]"

			elseif random == 4 then
				AddItemCount(cnum, 878, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 힘의 정을 획득하였습니다.]"

			elseif random == 5 then
				AddItemCount(cnum, 879, 5)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 민첩의 정을 획득하였습니다.]"

			elseif random == 6 then
				AddItemCount(cnum, 880, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 정확의 정을 획득하였습니다.]"

			elseif random == 7 then
				AddItemCount(cnum, 881, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 행운의 정을 획득하였습니다.]"

			elseif random == 8 then
				AddItemCount(cnum, 882, 1)
				SetSwitchCount(cnum, 530, 3)
				EndQuest(cnum, 186)
				return 1,0,"[축복의 생명의 정을 획득하였습니다.]"

			else
				return 0
			end



		end
	end	

end



function NPC_QUEST_1037(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"길을 잃어 자포자기한 듯 한 느낌의 해골이다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"길을 잃어 자포자기한 듯 한 느낌의 해골이다."
			end
		end
	end
end

function NPC_QUEST_1038(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"해골의 손이 1시방향을 가르키는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"해골의 손이 1시방향을 가르키는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1039(cnum,reqNumber) -- 소름오싹뱌암동굴 해골 --아르띠네

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 530) < 1 then
			return 1,0,"궁지에 몰려 죽은 듯 한 모험가의 해골이다"
		else
			if GetSwitchCount(cnum, 530) == 1 then
				return 3,0,"목에 하얀 스카프 같은 것이 있는 해골이다.",2,"자세히 살펴본다",3,"가만히 둔다"
			else
				return 1,0,"안똔이 사랑하는 아르띠네의 해골이다."
			end
		end

	elseif req == 2 then
		return 2,0,"스카프에 아르띠네라는 이름이 쓰여있다.",4,"손가락에 반지를 껴준다."

	elseif req == 3 then
		return 0

	elseif req == 4 then
		AddItemCount(cnum, 8515, -1)
		return 2,0,"그대는 누구신가요?",5,"안똔님께서 보내셔서.."

	elseif req == 5 then
		return 2,0,"안똔!.....고마워요..역시 그도 저를 사랑하고 있었군요..저도 역시 안똔을 몰래 사랑하고 있었어요..저에게 이렇게 반지를 끼워주다니..안똔에게 사랑한다고 전해주세요 그리고 곧 만나자고~",6,"네.."

	elseif req == 6 then
		SetSwitchCount(cnum, 530, 2)


	end
end

function NPC_QUEST_1040(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"오랜 전투를 치룬 듯 한 모험가의 해골이다..그의 손이 6시 방향을 가르키는 것 같다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"오랜 전투를 치룬 듯 한 모험가의 해골이다..그의 손이 6시 방향을 가르키는 것 같다."
			end
		end
	end
end

function NPC_QUEST_1041(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"길 찾기를 포기했는지 길 가운데에 주저 앉아 죽은 모험가의 해골이다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"길 찾기를 포기했는지 길 가운데에 주저 앉아 죽은 모험가의 해골이다.."
			end
		end
	end
end

function NPC_QUEST_1042(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"이곳이 아니라는 듯 손으로 X표시를 하며 죽은 모험가의 해골이다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"이곳이 아니라는 듯 손으로 X표시를 하며 죽은 모험가의 해골이다.."
			end
		end
	end
end

function NPC_QUEST_1043(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"그의 손이 5시 방향을 가르키고 있다."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
				return 1,0,"그의 손이 5시 방향을 가르키고 있다."
			end
		end
	end
end

function NPC_QUEST_1044(cnum,reqNumber) -- 소름오싹뱌암동굴 해골

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 529) < 100 then
			AddSwitchCount(cnum, 529, 1)
			return 1,0,"모험가의 해골이다..심하게 당한 듯 하다.."
		else
			if GetSwitchCount(cnum, 529) == 100 then
				AddItemCount(cnum, 3704, 5)
				return 1,0,"밸러여! 이 곳을 많이 헤메였구나! 내가 너에게 도움을 주겠다!"
			elseif GetSwitchCount(cnum, 529) == 500 then
				AddItemCount(cnum, 3704, 10)
				return 1,0,"밸러여! 이 곳을 너무 많이 헤메였구나! 내가 너에게 도움을 주겠다! 더 이상 헤메지 말고 이 위험한 곳에서 나가기를...."
			else
			return 1,0,"모험가의 해골이다..심하게 당한 듯 하다.."
			end
		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------



