-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 죠브박사 시작
function NPC_QUEST_378(cnum,reqNumber) -- 죠브 박사

req = reqNumber
name = GetHeroName(cnum)
type = GetHeroType(cnum)
random1 = SetRandom(cnum, 1, 2)

	if req == 1 then
--[[    if GetChanelName(cnum) == "CULT" then
      if GetSwitchCount(cnum, 665) < 1 then
        AddSwitchCount(cnum, 665, 1)
        AddItemCount(cnum, 8750, 1)
        ImageQuest(cnum, 0, 29,"오호~! 새로운 밸러인가? 컬쳐랜드를 통해 믹스마스터의 세계로 들어왔구만! 자네를 기다리고 있었네! 여기 내가 엄청난 효과를 발휘할 수 있는 구름 아이템을 주지! 이동속도! 공격속도! 공격 데미지! 모두 환상적이니 한 번 써보라고!")
        return;

      else
        if GetSwitchCount(cnum, 470) < 1 then --> 믹스마스터 소개
          ImageQuest(cnum, 2, 29,""..GetChanelName(cnum).."믹스마스터의 세계로 온 것을 환영하네~!")
          return;
        else
          ImageQuest(cnum, 0, 32,"어허~초보 밸러! 이 죠브박사님은 바쁘다구~ 더 많은 걸 알고 싶으면 마을 중앙에 있는 '파찌' 를 찾아가보라구~! 이미 '파찌'에게 너의 이야기를 해놨으니까~")
        end
      end
    end]]-- 컬쳐랜드 신규 캐릭터 이벤트 아이템 지급

    	if GetSwitchCount(cnum, 475) < 1 then --> 퀘스트 3 완료 후 모네스 이동
			if GetSwitchCount(cnum, 472) < 1 then --> 퀘스트 3 제공 여부
				if GetSwitchCount(cnum, 479) < 1 then --> 퀘스트 2 보상 완료 여부
					if GetSwitchCount(cnum, 471) < 1 then --> 파찌와 첫 대화 여부
						if GetSwitchCount(cnum, 470) < 1 then --> 믹스마스터 소개
							ImageQuest(cnum, 2, 29,"오호~! 새로운 밸러인가? 나는 이 믹스마스터의 세계의 최고 권위자라고 할 수 있는 죠브박사라고 하네~! 믹스마스터의 세계로 온 것을 환영하네~!")
						else
							ImageQuest(cnum, 0, 32,"어허~초보 밸러! 이 죠브박사님은 바쁘다구~ 더 많은 걸 알고 싶으면 마을 중앙에 있는 '파찌' 를 찾아가보라구~! 이미 '파찌'에게 너의 이야기를 해놨으니까~")
						end
					else
						ImageQuest(cnum, 0, 69,"오~신입 밸러 "..name.."~! 나 위대한 죠브박사님께 무슨 볼일이 있나? 하지만 이 몸은 지금 아~주! 바쁘니 나중에 다시 오게.")
					end
				else
					ImageQuest(cnum, 5, 69,"호오~ 자네 영광인 줄 알게~ 나 죠브박사와 이렇게 대화를 나누기 쉽지 않다구~ 에헴! 이제 조금은 초보 티를 벗은 듯 하구만! 그런 의미로 자네에게 이 죠브박사님께서 영예로운 미션을 하나 내주겠네! ")
				end
			else
				if GetSwitchCount(cnum, 473) < 1 then
					if GetItemCount(cnum, 8423, 0) < 1 then
						if GetSwitchCount(cnum, 474) < 4 then --> 퀘스트 3에 대해 반복적으로 물어보는지 여부
							AddSwitchCount(cnum, 474, 1)
							AddItemCount(cnum, 303, 5)
							ImageQuest(cnum, 0, 70,"이 죠브박사님께서 내리신 영예로운 미션을 어서 수행하게! 보상은 두둑히 주겠네~! 마을 위쪽으로 올라가면 그 놈이 있을게야! 여기 사냥에 도움이 될 HP 회복 물약 5개를 주겠네! 물약이 모자라면 다시 오고! 어서 그 놈의 어금니를 가져오라구!")
						else
							ImageQuest(cnum, 0, 75,"왜...자꾸 물어보나..변이돼지가 너무 강력한가? 그렇다면 다른 밸러에게 부탁하겠네. '모네스'를 통해 더 넓은 세상으로 나가 경험을 쌓게. 모네스의 위치를 확인하고 그를 찾아가게나~")
						end

					else
						if GetOccupiedHenchPocket(cnum, 1) > 19 then
							return 1,0,"헨치 인벤토리를 1칸 이상 비우고 다시 오게~그러면 내가 귀여운 헨치 한 마리를 주겠네!"
						else
							if GetRemainPocket(cnum) < 1 then
								return 1,0,"아이템 인벤토리의 여유공간이 부족하네. 아이템 인벤토리를 1칸 이상 비우고 오겠나?"
							else
								if type == 0 then
									if random1 == 1 then
										EndQuest(cnum, 163) --> 퀘스트 3 리스트 제거
										SetSwitchCount(cnum, 473, 1) --> 퀘스트 3 보상
										AddItemCount(cnum, 190, 1) --> 캐릭터 별 무기지급
										AddItemCount(cnum, 8423, -1) --> 돼지 이빨 뺐기
										AddHenchAndState(cnum, 664, 0) --> 아기돼지 지급
										ImageQuest(cnum, 6, 71,"역시 "..name.."~! 내 속으로 자네가 해낼 줄 알았네! 글쎄 그 변이 돼지에게 아기돼지 한 마리가 있더군~ 이 놈은 다행이 변이가 되질 않아 온순하니 자네가 잘 키워보게! 그리고 여기 내 약속대로 유용하게 쓰일 무기도 함께 주겠네~!!")
									elseif random1 == 2 then
										EndQuest(cnum, 163) --> 퀘스트 3 리스트 제거
										SetSwitchCount(cnum, 473, 1) --> 퀘스트 3 보상
										AddItemCount(cnum, 8423, -1) --> 돼지 이빨 뺐기
										AddItemCount(cnum, 190, 1) --> 캐릭터 별 무기지급
										AddHenchAndState(cnum, 665, 0) --> 아기돼지 지급
										ImageQuest(cnum, 6, 71,"역시 "..name.."~! 내 속으로 자네가 해낼 줄 알았네! 글쎄 그 변이 돼지에게 아기돼지 한 마리가 있더군~ 이 놈은 다행이 변이가 되질 않아 온순하니 자네가 잘 키워보게! 그리고 여기 내 약속대로 유용하게 쓰일 무기도 함께 주겠네~!!")
									else
										return 0
									end

								elseif type == 1 then
									if random1 == 1 then
										EndQuest(cnum, 163) --> 퀘스트 3 리스트 제거
										SetSwitchCount(cnum, 473, 1) --> 퀘스트 3 보상
										AddItemCount(cnum, 8423, -1) --> 돼지 이빨 뺐기
										AddItemCount(cnum, 200, 1) --> 캐릭터 별 무기지급
										AddHenchAndState(cnum, 664, 0) --> 아기돼지 지급
										ImageQuest(cnum, 6, 72,"역시 "..name.."~! 내 속으로 자네가 해낼 줄 알았네! 글쎄 그 변이 돼지에게 아기돼지 한 마리가 있더군~ 이 놈은 다행이 변이가 되질 않아 온순하니 자네가 잘 키워보게! 그리고 여기 내 약속대로 유용하게 쓰일 무기도 함께 주겠네~!!")
									elseif random1 == 2 then
										EndQuest(cnum, 163) --> 퀘스트 3 리스트 제거
										SetSwitchCount(cnum, 473, 1) --> 퀘스트 3 보상
										AddItemCount(cnum, 8423, -1) --> 돼지 이빨 뺐기
										AddItemCount(cnum, 200, 1) --> 캐릭터 별 무기지급
										AddHenchAndState(cnum, 665, 0) --> 아기돼지 지급
										ImageQuest(cnum, 6, 72,"역시 "..name.."~! 내 속으로 자네가 해낼 줄 알았네! 글쎄 그 변이 돼지에게 아기돼지 한 마리가 있더군~ 이 놈은 다행이 변이가 되질 않아 온순하니 자네가 잘 키워보게! 그리고 여기 내 약속대로 유용하게 쓰일 무기도 함께 주겠네~!!")
									else
										return 0
									end



								elseif type == 2 then
									if random1 == 1 then
										EndQuest(cnum, 163) --> 퀘스트 3 리스트 제거
										SetSwitchCount(cnum, 473, 1) --> 퀘스트 3 보상
										AddItemCount(cnum, 8423, -1) --> 돼지 이빨 뺐기
										AddItemCount(cnum, 220, 1) --> 캐릭터 별 무기지급
										AddHenchAndState(cnum, 664, 0) --> 아기돼지 지급
										ImageQuest(cnum, 6, 73,"역시 "..name.."~! 내 속으로 자네가 해낼 줄 알았네! 글쎄 그 변이 돼지에게 아기돼지 한 마리가 있더군~ 이 놈은 다행이 변이가 되질 않아 온순하니 자네가 잘 키워보게! 그리고 여기 내 약속대로 유용하게 쓰일 무기도 함께 주겠네~!!")
									elseif random1 == 2 then
										EndQuest(cnum, 163) --> 퀘스트 3 리스트 제거
										SetSwitchCount(cnum, 473, 1) --> 퀘스트 3 보상
										AddItemCount(cnum, 8423, -1) --> 돼지 이빨 뺐기
										AddItemCount(cnum, 220, 1) --> 캐릭터 별 무기지급
										AddHenchAndState(cnum, 665, 0) --> 아기돼지 지급
										ImageQuest(cnum, 6, 73,"역시 "..name.."~! 내 속으로 자네가 해낼 줄 알았네! 글쎄 그 변이 돼지에게 아기돼지 한 마리가 있더군~ 이 놈은 다행이 변이가 되질 않아 온순하니 자네가 잘 키워보게! 그리고 여기 내 약속대로 유용하게 쓰일 무기도 함께 주겠네~!!")
									else
										return 0
									end



								elseif type == 3 then
									if random1 == 1 then
										EndQuest(cnum, 163) --> 퀘스트 3 리스트 제거
										SetSwitchCount(cnum, 473, 1) --> 퀘스트 3 보상
										AddItemCount(cnum, 8423, -1) --> 돼지 이빨 뺐기
										AddItemCount(cnum, 210, 1) --> 캐릭터 별 무기지급
										AddHenchAndState(cnum, 664, 0) --> 아기돼지 지급
										ImageQuest(cnum, 6, 74,"역시 "..name.."~! 내 속으로 자네가 해낼 줄 알았네! 글쎄 그 변이 돼지에게 아기돼지 한 마리가 있더군~ 이 놈은 다행이 변이가 되질 않아 온순하니 자네가 잘 키워보게! 그리고 여기 내 약속대로 유용하게 쓰일 무기도 함께 주겠네~!!")
									elseif random1 == 2 then
										EndQuest(cnum, 163) --> 퀘스트 3 리스트 제거
										SetSwitchCount(cnum, 473, 1) --> 퀘스트 3 보상
										AddItemCount(cnum, 8423, -1) --> 돼지 이빨 뺐기
										AddItemCount(cnum, 210, 1) --> 캐릭터 별 무기지급
										AddHenchAndState(cnum, 665, 0) --> 아기돼지 지급
										ImageQuest(cnum, 6, 74,"역시 "..name.."~! 내 속으로 자네가 해낼 줄 알았네! 글쎄 그 변이 돼지에게 아기돼지 한 마리가 있더군~ 이 놈은 다행이 변이가 되질 않아 온순하니 자네가 잘 키워보게! 그리고 여기 내 약속대로 유용하게 쓰일 무기도 함께 주겠네~!!")
									else
										return 0
									end

								else
									return 0
								end

							end
						end
					end
				else
					SetSwitchCount(cnum, 475, 1) --> 퀘스트 3 완료 후 모네스로 이동
					ImageQuest(cnum, 98, 75,""..name.."~! 자네는 이제 초보 티를 완전히 벗었으니 이제 진정한 믹스마스터가 되기 위한 여행을 떠나게. 저기 마지리타 마을로 워프를 시켜줄 수 있는 '모네스'가 있다네. '모네스'에게 말을 걸어보게~내가 근처로 이동시켜 주겠네. 그럼 멋진 여행 되게나!!")
				end

			end
		else
			ImageQuest(cnum, 98, 75,""..name.."~! 왜 다시 왔나? 길을 잃었나? 내가 다시 '모네스' 근처로 이동시켜 줄 테니 '모네스'에게 말을 걸어보게")
		end


	elseif req == 2 then
		ImageQuest(cnum, 3, 30,"믹스마스터가 뭐냐고? 믹스마스터는 이 세상 모든 몬스터들을 조합하고 다룰 수 있던 4명의 전설의 용사지. 에헴~! 그런 것들보다 초보자인 자네는 '헨치'라는 것도 모르겠군.")

	elseif req == 3 then
		ImageQuest(cnum, 4, 31,"헨치란 길들여진 몬스터를 말하네. 또한, 헨치를 서로 '믹스'하여 더욱 강력한 헨치를 만들 수 있지. 자네도 열심히 노력한다면 '전설의 용사 믹스마스터'가 될 수 있다구! 자넬보니 몬스터들로 가득한 이 무서운 세상을 평화롭게 만들 수 있을 정도로 패기있어 보이는군.")

	elseif req == 4 then
		SetSwitchCount(cnum, 470, 1) --> 믹스마스터 소개 완료
		ImageQuest(cnum, 0, 32,"그럼 활약을 기대하겠네. 이제 나는 바빠서 이만~! 더 알려달라구? 안돼~! 나는 아주 바쁜 죠브박사님이시니까~마을 중앙에 있는 '파찌'를 찾아가 보라구~! '파찌'에게 말해놓겠네~")

	elseif req == 5 then
		ImageQuest(cnum, 7, 70,"마을 북쪽에 거대한 돼지 한 마리가 나타나 지나는 마을 사람들을 습격한다는 제보가 있다네. 그 놈이 돌연변이라 연구를 해 볼 필요성도 있고, 그 놈의 어금니 정도면 왜 돌연변이가 됐는지 알아낼 수 있겠지. 그 놈을 쓰러뜨리고 어금니를 가져오면 내가 두둑하게 보상을 해주지. 그럼 기다리고 있겠네!")

	elseif req == 6 then
		SetSwitchCount(cnum, 475, 1) --> 퀘스트 3 완료 후 모네스로 이동
		ImageQuest(cnum, 98, 75,""..name.."~! 자네는 이제 초보 티를 완전히 벗었으니 이제 진정한 믹스마스터가 되기 위한 여행을 떠나게. 저기 마지리타 마을로 워프를 시켜줄 수 있는 '모네스'가 있다네. '모네스'에게 말을 걸어보게~내가 근처로 이동시켜 주겠네. 그럼 멋진 여행 되게나!!")

	elseif req == 7 then
		SetSwitchCount(cnum, 472, 1) --> 퀘스트 3 제공
		StartQuest(cnum, 163) --> 퀘스트 3 리스트 추가

	elseif req == 98 then
		MoveZone(cnum, 130, 101) --> 모네스 앞으로 이동


	else
		return 0
	end

end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 죠브박사 끝
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 파찌 시작
function NPC_QUEST_379(cnum,reqNumber) -- 파찌

req = reqNumber
name = GetHeroName(cnum)
type = GetHeroType(cnum)
random1 = SetRandom(cnum, 1, 20)


hench1 = GetHench(cnum, 1, 9, 0)
bhench1 = GetHench(cnum, 0, 9, 0)
hench2 = GetHench(cnum, 1, 13, 0)
bhench2 = GetHench(cnum, 0, 13, 0)
hench3 = GetHench(cnum, 1, 17, 0)
bhench3 = GetHench(cnum, 0, 17, 0)
hench4 = GetHench(cnum, 1, 49, 0)
bhench4 = GetHench(cnum, 0, 49, 0)
hench5 = GetHench(cnum, 1, 53, 0)
bhench5 = GetHench(cnum, 0, 53, 0)
hench6 = GetHench(cnum, 1, 85, 0)
bhench6 = GetHench(cnum, 0, 85, 0)
hench7 = GetHench(cnum, 1, 89, 0)
bhench7 = GetHench(cnum, 0, 89, 0)
hench8 = GetHench(cnum, 1, 113, 0)
bhench8 = GetHench(cnum, 0, 113, 0)
hench9 = GetHench(cnum, 1, 117, 0)
bhench9 = GetHench(cnum, 0, 117, 0)
hench10 = GetHench(cnum, 1, 121, 0)
bhench10 = GetHench(cnum, 0, 121, 0)
hench11 = GetHench(cnum, 1, 149, 0)
bhench11 = GetHench(cnum, 0, 149, 0)
hench12 = GetHench(cnum, 1, 157, 0)
bhench12 = GetHench(cnum, 0, 157, 0)
hench13 = GetHench(cnum, 1, 161, 0)
bhench13 = GetHench(cnum, 0, 161, 0)
hench14 = GetHench(cnum, 1, 201, 0)
bhench14 = GetHench(cnum, 0, 201, 0)
hench15 = GetHench(cnum, 1, 232, 0)
bhench15 = GetHench(cnum, 0, 232, 0)
hench16 = GetHench(cnum, 1, 243, 0)
bhench16 = GetHench(cnum, 0, 243, 0)
hench17 = GetHench(cnum, 1, 244, 0)
bhench17 = GetHench(cnum, 0, 244, 0)
hench18 = GetHench(cnum, 1, 252, 0)
bhench18 = GetHench(cnum, 0, 252, 0)
hench19 = GetHench(cnum, 1, 253, 0)
bhench19 = GetHench(cnum, 0, 253, 0)
hench20 = GetHench(cnum, 1, 255, 0)
bhench20 = GetHench(cnum, 0, 255, 0)

	if req == 1 then
		if GetSwitchCount(cnum, 479) < 1 then --> 퀘스트 2 보상 완료 여부
			if GetSwitchCount(cnum, 478) < 1 then--> 퀘스트 2 시작 여부
				if GetSwitchCount(cnum, 476) < 1 then --> 퀘스트 1 시작 여부
					ImageQuest(cnum, 2, 33,"안녕? "..name.."야~! 나는 '파찌' 라고 해! 죠브박사님에게 너의 이야기를 전해 들었어~! 자~우리 같이 믹스마스터에 대해 좀 더 알아볼까? 우선 게임 화면 아래에 있는 버튼들의 기능에 대해 알아보자~!")
				else
					if GetItemCount(cnum, 259, 0) < 1 and GetItemCount(cnum, 259, 2) < 1 then
						if GetMoney(cnum) < 150 then
							SetSwitchCount(cnum, 477, 1) --> 퀘스트 1 완료
							ImageQuest(cnum, 12, 39,"GP를 어디에 다~쓴거야? 노비스 아머를 사오지 않았구나? 어쨌든 좋아~ 기본적으로 아이템 장착하는 방법은 알아야 하겠지? 화면 아래에 있는 메뉴 중에 '아이템'을 클릭하면~")
						else
							ImageQuest(cnum, 0, 43,"'방어구상인'에게서 '노비스 아머'를 사고 나에게 돌아오면 돼. 어렵지 않지?")
						end
					else
						if GetRemainPocket(cnum) < 1 then
							return 1,0,"아이템 인벤토리의 여유공간이 부족해. 아이템 인벤토리를 1칸 이상 비우고 다시 올래?"
						else
							EndQuest(cnum, 161) --> 퀘스트 1 리스트 제거
							SetSwitchCount(cnum, 477, 1) --> 퀘스트 1 완료
							ImageQuest(cnum, 12, 39,"좋아! '노비스 아머'를 사왔구나? 잘했어! 이제 네가 사온 아이템을 장착하는 방법을 알려줄게~! 화면 아래에 있는 메뉴 중에 '아이템'을 클릭하면~")
						end
					end
				end
			else
				if hench1 > 0 or hench2 > 0 or hench3 > 0 or hench3 > 0 or hench4 > 0 or hench5 > 0 or hench6 > 0 or hench7 > 0 or hench8 > 0 or hench9 > 0 or hench10 > 0 or hench11 > 0 or hench12 > 0 or hench13 > 0 or hench14 > 0 or hench15 > 0 or hench16 > 0 or hench17 > 0 or hench18 > 0 or hench19 > 0 or hench20 > 0 or bhench1 >0 or bhench2 >0 or bhench3 >0 or bhench4 >0 or bhench5 >0 or bhench6 >0 or bhench7 >0 or bhench8 >0 or bhench9 >0 or bhench10 >0 or bhench11 >0 or bhench12 >0 or bhench13 >0 or bhench14 >0 or bhench15 >0 or bhench16 >0 or bhench17 >0 or bhench18 >0 or bhench19 >0 or bhench20 >0 then
					if GetOccupiedHenchPocket(cnum, 1) > 19 then
						return 1,0,"헨치 인벤토리를 1칸 이상 비우고 다시 와~그러면 내가 헨치 한 마리를 줄게!"
					else
						EndQuest(cnum, 162) --> 퀘스트 2 리스트 제거
						SetSwitchCount(cnum, 479, 1) --> 퀘스트 2 보상
						if random1 == 1 then
							AddHenchAndState(cnum, 9, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 2 then
							AddHenchAndState(cnum, 13, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 3 then
  							AddHenchAndState(cnum, 17, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 4 then
  							AddHenchAndState(cnum, 49, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 5 then
  							AddHenchAndState(cnum, 53, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 6 then
  							AddHenchAndState(cnum, 85, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 7 then
  							AddHenchAndState(cnum, 89, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 8 then
	 						AddHenchAndState(cnum, 113, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 9 then
  							AddHenchAndState(cnum, 117, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 10 then
  							AddHenchAndState(cnum, 121, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 11 then
  							AddHenchAndState(cnum, 149, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 12 then
  							AddHenchAndState(cnum, 157, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 13 then
  							AddHenchAndState(cnum, 161, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 14 then
  							AddHenchAndState(cnum, 201, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 15 then
  							AddHenchAndState(cnum, 232, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 16 then
  							AddHenchAndState(cnum, 243, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 17 then
  							AddHenchAndState(cnum, 244, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 18 then
  							AddHenchAndState(cnum, 252, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 19 then
  							AddHenchAndState(cnum, 253, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						elseif random1 == 20 then
  							AddHenchAndState(cnum, 255, 0) --> 보상 헨치
							ImageQuest(cnum, 0, 68,"훌륭해~! 믹스를 성공했구나!! 좋아 내가 네가 가져온 동급의 헨치 한 마리를 줄게. 죠브박사님께서 도움이 필요하시다는데 한번 가볼래?")
						else
							return 0
						end
					end
				else
					ImageQuest(cnum, 0, 57,"헨치 믹스를 성공해서 나에게 가져오면 돼~! 믹스를 성공해서 나온 헨치라면 어떤 헨치라도 괜찮아~! 모르는 것이 있으면 멋진 수석 교관님이 계시니 그 분께 여쭈어보도록 해~기다릴게~!!아 힌트하나 줄게. 드라코와 데빌코를 믹스하면 바키르가 나와~참고 해.")
				end
			end
		else
			ImageQuest(cnum, 0, 68,"죠브박사님께 어서 가봐 너의 도움이 필요하시데~")
		end

	elseif req == 2 then
		ImageQuest(cnum, 3, 41,"캐릭터: 이 버튼을 누르면 너의 캐릭터의 레벨, 경험치, HP 등 캐릭터의 모든 정보를 볼 수 있어.")

	elseif req == 3 then
		ImageQuest(cnum, 4, 40,"코어: 이 버튼을 누르면 너의 헨치들이 보관되어 있는 인벤토리를 볼 수 있어. 헨치들의 종류, 레벨 등 헨치들의 모든 것을 알 수 있고 이 버튼을 통해 헨치를 장착하여 데리고 다닐 수 있으니 꼭 알아두어야 해~!")

	elseif req == 4 then
		ImageQuest(cnum, 5, 39,"아이템: 네가 가지고 있는 아이템들 모두를 볼 수 있어. 네가 착용한 장비, 가지고 있는 장비도 확인 할 수 있어. 자주 사용하는 버튼이니 꼭 기억해 두도록 해.")

	elseif req == 5 then
		ImageQuest(cnum, 6, 38,"스킬: 네가 사용할 수 있는 스킬 들을 확인하고 사용할 수 있어. 너의 동료 헨치의 스킬도 여기서 확인 할 수 있으니 참고하도록 해.")

	elseif req == 6 then
		ImageQuest(cnum, 7, 37,"커뮤니티: 네가 사귄 친구들의 접속 상태, 이름, 위치 등을 알 수 있어.")

	elseif req == 7 then
		ImageQuest(cnum, 8, 36,"퀘스트: 네가 진행하고 있는 퀘스트를 알 수 있어.")

	elseif req == 8 then
		ImageQuest(cnum, 9, 35,"맵: 전체 지도를 볼 수 있어. 네가 어디에 있는지 알기 힘들거나 목적지를 찾아갈 때 눌러보면 편하겠지?")

	elseif req == 9 then
		ImageQuest(cnum, 10, 42,"상점: 아이템을 살 수 있는 웹 페이지로 연결 돼. 효과 좋은 아이템들이 많으니 한번 이용해 봐.")

	elseif req == 10 then
		ImageQuest(cnum, 11, 34,"시스템: 배경음, 캐릭터 선택 화면으로의 이동, 도움말 보기 등 기능을 할 수 있어. 이제 하단 버튼의 기능들은 대충 알겠지?")

	elseif req == 11 then
		ImageQuest(cnum, 99, 43,"우선 아주 간단한 과제를 하나 내 줄게~ 마을 왼쪽 위에 있는 '방어구상인' 에게서 '노비스 아머' 를 구입해서 나에게 가져와 볼래? 여기 5000GP를 줄게. 이 정도면 '노비스 아머' 를 몇 개를 사고도 남을거야.")

	elseif req == 99 then
		AddMoney(cnum, 5000)
		SetSwitchCount(cnum, 476, 1) --> 퀘스트 1 시작
		StartQuest(cnum, 161) --> 퀘스트 1 리스트 추가

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 퀘스트 1 완료 후 진행
	elseif req == 12 then
		ImageQuest(cnum, 13, 44,"'인벤토리' 창이 나타나! 창의 위쪽을 보면 현재 '착용중인 장비' 들을 볼 수 있고, 창의 아래쪽을 보면 '착용 및 사용 가능한 아이템' 들을 볼 수 있어.")

	elseif req == 13 then
		ImageQuest(cnum, 14, 45,"'인벤토리' 창의 아래 부분에 장착하고 싶은 아이템을 마우스로 클릭한 채로 끌어서 위에 캐릭터 옆의 회색 빛의 같은 모양이 있는 곳에 놓으면 돼. 즉, 아머라면 아머자리에, 링이라면 링 자리에 끌어 놓으면 돼. 어렵지 않지?")

	elseif req == 14 then
		ImageQuest(cnum, 15, 46,"아이템을 끌어서 놓으면 이처럼 아이템이 장착 된 걸 볼 수 있지~ 어때? 할 수 있겠어?")

	elseif req == 15 then
		ImageQuest(cnum, 16, 47,"또 하나! 믹스마스터에는 '소드', '너클', '보우', '건' 이렇게 4종류의 무기가 있어. ")

	elseif req == 16 then
		ImageQuest(cnum, 17, 48,"각 각의 캐릭터는 자신만의 무기. 즉, 한가지 정해진 무기만을 다룰 수 있어. 디트는 '소드', 진은 '너클' 펜릴은 '보우' 포이는 '건'. 너에게 맞는 무기를 알아두도록 해~!")

	elseif req == 17 then
		ImageQuest(cnum, 18, 49,"이제 내가 새로운 미션을 하나 줄게. 믹스마스터의 핵심이라고 할 수 있는 헨치믹스!! 네가 한번 해보는 거야~! 간단하게 헨치 믹스에 대해 설명해 줄게 별로 어렵지 않으니 잘 들어봐~ 헨치 믹스를 하기 위해선 저기 보이는 '믹스빌더' 에게 가야 해~")

	elseif req == 18 then
		ImageQuest(cnum, 19, 50,"'믹스빌더' 에게 말을 걸어 '믹스' 를 선택하면 왼쪽에는 '믹스하기' 창, 오른쪽에는 네가 가진 헨치들을 볼 수 있는 '몬스터정보' 창이 나타나~")

	elseif req == 19 then
		ImageQuest(cnum, 20, 51,"'네가 가진 두 헨치를 서로 믹스 해 볼 거야 그런데, 헨치가 빨간색으로 되어있지? 이 상태는 헨치가 '석화' 된 상태야. '석화' 상태에서는 믹스를 할 수 없어.  이 상태에선 헨치를 '회복' 시켜야 믹스를 할 수 있어.")

	elseif req == 20 then
		ImageQuest(cnum, 21, 52,"'믹스빌더' 의 '코어회복'을 통해 헨치를 '회복' 시킬 수 있어. 왼쪽 '코어회복' 창에서 '전체회복'을 누르면 네가 가진 모든 헨치가 '회복' 돼. '몬스터정보' 창에서 한 마리씩 선택해서 회복할 수 도 있어. 위에 회복된 헨치가 보이지?")

	elseif req == 21 then
		ImageQuest(cnum, 22, 53,"이제 '회복' 된 헨치를 가지고 다시 '믹스'를 해볼까? '믹스빌더'의 '믹스'를 선택해~ 그리고 네가 가지고 있는 헨치 왼쪽 믹스기계에 하나씩 끌어다 놓으면 돼. 왼쪽에 하나, 오른쪽에 하나.")

	elseif req == 22 then
		ImageQuest(cnum, 23, 54,"아참! 중요한 게 있어! 믹스 시에는 반드시 성별이 다른 헨치 끼리만 믹스를 할 수 있어.")

	elseif req == 23 then
		ImageQuest(cnum, 24, 55,"믹스가 가능한 헨치들을 믹스기계에 모두 넣으면 경고 메시지가 나타나~! 헨치믹스를 실패할 수도 있다는 거야. 하지만, 그렇다고 믹스를 포기할 순 없겠지? 이제 아래 믹스 버튼을 누르면 믹스가 시작 돼!")

	elseif req == 24 then
		ImageQuest(cnum, 25, 56,"헨치 믹스에 성공하게 되면 더 강력한 새로운 헨치를 가질 수 있어! 믹스 하는 방법은 이제 좀 알겠지?")

	elseif req == 25 then
		ImageQuest(cnum, 26, 57,"자~이제는 네가 믹스를 해 보는 거야~! 믹스를 해서 어떤 헨치가 나와도 좋아~! 믹스를 성공해서 나온 헨치를 나에게 가져오면, 네가 가져온 헨치와 동급의 헨치를 한 마리 줄게. 우선 몬스터를 사냥해서 헨치를 먼저 얻어야겠지? 여기서 밑으로 내려가면 멋진 수석 교관님이 계셔! 수석 교관님께 전투방법을 여쭤봐!")

	elseif req == 26 then
		if GetItemCount(cnum, 259, 0) < 1 or GetItemCount(cnum, 259, 2) < 1 then
			ImageQuest(cnum, 27, 38,"잊지 않았지? 화면 아래의 '아이템' 메뉴를 클릭하면 '인벤토리'창이 나오니까 거기서 무기, 방어구를 장착해봐~! '노비스 아머'도 사왔고, 이야기도 잘 들어주었으니 너에게 어울리는 무기를 하나 줄게! 장착해봐~")
			if type == 0 then
				AddItemCount(cnum, 189, 1)
			elseif 	type == 1 then
				AddItemCount(cnum, 199, 1)
			elseif 	type == 2 then
				AddItemCount(cnum, 219, 1)
			elseif 	type == 3 then
				AddItemCount(cnum, 209, 1)
			end


		else
			ImageQuest(cnum, 27, 38,"잊지 않았지? 화면 아래의 '아이템' 메뉴를 클릭하면 '인벤토리'창이 나오니까 거기서 무기, 방어구를 장착해봐~! '노비스 아머'는 사오는데 실패했지만 이야기를 잘 들어주었으니 너에게 어울리는 무기를 하나 줄게! 장착해봐~")
			if type == 0 then
				AddItemCount(cnum, 189, 1)
			elseif 	type == 1 then
				AddItemCount(cnum, 199, 1)
			elseif 	type == 2 then
				AddItemCount(cnum, 219, 1)
			elseif 	type == 3 then
				AddItemCount(cnum, 209, 1)
			end

		end

	elseif req == 27 then
		ImageQuest(cnum, 28, 57,"헨치 믹스를 성공해서 나에게 가져오면 돼~! 믹스를 성공해서 나온 헨치라면 어떤 헨치라도 괜찮아~! 모르는게 있으면 멋진 수석 교관님이 계시니 그 분께 물어보도록 해~기다릴게~!!")


	elseif req == 28 then
		SetSwitchCount(cnum, 478, 1)
		StartQuest(cnum, 162) --> 퀘스트 2 시작 리스트 추가



	else
		return 0
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 파찌 끝
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 수석 교관 시작
function NPC_QUEST_380(cnum,reqNumber) -- 수석 교관

req = reqNumber

	if req == 1 then
		return 5,0,"제군! 난 마지리타 왕국에서 신입 밸러의 교육을 위해 파견 온 수석교관이다! 거두절미하고! 교육을 시작하겠다!@@무엇이 알고 싶은가!?",2,"전투방법",7,"코어/헨치",10,"헨치믹스",17,"레벨업"

-- 전투방법

	elseif req == 2 then
		ImageQuest(cnum, 3, 58,"사냥하는 법을 가르쳐주겠다! 이곳에서 밑으로 내려가면 위 그림과 같이 몬스터들이 보일 것이다!")

	elseif req == 3 then
		ImageQuest(cnum, 4, 59,"빨간색 화살표가 가리키는 것들이 보이는가? 저것들이 제군이 처리해야 할 몬스터다! 여기 밑에는 아주 허약해빠진 몬스터 밖에 없으니 쉽게 사냥할 수 있을 것이다.")

	elseif req == 4 then
		ImageQuest(cnum, 5, 60,"몬스터에게 마우스를 올려놓으면 ‘날개달린 크리스탈’ 모양의 커서가 ‘뿅망치’ 모양으로 변하게 된다. 마우스 커서가 ‘뿅망치’ 모양일 때 몬스터의 이름과 HP를 볼 수 있고, 이 상태에서 마우스 왼쪽 버튼을 클릭하면 공격이 된다. 아주 간단하지 않나?")

	elseif req == 5 then
		ImageQuest(cnum, 6, 61,"몬스터를 사냥하다보면 몬스터가 아이템, 코어를 떨어뜨릴 때가 있다. 사냥 후 주의 깊게 바닥을 살펴보도록! 'ALT 키'를 누르면 바닥에 떨어진 아이템들의 이름을 볼 수 있으니 참고하도록!")

	elseif req == 6 then
		ImageQuest(cnum, 0, 62,"몬스터와의 전투 중에는 HP 관리를 철저히 해야한다! HP가 고갈되면 '기절' 상태에 빠지게 팝업되는 시스템 창의 '마을로 이동' 버튼을 누르면 '기절' 상태에서 깨어나 마을로 이동하게 되지. 너의 헨치의 HP도 항상 체크하도록!")

-- 코어/헨치

	elseif req == 7 then
		ImageQuest(cnum, 8, 63,"코어/헨치에는 계열이 있다. 드래곤, 악마, 짐승, 새, 곤충, 식물, 미스터리, 메탈 이렇게 총 8개 계열이 있는데 계열마다 특징이 있으니 잘 이용해보도록!")

	elseif req == 8 then
		ImageQuest(cnum, 9, 64,"헨치는 '성향' 이라는 게 있어.  '힘쎈', '날쎈', '정확한', '운좋은', '속성' 이렇게 5개가 있지. 각 성향 별로 특징을 가지고 있어.")

	elseif req == 9 then
		ImageQuest(cnum, 0, 65,"헨치도 너와 같이 성장을 하지! 헨치의 레벨이 올라갈 때마다 성향에 따라 자동으로 능력치가 올라가니 이 점 참고하도록!!")

-- 헨치믹스

	elseif req == 10 then --> 믹스빌더 얼굴 이미지
		ImageQuest(cnum, 11, 50,"그건 '믹스빌더'인 내가 설명 해 줄게~나에게로 와서 '믹스' 를 선택하면 왼쪽에는 '믹스하기' 창, 오른쪽에는 네가 가진 헨치들을 볼 수 있는 '몬스터정보' 창이 나타나~")

	elseif req == 11 then --> 믹스빌더 얼굴 이미지
		ImageQuest(cnum, 12, 51,"네가 가진 두 헨치를 서로 믹스 해 보는거야 그런데, 헨치가 빨간색으로 되어있지? 이 상태는 헨치가 '석화' 된 상태야. '석화' 상태에서는 믹스를 할 수 없어.  이 상태에선 헨치를 ‘회복’ 시켜야 믹스를 할 수 있어.")

	elseif req == 12 then --> 믹스빌더 얼굴 이미지
		ImageQuest(cnum, 13, 52,"'코어회복'을 통해 헨치를 '회복' 시킬 수 있어. 왼쪽 '코어회복' 창에서 '전체회복'을 누르면 네가 가진 모든 헨치가 '회복' 돼. '몬스터정보' 창에서 한 마리씩 선택해서 회복할 수 도 있어. 위에 회복된 헨치가 보이지?")

	elseif req == 13 then --> 믹스빌더 얼굴 이미지
		ImageQuest(cnum, 14, 53,"이제 '회복' 된 헨치를 가지고 다시 '믹스'를 해볼까? 나에게 와서 '믹스'를 선택해~ 그리고 네가 가지고 있는 헨치 왼쪽 믹스기계에 하나씩 끌어다 놓으면 돼. 왼쪽에 하나, 오른쪽에 하나.")

	elseif req == 14 then --> 믹스빌더 얼굴 이미지
		ImageQuest(cnum, 15, 54,"아참! 중요한 게 있어! 믹스 시에는 반드시 성별이 다른 헨치끼리만 믹스를 할 수 있어.")

	elseif req == 15 then --> 믹스빌더 얼굴 이미지
		ImageQuest(cnum, 16, 55,"믹스가 가능한 헨치들을 믹스기계에 모두 넣으면 경고 메시지가 나타나~! 헨치믹스를 실패할 수도 있다는 거야. 하지만, 그렇다고 믹스를 포기할 순 없겠지? 이제 아래 믹스 버튼을 누르면 믹스가 시작 돼.")

	elseif req == 16 then --> 믹스빌더 얼굴 이미지
		ImageQuest(cnum, 0, 56,"헨치 믹스에 성공하게 되면 더 강력한 새로운 헨치를 가질 수 있어! 믹스 하는 방법은 이제 좀 알겠지?")

-- 레벨업

	elseif req == 17 then
		ImageQuest(cnum, 18, 66,"몬스터를 사냥하다보면 캐릭터가 레벨업을 하는 경우가 있다. 그러면 아래 버튼에서 ‘캐릭터’를 누르면 '캐릭터정보' 창이 팝업되지. 여기서 너의 여유수치를 이용하여 힘, 민첩, 정확, 행운 옆에 있는 + 마크로 각 능력을 올릴 수 있다.")

	elseif req == 18 then
		ImageQuest(cnum, 0, 67,"네가 레벨이 오를 때 힘, 민첩, 정확, 행운에 어느 정도 여유수치를 배분하는가에 따라 너의 능력이 달라지고 전혀 다른 캐릭터로 성장할 수 있다. 그렇다고 너무 고민하지는 말도록 해라. 너의 동료 헨치도 있으니까!")


	else
		return 0
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 수석 교관 끝
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 모네스 시작

function NPC_QUEST_383(cnum, reqNumber) -- 모네스

req = reqNumber

	if req == 1 then
		return 2,0,"안녕하세요. 저는 모네스라고 합니다.  원하시는 지역으로 이동 시켜드리는 일을 하고 있어요. 지금은 마지리타로만 이동 시켜 드리고 있지만, 각 마을과 필드에 있는 제 동료들은 좀 더 많은 곳으로 이동시켜 드리지요. 참고해 주세요.",2,"마지리타로 이동"

	elseif req == 2 then
		EndQuest(cnum, 161) -- 퀘스트 1 리스트 제거
		EndQuest(cnum, 162) -- 퀘스트 2 리스트 제거
		EndQuest(cnum, 163) -- 퀘스트 3 리스트 제거
		AddItemCount(cnum, 8423, -999) --> 변이돼지 이빨 뺐기
		MoveZone(cnum, 57, 254)
		SetReviveZone(cnum, 57)

	else
		return 0
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 모네스 끝
