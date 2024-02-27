function NPC_QUEST_841(cnum, reqNumber)


req = reqNumber
Lv = GetHeroLv(cnum)

-- switch#513--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 퀘스트 수락 전 대사 끊길 시
-- switch#514--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 수락
-- switch#515--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 퀘스트 수락
-- switch#516--------2010 여름방학 이벤트_02 믹마무인랜드  -> 게살 요리 제작 횟수 저장
-- switch#517--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 시작 확인
-- switch#518--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 수행 횟수 확인
-- switch#519--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 10회 아이템 지급 확인용
-- switch#520--------2010 여름방학 이벤트_02 믹마무인랜드  -> 밸러의 참고서 지급 확인용
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 꽃게킹의 튼실한 게살을 가지고 와서 바짝마른 나뭇가지 퀘스트를 받음 521 값 2
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 게살스프를 많이 끓임 521 값 1
-- switch#522--------2010 여름방학 이벤트_02 믹마무인랜드  -> 바짝마른 나뭇가지를 구해옴
-- switch#523--------2010 여름방학 이벤트_02 믹마무인랜드  -> 존 이동
-- switch#524--------2010 여름방학 이벤트_02 믹마무인랜드  -> 무인랜드 입장
-- switch#525--------2010 여름방학 이벤트_02 믹마무인랜드  -> 보물 찾음
-- switch#526--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 5완료
-- switch#527--------2010 여름방학 이벤트_02 믹마무인랜드  -> 소름오싹뱌암동굴 퇴장


	if req == 1 then
		if GetSwitchCount(cnum, 526) < 1 then
			if GetSwitchCount(cnum, 525) < 1 then
				if GetSwitchCount(cnum, 514) < 1 then -- 퀘스트 1을 수락하지 않은 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 513) < 1 then -- 처음 말 걸었을 때
						return 3,0,"가나다라마바사아자차카타파하~!에~헤에에~~~~~~~~~~~~~~~~~우~헤~우~헤~!!@케~~~엑!! 까~암짝! 놀라버렸잖아! 야아! 너는 사람이냐! 귀신이냐!!",2,"아..안녕하세요",3,"뭐지..관심없어요"
					elseif GetSwitchCount(cnum, 513) == 1 then -- 퀘스트 1 받기 전 1/4 / 말 끊기고 다시 말 걸었을 때
						return 2,0,"에에? 다시왔네? 역시 내가 여기 왜 있는지 궁금했구나? 내 이야기를 잘 들어봐~!",20,"네~!"
					elseif GetSwitchCount(cnum, 513) == 2 then -- 퀘스트 1 받기 전 2/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"내가! 아까 하던 이야기가 생각났어! 나의 선장 쿨라파님의 이야기를 하고 있었던거 같은데 맞지?",16,"네! 그런거 같아요..",22,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 3 then -- 퀘스트 1 받기 전 3/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"분명해! 내가 아까 하던 이야기가 생각났어! 나의 쿨라파 선장님의 이야기를 하고 있었어!",16,"네! 그런거 같아요..",23,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 4 then --퀘스트 1 받기 전 4/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"역시 다시 올 줄 알았어! 나의 게살 스프는 절대 거절할 수 없을거야!! 해변의 꽃게를 잡아와!! 내가 맛있는 게살스프를 끓여줄게! 나 배가 무지 고프다구!",19,"네!",21,"싫어요!"
					else
						return 1,0,"[이 메시지가 나오면 안됩니다!!!]"
					end

				elseif GetSwitchCount(cnum, 514) == 1 then  -- 퀘스트 1을 수락한 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								if GetSwitchCount(cnum, 517) < 1 then
									return 2,0,"아! 왔구나! 너무 보고 싶었어!@이곳에만 혼자 있다보니..사람이 너무 그리워!@맛있는 꽃게보다 네가 더 보고 싶을 정도였다구.........흐...윽....외로워...",24,"그렇군요.."
								else
									return 3,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 고마워! 또 와줬구나!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!"
								end
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물을 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",39,"동굴을 들어가려고요!"
						end
					end


				elseif GetSwitchCount(cnum, 514) == 2 then  -- 퀘스트 1을 수락한 상태에서 퀘스트 2(출석체크)를 거부 했을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								return 3,0,"아! 왔구나! 무슨 일 때문에 왔어?",27,"꽃게를 가져왔어요",29,"아저씨가 외로워 보여서요"
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물의 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",39,"동굴을 들어가려고요!"
						end
					end

				else
					return 1,0,"이 메시지가 나오면 안됩니다."
				end
			else
				return 2,0,"오래 걸렸네? 소름오싹뱌암동굴 깊이 들어갔다 온 것 같은데? 혹시 보물을 찾았어?",1000,"네"
			end
		else
			return 3,0,"아! 다시 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요"
		end


	elseif req == 1000 then
		if GetItemCount(cnum, 8503, 0) == 1 then
			return 2,0,"혹시....그 번쩍이는 황금상자는.....보물상자!!!!????",1001,"그런 것 같아요"
		elseif  GetItemCount(cnum, 8504, 0) == 1 then
			return 2,0,"그러면 뭔가 반짝이는 것이...있어야...할텐데...",1002,"그게.."
		end

	elseif req == 1001 then
		return 2,0,"이리 줘봐! 끼익....끼익...텅! 오옷!!! 상자가 열렸다!!!",1003,"..."

	elseif req == 1003 then
		return 2,0,"아..이 종이는 뭐지...이 문자는...우리 쿨라파선장님과 우리들이 쓰던 암호??? 에헴! 어디 읽어볼까...중얼중얼중얼...아...중얼중얼..중얼...중얼...중얼...",1004,"..."

	elseif req == 1004 then
		AddSkillPoint(cnum, 15)
		AddItemCount(cnum, 8503, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1005,"종이가 타버렸네요"

	elseif req == 1005 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1006,"..."

	elseif req == 1006 then
		return 2,0,"[스킬 포인트가 15 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"

	elseif req == 1007 then
		EndQuest(cnum, 185)
		SetSwitchCount(cnum, 526, 1)
		return 2,0,"사실은 네가 보물을 찾은거니까...정말 이제 한을 풀었어...보물이라고 해서..나는 삐가뻔쩍 황금인 줄 알았는데..아니였구나..그래도 괜찮아! 내 집으로 돌아가자!",1008,"네"

	elseif req == 1008 then
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 192, 102)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 193, 102)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 194, 102)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 195, 102)
		end



	elseif req == 1002 then
		return 2,0,"뭐지? 손에 든 그 낡은 종이는???",1009,"이..종이.."

	elseif req == 1009 then
		return 2,0,"이리 줘봐! 아니! 이 문자는...우리 쿨라파 선장님과 우리들이 쓰던 암호잖아?!? 에헴!! 어디 읽어볼까...중얼중얼..중얼...중얼..중얼...중얼....중얼...",1010,"..."

	elseif req == 1010 then
		AddSkillPoint(cnum, 10)
		AddItemCount(cnum, 8504, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1111,"종이가 타버렸네요"

	elseif req == 1111 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1112,"..."

	elseif req == 1112 then
		return 2,0,"[스킬 포인트가 10 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"


	elseif req == 39 then
		StartQuest(cnum, 185)
		SetSwitchCount(cnum, 523, 2)
		return 2,0,"좋아! 지금 들어간다! 내가! 내가! 용기를 내서 같이 들어간다!!",41,"네!"


	elseif req == 40 then
		return 1,0,"알겠어! 만반의 준비를 하고 조금 있다가 다시와!"

	elseif req == 41 then -- 레벨에 맞는 동굴로 입장
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 204, 254)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 205, 254)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 206, 254)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 207, 254)
		end



	elseif req == 2 then
		return 3,0,"내..내가 너무 놀랐잖아!@여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 3 then
		return 3,0,"뭐..뭐야! 여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 4 then
		return 3,0,"페르보..페르보 선장님!? 그 분이 아직 살아 계시다니..한번 보고 싶군...그런데 나는 여기서 떠날 수가 없어. 아니 여기 있을테야..!",6,"왜 여기 있나요?",7,"그렇군요"

	elseif req == 5 then
		return 3,0,"아르젬!? 그건 내 이름인데! 내 이름을 어떻게 알지?!",6,"왜 여기 있나요?",4,"페르보 선장님이.."

	elseif req == 6 then
		return 3,0,"......그건 안돼..알려줄 수 없어.. 절대..안 가르쳐 줄 거야! 내가 이 섬에 엄청난 보물이 숨겨져 있다는 엄청난 사실을 말해줄 것 같아? 그럴 순 없지..!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 7 then
		return 3,0,"아..안 궁금해? 하긴 네가 이 섬에 엄청난 보물이 숨겨져 있다는 사실을 알 필요가 없지!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 8 then
		SetSwitchCount(cnum, 513, 1)
		return 1,0,"그렇지~! 그런 중요한 사실을 내가 알려줄리가 없어!"

	elseif req == 9 then
		return 3,0,"케켁! 어떻게 알았지!!! 내 보물을 빼앗으려고 하다니!! 덤벼라 이놈!!",11,"그럴까요?!",12,"방금 말씀하셨는데요.."

	elseif req == 11 then
		return 2,0,"내가 20년만 젊었어도..그러지말고..내 사연 좀 들어봐..",20,"네~!"

	elseif req == 12 then
		return 2,0,"케켁! 그렇군! 내 정신이야..이왕 이렇게 된 거 말해주지..",20,"네~!"

	elseif req == 13 then
		return 2,0,"아..아무튼 많이 지났어.................................",14,"네.."

	elseif req == 14 then
		return 3,0,"..............................그런데.....무슨 이야길 하고 있었지?!",15,"모르겠는데요..",16,"쿨라파 선장님요.."

	elseif req == 15 then
		SetSwitchCount(cnum, 513, 2) -- 도중 말 끊김
		return 1,0,"아...너도 모르면 어떻게 해...끄응...내가 생각 좀 해볼게...!"

	elseif req == 16 then
		return 2,0,"그렇지! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 17 then
		return 2,0,"내가..왜인지 모르지만 던전 안에는 이상한 기운이 감돌고 있었어!..정말 동굴 안은 내가 온몸이 오싹하다고! 무엇인가 나를 노려보고 있는거 같아..그 뒤로 수 차례 도전을 했지만..내가 매번 실패했어..!!",18,"그렇군요"

	elseif req == 18 then
		return 3,0,"내가...이야기를 너무 많이했나..배고파 힘이 없어...저기 해변에 널려있는 꽃게들을 좀 잡아와 줘! 그러면 내가 맛있는 게살스프를 끓여줄게~! 우선 먹고 다시 이야기하자!",19,"네~! 그러죠!",21,"싫어요"

	elseif req == 19 then
		StartQuest(cnum, 182) -- 게잡기 퀘스트 창 팝업
		SetSwitchCount(cnum, 514, 1) -- 게잡기 퀘스트 수락
		return 1,0,"좋아 고마워! 내가 배가 많이 고프니까 최대한 많이 잡아와!! 내가 부탁해!"

	elseif req == 20 then
		return 3,0,"20년 전...나의 두목! 시원시원한 파도같은 성격을 가진 쿨라파 선장님께서 나의 동료 선원들과 함께 이 섬 중앙에 있는 굴에 있는 엄청난 보물을 찾으러 들어가셨지..하지만 하루가 지나고 이틀이 지나고...그리고 얼마더라...아무튼 아주 많이 지났지...",13,"그래서요?",14,"재미없어요.."

	elseif req == 21 then
		SetSwitchCount(cnum, 513, 4)
		return 1,0,"어쩔 수 없군! 꽃게 잡아다 줄 생각이 생기면 다시와!!"

	elseif req == 22 then
		SetSwitchCount(cnum, 513, 3)
		return 1,0,"아닌가...내가 무슨 이야길하고 있었지...내가 더 생각해 볼게...."

	elseif req == 23 then
		return 2,0,"아무튼! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 24 then
		return 3,0,"저기 너 혹시 나에게 좀 자주 와 줄래? 나랑 와서 이야기도 하고 게살스프도 끓여먹고 말야...너무 외로워서 그래..",241,"네!",25,"싫어요"

	elseif req == 241 then
		return 3,0,"이얏~호! 정말이야? 내가 너무 기쁘잖아! 내가 만든 2시간 짜리 물시계를 줄게! 지금부터 2시간이 지나면 물시계가 사라질거야! 그러면 나에게 또 다시 와줘!@대신 10번 올 때마다 내가 20년간 이 섬 여기저기서 모은 보물들을 나눠 줄게!",26,"네~!",25,"싫어요"

	elseif req == 25 then
		SetSwitchCount(cnum, 514, 2) --퀘스트 2 거부
		return 1,0,"뭐..싫으면 어쩔 수 없지.."

	elseif req == 26 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아르젬의 물시계를 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			SetSwitchCount(cnum, 514, 1) -- 퀘스트 1 수락
			AddSwitchCount(cnum, 517, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 518, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8505, 1)
			StartQuest(cnum, 183) -- 출석체크 퀘스트 창 팝업
			return 1,0,"히히히! 좋아! 자~! 여기 물시계야! 2시간이 지나고 물시계가 없어지면 다시 와야 해! 꼭!"
		end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 27 then


		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8501, 0) < 1 then
				if GetItemCount(cnum, 8494, 0) < 1 then
					if GetSwitchCount(cnum, 521) < 1 then
						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

					else

						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
					end

				else -- 힘이펄펄 삼계탕을 가지고 있을 때
					if GetSwitchCount(cnum, 520) < 1 then
						return 3,0,"아니..잠깐만 너에게서 아주 좋은 냄새가 나는데? 이건 무슨 냄새지? 정말 맛있는 냄새가나!",274,"아..힘이펄펄 삼계탕요?",2742,"게살스프나 끓여주세요!"
					else
						if GetSwitchCount(cnum, 521) < 1 then
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

						else
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"

						end

					end
				end

			else -- 꽃게킹의 튼실한 속살을 가지고 있을 때
				if GetSwitchCount(cnum, 521) == 2 then
					return 2,0,"아니..설마! 또 꽃게킹을 쓰러뜨린거야!!?",276,"네!"
				else
					return 2,0,"아니..그것은! 설마! 너 꽃게킹을 쓰러뜨린거야!!?",275,"네!"
				end

			end
		end

	elseif req == 276 then
		AddItemCount(cnum, 8512, 1) -- 영양듬뿍 게살스프 지급
		AddItemCount(cnum, 8501, -1) -- 꽃게킹의 튼실한 게살
		return 1,0,"너 정말 강하구나! 좋아! 내가 금방 정말! 맛있는 게살스프를 끓여줄게!@역시 꽃게킹의 튼실한 게살로 만든 스프의 맛은 환상적이야! 자! 먹어봐!"

	elseif req == 2742 then
		if GetSwitchCount(cnum, 521) < 1 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"
			end

		else
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
			end
		end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 271 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2711,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2711 then
		AddSwitchCount(cnum, 516, 2)
		AddItemCount(cnum, 8500, -5)
		AddItemCount(cnum, 8509, 1)
		return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"

	elseif req == 272 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2721,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2721 then
		AddSwitchCount(cnum, 516, 3)
		AddItemCount(cnum, 8500, -10)
		AddItemCount(cnum, 8510, 1)
		return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"


	elseif req == 273 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2731,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2731 then
		AddSwitchCount(cnum, 516, 6)
		AddItemCount(cnum, 8500, -15)
		AddItemCount(cnum, 8511, 1)
		return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 281 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2811,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2811 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 2)
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"묽은 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


	elseif req == 282 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2821,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2821 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 3)
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end



	elseif req == 283 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2831,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2831 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 6)
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	elseif req == 275 then
		if GetSwitchCount(cnum, 521) < 1 then
			EndQuest(cnum, 182)
			return 2,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 너 정도면 충분히 소름오싹뱌암동굴에 들어갈 수 있겠어! 자~준비하자~!",2752,"그건..어딘가요??"
		else
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			return 1,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 이야! 정말 대단하구나! 이거로 정말 맛있는 스프를 끓여줄게.....자~! 여기! 정말 맛있는 스프야!!"
		end


	elseif req == 2752 then
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"



	elseif req == 1011 then
		if GetSwitchCount(cnum, 521) < 2 then
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!"
		else
			SetSwitchCount(cnum, 521, 2)
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"좋아~! 기다릴게!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"
		end


	elseif req == 274 then
		return 3,0,"정말 맛있겠다. 그거..맛있는 냄새나는거..나에게 주지 않을래? 그 대신 내가 오래전에 주은 축복의 밸러의 참고서를 줄게! 어때?",2741,"네~!좋아요!",2743,"싫어요"

	elseif req == 2741 then
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"축복의 밸러의 참고서를 넣을 공간이 부족합니다."
			else
				AddItemCount(cnum, 8494, -1)
				AddItemCount(cnum, 3710, 1)
				SetSwitchCount(cnum, 520, 1)
				return 1,0,"고마워 이거 정말 맛있다. 자 여기! 축복의 밸러의 참고서야!"
			end

	elseif req == 2743 then
		return 1,0,"아..맛있는 냄새...먹고싶다...."



	elseif req == 29 then
		return 3,0,"맞아..사실이야..이 섬에 혼자 오랫동안 지내다 보니 사람이 너무 그리워...나에게 자주 좀 와줄래? 2시간 정도 마다 나를 찾아와 줘....그 대신 내가 좋을 것을 줄게!",24,"네!",25,"아니요"

	elseif req == 30 then
		if GetItemCount(cnum, 8505, 0) < 1 then
			return 2,0,"고마워! 2시간이 지난거 같아! 네가 너무 반가워! 다시 물시계를 줄테니 2시간 뒤에 또 와! 알겠지??",42,"네~!"
		else
			return 2,0,"아직 2시간이 안지난거 같은데? 물시계가 다 되어 없어지면 나에게 다시 와줄래?",52,"네~!"
		end


	elseif req == 31 then
		Time = GetSwitchCount(cnum, 518)
		return 1,0,"음..내가 다른 건 잊어버려도.....@그건 기억 해 놨어!@음.. 지금가지 총 [ "..Time.." 번 ] 왔었어! 또 와줘!"

	elseif req == 32 then
		if GetSwitchCount(cnum, 518) < 10 then
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		else
			SetSwitchCount(cnum, 533, 1)
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		end



	elseif req == 33 then
		if GetItemCount(cnum, 8502, 0) > 0 then
			return 2,0,"이야~빨리 구해왔구나! 좋아~잠시만 기다려줘! 내가 횃불을 만들고!",34,"네!"
		else
			return 1,0,"에이! 바짝마른 나뭇가지가 없는데? 섬 어딘가에 있을테니 구해와~! 횃불을 만들려면 바짝마른 나뭇가지는 꼭 있어야 해!!"
		end

	elseif req == 34 then
		AddItemCount(cnum, 8502, -1)
		SetSwitchCount(cnum, 522, 1)
		return 2,0,"자...나뭇가지를 다듬고..뚝딱...뚝딱@쓰윽...쓰윽..헝겊을 나뭇가지에 감고.....그리고..........아까운 기름에 적셔서............................",35,"언제되나요?"

	elseif req == 35 then
		return 2,0,"자! 완성! 이제 가자!",36,"어딜가나요??"

	elseif req == 36 then
		return 2,0,"음? 음..................@그곳에 들어가면...소름이 돋고 오싹오싹하고 뱌암이 많으니까...이름은!...................................@소름오싹뱌암동굴! 가자!!",37,"에? 소름오싹뱌암동굴?"

	elseif req == 37 then
		EndQuest(cnum, 184)
		SetSwitchCount(cnum, 523, 1)

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum,196,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum,197,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum,198,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum,199,101) -- 소름오싹뱌암동굴 입구
		end



	elseif req == 38 then
		return 2,0,"어딜 갔다가 온거야! 자! 가자!!",36,"네! 근데 어디?"


	elseif req == 42 then
		if GetSwitchCount(cnum, 533) < 1 then
				if GetSwitchCount(cnum, 519) < 9 then
					if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		else
			if GetSwitchCount(cnum, 519) < 10 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		end
	end
end
function NPC_QUEST_842(cnum, reqNumber)


req = reqNumber
Lv = GetHeroLv(cnum)

-- switch#513--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 퀘스트 수락 전 대사 끊길 시
-- switch#514--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 수락
-- switch#515--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 퀘스트 수락
-- switch#516--------2010 여름방학 이벤트_02 믹마무인랜드  -> 게살 요리 제작 횟수 저장
-- switch#517--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 시작 확인
-- switch#518--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 수행 횟수 확인
-- switch#519--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 10회 아이템 지급 확인용
-- switch#520--------2010 여름방학 이벤트_02 믹마무인랜드  -> 밸러의 참고서 지급 확인용
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 꽃게킹의 튼실한 게살을 가지고 와서 바짝마른 나뭇가지 퀘스트를 받음 521 값 2
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 게살스프를 많이 끓임 521 값 1
-- switch#522--------2010 여름방학 이벤트_02 믹마무인랜드  -> 바짝마른 나뭇가지를 구해옴
-- switch#523--------2010 여름방학 이벤트_02 믹마무인랜드  -> 존 이동
-- switch#524--------2010 여름방학 이벤트_02 믹마무인랜드  -> 무인랜드 입장
-- switch#525--------2010 여름방학 이벤트_02 믹마무인랜드  -> 보물 찾음
-- switch#526--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 5완료
-- switch#527--------2010 여름방학 이벤트_02 믹마무인랜드  -> 소름오싹뱌암동굴 퇴장


	if req == 1 then
		if GetSwitchCount(cnum, 526) < 1 then
			if GetSwitchCount(cnum, 525) < 1 then
				if GetSwitchCount(cnum, 514) < 1 then -- 퀘스트 1을 수락하지 않은 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 513) < 1 then -- 처음 말 걸었을 때
						return 3,0,"가나다라마바사아자차카타파하~!에~헤에에~~~~~~~~~~~~~~~~~우~헤~우~헤~!!@케~~~엑!! 까~암짝! 놀라버렸잖아! 야아! 너는 사람이냐! 귀신이냐!!",2,"아..안녕하세요",3,"뭐지..관심없어요"
					elseif GetSwitchCount(cnum, 513) == 1 then -- 퀘스트 1 받기 전 1/4 / 말 끊기고 다시 말 걸었을 때
						return 2,0,"에에? 다시왔네? 역시 내가 여기 왜 있는지 궁금했구나? 내 이야기를 잘 들어봐~!",20,"네~!"
					elseif GetSwitchCount(cnum, 513) == 2 then -- 퀘스트 1 받기 전 2/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"내가! 아까 하던 이야기가 생각났어! 나의 선장 쿨라파님의 이야기를 하고 있었던거 같은데 맞지?",16,"네! 그런거 같아요..",22,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 3 then -- 퀘스트 1 받기 전 3/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"분명해! 내가 아까 하던 이야기가 생각났어! 나의 쿨라파 선장님의 이야기를 하고 있었어!",16,"네! 그런거 같아요..",23,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 4 then --퀘스트 1 받기 전 4/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"역시 다시 올 줄 알았어! 나의 게살 스프는 절대 거절할 수 없을거야!! 해변의 꽃게를 잡아와!! 내가 맛있는 게살스프를 끓여줄게! 나 배가 무지 고프다구!",19,"네!",21,"싫어요!"
					else
						return 1,0,"[이 메시지가 나오면 안됩니다!!!]"
					end

				elseif GetSwitchCount(cnum, 514) == 1 then  -- 퀘스트 1을 수락한 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								if GetSwitchCount(cnum, 517) < 1 then
									return 2,0,"아! 왔구나! 너무 보고 싶었어!@이곳에만 혼자 있다보니..사람이 너무 그리워!@맛있는 꽃게보다 네가 더 보고 싶을 정도였다구.........흐...윽....외로워...",24,"그렇군요.."
								else
									return 3,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 고마워! 또 와줬구나!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!"
								end
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물을 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",39,"동굴을 들어가려고요!"
						end
					end


				elseif GetSwitchCount(cnum, 514) == 2 then  -- 퀘스트 1을 수락한 상태에서 퀘스트 2(출석체크)를 거부 했을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								return 3,0,"아! 왔구나! 무슨 일 때문에 왔어?",27,"꽃게를 가져왔어요",29,"아저씨가 외로워 보여서요"
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물의 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",39,"동굴을 들어가려고요!"
						end
					end

				else
					return 1,0,"이 메시지가 나오면 안됩니다."
				end
			else
				return 2,0,"오래 걸렸네? 소름오싹뱌암동굴 깊이 들어갔다 온 것 같은데? 혹시 보물을 찾았어?",1000,"네"
			end
		else
			return 3,0,"아! 다시 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요"
		end


	elseif req == 1000 then
		if GetItemCount(cnum, 8503, 0) == 1 then
			return 2,0,"혹시....그 번쩍이는 황금상자는.....보물상자!!!!????",1001,"그런 것 같아요"
		elseif  GetItemCount(cnum, 8504, 0) == 1 then
			return 2,0,"그러면 뭔가 반짝이는 것이...있어야...할텐데...",1002,"그게.."
		end

	elseif req == 1001 then
		return 2,0,"이리 줘봐! 끼익....끼익...텅! 오옷!!! 상자가 열렸다!!!",1003,"..."

	elseif req == 1003 then
		return 2,0,"아..이 종이는 뭐지...이 문자는...우리 쿨라파선장님과 우리들이 쓰던 암호??? 에헴! 어디 읽어볼까...중얼중얼중얼...아...중얼중얼..중얼...중얼...중얼...",1004,"..."

	elseif req == 1004 then
		AddSkillPoint(cnum, 15)
		AddItemCount(cnum, 8503, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1005,"종이가 타버렸네요"

	elseif req == 1005 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1006,"..."

	elseif req == 1006 then
		return 2,0,"[스킬 포인트가 15 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"

	elseif req == 1007 then
		EndQuest(cnum, 185)
		SetSwitchCount(cnum, 526, 1)
		return 2,0,"사실은 네가 보물을 찾은거니까...정말 이제 한을 풀었어...보물이라고 해서..나는 삐가뻔쩍 황금인 줄 알았는데..아니였구나..그래도 괜찮아! 내 집으로 돌아가자!",1008,"네"

	elseif req == 1008 then
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 192, 102)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 193, 102)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 194, 102)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 195, 102)
		end



	elseif req == 1002 then
		return 2,0,"뭐지? 손에 든 그 낡은 종이는???",1009,"이..종이.."

	elseif req == 1009 then
		return 2,0,"이리 줘봐! 아니! 이 문자는...우리 쿨라파 선장님과 우리들이 쓰던 암호잖아?!? 에헴!! 어디 읽어볼까...중얼중얼..중얼...중얼..중얼...중얼....중얼...",1010,"..."

	elseif req == 1010 then
		AddSkillPoint(cnum, 10)
		AddItemCount(cnum, 8504, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1111,"종이가 타버렸네요"

	elseif req == 1111 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1112,"..."

	elseif req == 1112 then
		return 2,0,"[스킬 포인트가 10 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"


	elseif req == 39 then
		StartQuest(cnum, 185)
		SetSwitchCount(cnum, 523, 2)
		return 2,0,"좋아! 지금 들어간다! 내가! 내가! 용기를 내서 같이 들어간다!!",41,"네!"


	elseif req == 40 then
		return 1,0,"알겠어! 만반의 준비를 하고 조금 있다가 다시와!"

	elseif req == 41 then -- 레벨에 맞는 동굴로 입장
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 204, 254)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 205, 254)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 206, 254)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 207, 254)
		end



	elseif req == 2 then
		return 3,0,"내..내가 너무 놀랐잖아!@여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 3 then
		return 3,0,"뭐..뭐야! 여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 4 then
		return 3,0,"페르보..페르보 선장님!? 그 분이 아직 살아 계시다니..한번 보고 싶군...그런데 나는 여기서 떠날 수가 없어. 아니 여기 있을테야..!",6,"왜 여기 있나요?",7,"그렇군요"

	elseif req == 5 then
		return 3,0,"아르젬!? 그건 내 이름인데! 내 이름을 어떻게 알지?!",6,"왜 여기 있나요?",4,"페르보 선장님이.."

	elseif req == 6 then
		return 3,0,"......그건 안돼..알려줄 수 없어.. 절대..안 가르쳐 줄 거야! 내가 이 섬에 엄청난 보물이 숨겨져 있다는 엄청난 사실을 말해줄 것 같아? 그럴 순 없지..!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 7 then
		return 3,0,"아..안 궁금해? 하긴 네가 이 섬에 엄청난 보물이 숨겨져 있다는 사실을 알 필요가 없지!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 8 then
		SetSwitchCount(cnum, 513, 1)
		return 1,0,"그렇지~! 그런 중요한 사실을 내가 알려줄리가 없어!"

	elseif req == 9 then
		return 3,0,"케켁! 어떻게 알았지!!! 내 보물을 빼앗으려고 하다니!! 덤벼라 이놈!!",11,"그럴까요?!",12,"방금 말씀하셨는데요.."

	elseif req == 11 then
		return 2,0,"내가 20년만 젊었어도..그러지말고..내 사연 좀 들어봐..",20,"네~!"

	elseif req == 12 then
		return 2,0,"케켁! 그렇군! 내 정신이야..이왕 이렇게 된 거 말해주지..",20,"네~!"

	elseif req == 13 then
		return 2,0,"아..아무튼 많이 지났어.................................",14,"네.."

	elseif req == 14 then
		return 3,0,"..............................그런데.....무슨 이야길 하고 있었지?!",15,"모르겠는데요..",16,"쿨라파 선장님요.."

	elseif req == 15 then
		SetSwitchCount(cnum, 513, 2) -- 도중 말 끊김
		return 1,0,"아...너도 모르면 어떻게 해...끄응...내가 생각 좀 해볼게...!"

	elseif req == 16 then
		return 2,0,"그렇지! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 17 then
		return 2,0,"내가..왜인지 모르지만 던전 안에는 이상한 기운이 감돌고 있었어!..정말 동굴 안은 내가 온몸이 오싹하다고! 무엇인가 나를 노려보고 있는거 같아..그 뒤로 수 차례 도전을 했지만..내가 매번 실패했어..!!",18,"그렇군요"

	elseif req == 18 then
		return 3,0,"내가...이야기를 너무 많이했나..배고파 힘이 없어...저기 해변에 널려있는 꽃게들을 좀 잡아와 줘! 그러면 내가 맛있는 게살스프를 끓여줄게~! 우선 먹고 다시 이야기하자!",19,"네~! 그러죠!",21,"싫어요"

	elseif req == 19 then
		StartQuest(cnum, 182) -- 게잡기 퀘스트 창 팝업
		SetSwitchCount(cnum, 514, 1) -- 게잡기 퀘스트 수락
		return 1,0,"좋아 고마워! 내가 배가 많이 고프니까 최대한 많이 잡아와!! 내가 부탁해!"

	elseif req == 20 then
		return 3,0,"20년 전...나의 두목! 시원시원한 파도같은 성격을 가진 쿨라파 선장님께서 나의 동료 선원들과 함께 이 섬 중앙에 있는 굴에 있는 엄청난 보물을 찾으러 들어가셨지..하지만 하루가 지나고 이틀이 지나고...그리고 얼마더라...아무튼 아주 많이 지났지...",13,"그래서요?",14,"재미없어요.."

	elseif req == 21 then
		SetSwitchCount(cnum, 513, 4)
		return 1,0,"어쩔 수 없군! 꽃게 잡아다 줄 생각이 생기면 다시와!!"

	elseif req == 22 then
		SetSwitchCount(cnum, 513, 3)
		return 1,0,"아닌가...내가 무슨 이야길하고 있었지...내가 더 생각해 볼게...."

	elseif req == 23 then
		return 2,0,"아무튼! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 24 then
		return 3,0,"저기 너 혹시 나에게 좀 자주 와 줄래? 나랑 와서 이야기도 하고 게살스프도 끓여먹고 말야...너무 외로워서 그래..",241,"네!",25,"싫어요"

	elseif req == 241 then
		return 3,0,"이얏~호! 정말이야? 내가 너무 기쁘잖아! 내가 만든 2시간 짜리 물시계를 줄게! 지금부터 2시간이 지나면 물시계가 사라질거야! 그러면 나에게 또 다시 와줘!@대신 10번 올 때마다 내가 20년간 이 섬 여기저기서 모은 보물들을 나눠 줄게!",26,"네~!",25,"싫어요"

	elseif req == 25 then
		SetSwitchCount(cnum, 514, 2) --퀘스트 2 거부
		return 1,0,"뭐..싫으면 어쩔 수 없지.."

	elseif req == 26 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아르젬의 물시계를 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			SetSwitchCount(cnum, 514, 1) -- 퀘스트 1 수락
			AddSwitchCount(cnum, 517, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 518, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8505, 1)
			StartQuest(cnum, 183) -- 출석체크 퀘스트 창 팝업
			return 1,0,"히히히! 좋아! 자~! 여기 물시계야! 2시간이 지나고 물시계가 없어지면 다시 와야 해! 꼭!"
		end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 27 then


		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8501, 0) < 1 then
				if GetItemCount(cnum, 8494, 0) < 1 then
					if GetSwitchCount(cnum, 521) < 1 then
						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

					else

						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
					end

				else -- 힘이펄펄 삼계탕을 가지고 있을 때
					if GetSwitchCount(cnum, 520) < 1 then
						return 3,0,"아니..잠깐만 너에게서 아주 좋은 냄새가 나는데? 이건 무슨 냄새지? 정말 맛있는 냄새가나!",274,"아..힘이펄펄 삼계탕요?",2742,"게살스프나 끓여주세요!"
					else
						if GetSwitchCount(cnum, 521) < 1 then
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

						else
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"

						end

					end
				end

			else -- 꽃게킹의 튼실한 속살을 가지고 있을 때
				if GetSwitchCount(cnum, 521) == 2 then
					return 2,0,"아니..설마! 또 꽃게킹을 쓰러뜨린거야!!?",276,"네!"
				else
					return 2,0,"아니..그것은! 설마! 너 꽃게킹을 쓰러뜨린거야!!?",275,"네!"
				end

			end
		end

	elseif req == 276 then
		AddItemCount(cnum, 8512, 1) -- 영양듬뿍 게살스프 지급
		AddItemCount(cnum, 8501, -1) -- 꽃게킹의 튼실한 게살
		return 1,0,"너 정말 강하구나! 좋아! 내가 금방 정말! 맛있는 게살스프를 끓여줄게!@역시 꽃게킹의 튼실한 게살로 만든 스프의 맛은 환상적이야! 자! 먹어봐!"

	elseif req == 2742 then
		if GetSwitchCount(cnum, 521) < 1 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"
			end

		else
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
			end
		end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 271 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2711,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2711 then
		AddSwitchCount(cnum, 516, 2)
		AddItemCount(cnum, 8500, -5)
		AddItemCount(cnum, 8509, 1)
		return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"

	elseif req == 272 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2721,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2721 then
		AddSwitchCount(cnum, 516, 3)
		AddItemCount(cnum, 8500, -10)
		AddItemCount(cnum, 8510, 1)
		return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"


	elseif req == 273 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2731,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2731 then
		AddSwitchCount(cnum, 516, 6)
		AddItemCount(cnum, 8500, -15)
		AddItemCount(cnum, 8511, 1)
		return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 281 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2811,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2811 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 2)
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"묽은 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


	elseif req == 282 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2821,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2821 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 3)
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end



	elseif req == 283 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2831,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2831 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 6)
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	elseif req == 275 then
		if GetSwitchCount(cnum, 521) < 1 then
			EndQuest(cnum, 182)
			return 2,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 너 정도면 충분히 소름오싹뱌암동굴에 들어갈 수 있겠어! 자~준비하자~!",2752,"그건..어딘가요??"
		else
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			return 1,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 이야! 정말 대단하구나! 이거로 정말 맛있는 스프를 끓여줄게.....자~! 여기! 정말 맛있는 스프야!!"
		end


	elseif req == 2752 then
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"



	elseif req == 1011 then
		if GetSwitchCount(cnum, 521) < 2 then
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!"
		else
			SetSwitchCount(cnum, 521, 2)
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"좋아~! 기다릴게!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"
		end


	elseif req == 274 then
		return 3,0,"정말 맛있겠다. 그거..맛있는 냄새나는거..나에게 주지 않을래? 그 대신 내가 오래전에 주은 축복의 밸러의 참고서를 줄게! 어때?",2741,"네~!좋아요!",2743,"싫어요"

	elseif req == 2741 then
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"축복의 밸러의 참고서를 넣을 공간이 부족합니다."
			else
				AddItemCount(cnum, 8494, -1)
				AddItemCount(cnum, 3710, 1)
				SetSwitchCount(cnum, 520, 1)
				return 1,0,"고마워 이거 정말 맛있다. 자 여기! 축복의 밸러의 참고서야!"
			end

	elseif req == 2743 then
		return 1,0,"아..맛있는 냄새...먹고싶다...."



	elseif req == 29 then
		return 3,0,"맞아..사실이야..이 섬에 혼자 오랫동안 지내다 보니 사람이 너무 그리워...나에게 자주 좀 와줄래? 2시간 정도 마다 나를 찾아와 줘....그 대신 내가 좋을 것을 줄게!",24,"네!",25,"아니요"

	elseif req == 30 then
		if GetItemCount(cnum, 8505, 0) < 1 then
			return 2,0,"고마워! 2시간이 지난거 같아! 네가 너무 반가워! 다시 물시계를 줄테니 2시간 뒤에 또 와! 알겠지??",42,"네~!"
		else
			return 2,0,"아직 2시간이 안지난거 같은데? 물시계가 다 되어 없어지면 나에게 다시 와줄래?",52,"네~!"
		end


	elseif req == 31 then
		Time = GetSwitchCount(cnum, 518)
		return 1,0,"음..내가 다른 건 잊어버려도.....@그건 기억 해 놨어!@음.. 지금가지 총 [ "..Time.." 번 ] 왔었어! 또 와줘!"

	elseif req == 32 then
		if GetSwitchCount(cnum, 518) < 10 then
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		else
			SetSwitchCount(cnum, 533, 1)
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		end



	elseif req == 33 then
		if GetItemCount(cnum, 8502, 0) > 0 then
			return 2,0,"이야~빨리 구해왔구나! 좋아~잠시만 기다려줘! 내가 횃불을 만들고!",34,"네!"
		else
			return 1,0,"에이! 바짝마른 나뭇가지가 없는데? 섬 어딘가에 있을테니 구해와~! 횃불을 만들려면 바짝마른 나뭇가지는 꼭 있어야 해!!"
		end

	elseif req == 34 then
		AddItemCount(cnum, 8502, -1)
		SetSwitchCount(cnum, 522, 1)
		return 2,0,"자...나뭇가지를 다듬고..뚝딱...뚝딱@쓰윽...쓰윽..헝겊을 나뭇가지에 감고.....그리고..........아까운 기름에 적셔서............................",35,"언제되나요?"

	elseif req == 35 then
		return 2,0,"자! 완성! 이제 가자!",36,"어딜가나요??"

	elseif req == 36 then
		return 2,0,"음? 음..................@그곳에 들어가면...소름이 돋고 오싹오싹하고 뱌암이 많으니까...이름은!...................................@소름오싹뱌암동굴! 가자!!",37,"에? 소름오싹뱌암동굴?"

	elseif req == 37 then
		EndQuest(cnum, 184)
		SetSwitchCount(cnum, 523, 1)

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum,196,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum,197,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum,198,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum,199,101) -- 소름오싹뱌암동굴 입구
		end



	elseif req == 38 then
		return 2,0,"어딜 갔다가 온거야! 자! 가자!!",36,"네! 근데 어디?"


	elseif req == 42 then
		if GetSwitchCount(cnum, 533) < 1 then
				if GetSwitchCount(cnum, 519) < 9 then
					if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		else
			if GetSwitchCount(cnum, 519) < 10 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		end
	end
end

function NPC_QUEST_843(cnum, reqNumber)


req = reqNumber
Lv = GetHeroLv(cnum)

-- switch#513--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 퀘스트 수락 전 대사 끊길 시
-- switch#514--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 수락
-- switch#515--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 퀘스트 수락
-- switch#516--------2010 여름방학 이벤트_02 믹마무인랜드  -> 게살 요리 제작 횟수 저장
-- switch#517--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 시작 확인
-- switch#518--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 수행 횟수 확인
-- switch#519--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 10회 아이템 지급 확인용
-- switch#520--------2010 여름방학 이벤트_02 믹마무인랜드  -> 밸러의 참고서 지급 확인용
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 꽃게킹의 튼실한 게살을 가지고 와서 바짝마른 나뭇가지 퀘스트를 받음 521 값 2
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 게살스프를 많이 끓임 521 값 1
-- switch#522--------2010 여름방학 이벤트_02 믹마무인랜드  -> 바짝마른 나뭇가지를 구해옴
-- switch#523--------2010 여름방학 이벤트_02 믹마무인랜드  -> 존 이동
-- switch#524--------2010 여름방학 이벤트_02 믹마무인랜드  -> 무인랜드 입장
-- switch#525--------2010 여름방학 이벤트_02 믹마무인랜드  -> 보물 찾음
-- switch#526--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 5완료
-- switch#527--------2010 여름방학 이벤트_02 믹마무인랜드  -> 소름오싹뱌암동굴 퇴장


	if req == 1 then
		if GetSwitchCount(cnum, 526) < 1 then
			if GetSwitchCount(cnum, 525) < 1 then
				if GetSwitchCount(cnum, 514) < 1 then -- 퀘스트 1을 수락하지 않은 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 513) < 1 then -- 처음 말 걸었을 때
						return 3,0,"가나다라마바사아자차카타파하~!에~헤에에~~~~~~~~~~~~~~~~~우~헤~우~헤~!!@케~~~엑!! 까~암짝! 놀라버렸잖아! 야아! 너는 사람이냐! 귀신이냐!!",2,"아..안녕하세요",3,"뭐지..관심없어요"
					elseif GetSwitchCount(cnum, 513) == 1 then -- 퀘스트 1 받기 전 1/4 / 말 끊기고 다시 말 걸었을 때
						return 2,0,"에에? 다시왔네? 역시 내가 여기 왜 있는지 궁금했구나? 내 이야기를 잘 들어봐~!",20,"네~!"
					elseif GetSwitchCount(cnum, 513) == 2 then -- 퀘스트 1 받기 전 2/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"내가! 아까 하던 이야기가 생각났어! 나의 선장 쿨라파님의 이야기를 하고 있었던거 같은데 맞지?",16,"네! 그런거 같아요..",22,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 3 then -- 퀘스트 1 받기 전 3/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"분명해! 내가 아까 하던 이야기가 생각났어! 나의 쿨라파 선장님의 이야기를 하고 있었어!",16,"네! 그런거 같아요..",23,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 4 then --퀘스트 1 받기 전 4/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"역시 다시 올 줄 알았어! 나의 게살 스프는 절대 거절할 수 없을거야!! 해변의 꽃게를 잡아와!! 내가 맛있는 게살스프를 끓여줄게! 나 배가 무지 고프다구!",19,"네!",21,"싫어요!"
					else
						return 1,0,"[이 메시지가 나오면 안됩니다!!!]"
					end

				elseif GetSwitchCount(cnum, 514) == 1 then  -- 퀘스트 1을 수락한 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								if GetSwitchCount(cnum, 517) < 1 then
									return 2,0,"아! 왔구나! 너무 보고 싶었어!@이곳에만 혼자 있다보니..사람이 너무 그리워!@맛있는 꽃게보다 네가 더 보고 싶을 정도였다구.........흐...윽....외로워...",24,"그렇군요.."
								else
									return 3,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 고마워! 또 와줬구나!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!"
								end
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물을 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",39,"동굴을 들어가려고요!"
						end
					end


				elseif GetSwitchCount(cnum, 514) == 2 then  -- 퀘스트 1을 수락한 상태에서 퀘스트 2(출석체크)를 거부 했을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								return 3,0,"아! 왔구나! 무슨 일 때문에 왔어?",27,"꽃게를 가져왔어요",29,"아저씨가 외로워 보여서요"
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물의 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",39,"동굴을 들어가려고요!"
						end
					end

				else
					return 1,0,"이 메시지가 나오면 안됩니다."
				end
			else
				return 2,0,"오래 걸렸네? 소름오싹뱌암동굴 깊이 들어갔다 온 것 같은데? 혹시 보물을 찾았어?",1000,"네"
			end
		else
			return 3,0,"아! 다시 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요"
		end


	elseif req == 1000 then
		if GetItemCount(cnum, 8503, 0) == 1 then
			return 2,0,"혹시....그 번쩍이는 황금상자는.....보물상자!!!!????",1001,"그런 것 같아요"
		elseif  GetItemCount(cnum, 8504, 0) == 1 then
			return 2,0,"그러면 뭔가 반짝이는 것이...있어야...할텐데...",1002,"그게.."
		end

	elseif req == 1001 then
		return 2,0,"이리 줘봐! 끼익....끼익...텅! 오옷!!! 상자가 열렸다!!!",1003,"..."

	elseif req == 1003 then
		return 2,0,"아..이 종이는 뭐지...이 문자는...우리 쿨라파선장님과 우리들이 쓰던 암호??? 에헴! 어디 읽어볼까...중얼중얼중얼...아...중얼중얼..중얼...중얼...중얼...",1004,"..."

	elseif req == 1004 then
		AddSkillPoint(cnum, 15)
		AddItemCount(cnum, 8503, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1005,"종이가 타버렸네요"

	elseif req == 1005 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1006,"..."

	elseif req == 1006 then
		return 2,0,"[스킬 포인트가 15 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"

	elseif req == 1007 then
		EndQuest(cnum, 185)
		SetSwitchCount(cnum, 526, 1)
		return 2,0,"사실은 네가 보물을 찾은거니까...정말 이제 한을 풀었어...보물이라고 해서..나는 삐가뻔쩍 황금인 줄 알았는데..아니였구나..그래도 괜찮아! 내 집으로 돌아가자!",1008,"네"

	elseif req == 1008 then
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 192, 102)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 193, 102)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 194, 102)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 195, 102)
		end



	elseif req == 1002 then
		return 2,0,"뭐지? 손에 든 그 낡은 종이는???",1009,"이..종이.."

	elseif req == 1009 then
		return 2,0,"이리 줘봐! 아니! 이 문자는...우리 쿨라파 선장님과 우리들이 쓰던 암호잖아?!? 에헴!! 어디 읽어볼까...중얼중얼..중얼...중얼..중얼...중얼....중얼...",1010,"..."

	elseif req == 1010 then
		AddSkillPoint(cnum, 10)
		AddItemCount(cnum, 8504, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1111,"종이가 타버렸네요"

	elseif req == 1111 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1112,"..."

	elseif req == 1112 then
		return 2,0,"[스킬 포인트가 10 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"


	elseif req == 39 then
		StartQuest(cnum, 185)
		SetSwitchCount(cnum, 523, 2)
		return 2,0,"좋아! 지금 들어간다! 내가! 내가! 용기를 내서 같이 들어간다!!",41,"네!"


	elseif req == 40 then
		return 1,0,"알겠어! 만반의 준비를 하고 조금 있다가 다시와!"

	elseif req == 41 then -- 레벨에 맞는 동굴로 입장
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 204, 254)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 205, 254)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 206, 254)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 207, 254)
		end



	elseif req == 2 then
		return 3,0,"내..내가 너무 놀랐잖아!@여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 3 then
		return 3,0,"뭐..뭐야! 여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 4 then
		return 3,0,"페르보..페르보 선장님!? 그 분이 아직 살아 계시다니..한번 보고 싶군...그런데 나는 여기서 떠날 수가 없어. 아니 여기 있을테야..!",6,"왜 여기 있나요?",7,"그렇군요"

	elseif req == 5 then
		return 3,0,"아르젬!? 그건 내 이름인데! 내 이름을 어떻게 알지?!",6,"왜 여기 있나요?",4,"페르보 선장님이.."

	elseif req == 6 then
		return 3,0,"......그건 안돼..알려줄 수 없어.. 절대..안 가르쳐 줄 거야! 내가 이 섬에 엄청난 보물이 숨겨져 있다는 엄청난 사실을 말해줄 것 같아? 그럴 순 없지..!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 7 then
		return 3,0,"아..안 궁금해? 하긴 네가 이 섬에 엄청난 보물이 숨겨져 있다는 사실을 알 필요가 없지!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 8 then
		SetSwitchCount(cnum, 513, 1)
		return 1,0,"그렇지~! 그런 중요한 사실을 내가 알려줄리가 없어!"

	elseif req == 9 then
		return 3,0,"케켁! 어떻게 알았지!!! 내 보물을 빼앗으려고 하다니!! 덤벼라 이놈!!",11,"그럴까요?!",12,"방금 말씀하셨는데요.."

	elseif req == 11 then
		return 2,0,"내가 20년만 젊었어도..그러지말고..내 사연 좀 들어봐..",20,"네~!"

	elseif req == 12 then
		return 2,0,"케켁! 그렇군! 내 정신이야..이왕 이렇게 된 거 말해주지..",20,"네~!"

	elseif req == 13 then
		return 2,0,"아..아무튼 많이 지났어.................................",14,"네.."

	elseif req == 14 then
		return 3,0,"..............................그런데.....무슨 이야길 하고 있었지?!",15,"모르겠는데요..",16,"쿨라파 선장님요.."

	elseif req == 15 then
		SetSwitchCount(cnum, 513, 2) -- 도중 말 끊김
		return 1,0,"아...너도 모르면 어떻게 해...끄응...내가 생각 좀 해볼게...!"

	elseif req == 16 then
		return 2,0,"그렇지! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 17 then
		return 2,0,"내가..왜인지 모르지만 던전 안에는 이상한 기운이 감돌고 있었어!..정말 동굴 안은 내가 온몸이 오싹하다고! 무엇인가 나를 노려보고 있는거 같아..그 뒤로 수 차례 도전을 했지만..내가 매번 실패했어..!!",18,"그렇군요"

	elseif req == 18 then
		return 3,0,"내가...이야기를 너무 많이했나..배고파 힘이 없어...저기 해변에 널려있는 꽃게들을 좀 잡아와 줘! 그러면 내가 맛있는 게살스프를 끓여줄게~! 우선 먹고 다시 이야기하자!",19,"네~! 그러죠!",21,"싫어요"

	elseif req == 19 then
		StartQuest(cnum, 182) -- 게잡기 퀘스트 창 팝업
		SetSwitchCount(cnum, 514, 1) -- 게잡기 퀘스트 수락
		return 1,0,"좋아 고마워! 내가 배가 많이 고프니까 최대한 많이 잡아와!! 내가 부탁해!"

	elseif req == 20 then
		return 3,0,"20년 전...나의 두목! 시원시원한 파도같은 성격을 가진 쿨라파 선장님께서 나의 동료 선원들과 함께 이 섬 중앙에 있는 굴에 있는 엄청난 보물을 찾으러 들어가셨지..하지만 하루가 지나고 이틀이 지나고...그리고 얼마더라...아무튼 아주 많이 지났지...",13,"그래서요?",14,"재미없어요.."

	elseif req == 21 then
		SetSwitchCount(cnum, 513, 4)
		return 1,0,"어쩔 수 없군! 꽃게 잡아다 줄 생각이 생기면 다시와!!"

	elseif req == 22 then
		SetSwitchCount(cnum, 513, 3)
		return 1,0,"아닌가...내가 무슨 이야길하고 있었지...내가 더 생각해 볼게...."

	elseif req == 23 then
		return 2,0,"아무튼! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 24 then
		return 3,0,"저기 너 혹시 나에게 좀 자주 와 줄래? 나랑 와서 이야기도 하고 게살스프도 끓여먹고 말야...너무 외로워서 그래..",241,"네!",25,"싫어요"

	elseif req == 241 then
		return 3,0,"이얏~호! 정말이야? 내가 너무 기쁘잖아! 내가 만든 2시간 짜리 물시계를 줄게! 지금부터 2시간이 지나면 물시계가 사라질거야! 그러면 나에게 또 다시 와줘!@대신 10번 올 때마다 내가 20년간 이 섬 여기저기서 모은 보물들을 나눠 줄게!",26,"네~!",25,"싫어요"

	elseif req == 25 then
		SetSwitchCount(cnum, 514, 2) --퀘스트 2 거부
		return 1,0,"뭐..싫으면 어쩔 수 없지.."

	elseif req == 26 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아르젬의 물시계를 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			SetSwitchCount(cnum, 514, 1) -- 퀘스트 1 수락
			AddSwitchCount(cnum, 517, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 518, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8505, 1)
			StartQuest(cnum, 183) -- 출석체크 퀘스트 창 팝업
			return 1,0,"히히히! 좋아! 자~! 여기 물시계야! 2시간이 지나고 물시계가 없어지면 다시 와야 해! 꼭!"
		end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 27 then


		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8501, 0) < 1 then
				if GetItemCount(cnum, 8494, 0) < 1 then
					if GetSwitchCount(cnum, 521) < 1 then
						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

					else

						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
					end

				else -- 힘이펄펄 삼계탕을 가지고 있을 때
					if GetSwitchCount(cnum, 520) < 1 then
						return 3,0,"아니..잠깐만 너에게서 아주 좋은 냄새가 나는데? 이건 무슨 냄새지? 정말 맛있는 냄새가나!",274,"아..힘이펄펄 삼계탕요?",2742,"게살스프나 끓여주세요!"
					else
						if GetSwitchCount(cnum, 521) < 1 then
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

						else
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"

						end

					end
				end

			else -- 꽃게킹의 튼실한 속살을 가지고 있을 때
				if GetSwitchCount(cnum, 521) == 2 then
					return 2,0,"아니..설마! 또 꽃게킹을 쓰러뜨린거야!!?",276,"네!"
				else
					return 2,0,"아니..그것은! 설마! 너 꽃게킹을 쓰러뜨린거야!!?",275,"네!"
				end

			end
		end

	elseif req == 276 then
		AddItemCount(cnum, 8512, 1) -- 영양듬뿍 게살스프 지급
		AddItemCount(cnum, 8501, -1) -- 꽃게킹의 튼실한 게살
		return 1,0,"너 정말 강하구나! 좋아! 내가 금방 정말! 맛있는 게살스프를 끓여줄게!@역시 꽃게킹의 튼실한 게살로 만든 스프의 맛은 환상적이야! 자! 먹어봐!"

	elseif req == 2742 then
		if GetSwitchCount(cnum, 521) < 1 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"
			end

		else
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
			end
		end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 271 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2711,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2711 then
		AddSwitchCount(cnum, 516, 2)
		AddItemCount(cnum, 8500, -5)
		AddItemCount(cnum, 8509, 1)
		return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"

	elseif req == 272 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2721,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2721 then
		AddSwitchCount(cnum, 516, 3)
		AddItemCount(cnum, 8500, -10)
		AddItemCount(cnum, 8510, 1)
		return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"


	elseif req == 273 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2731,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2731 then
		AddSwitchCount(cnum, 516, 6)
		AddItemCount(cnum, 8500, -15)
		AddItemCount(cnum, 8511, 1)
		return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 281 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2811,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2811 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 2)
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"묽은 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


	elseif req == 282 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2821,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2821 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 3)
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end



	elseif req == 283 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2831,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2831 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 6)
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	elseif req == 275 then
		if GetSwitchCount(cnum, 521) < 1 then
			EndQuest(cnum, 182)
			return 2,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 너 정도면 충분히 소름오싹뱌암동굴에 들어갈 수 있겠어! 자~준비하자~!",2752,"그건..어딘가요??"
		else
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			return 1,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 이야! 정말 대단하구나! 이거로 정말 맛있는 스프를 끓여줄게.....자~! 여기! 정말 맛있는 스프야!!"
		end


	elseif req == 2752 then
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"



	elseif req == 1011 then
		if GetSwitchCount(cnum, 521) < 2 then
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!"
		else
			SetSwitchCount(cnum, 521, 2)
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"좋아~! 기다릴게!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"
		end


	elseif req == 274 then
		return 3,0,"정말 맛있겠다. 그거..맛있는 냄새나는거..나에게 주지 않을래? 그 대신 내가 오래전에 주은 축복의 밸러의 참고서를 줄게! 어때?",2741,"네~!좋아요!",2743,"싫어요"

	elseif req == 2741 then
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"축복의 밸러의 참고서를 넣을 공간이 부족합니다."
			else
				AddItemCount(cnum, 8494, -1)
				AddItemCount(cnum, 3710, 1)
				SetSwitchCount(cnum, 520, 1)
				return 1,0,"고마워 이거 정말 맛있다. 자 여기! 축복의 밸러의 참고서야!"
			end

	elseif req == 2743 then
		return 1,0,"아..맛있는 냄새...먹고싶다...."



	elseif req == 29 then
		return 3,0,"맞아..사실이야..이 섬에 혼자 오랫동안 지내다 보니 사람이 너무 그리워...나에게 자주 좀 와줄래? 2시간 정도 마다 나를 찾아와 줘....그 대신 내가 좋을 것을 줄게!",24,"네!",25,"아니요"

	elseif req == 30 then
		if GetItemCount(cnum, 8505, 0) < 1 then
			return 2,0,"고마워! 2시간이 지난거 같아! 네가 너무 반가워! 다시 물시계를 줄테니 2시간 뒤에 또 와! 알겠지??",42,"네~!"
		else
			return 2,0,"아직 2시간이 안지난거 같은데? 물시계가 다 되어 없어지면 나에게 다시 와줄래?",52,"네~!"
		end


	elseif req == 31 then
		Time = GetSwitchCount(cnum, 518)
		return 1,0,"음..내가 다른 건 잊어버려도.....@그건 기억 해 놨어!@음.. 지금가지 총 [ "..Time.." 번 ] 왔었어! 또 와줘!"

	elseif req == 32 then
		if GetSwitchCount(cnum, 518) < 10 then
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		else
			SetSwitchCount(cnum, 533, 1)
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		end



	elseif req == 33 then
		if GetItemCount(cnum, 8502, 0) > 0 then
			return 2,0,"이야~빨리 구해왔구나! 좋아~잠시만 기다려줘! 내가 횃불을 만들고!",34,"네!"
		else
			return 1,0,"에이! 바짝마른 나뭇가지가 없는데? 섬 어딘가에 있을테니 구해와~! 횃불을 만들려면 바짝마른 나뭇가지는 꼭 있어야 해!!"
		end

	elseif req == 34 then
		AddItemCount(cnum, 8502, -1)
		SetSwitchCount(cnum, 522, 1)
		return 2,0,"자...나뭇가지를 다듬고..뚝딱...뚝딱@쓰윽...쓰윽..헝겊을 나뭇가지에 감고.....그리고..........아까운 기름에 적셔서............................",35,"언제되나요?"

	elseif req == 35 then
		return 2,0,"자! 완성! 이제 가자!",36,"어딜가나요??"

	elseif req == 36 then
		return 2,0,"음? 음..................@그곳에 들어가면...소름이 돋고 오싹오싹하고 뱌암이 많으니까...이름은!...................................@소름오싹뱌암동굴! 가자!!",37,"에? 소름오싹뱌암동굴?"

	elseif req == 37 then
		EndQuest(cnum, 184)
		SetSwitchCount(cnum, 523, 1)

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum,196,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum,197,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum,198,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum,199,101) -- 소름오싹뱌암동굴 입구
		end



	elseif req == 38 then
		return 2,0,"어딜 갔다가 온거야! 자! 가자!!",36,"네! 근데 어디?"


	elseif req == 42 then
		if GetSwitchCount(cnum, 533) < 1 then
				if GetSwitchCount(cnum, 519) < 9 then
					if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		else
			if GetSwitchCount(cnum, 519) < 10 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		end
	end
end

function NPC_QUEST_844(cnum, reqNumber)


req = reqNumber
Lv = GetHeroLv(cnum)

-- switch#513--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 퀘스트 수락 전 대사 끊길 시
-- switch#514--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 수락
-- switch#515--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 퀘스트 수락
-- switch#516--------2010 여름방학 이벤트_02 믹마무인랜드  -> 게살 요리 제작 횟수 저장
-- switch#517--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 시작 확인
-- switch#518--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 수행 횟수 확인
-- switch#519--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 10회 아이템 지급 확인용
-- switch#520--------2010 여름방학 이벤트_02 믹마무인랜드  -> 밸러의 참고서 지급 확인용
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 꽃게킹의 튼실한 게살을 가지고 와서 바짝마른 나뭇가지 퀘스트를 받음 521 값 2
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 게살스프를 많이 끓임 521 값 1
-- switch#522--------2010 여름방학 이벤트_02 믹마무인랜드  -> 바짝마른 나뭇가지를 구해옴
-- switch#523--------2010 여름방학 이벤트_02 믹마무인랜드  -> 존 이동
-- switch#524--------2010 여름방학 이벤트_02 믹마무인랜드  -> 무인랜드 입장
-- switch#525--------2010 여름방학 이벤트_02 믹마무인랜드  -> 보물 찾음
-- switch#526--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 5완료
-- switch#527--------2010 여름방학 이벤트_02 믹마무인랜드  -> 소름오싹뱌암동굴 퇴장


	if req == 1 then
		if GetSwitchCount(cnum, 526) < 1 then
			if GetSwitchCount(cnum, 525) < 1 then
				if GetSwitchCount(cnum, 514) < 1 then -- 퀘스트 1을 수락하지 않은 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 513) < 1 then -- 처음 말 걸었을 때
						return 3,0,"가나다라마바사아자차카타파하~!에~헤에에~~~~~~~~~~~~~~~~~우~헤~우~헤~!!@케~~~엑!! 까~암짝! 놀라버렸잖아! 야아! 너는 사람이냐! 귀신이냐!!",2,"아..안녕하세요",3,"뭐지..관심없어요"
					elseif GetSwitchCount(cnum, 513) == 1 then -- 퀘스트 1 받기 전 1/4 / 말 끊기고 다시 말 걸었을 때
						return 2,0,"에에? 다시왔네? 역시 내가 여기 왜 있는지 궁금했구나? 내 이야기를 잘 들어봐~!",20,"네~!"
					elseif GetSwitchCount(cnum, 513) == 2 then -- 퀘스트 1 받기 전 2/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"내가! 아까 하던 이야기가 생각났어! 나의 선장 쿨라파님의 이야기를 하고 있었던거 같은데 맞지?",16,"네! 그런거 같아요..",22,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 3 then -- 퀘스트 1 받기 전 3/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"분명해! 내가 아까 하던 이야기가 생각났어! 나의 쿨라파 선장님의 이야기를 하고 있었어!",16,"네! 그런거 같아요..",23,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 4 then --퀘스트 1 받기 전 4/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"역시 다시 올 줄 알았어! 나의 게살 스프는 절대 거절할 수 없을거야!! 해변의 꽃게를 잡아와!! 내가 맛있는 게살스프를 끓여줄게! 나 배가 무지 고프다구!",19,"네!",21,"싫어요!"
					else
						return 1,0,"[이 메시지가 나오면 안됩니다!!!]"
					end

				elseif GetSwitchCount(cnum, 514) == 1 then  -- 퀘스트 1을 수락한 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								if GetSwitchCount(cnum, 517) < 1 then
									return 2,0,"아! 왔구나! 너무 보고 싶었어!@이곳에만 혼자 있다보니..사람이 너무 그리워!@맛있는 꽃게보다 네가 더 보고 싶을 정도였다구.........흐...윽....외로워...",24,"그렇군요.."
								else
									return 3,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 고마워! 또 와줬구나!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!"
								end
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물을 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",39,"동굴을 들어가려고요!"
						end
					end


				elseif GetSwitchCount(cnum, 514) == 2 then  -- 퀘스트 1을 수락한 상태에서 퀘스트 2(출석체크)를 거부 했을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								return 3,0,"아! 왔구나! 무슨 일 때문에 왔어?",27,"꽃게를 가져왔어요",29,"아저씨가 외로워 보여서요"
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물의 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",39,"동굴을 들어가려고요!"
						end
					end

				else
					return 1,0,"이 메시지가 나오면 안됩니다."
				end
			else
				return 2,0,"오래 걸렸네? 소름오싹뱌암동굴 깊이 들어갔다 온 것 같은데? 혹시 보물을 찾았어?",1000,"네"
			end
		else
			return 3,0,"아! 다시 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요"
		end


	elseif req == 1000 then
		if GetItemCount(cnum, 8503, 0) == 1 then
			return 2,0,"혹시....그 번쩍이는 황금상자는.....보물상자!!!!????",1001,"그런 것 같아요"
		elseif  GetItemCount(cnum, 8504, 0) == 1 then
			return 2,0,"그러면 뭔가 반짝이는 것이...있어야...할텐데...",1002,"그게.."
		end

	elseif req == 1001 then
		return 2,0,"이리 줘봐! 끼익....끼익...텅! 오옷!!! 상자가 열렸다!!!",1003,"..."

	elseif req == 1003 then
		return 2,0,"아..이 종이는 뭐지...이 문자는...우리 쿨라파선장님과 우리들이 쓰던 암호??? 에헴! 어디 읽어볼까...중얼중얼중얼...아...중얼중얼..중얼...중얼...중얼...",1004,"..."

	elseif req == 1004 then
		AddSkillPoint(cnum, 15)
		AddItemCount(cnum, 8503, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1005,"종이가 타버렸네요"

	elseif req == 1005 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1006,"..."

	elseif req == 1006 then
		return 2,0,"[스킬 포인트가 15 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"

	elseif req == 1007 then
		EndQuest(cnum, 185)
		SetSwitchCount(cnum, 526, 1)
		return 2,0,"사실은 네가 보물을 찾은거니까...정말 이제 한을 풀었어...보물이라고 해서..나는 삐가뻔쩍 황금인 줄 알았는데..아니였구나..그래도 괜찮아! 내 집으로 돌아가자!",1008,"네"

	elseif req == 1008 then
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 192, 102)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 193, 102)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 194, 102)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 195, 102)
		end



	elseif req == 1002 then
		return 2,0,"뭐지? 손에 든 그 낡은 종이는???",1009,"이..종이.."

	elseif req == 1009 then
		return 2,0,"이리 줘봐! 아니! 이 문자는...우리 쿨라파 선장님과 우리들이 쓰던 암호잖아?!? 에헴!! 어디 읽어볼까...중얼중얼..중얼...중얼..중얼...중얼....중얼...",1010,"..."

	elseif req == 1010 then
		AddSkillPoint(cnum, 10)
		AddItemCount(cnum, 8504, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1111,"종이가 타버렸네요"

	elseif req == 1111 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1112,"..."

	elseif req == 1112 then
		return 2,0,"[스킬 포인트가 10 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"


	elseif req == 39 then
		StartQuest(cnum, 185)
		SetSwitchCount(cnum, 523, 2)
		return 2,0,"좋아! 지금 들어간다! 내가! 내가! 용기를 내서 같이 들어간다!!",41,"네!"


	elseif req == 40 then
		return 1,0,"알겠어! 만반의 준비를 하고 조금 있다가 다시와!"

	elseif req == 41 then -- 레벨에 맞는 동굴로 입장
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 204, 254)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 205, 254)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 206, 254)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 207, 254)
		end



	elseif req == 2 then
		return 3,0,"내..내가 너무 놀랐잖아!@여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 3 then
		return 3,0,"뭐..뭐야! 여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 4 then
		return 3,0,"페르보..페르보 선장님!? 그 분이 아직 살아 계시다니..한번 보고 싶군...그런데 나는 여기서 떠날 수가 없어. 아니 여기 있을테야..!",6,"왜 여기 있나요?",7,"그렇군요"

	elseif req == 5 then
		return 3,0,"아르젬!? 그건 내 이름인데! 내 이름을 어떻게 알지?!",6,"왜 여기 있나요?",4,"페르보 선장님이.."

	elseif req == 6 then
		return 3,0,"......그건 안돼..알려줄 수 없어.. 절대..안 가르쳐 줄 거야! 내가 이 섬에 엄청난 보물이 숨겨져 있다는 엄청난 사실을 말해줄 것 같아? 그럴 순 없지..!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 7 then
		return 3,0,"아..안 궁금해? 하긴 네가 이 섬에 엄청난 보물이 숨겨져 있다는 사실을 알 필요가 없지!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 8 then
		SetSwitchCount(cnum, 513, 1)
		return 1,0,"그렇지~! 그런 중요한 사실을 내가 알려줄리가 없어!"

	elseif req == 9 then
		return 3,0,"케켁! 어떻게 알았지!!! 내 보물을 빼앗으려고 하다니!! 덤벼라 이놈!!",11,"그럴까요?!",12,"방금 말씀하셨는데요.."

	elseif req == 11 then
		return 2,0,"내가 20년만 젊었어도..그러지말고..내 사연 좀 들어봐..",20,"네~!"

	elseif req == 12 then
		return 2,0,"케켁! 그렇군! 내 정신이야..이왕 이렇게 된 거 말해주지..",20,"네~!"

	elseif req == 13 then
		return 2,0,"아..아무튼 많이 지났어.................................",14,"네.."

	elseif req == 14 then
		return 3,0,"..............................그런데.....무슨 이야길 하고 있었지?!",15,"모르겠는데요..",16,"쿨라파 선장님요.."

	elseif req == 15 then
		SetSwitchCount(cnum, 513, 2) -- 도중 말 끊김
		return 1,0,"아...너도 모르면 어떻게 해...끄응...내가 생각 좀 해볼게...!"

	elseif req == 16 then
		return 2,0,"그렇지! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 17 then
		return 2,0,"내가..왜인지 모르지만 던전 안에는 이상한 기운이 감돌고 있었어!..정말 동굴 안은 내가 온몸이 오싹하다고! 무엇인가 나를 노려보고 있는거 같아..그 뒤로 수 차례 도전을 했지만..내가 매번 실패했어..!!",18,"그렇군요"

	elseif req == 18 then
		return 3,0,"내가...이야기를 너무 많이했나..배고파 힘이 없어...저기 해변에 널려있는 꽃게들을 좀 잡아와 줘! 그러면 내가 맛있는 게살스프를 끓여줄게~! 우선 먹고 다시 이야기하자!",19,"네~! 그러죠!",21,"싫어요"

	elseif req == 19 then
		StartQuest(cnum, 182) -- 게잡기 퀘스트 창 팝업
		SetSwitchCount(cnum, 514, 1) -- 게잡기 퀘스트 수락
		return 1,0,"좋아 고마워! 내가 배가 많이 고프니까 최대한 많이 잡아와!! 내가 부탁해!"

	elseif req == 20 then
		return 3,0,"20년 전...나의 두목! 시원시원한 파도같은 성격을 가진 쿨라파 선장님께서 나의 동료 선원들과 함께 이 섬 중앙에 있는 굴에 있는 엄청난 보물을 찾으러 들어가셨지..하지만 하루가 지나고 이틀이 지나고...그리고 얼마더라...아무튼 아주 많이 지났지...",13,"그래서요?",14,"재미없어요.."

	elseif req == 21 then
		SetSwitchCount(cnum, 513, 4)
		return 1,0,"어쩔 수 없군! 꽃게 잡아다 줄 생각이 생기면 다시와!!"

	elseif req == 22 then
		SetSwitchCount(cnum, 513, 3)
		return 1,0,"아닌가...내가 무슨 이야길하고 있었지...내가 더 생각해 볼게...."

	elseif req == 23 then
		return 2,0,"아무튼! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 24 then
		return 3,0,"저기 너 혹시 나에게 좀 자주 와 줄래? 나랑 와서 이야기도 하고 게살스프도 끓여먹고 말야...너무 외로워서 그래..",241,"네!",25,"싫어요"

	elseif req == 241 then
		return 3,0,"이얏~호! 정말이야? 내가 너무 기쁘잖아! 내가 만든 2시간 짜리 물시계를 줄게! 지금부터 2시간이 지나면 물시계가 사라질거야! 그러면 나에게 또 다시 와줘!@대신 10번 올 때마다 내가 20년간 이 섬 여기저기서 모은 보물들을 나눠 줄게!",26,"네~!",25,"싫어요"

	elseif req == 25 then
		SetSwitchCount(cnum, 514, 2) --퀘스트 2 거부
		return 1,0,"뭐..싫으면 어쩔 수 없지.."

	elseif req == 26 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아르젬의 물시계를 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			SetSwitchCount(cnum, 514, 1) -- 퀘스트 1 수락
			AddSwitchCount(cnum, 517, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 518, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8505, 1)
			StartQuest(cnum, 183) -- 출석체크 퀘스트 창 팝업
			return 1,0,"히히히! 좋아! 자~! 여기 물시계야! 2시간이 지나고 물시계가 없어지면 다시 와야 해! 꼭!"
		end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 27 then


		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8501, 0) < 1 then
				if GetItemCount(cnum, 8494, 0) < 1 then
					if GetSwitchCount(cnum, 521) < 1 then
						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

					else

						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
					end

				else -- 힘이펄펄 삼계탕을 가지고 있을 때
					if GetSwitchCount(cnum, 520) < 1 then
						return 3,0,"아니..잠깐만 너에게서 아주 좋은 냄새가 나는데? 이건 무슨 냄새지? 정말 맛있는 냄새가나!",274,"아..힘이펄펄 삼계탕요?",2742,"게살스프나 끓여주세요!"
					else
						if GetSwitchCount(cnum, 521) < 1 then
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

						else
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"

						end

					end
				end

			else -- 꽃게킹의 튼실한 속살을 가지고 있을 때
				if GetSwitchCount(cnum, 521) == 2 then
					return 2,0,"아니..설마! 또 꽃게킹을 쓰러뜨린거야!!?",276,"네!"
				else
					return 2,0,"아니..그것은! 설마! 너 꽃게킹을 쓰러뜨린거야!!?",275,"네!"
				end

			end
		end

	elseif req == 276 then
		AddItemCount(cnum, 8512, 1) -- 영양듬뿍 게살스프 지급
		AddItemCount(cnum, 8501, -1) -- 꽃게킹의 튼실한 게살
		return 1,0,"너 정말 강하구나! 좋아! 내가 금방 정말! 맛있는 게살스프를 끓여줄게!@역시 꽃게킹의 튼실한 게살로 만든 스프의 맛은 환상적이야! 자! 먹어봐!"

	elseif req == 2742 then
		if GetSwitchCount(cnum, 521) < 1 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"
			end

		else
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
			end
		end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 271 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2711,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2711 then
		AddSwitchCount(cnum, 516, 2)
		AddItemCount(cnum, 8500, -5)
		AddItemCount(cnum, 8509, 1)
		return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"

	elseif req == 272 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2721,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2721 then
		AddSwitchCount(cnum, 516, 3)
		AddItemCount(cnum, 8500, -10)
		AddItemCount(cnum, 8510, 1)
		return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"


	elseif req == 273 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2731,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2731 then
		AddSwitchCount(cnum, 516, 6)
		AddItemCount(cnum, 8500, -15)
		AddItemCount(cnum, 8511, 1)
		return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 281 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2811,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2811 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 2)
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"묽은 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


	elseif req == 282 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2821,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2821 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 3)
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end



	elseif req == 283 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2831,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2831 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 6)
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	elseif req == 275 then
		if GetSwitchCount(cnum, 521) < 1 then
			EndQuest(cnum, 182)
			return 2,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 너 정도면 충분히 소름오싹뱌암동굴에 들어갈 수 있겠어! 자~준비하자~!",2752,"그건..어딘가요??"
		else
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			return 1,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 이야! 정말 대단하구나! 이거로 정말 맛있는 스프를 끓여줄게.....자~! 여기! 정말 맛있는 스프야!!"
		end


	elseif req == 2752 then
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"



	elseif req == 1011 then
		if GetSwitchCount(cnum, 521) < 2 then
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!"
		else
			SetSwitchCount(cnum, 521, 2)
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"좋아~! 기다릴게!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"
		end


	elseif req == 274 then
		return 3,0,"정말 맛있겠다. 그거..맛있는 냄새나는거..나에게 주지 않을래? 그 대신 내가 오래전에 주은 축복의 밸러의 참고서를 줄게! 어때?",2741,"네~!좋아요!",2743,"싫어요"

	elseif req == 2741 then
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"축복의 밸러의 참고서를 넣을 공간이 부족합니다."
			else
				AddItemCount(cnum, 8494, -1)
				AddItemCount(cnum, 3710, 1)
				SetSwitchCount(cnum, 520, 1)
				return 1,0,"고마워 이거 정말 맛있다. 자 여기! 축복의 밸러의 참고서야!"
			end

	elseif req == 2743 then
		return 1,0,"아..맛있는 냄새...먹고싶다...."



	elseif req == 29 then
		return 3,0,"맞아..사실이야..이 섬에 혼자 오랫동안 지내다 보니 사람이 너무 그리워...나에게 자주 좀 와줄래? 2시간 정도 마다 나를 찾아와 줘....그 대신 내가 좋을 것을 줄게!",24,"네!",25,"아니요"

	elseif req == 30 then
		if GetItemCount(cnum, 8505, 0) < 1 then
			return 2,0,"고마워! 2시간이 지난거 같아! 네가 너무 반가워! 다시 물시계를 줄테니 2시간 뒤에 또 와! 알겠지??",42,"네~!"
		else
			return 2,0,"아직 2시간이 안지난거 같은데? 물시계가 다 되어 없어지면 나에게 다시 와줄래?",52,"네~!"
		end


	elseif req == 31 then
		Time = GetSwitchCount(cnum, 518)
		return 1,0,"음..내가 다른 건 잊어버려도.....@그건 기억 해 놨어!@음.. 지금가지 총 [ "..Time.." 번 ] 왔었어! 또 와줘!"

	elseif req == 32 then
		if GetSwitchCount(cnum, 518) < 10 then
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		else
			SetSwitchCount(cnum, 533, 1)
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		end



	elseif req == 33 then
		if GetItemCount(cnum, 8502, 0) > 0 then
			return 2,0,"이야~빨리 구해왔구나! 좋아~잠시만 기다려줘! 내가 횃불을 만들고!",34,"네!"
		else
			return 1,0,"에이! 바짝마른 나뭇가지가 없는데? 섬 어딘가에 있을테니 구해와~! 횃불을 만들려면 바짝마른 나뭇가지는 꼭 있어야 해!!"
		end

	elseif req == 34 then
		AddItemCount(cnum, 8502, -1)
		SetSwitchCount(cnum, 522, 1)
		return 2,0,"자...나뭇가지를 다듬고..뚝딱...뚝딱@쓰윽...쓰윽..헝겊을 나뭇가지에 감고.....그리고..........아까운 기름에 적셔서............................",35,"언제되나요?"

	elseif req == 35 then
		return 2,0,"자! 완성! 이제 가자!",36,"어딜가나요??"

	elseif req == 36 then
		return 2,0,"음? 음..................@그곳에 들어가면...소름이 돋고 오싹오싹하고 뱌암이 많으니까...이름은!...................................@소름오싹뱌암동굴! 가자!!",37,"에? 소름오싹뱌암동굴?"

	elseif req == 37 then
		EndQuest(cnum, 184)
		SetSwitchCount(cnum, 523, 1)

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum,196,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum,197,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum,198,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum,199,101) -- 소름오싹뱌암동굴 입구
		end



	elseif req == 38 then
		return 2,0,"어딜 갔다가 온거야! 자! 가자!!",36,"네! 근데 어디?"


	elseif req == 42 then
		if GetSwitchCount(cnum, 533) < 1 then
				if GetSwitchCount(cnum, 519) < 9 then
					if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		else
			if GetSwitchCount(cnum, 519) < 10 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		end
	end
end

function NPC_QUEST_845(cnum, reqNumber)


req = reqNumber
Lv = GetHeroLv(cnum)

-- switch#513--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 퀘스트 수락 전 대사 끊길 시
-- switch#514--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 수락
-- switch#515--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 퀘스트 수락
-- switch#516--------2010 여름방학 이벤트_02 믹마무인랜드  -> 게살 요리 제작 횟수 저장
-- switch#517--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 시작 확인
-- switch#518--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 수행 횟수 확인
-- switch#519--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 10회 아이템 지급 확인용
-- switch#520--------2010 여름방학 이벤트_02 믹마무인랜드  -> 밸러의 참고서 지급 확인용
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 꽃게킹의 튼실한 게살을 가지고 와서 바짝마른 나뭇가지 퀘스트를 받음 521 값 2
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 게살스프를 많이 끓임 521 값 1
-- switch#522--------2010 여름방학 이벤트_02 믹마무인랜드  -> 바짝마른 나뭇가지를 구해옴
-- switch#523--------2010 여름방학 이벤트_02 믹마무인랜드  -> 존 이동
-- switch#524--------2010 여름방학 이벤트_02 믹마무인랜드  -> 무인랜드 입장
-- switch#525--------2010 여름방학 이벤트_02 믹마무인랜드  -> 보물 찾음
-- switch#526--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 5완료
-- switch#527--------2010 여름방학 이벤트_02 믹마무인랜드  -> 소름오싹뱌암동굴 퇴장


	if req == 1 then
		if GetSwitchCount(cnum, 526) < 1 then
			if GetSwitchCount(cnum, 525) < 1 then
				if GetSwitchCount(cnum, 514) < 1 then -- 퀘스트 1을 수락하지 않은 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 513) < 1 then -- 처음 말 걸었을 때
						return 3,0,"가나다라마바사아자차카타파하~!에~헤에에~~~~~~~~~~~~~~~~~우~헤~우~헤~!!@케~~~엑!! 까~암짝! 놀라버렸잖아! 야아! 너는 사람이냐! 귀신이냐!!",2,"아..안녕하세요",3,"뭐지..관심없어요"
					elseif GetSwitchCount(cnum, 513) == 1 then -- 퀘스트 1 받기 전 1/4 / 말 끊기고 다시 말 걸었을 때
						return 2,0,"에에? 다시왔네? 역시 내가 여기 왜 있는지 궁금했구나? 내 이야기를 잘 들어봐~!",20,"네~!"
					elseif GetSwitchCount(cnum, 513) == 2 then -- 퀘스트 1 받기 전 2/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"내가! 아까 하던 이야기가 생각났어! 나의 선장 쿨라파님의 이야기를 하고 있었던거 같은데 맞지?",16,"네! 그런거 같아요..",22,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 3 then -- 퀘스트 1 받기 전 3/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"분명해! 내가 아까 하던 이야기가 생각났어! 나의 쿨라파 선장님의 이야기를 하고 있었어!",16,"네! 그런거 같아요..",23,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 4 then --퀘스트 1 받기 전 4/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"역시 다시 올 줄 알았어! 나의 게살 스프는 절대 거절할 수 없을거야!! 해변의 꽃게를 잡아와!! 내가 맛있는 게살스프를 끓여줄게! 나 배가 무지 고프다구!",19,"네!",21,"싫어요!"
					else
						return 1,0,"[이 메시지가 나오면 안됩니다!!!]"
					end

				elseif GetSwitchCount(cnum, 514) == 1 then  -- 퀘스트 1을 수락한 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								if GetSwitchCount(cnum, 517) < 1 then
									return 2,0,"아! 왔구나! 너무 보고 싶었어!@이곳에만 혼자 있다보니..사람이 너무 그리워!@맛있는 꽃게보다 네가 더 보고 싶을 정도였다구.........흐...윽....외로워...",24,"그렇군요.."
								else
									return 3,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 고마워! 또 와줬구나!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!"
								end
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물을 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",39,"동굴을 들어가려고요!"
						end
					end


				elseif GetSwitchCount(cnum, 514) == 2 then  -- 퀘스트 1을 수락한 상태에서 퀘스트 2(출석체크)를 거부 했을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								return 3,0,"아! 왔구나! 무슨 일 때문에 왔어?",27,"꽃게를 가져왔어요",29,"아저씨가 외로워 보여서요"
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물의 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",39,"동굴을 들어가려고요!"
						end
					end

				else
					return 1,0,"이 메시지가 나오면 안됩니다."
				end
			else
				return 2,0,"오래 걸렸네? 소름오싹뱌암동굴 깊이 들어갔다 온 것 같은데? 혹시 보물을 찾았어?",1000,"네"
			end
		else
			return 3,0,"아! 다시 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요"
		end


	elseif req == 1000 then
		if GetItemCount(cnum, 8503, 0) == 1 then
			return 2,0,"혹시....그 번쩍이는 황금상자는.....보물상자!!!!????",1001,"그런 것 같아요"
		elseif  GetItemCount(cnum, 8504, 0) == 1 then
			return 2,0,"그러면 뭔가 반짝이는 것이...있어야...할텐데...",1002,"그게.."
		end

	elseif req == 1001 then
		return 2,0,"이리 줘봐! 끼익....끼익...텅! 오옷!!! 상자가 열렸다!!!",1003,"..."

	elseif req == 1003 then
		return 2,0,"아..이 종이는 뭐지...이 문자는...우리 쿨라파선장님과 우리들이 쓰던 암호??? 에헴! 어디 읽어볼까...중얼중얼중얼...아...중얼중얼..중얼...중얼...중얼...",1004,"..."

	elseif req == 1004 then
		AddSkillPoint(cnum, 15)
		AddItemCount(cnum, 8503, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1005,"종이가 타버렸네요"

	elseif req == 1005 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1006,"..."

	elseif req == 1006 then
		return 2,0,"[스킬 포인트가 15 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"

	elseif req == 1007 then
		EndQuest(cnum, 185)
		SetSwitchCount(cnum, 526, 1)
		return 2,0,"사실은 네가 보물을 찾은거니까...정말 이제 한을 풀었어...보물이라고 해서..나는 삐가뻔쩍 황금인 줄 알았는데..아니였구나..그래도 괜찮아! 내 집으로 돌아가자!",1008,"네"

	elseif req == 1008 then
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 192, 102)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 193, 102)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 194, 102)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 195, 102)
		end



	elseif req == 1002 then
		return 2,0,"뭐지? 손에 든 그 낡은 종이는???",1009,"이..종이.."

	elseif req == 1009 then
		return 2,0,"이리 줘봐! 아니! 이 문자는...우리 쿨라파 선장님과 우리들이 쓰던 암호잖아?!? 에헴!! 어디 읽어볼까...중얼중얼..중얼...중얼..중얼...중얼....중얼...",1010,"..."

	elseif req == 1010 then
		AddSkillPoint(cnum, 10)
		AddItemCount(cnum, 8504, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1111,"종이가 타버렸네요"

	elseif req == 1111 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1112,"..."

	elseif req == 1112 then
		return 2,0,"[스킬 포인트가 10 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"


	elseif req == 39 then
		StartQuest(cnum, 185)
		SetSwitchCount(cnum, 523, 2)
		return 2,0,"좋아! 지금 들어간다! 내가! 내가! 용기를 내서 같이 들어간다!!",41,"네!"


	elseif req == 40 then
		return 1,0,"알겠어! 만반의 준비를 하고 조금 있다가 다시와!"

	elseif req == 41 then -- 레벨에 맞는 동굴로 입장
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 204, 254)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 205, 254)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 206, 254)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 207, 254)
		end



	elseif req == 2 then
		return 3,0,"내..내가 너무 놀랐잖아!@여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 3 then
		return 3,0,"뭐..뭐야! 여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 4 then
		return 3,0,"페르보..페르보 선장님!? 그 분이 아직 살아 계시다니..한번 보고 싶군...그런데 나는 여기서 떠날 수가 없어. 아니 여기 있을테야..!",6,"왜 여기 있나요?",7,"그렇군요"

	elseif req == 5 then
		return 3,0,"아르젬!? 그건 내 이름인데! 내 이름을 어떻게 알지?!",6,"왜 여기 있나요?",4,"페르보 선장님이.."

	elseif req == 6 then
		return 3,0,"......그건 안돼..알려줄 수 없어.. 절대..안 가르쳐 줄 거야! 내가 이 섬에 엄청난 보물이 숨겨져 있다는 엄청난 사실을 말해줄 것 같아? 그럴 순 없지..!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 7 then
		return 3,0,"아..안 궁금해? 하긴 네가 이 섬에 엄청난 보물이 숨겨져 있다는 사실을 알 필요가 없지!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 8 then
		SetSwitchCount(cnum, 513, 1)
		return 1,0,"그렇지~! 그런 중요한 사실을 내가 알려줄리가 없어!"

	elseif req == 9 then
		return 3,0,"케켁! 어떻게 알았지!!! 내 보물을 빼앗으려고 하다니!! 덤벼라 이놈!!",11,"그럴까요?!",12,"방금 말씀하셨는데요.."

	elseif req == 11 then
		return 2,0,"내가 20년만 젊었어도..그러지말고..내 사연 좀 들어봐..",20,"네~!"

	elseif req == 12 then
		return 2,0,"케켁! 그렇군! 내 정신이야..이왕 이렇게 된 거 말해주지..",20,"네~!"

	elseif req == 13 then
		return 2,0,"아..아무튼 많이 지났어.................................",14,"네.."

	elseif req == 14 then
		return 3,0,"..............................그런데.....무슨 이야길 하고 있었지?!",15,"모르겠는데요..",16,"쿨라파 선장님요.."

	elseif req == 15 then
		SetSwitchCount(cnum, 513, 2) -- 도중 말 끊김
		return 1,0,"아...너도 모르면 어떻게 해...끄응...내가 생각 좀 해볼게...!"

	elseif req == 16 then
		return 2,0,"그렇지! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 17 then
		return 2,0,"내가..왜인지 모르지만 던전 안에는 이상한 기운이 감돌고 있었어!..정말 동굴 안은 내가 온몸이 오싹하다고! 무엇인가 나를 노려보고 있는거 같아..그 뒤로 수 차례 도전을 했지만..내가 매번 실패했어..!!",18,"그렇군요"

	elseif req == 18 then
		return 3,0,"내가...이야기를 너무 많이했나..배고파 힘이 없어...저기 해변에 널려있는 꽃게들을 좀 잡아와 줘! 그러면 내가 맛있는 게살스프를 끓여줄게~! 우선 먹고 다시 이야기하자!",19,"네~! 그러죠!",21,"싫어요"

	elseif req == 19 then
		StartQuest(cnum, 182) -- 게잡기 퀘스트 창 팝업
		SetSwitchCount(cnum, 514, 1) -- 게잡기 퀘스트 수락
		return 1,0,"좋아 고마워! 내가 배가 많이 고프니까 최대한 많이 잡아와!! 내가 부탁해!"

	elseif req == 20 then
		return 3,0,"20년 전...나의 두목! 시원시원한 파도같은 성격을 가진 쿨라파 선장님께서 나의 동료 선원들과 함께 이 섬 중앙에 있는 굴에 있는 엄청난 보물을 찾으러 들어가셨지..하지만 하루가 지나고 이틀이 지나고...그리고 얼마더라...아무튼 아주 많이 지났지...",13,"그래서요?",14,"재미없어요.."

	elseif req == 21 then
		SetSwitchCount(cnum, 513, 4)
		return 1,0,"어쩔 수 없군! 꽃게 잡아다 줄 생각이 생기면 다시와!!"

	elseif req == 22 then
		SetSwitchCount(cnum, 513, 3)
		return 1,0,"아닌가...내가 무슨 이야길하고 있었지...내가 더 생각해 볼게...."

	elseif req == 23 then
		return 2,0,"아무튼! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 24 then
		return 3,0,"저기 너 혹시 나에게 좀 자주 와 줄래? 나랑 와서 이야기도 하고 게살스프도 끓여먹고 말야...너무 외로워서 그래..",241,"네!",25,"싫어요"

	elseif req == 241 then
		return 3,0,"이얏~호! 정말이야? 내가 너무 기쁘잖아! 내가 만든 2시간 짜리 물시계를 줄게! 지금부터 2시간이 지나면 물시계가 사라질거야! 그러면 나에게 또 다시 와줘!@대신 10번 올 때마다 내가 20년간 이 섬 여기저기서 모은 보물들을 나눠 줄게!",26,"네~!",25,"싫어요"

	elseif req == 25 then
		SetSwitchCount(cnum, 514, 2) --퀘스트 2 거부
		return 1,0,"뭐..싫으면 어쩔 수 없지.."

	elseif req == 26 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아르젬의 물시계를 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			SetSwitchCount(cnum, 514, 1) -- 퀘스트 1 수락
			AddSwitchCount(cnum, 517, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 518, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8505, 1)
			StartQuest(cnum, 183) -- 출석체크 퀘스트 창 팝업
			return 1,0,"히히히! 좋아! 자~! 여기 물시계야! 2시간이 지나고 물시계가 없어지면 다시 와야 해! 꼭!"
		end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 27 then


		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8501, 0) < 1 then
				if GetItemCount(cnum, 8494, 0) < 1 then
					if GetSwitchCount(cnum, 521) < 1 then
						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

					else

						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
					end

				else -- 힘이펄펄 삼계탕을 가지고 있을 때
					if GetSwitchCount(cnum, 520) < 1 then
						return 3,0,"아니..잠깐만 너에게서 아주 좋은 냄새가 나는데? 이건 무슨 냄새지? 정말 맛있는 냄새가나!",274,"아..힘이펄펄 삼계탕요?",2742,"게살스프나 끓여주세요!"
					else
						if GetSwitchCount(cnum, 521) < 1 then
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

						else
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"

						end

					end
				end

			else -- 꽃게킹의 튼실한 속살을 가지고 있을 때
				if GetSwitchCount(cnum, 521) == 2 then
					return 2,0,"아니..설마! 또 꽃게킹을 쓰러뜨린거야!!?",276,"네!"
				else
					return 2,0,"아니..그것은! 설마! 너 꽃게킹을 쓰러뜨린거야!!?",275,"네!"
				end

			end
		end

	elseif req == 276 then
		AddItemCount(cnum, 8512, 1) -- 영양듬뿍 게살스프 지급
		AddItemCount(cnum, 8501, -1) -- 꽃게킹의 튼실한 게살
		return 1,0,"너 정말 강하구나! 좋아! 내가 금방 정말! 맛있는 게살스프를 끓여줄게!@역시 꽃게킹의 튼실한 게살로 만든 스프의 맛은 환상적이야! 자! 먹어봐!"

	elseif req == 2742 then
		if GetSwitchCount(cnum, 521) < 1 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"
			end

		else
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
			end
		end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 271 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2711,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2711 then
		AddSwitchCount(cnum, 516, 2)
		AddItemCount(cnum, 8500, -5)
		AddItemCount(cnum, 8509, 1)
		return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"

	elseif req == 272 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2721,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2721 then
		AddSwitchCount(cnum, 516, 3)
		AddItemCount(cnum, 8500, -10)
		AddItemCount(cnum, 8510, 1)
		return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"


	elseif req == 273 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2731,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2731 then
		AddSwitchCount(cnum, 516, 6)
		AddItemCount(cnum, 8500, -15)
		AddItemCount(cnum, 8511, 1)
		return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 281 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2811,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2811 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 2)
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"묽은 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


	elseif req == 282 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2821,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2821 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 3)
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end



	elseif req == 283 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2831,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2831 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 6)
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	elseif req == 275 then
		if GetSwitchCount(cnum, 521) < 1 then
			EndQuest(cnum, 182)
			return 2,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 너 정도면 충분히 소름오싹뱌암동굴에 들어갈 수 있겠어! 자~준비하자~!",2752,"그건..어딘가요??"
		else
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			return 1,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 이야! 정말 대단하구나! 이거로 정말 맛있는 스프를 끓여줄게.....자~! 여기! 정말 맛있는 스프야!!"
		end


	elseif req == 2752 then
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"



	elseif req == 1011 then
		if GetSwitchCount(cnum, 521) < 2 then
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!"
		else
			SetSwitchCount(cnum, 521, 2)
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"좋아~! 기다릴게!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"
		end


	elseif req == 274 then
		return 3,0,"정말 맛있겠다. 그거..맛있는 냄새나는거..나에게 주지 않을래? 그 대신 내가 오래전에 주은 축복의 밸러의 참고서를 줄게! 어때?",2741,"네~!좋아요!",2743,"싫어요"

	elseif req == 2741 then
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"축복의 밸러의 참고서를 넣을 공간이 부족합니다."
			else
				AddItemCount(cnum, 8494, -1)
				AddItemCount(cnum, 3710, 1)
				SetSwitchCount(cnum, 520, 1)
				return 1,0,"고마워 이거 정말 맛있다. 자 여기! 축복의 밸러의 참고서야!"
			end

	elseif req == 2743 then
		return 1,0,"아..맛있는 냄새...먹고싶다...."



	elseif req == 29 then
		return 3,0,"맞아..사실이야..이 섬에 혼자 오랫동안 지내다 보니 사람이 너무 그리워...나에게 자주 좀 와줄래? 2시간 정도 마다 나를 찾아와 줘....그 대신 내가 좋을 것을 줄게!",24,"네!",25,"아니요"

	elseif req == 30 then
		if GetItemCount(cnum, 8505, 0) < 1 then
			return 2,0,"고마워! 2시간이 지난거 같아! 네가 너무 반가워! 다시 물시계를 줄테니 2시간 뒤에 또 와! 알겠지??",42,"네~!"
		else
			return 2,0,"아직 2시간이 안지난거 같은데? 물시계가 다 되어 없어지면 나에게 다시 와줄래?",52,"네~!"
		end


	elseif req == 31 then
		Time = GetSwitchCount(cnum, 518)
		return 1,0,"음..내가 다른 건 잊어버려도.....@그건 기억 해 놨어!@음.. 지금가지 총 [ "..Time.." 번 ] 왔었어! 또 와줘!"

	elseif req == 32 then
		if GetSwitchCount(cnum, 518) < 10 then
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		else
			SetSwitchCount(cnum, 533, 1)
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		end



	elseif req == 33 then
		if GetItemCount(cnum, 8502, 0) > 0 then
			return 2,0,"이야~빨리 구해왔구나! 좋아~잠시만 기다려줘! 내가 횃불을 만들고!",34,"네!"
		else
			return 1,0,"에이! 바짝마른 나뭇가지가 없는데? 섬 어딘가에 있을테니 구해와~! 횃불을 만들려면 바짝마른 나뭇가지는 꼭 있어야 해!!"
		end

	elseif req == 34 then
		AddItemCount(cnum, 8502, -1)
		SetSwitchCount(cnum, 522, 1)
		return 2,0,"자...나뭇가지를 다듬고..뚝딱...뚝딱@쓰윽...쓰윽..헝겊을 나뭇가지에 감고.....그리고..........아까운 기름에 적셔서............................",35,"언제되나요?"

	elseif req == 35 then
		return 2,0,"자! 완성! 이제 가자!",36,"어딜가나요??"

	elseif req == 36 then
		return 2,0,"음? 음..................@그곳에 들어가면...소름이 돋고 오싹오싹하고 뱌암이 많으니까...이름은!...................................@소름오싹뱌암동굴! 가자!!",37,"에? 소름오싹뱌암동굴?"

	elseif req == 37 then
		EndQuest(cnum, 184)
		SetSwitchCount(cnum, 523, 1)

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum,196,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum,197,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum,198,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum,199,101) -- 소름오싹뱌암동굴 입구
		end



	elseif req == 38 then
		return 2,0,"어딜 갔다가 온거야! 자! 가자!!",36,"네! 근데 어디?"


	elseif req == 42 then
		if GetSwitchCount(cnum, 533) < 1 then
				if GetSwitchCount(cnum, 519) < 9 then
					if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		else
			if GetSwitchCount(cnum, 519) < 10 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		end
	end
end

function NPC_QUEST_846(cnum, reqNumber)


req = reqNumber
Lv = GetHeroLv(cnum)

-- switch#513--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 퀘스트 수락 전 대사 끊길 시
-- switch#514--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 수락
-- switch#515--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 퀘스트 수락
-- switch#516--------2010 여름방학 이벤트_02 믹마무인랜드  -> 게살 요리 제작 횟수 저장
-- switch#517--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 시작 확인
-- switch#518--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 수행 횟수 확인
-- switch#519--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 10회 아이템 지급 확인용
-- switch#520--------2010 여름방학 이벤트_02 믹마무인랜드  -> 밸러의 참고서 지급 확인용
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 꽃게킹의 튼실한 게살을 가지고 와서 바짝마른 나뭇가지 퀘스트를 받음 521 값 2
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 게살스프를 많이 끓임 521 값 1
-- switch#522--------2010 여름방학 이벤트_02 믹마무인랜드  -> 바짝마른 나뭇가지를 구해옴
-- switch#523--------2010 여름방학 이벤트_02 믹마무인랜드  -> 존 이동
-- switch#524--------2010 여름방학 이벤트_02 믹마무인랜드  -> 무인랜드 입장
-- switch#525--------2010 여름방학 이벤트_02 믹마무인랜드  -> 보물 찾음
-- switch#526--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 5완료
-- switch#527--------2010 여름방학 이벤트_02 믹마무인랜드  -> 소름오싹뱌암동굴 퇴장


	if req == 1 then
		if GetSwitchCount(cnum, 526) < 1 then
			if GetSwitchCount(cnum, 525) < 1 then
				if GetSwitchCount(cnum, 514) < 1 then -- 퀘스트 1을 수락하지 않은 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 513) < 1 then -- 처음 말 걸었을 때
						return 3,0,"가나다라마바사아자차카타파하~!에~헤에에~~~~~~~~~~~~~~~~~우~헤~우~헤~!!@케~~~엑!! 까~암짝! 놀라버렸잖아! 야아! 너는 사람이냐! 귀신이냐!!",2,"아..안녕하세요",3,"뭐지..관심없어요"
					elseif GetSwitchCount(cnum, 513) == 1 then -- 퀘스트 1 받기 전 1/4 / 말 끊기고 다시 말 걸었을 때
						return 2,0,"에에? 다시왔네? 역시 내가 여기 왜 있는지 궁금했구나? 내 이야기를 잘 들어봐~!",20,"네~!"
					elseif GetSwitchCount(cnum, 513) == 2 then -- 퀘스트 1 받기 전 2/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"내가! 아까 하던 이야기가 생각났어! 나의 선장 쿨라파님의 이야기를 하고 있었던거 같은데 맞지?",16,"네! 그런거 같아요..",22,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 3 then -- 퀘스트 1 받기 전 3/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"분명해! 내가 아까 하던 이야기가 생각났어! 나의 쿨라파 선장님의 이야기를 하고 있었어!",16,"네! 그런거 같아요..",23,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 4 then --퀘스트 1 받기 전 4/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"역시 다시 올 줄 알았어! 나의 게살 스프는 절대 거절할 수 없을거야!! 해변의 꽃게를 잡아와!! 내가 맛있는 게살스프를 끓여줄게! 나 배가 무지 고프다구!",19,"네!",21,"싫어요!"
					else
						return 1,0,"[이 메시지가 나오면 안됩니다!!!]"
					end

				elseif GetSwitchCount(cnum, 514) == 1 then  -- 퀘스트 1을 수락한 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								if GetSwitchCount(cnum, 517) < 1 then
									return 2,0,"아! 왔구나! 너무 보고 싶었어!@이곳에만 혼자 있다보니..사람이 너무 그리워!@맛있는 꽃게보다 네가 더 보고 싶을 정도였다구.........흐...윽....외로워...",24,"그렇군요.."
								else
									return 3,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 고마워! 또 와줬구나!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!"
								end
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물을 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",39,"동굴을 들어가려고요!"
						end
					end


				elseif GetSwitchCount(cnum, 514) == 2 then  -- 퀘스트 1을 수락한 상태에서 퀘스트 2(출석체크)를 거부 했을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								return 3,0,"아! 왔구나! 무슨 일 때문에 왔어?",27,"꽃게를 가져왔어요",29,"아저씨가 외로워 보여서요"
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물의 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",39,"동굴을 들어가려고요!"
						end
					end

				else
					return 1,0,"이 메시지가 나오면 안됩니다."
				end
			else
				return 2,0,"오래 걸렸네? 소름오싹뱌암동굴 깊이 들어갔다 온 것 같은데? 혹시 보물을 찾았어?",1000,"네"
			end
		else
			return 3,0,"아! 다시 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요"
		end


	elseif req == 1000 then
		if GetItemCount(cnum, 8503, 0) == 1 then
			return 2,0,"혹시....그 번쩍이는 황금상자는.....보물상자!!!!????",1001,"그런 것 같아요"
		elseif  GetItemCount(cnum, 8504, 0) == 1 then
			return 2,0,"그러면 뭔가 반짝이는 것이...있어야...할텐데...",1002,"그게.."
		end

	elseif req == 1001 then
		return 2,0,"이리 줘봐! 끼익....끼익...텅! 오옷!!! 상자가 열렸다!!!",1003,"..."

	elseif req == 1003 then
		return 2,0,"아..이 종이는 뭐지...이 문자는...우리 쿨라파선장님과 우리들이 쓰던 암호??? 에헴! 어디 읽어볼까...중얼중얼중얼...아...중얼중얼..중얼...중얼...중얼...",1004,"..."

	elseif req == 1004 then
		AddSkillPoint(cnum, 15)
		AddItemCount(cnum, 8503, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1005,"종이가 타버렸네요"

	elseif req == 1005 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1006,"..."

	elseif req == 1006 then
		return 2,0,"[스킬 포인트가 15 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"

	elseif req == 1007 then
		EndQuest(cnum, 185)
		SetSwitchCount(cnum, 526, 1)
		return 2,0,"사실은 네가 보물을 찾은거니까...정말 이제 한을 풀었어...보물이라고 해서..나는 삐가뻔쩍 황금인 줄 알았는데..아니였구나..그래도 괜찮아! 내 집으로 돌아가자!",1008,"네"

	elseif req == 1008 then
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 192, 102)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 193, 102)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 194, 102)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 195, 102)
		end



	elseif req == 1002 then
		return 2,0,"뭐지? 손에 든 그 낡은 종이는???",1009,"이..종이.."

	elseif req == 1009 then
		return 2,0,"이리 줘봐! 아니! 이 문자는...우리 쿨라파 선장님과 우리들이 쓰던 암호잖아?!? 에헴!! 어디 읽어볼까...중얼중얼..중얼...중얼..중얼...중얼....중얼...",1010,"..."

	elseif req == 1010 then
		AddSkillPoint(cnum, 10)
		AddItemCount(cnum, 8504, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1111,"종이가 타버렸네요"

	elseif req == 1111 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1112,"..."

	elseif req == 1112 then
		return 2,0,"[스킬 포인트가 10 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"


	elseif req == 39 then
		StartQuest(cnum, 185)
		SetSwitchCount(cnum, 523, 2)
		return 2,0,"좋아! 지금 들어간다! 내가! 내가! 용기를 내서 같이 들어간다!!",41,"네!"


	elseif req == 40 then
		return 1,0,"알겠어! 만반의 준비를 하고 조금 있다가 다시와!"

	elseif req == 41 then -- 레벨에 맞는 동굴로 입장
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 204, 254)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 205, 254)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 206, 254)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 207, 254)
		end



	elseif req == 2 then
		return 3,0,"내..내가 너무 놀랐잖아!@여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 3 then
		return 3,0,"뭐..뭐야! 여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 4 then
		return 3,0,"페르보..페르보 선장님!? 그 분이 아직 살아 계시다니..한번 보고 싶군...그런데 나는 여기서 떠날 수가 없어. 아니 여기 있을테야..!",6,"왜 여기 있나요?",7,"그렇군요"

	elseif req == 5 then
		return 3,0,"아르젬!? 그건 내 이름인데! 내 이름을 어떻게 알지?!",6,"왜 여기 있나요?",4,"페르보 선장님이.."

	elseif req == 6 then
		return 3,0,"......그건 안돼..알려줄 수 없어.. 절대..안 가르쳐 줄 거야! 내가 이 섬에 엄청난 보물이 숨겨져 있다는 엄청난 사실을 말해줄 것 같아? 그럴 순 없지..!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 7 then
		return 3,0,"아..안 궁금해? 하긴 네가 이 섬에 엄청난 보물이 숨겨져 있다는 사실을 알 필요가 없지!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 8 then
		SetSwitchCount(cnum, 513, 1)
		return 1,0,"그렇지~! 그런 중요한 사실을 내가 알려줄리가 없어!"

	elseif req == 9 then
		return 3,0,"케켁! 어떻게 알았지!!! 내 보물을 빼앗으려고 하다니!! 덤벼라 이놈!!",11,"그럴까요?!",12,"방금 말씀하셨는데요.."

	elseif req == 11 then
		return 2,0,"내가 20년만 젊었어도..그러지말고..내 사연 좀 들어봐..",20,"네~!"

	elseif req == 12 then
		return 2,0,"케켁! 그렇군! 내 정신이야..이왕 이렇게 된 거 말해주지..",20,"네~!"

	elseif req == 13 then
		return 2,0,"아..아무튼 많이 지났어.................................",14,"네.."

	elseif req == 14 then
		return 3,0,"..............................그런데.....무슨 이야길 하고 있었지?!",15,"모르겠는데요..",16,"쿨라파 선장님요.."

	elseif req == 15 then
		SetSwitchCount(cnum, 513, 2) -- 도중 말 끊김
		return 1,0,"아...너도 모르면 어떻게 해...끄응...내가 생각 좀 해볼게...!"

	elseif req == 16 then
		return 2,0,"그렇지! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 17 then
		return 2,0,"내가..왜인지 모르지만 던전 안에는 이상한 기운이 감돌고 있었어!..정말 동굴 안은 내가 온몸이 오싹하다고! 무엇인가 나를 노려보고 있는거 같아..그 뒤로 수 차례 도전을 했지만..내가 매번 실패했어..!!",18,"그렇군요"

	elseif req == 18 then
		return 3,0,"내가...이야기를 너무 많이했나..배고파 힘이 없어...저기 해변에 널려있는 꽃게들을 좀 잡아와 줘! 그러면 내가 맛있는 게살스프를 끓여줄게~! 우선 먹고 다시 이야기하자!",19,"네~! 그러죠!",21,"싫어요"

	elseif req == 19 then
		StartQuest(cnum, 182) -- 게잡기 퀘스트 창 팝업
		SetSwitchCount(cnum, 514, 1) -- 게잡기 퀘스트 수락
		return 1,0,"좋아 고마워! 내가 배가 많이 고프니까 최대한 많이 잡아와!! 내가 부탁해!"

	elseif req == 20 then
		return 3,0,"20년 전...나의 두목! 시원시원한 파도같은 성격을 가진 쿨라파 선장님께서 나의 동료 선원들과 함께 이 섬 중앙에 있는 굴에 있는 엄청난 보물을 찾으러 들어가셨지..하지만 하루가 지나고 이틀이 지나고...그리고 얼마더라...아무튼 아주 많이 지났지...",13,"그래서요?",14,"재미없어요.."

	elseif req == 21 then
		SetSwitchCount(cnum, 513, 4)
		return 1,0,"어쩔 수 없군! 꽃게 잡아다 줄 생각이 생기면 다시와!!"

	elseif req == 22 then
		SetSwitchCount(cnum, 513, 3)
		return 1,0,"아닌가...내가 무슨 이야길하고 있었지...내가 더 생각해 볼게...."

	elseif req == 23 then
		return 2,0,"아무튼! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 24 then
		return 3,0,"저기 너 혹시 나에게 좀 자주 와 줄래? 나랑 와서 이야기도 하고 게살스프도 끓여먹고 말야...너무 외로워서 그래..",241,"네!",25,"싫어요"

	elseif req == 241 then
		return 3,0,"이얏~호! 정말이야? 내가 너무 기쁘잖아! 내가 만든 2시간 짜리 물시계를 줄게! 지금부터 2시간이 지나면 물시계가 사라질거야! 그러면 나에게 또 다시 와줘!@대신 10번 올 때마다 내가 20년간 이 섬 여기저기서 모은 보물들을 나눠 줄게!",26,"네~!",25,"싫어요"

	elseif req == 25 then
		SetSwitchCount(cnum, 514, 2) --퀘스트 2 거부
		return 1,0,"뭐..싫으면 어쩔 수 없지.."

	elseif req == 26 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아르젬의 물시계를 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			SetSwitchCount(cnum, 514, 1) -- 퀘스트 1 수락
			AddSwitchCount(cnum, 517, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 518, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8505, 1)
			StartQuest(cnum, 183) -- 출석체크 퀘스트 창 팝업
			return 1,0,"히히히! 좋아! 자~! 여기 물시계야! 2시간이 지나고 물시계가 없어지면 다시 와야 해! 꼭!"
		end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 27 then


		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8501, 0) < 1 then
				if GetItemCount(cnum, 8494, 0) < 1 then
					if GetSwitchCount(cnum, 521) < 1 then
						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

					else

						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
					end

				else -- 힘이펄펄 삼계탕을 가지고 있을 때
					if GetSwitchCount(cnum, 520) < 1 then
						return 3,0,"아니..잠깐만 너에게서 아주 좋은 냄새가 나는데? 이건 무슨 냄새지? 정말 맛있는 냄새가나!",274,"아..힘이펄펄 삼계탕요?",2742,"게살스프나 끓여주세요!"
					else
						if GetSwitchCount(cnum, 521) < 1 then
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

						else
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"

						end

					end
				end

			else -- 꽃게킹의 튼실한 속살을 가지고 있을 때
				if GetSwitchCount(cnum, 521) == 2 then
					return 2,0,"아니..설마! 또 꽃게킹을 쓰러뜨린거야!!?",276,"네!"
				else
					return 2,0,"아니..그것은! 설마! 너 꽃게킹을 쓰러뜨린거야!!?",275,"네!"
				end

			end
		end

	elseif req == 276 then
		AddItemCount(cnum, 8512, 1) -- 영양듬뿍 게살스프 지급
		AddItemCount(cnum, 8501, -1) -- 꽃게킹의 튼실한 게살
		return 1,0,"너 정말 강하구나! 좋아! 내가 금방 정말! 맛있는 게살스프를 끓여줄게!@역시 꽃게킹의 튼실한 게살로 만든 스프의 맛은 환상적이야! 자! 먹어봐!"

	elseif req == 2742 then
		if GetSwitchCount(cnum, 521) < 1 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"
			end

		else
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
			end
		end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 271 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2711,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2711 then
		AddSwitchCount(cnum, 516, 2)
		AddItemCount(cnum, 8500, -5)
		AddItemCount(cnum, 8509, 1)
		return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"

	elseif req == 272 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2721,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2721 then
		AddSwitchCount(cnum, 516, 3)
		AddItemCount(cnum, 8500, -10)
		AddItemCount(cnum, 8510, 1)
		return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"


	elseif req == 273 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2731,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2731 then
		AddSwitchCount(cnum, 516, 6)
		AddItemCount(cnum, 8500, -15)
		AddItemCount(cnum, 8511, 1)
		return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 281 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2811,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2811 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 2)
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"묽은 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


	elseif req == 282 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2821,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2821 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 3)
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end



	elseif req == 283 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2831,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2831 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 6)
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	elseif req == 275 then
		if GetSwitchCount(cnum, 521) < 1 then
			EndQuest(cnum, 182)
			return 2,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 너 정도면 충분히 소름오싹뱌암동굴에 들어갈 수 있겠어! 자~준비하자~!",2752,"그건..어딘가요??"
		else
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			return 1,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 이야! 정말 대단하구나! 이거로 정말 맛있는 스프를 끓여줄게.....자~! 여기! 정말 맛있는 스프야!!"
		end


	elseif req == 2752 then
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"



	elseif req == 1011 then
		if GetSwitchCount(cnum, 521) < 2 then
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!"
		else
			SetSwitchCount(cnum, 521, 2)
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"좋아~! 기다릴게!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"
		end


	elseif req == 274 then
		return 3,0,"정말 맛있겠다. 그거..맛있는 냄새나는거..나에게 주지 않을래? 그 대신 내가 오래전에 주은 축복의 밸러의 참고서를 줄게! 어때?",2741,"네~!좋아요!",2743,"싫어요"

	elseif req == 2741 then
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"축복의 밸러의 참고서를 넣을 공간이 부족합니다."
			else
				AddItemCount(cnum, 8494, -1)
				AddItemCount(cnum, 3710, 1)
				SetSwitchCount(cnum, 520, 1)
				return 1,0,"고마워 이거 정말 맛있다. 자 여기! 축복의 밸러의 참고서야!"
			end

	elseif req == 2743 then
		return 1,0,"아..맛있는 냄새...먹고싶다...."



	elseif req == 29 then
		return 3,0,"맞아..사실이야..이 섬에 혼자 오랫동안 지내다 보니 사람이 너무 그리워...나에게 자주 좀 와줄래? 2시간 정도 마다 나를 찾아와 줘....그 대신 내가 좋을 것을 줄게!",24,"네!",25,"아니요"

	elseif req == 30 then
		if GetItemCount(cnum, 8505, 0) < 1 then
			return 2,0,"고마워! 2시간이 지난거 같아! 네가 너무 반가워! 다시 물시계를 줄테니 2시간 뒤에 또 와! 알겠지??",42,"네~!"
		else
			return 2,0,"아직 2시간이 안지난거 같은데? 물시계가 다 되어 없어지면 나에게 다시 와줄래?",52,"네~!"
		end


	elseif req == 31 then
		Time = GetSwitchCount(cnum, 518)
		return 1,0,"음..내가 다른 건 잊어버려도.....@그건 기억 해 놨어!@음.. 지금가지 총 [ "..Time.." 번 ] 왔었어! 또 와줘!"

	elseif req == 32 then
		if GetSwitchCount(cnum, 518) < 10 then
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		else
			SetSwitchCount(cnum, 533, 1)
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		end



	elseif req == 33 then
		if GetItemCount(cnum, 8502, 0) > 0 then
			return 2,0,"이야~빨리 구해왔구나! 좋아~잠시만 기다려줘! 내가 횃불을 만들고!",34,"네!"
		else
			return 1,0,"에이! 바짝마른 나뭇가지가 없는데? 섬 어딘가에 있을테니 구해와~! 횃불을 만들려면 바짝마른 나뭇가지는 꼭 있어야 해!!"
		end

	elseif req == 34 then
		AddItemCount(cnum, 8502, -1)
		SetSwitchCount(cnum, 522, 1)
		return 2,0,"자...나뭇가지를 다듬고..뚝딱...뚝딱@쓰윽...쓰윽..헝겊을 나뭇가지에 감고.....그리고..........아까운 기름에 적셔서............................",35,"언제되나요?"

	elseif req == 35 then
		return 2,0,"자! 완성! 이제 가자!",36,"어딜가나요??"

	elseif req == 36 then
		return 2,0,"음? 음..................@그곳에 들어가면...소름이 돋고 오싹오싹하고 뱌암이 많으니까...이름은!...................................@소름오싹뱌암동굴! 가자!!",37,"에? 소름오싹뱌암동굴?"

	elseif req == 37 then
		EndQuest(cnum, 184)
		SetSwitchCount(cnum, 523, 1)

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum,196,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum,197,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum,198,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum,199,101) -- 소름오싹뱌암동굴 입구
		end



	elseif req == 38 then
		return 2,0,"어딜 갔다가 온거야! 자! 가자!!",36,"네! 근데 어디?"


	elseif req == 42 then
		if GetSwitchCount(cnum, 533) < 1 then
				if GetSwitchCount(cnum, 519) < 9 then
					if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		else
			if GetSwitchCount(cnum, 519) < 10 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		end
	end
end

function NPC_QUEST_847(cnum, reqNumber)


req = reqNumber
Lv = GetHeroLv(cnum)

-- switch#513--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 퀘스트 수락 전 대사 끊길 시
-- switch#514--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 수락
-- switch#515--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 퀘스트 수락
-- switch#516--------2010 여름방학 이벤트_02 믹마무인랜드  -> 게살 요리 제작 횟수 저장
-- switch#517--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 시작 확인
-- switch#518--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 수행 횟수 확인
-- switch#519--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 10회 아이템 지급 확인용
-- switch#520--------2010 여름방학 이벤트_02 믹마무인랜드  -> 밸러의 참고서 지급 확인용
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 꽃게킹의 튼실한 게살을 가지고 와서 바짝마른 나뭇가지 퀘스트를 받음 521 값 2
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 게살스프를 많이 끓임 521 값 1
-- switch#522--------2010 여름방학 이벤트_02 믹마무인랜드  -> 바짝마른 나뭇가지를 구해옴
-- switch#523--------2010 여름방학 이벤트_02 믹마무인랜드  -> 존 이동
-- switch#524--------2010 여름방학 이벤트_02 믹마무인랜드  -> 무인랜드 입장
-- switch#525--------2010 여름방학 이벤트_02 믹마무인랜드  -> 보물 찾음
-- switch#526--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 5완료
-- switch#527--------2010 여름방학 이벤트_02 믹마무인랜드  -> 소름오싹뱌암동굴 퇴장


	if req == 1 then
		if GetSwitchCount(cnum, 526) < 1 then
			if GetSwitchCount(cnum, 525) < 1 then
				if GetSwitchCount(cnum, 514) < 1 then -- 퀘스트 1을 수락하지 않은 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 513) < 1 then -- 처음 말 걸었을 때
						return 3,0,"가나다라마바사아자차카타파하~!에~헤에에~~~~~~~~~~~~~~~~~우~헤~우~헤~!!@케~~~엑!! 까~암짝! 놀라버렸잖아! 야아! 너는 사람이냐! 귀신이냐!!",2,"아..안녕하세요",3,"뭐지..관심없어요"
					elseif GetSwitchCount(cnum, 513) == 1 then -- 퀘스트 1 받기 전 1/4 / 말 끊기고 다시 말 걸었을 때
						return 2,0,"에에? 다시왔네? 역시 내가 여기 왜 있는지 궁금했구나? 내 이야기를 잘 들어봐~!",20,"네~!"
					elseif GetSwitchCount(cnum, 513) == 2 then -- 퀘스트 1 받기 전 2/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"내가! 아까 하던 이야기가 생각났어! 나의 선장 쿨라파님의 이야기를 하고 있었던거 같은데 맞지?",16,"네! 그런거 같아요..",22,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 3 then -- 퀘스트 1 받기 전 3/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"분명해! 내가 아까 하던 이야기가 생각났어! 나의 쿨라파 선장님의 이야기를 하고 있었어!",16,"네! 그런거 같아요..",23,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 4 then --퀘스트 1 받기 전 4/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"역시 다시 올 줄 알았어! 나의 게살 스프는 절대 거절할 수 없을거야!! 해변의 꽃게를 잡아와!! 내가 맛있는 게살스프를 끓여줄게! 나 배가 무지 고프다구!",19,"네!",21,"싫어요!"
					else
						return 1,0,"[이 메시지가 나오면 안됩니다!!!]"
					end

				elseif GetSwitchCount(cnum, 514) == 1 then  -- 퀘스트 1을 수락한 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								if GetSwitchCount(cnum, 517) < 1 then
									return 2,0,"아! 왔구나! 너무 보고 싶었어!@이곳에만 혼자 있다보니..사람이 너무 그리워!@맛있는 꽃게보다 네가 더 보고 싶을 정도였다구.........흐...윽....외로워...",24,"그렇군요.."
								else
									return 3,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 고마워! 또 와줬구나!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!"
								end
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물을 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",39,"동굴을 들어가려고요!"
						end
					end


				elseif GetSwitchCount(cnum, 514) == 2 then  -- 퀘스트 1을 수락한 상태에서 퀘스트 2(출석체크)를 거부 했을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								return 3,0,"아! 왔구나! 무슨 일 때문에 왔어?",27,"꽃게를 가져왔어요",29,"아저씨가 외로워 보여서요"
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물의 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",39,"동굴을 들어가려고요!"
						end
					end

				else
					return 1,0,"이 메시지가 나오면 안됩니다."
				end
			else
				return 2,0,"오래 걸렸네? 소름오싹뱌암동굴 깊이 들어갔다 온 것 같은데? 혹시 보물을 찾았어?",1000,"네"
			end
		else
			return 3,0,"아! 다시 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요"
		end


	elseif req == 1000 then
		if GetItemCount(cnum, 8503, 0) == 1 then
			return 2,0,"혹시....그 번쩍이는 황금상자는.....보물상자!!!!????",1001,"그런 것 같아요"
		elseif  GetItemCount(cnum, 8504, 0) == 1 then
			return 2,0,"그러면 뭔가 반짝이는 것이...있어야...할텐데...",1002,"그게.."
		end

	elseif req == 1001 then
		return 2,0,"이리 줘봐! 끼익....끼익...텅! 오옷!!! 상자가 열렸다!!!",1003,"..."

	elseif req == 1003 then
		return 2,0,"아..이 종이는 뭐지...이 문자는...우리 쿨라파선장님과 우리들이 쓰던 암호??? 에헴! 어디 읽어볼까...중얼중얼중얼...아...중얼중얼..중얼...중얼...중얼...",1004,"..."

	elseif req == 1004 then
		AddSkillPoint(cnum, 15)
		AddItemCount(cnum, 8503, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1005,"종이가 타버렸네요"

	elseif req == 1005 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1006,"..."

	elseif req == 1006 then
		return 2,0,"[스킬 포인트가 15 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"

	elseif req == 1007 then
		EndQuest(cnum, 185)
		SetSwitchCount(cnum, 526, 1)
		return 2,0,"사실은 네가 보물을 찾은거니까...정말 이제 한을 풀었어...보물이라고 해서..나는 삐가뻔쩍 황금인 줄 알았는데..아니였구나..그래도 괜찮아! 내 집으로 돌아가자!",1008,"네"

	elseif req == 1008 then
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 192, 102)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 193, 102)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 194, 102)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 195, 102)
		end



	elseif req == 1002 then
		return 2,0,"뭐지? 손에 든 그 낡은 종이는???",1009,"이..종이.."

	elseif req == 1009 then
		return 2,0,"이리 줘봐! 아니! 이 문자는...우리 쿨라파 선장님과 우리들이 쓰던 암호잖아?!? 에헴!! 어디 읽어볼까...중얼중얼..중얼...중얼..중얼...중얼....중얼...",1010,"..."

	elseif req == 1010 then
		AddSkillPoint(cnum, 10)
		AddItemCount(cnum, 8504, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1111,"종이가 타버렸네요"

	elseif req == 1111 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1112,"..."

	elseif req == 1112 then
		return 2,0,"[스킬 포인트가 10 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"


	elseif req == 39 then
		StartQuest(cnum, 185)
		SetSwitchCount(cnum, 523, 2)
		return 2,0,"좋아! 지금 들어간다! 내가! 내가! 용기를 내서 같이 들어간다!!",41,"네!"


	elseif req == 40 then
		return 1,0,"알겠어! 만반의 준비를 하고 조금 있다가 다시와!"

	elseif req == 41 then -- 레벨에 맞는 동굴로 입장
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 204, 254)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 205, 254)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 206, 254)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 207, 254)
		end



	elseif req == 2 then
		return 3,0,"내..내가 너무 놀랐잖아!@여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 3 then
		return 3,0,"뭐..뭐야! 여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 4 then
		return 3,0,"페르보..페르보 선장님!? 그 분이 아직 살아 계시다니..한번 보고 싶군...그런데 나는 여기서 떠날 수가 없어. 아니 여기 있을테야..!",6,"왜 여기 있나요?",7,"그렇군요"

	elseif req == 5 then
		return 3,0,"아르젬!? 그건 내 이름인데! 내 이름을 어떻게 알지?!",6,"왜 여기 있나요?",4,"페르보 선장님이.."

	elseif req == 6 then
		return 3,0,"......그건 안돼..알려줄 수 없어.. 절대..안 가르쳐 줄 거야! 내가 이 섬에 엄청난 보물이 숨겨져 있다는 엄청난 사실을 말해줄 것 같아? 그럴 순 없지..!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 7 then
		return 3,0,"아..안 궁금해? 하긴 네가 이 섬에 엄청난 보물이 숨겨져 있다는 사실을 알 필요가 없지!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 8 then
		SetSwitchCount(cnum, 513, 1)
		return 1,0,"그렇지~! 그런 중요한 사실을 내가 알려줄리가 없어!"

	elseif req == 9 then
		return 3,0,"케켁! 어떻게 알았지!!! 내 보물을 빼앗으려고 하다니!! 덤벼라 이놈!!",11,"그럴까요?!",12,"방금 말씀하셨는데요.."

	elseif req == 11 then
		return 2,0,"내가 20년만 젊었어도..그러지말고..내 사연 좀 들어봐..",20,"네~!"

	elseif req == 12 then
		return 2,0,"케켁! 그렇군! 내 정신이야..이왕 이렇게 된 거 말해주지..",20,"네~!"

	elseif req == 13 then
		return 2,0,"아..아무튼 많이 지났어.................................",14,"네.."

	elseif req == 14 then
		return 3,0,"..............................그런데.....무슨 이야길 하고 있었지?!",15,"모르겠는데요..",16,"쿨라파 선장님요.."

	elseif req == 15 then
		SetSwitchCount(cnum, 513, 2) -- 도중 말 끊김
		return 1,0,"아...너도 모르면 어떻게 해...끄응...내가 생각 좀 해볼게...!"

	elseif req == 16 then
		return 2,0,"그렇지! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 17 then
		return 2,0,"내가..왜인지 모르지만 던전 안에는 이상한 기운이 감돌고 있었어!..정말 동굴 안은 내가 온몸이 오싹하다고! 무엇인가 나를 노려보고 있는거 같아..그 뒤로 수 차례 도전을 했지만..내가 매번 실패했어..!!",18,"그렇군요"

	elseif req == 18 then
		return 3,0,"내가...이야기를 너무 많이했나..배고파 힘이 없어...저기 해변에 널려있는 꽃게들을 좀 잡아와 줘! 그러면 내가 맛있는 게살스프를 끓여줄게~! 우선 먹고 다시 이야기하자!",19,"네~! 그러죠!",21,"싫어요"

	elseif req == 19 then
		StartQuest(cnum, 182) -- 게잡기 퀘스트 창 팝업
		SetSwitchCount(cnum, 514, 1) -- 게잡기 퀘스트 수락
		return 1,0,"좋아 고마워! 내가 배가 많이 고프니까 최대한 많이 잡아와!! 내가 부탁해!"

	elseif req == 20 then
		return 3,0,"20년 전...나의 두목! 시원시원한 파도같은 성격을 가진 쿨라파 선장님께서 나의 동료 선원들과 함께 이 섬 중앙에 있는 굴에 있는 엄청난 보물을 찾으러 들어가셨지..하지만 하루가 지나고 이틀이 지나고...그리고 얼마더라...아무튼 아주 많이 지났지...",13,"그래서요?",14,"재미없어요.."

	elseif req == 21 then
		SetSwitchCount(cnum, 513, 4)
		return 1,0,"어쩔 수 없군! 꽃게 잡아다 줄 생각이 생기면 다시와!!"

	elseif req == 22 then
		SetSwitchCount(cnum, 513, 3)
		return 1,0,"아닌가...내가 무슨 이야길하고 있었지...내가 더 생각해 볼게...."

	elseif req == 23 then
		return 2,0,"아무튼! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 24 then
		return 3,0,"저기 너 혹시 나에게 좀 자주 와 줄래? 나랑 와서 이야기도 하고 게살스프도 끓여먹고 말야...너무 외로워서 그래..",241,"네!",25,"싫어요"

	elseif req == 241 then
		return 3,0,"이얏~호! 정말이야? 내가 너무 기쁘잖아! 내가 만든 2시간 짜리 물시계를 줄게! 지금부터 2시간이 지나면 물시계가 사라질거야! 그러면 나에게 또 다시 와줘!@대신 10번 올 때마다 내가 20년간 이 섬 여기저기서 모은 보물들을 나눠 줄게!",26,"네~!",25,"싫어요"

	elseif req == 25 then
		SetSwitchCount(cnum, 514, 2) --퀘스트 2 거부
		return 1,0,"뭐..싫으면 어쩔 수 없지.."

	elseif req == 26 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아르젬의 물시계를 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			SetSwitchCount(cnum, 514, 1) -- 퀘스트 1 수락
			AddSwitchCount(cnum, 517, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 518, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8505, 1)
			StartQuest(cnum, 183) -- 출석체크 퀘스트 창 팝업
			return 1,0,"히히히! 좋아! 자~! 여기 물시계야! 2시간이 지나고 물시계가 없어지면 다시 와야 해! 꼭!"
		end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 27 then


		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8501, 0) < 1 then
				if GetItemCount(cnum, 8494, 0) < 1 then
					if GetSwitchCount(cnum, 521) < 1 then
						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

					else

						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
					end

				else -- 힘이펄펄 삼계탕을 가지고 있을 때
					if GetSwitchCount(cnum, 520) < 1 then
						return 3,0,"아니..잠깐만 너에게서 아주 좋은 냄새가 나는데? 이건 무슨 냄새지? 정말 맛있는 냄새가나!",274,"아..힘이펄펄 삼계탕요?",2742,"게살스프나 끓여주세요!"
					else
						if GetSwitchCount(cnum, 521) < 1 then
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

						else
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"

						end

					end
				end

			else -- 꽃게킹의 튼실한 속살을 가지고 있을 때
				if GetSwitchCount(cnum, 521) == 2 then
					return 2,0,"아니..설마! 또 꽃게킹을 쓰러뜨린거야!!?",276,"네!"
				else
					return 2,0,"아니..그것은! 설마! 너 꽃게킹을 쓰러뜨린거야!!?",275,"네!"
				end

			end
		end

	elseif req == 276 then
		AddItemCount(cnum, 8512, 1) -- 영양듬뿍 게살스프 지급
		AddItemCount(cnum, 8501, -1) -- 꽃게킹의 튼실한 게살
		return 1,0,"너 정말 강하구나! 좋아! 내가 금방 정말! 맛있는 게살스프를 끓여줄게!@역시 꽃게킹의 튼실한 게살로 만든 스프의 맛은 환상적이야! 자! 먹어봐!"

	elseif req == 2742 then
		if GetSwitchCount(cnum, 521) < 1 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"
			end

		else
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
			end
		end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 271 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2711,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2711 then
		AddSwitchCount(cnum, 516, 2)
		AddItemCount(cnum, 8500, -5)
		AddItemCount(cnum, 8509, 1)
		return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"

	elseif req == 272 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2721,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2721 then
		AddSwitchCount(cnum, 516, 3)
		AddItemCount(cnum, 8500, -10)
		AddItemCount(cnum, 8510, 1)
		return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"


	elseif req == 273 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2731,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2731 then
		AddSwitchCount(cnum, 516, 6)
		AddItemCount(cnum, 8500, -15)
		AddItemCount(cnum, 8511, 1)
		return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 281 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2811,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2811 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 2)
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"묽은 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


	elseif req == 282 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2821,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2821 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 3)
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end



	elseif req == 283 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2831,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2831 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 6)
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	elseif req == 275 then
		if GetSwitchCount(cnum, 521) < 1 then
			EndQuest(cnum, 182)
			return 2,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 너 정도면 충분히 소름오싹뱌암동굴에 들어갈 수 있겠어! 자~준비하자~!",2752,"그건..어딘가요??"
		else
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			return 1,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 이야! 정말 대단하구나! 이거로 정말 맛있는 스프를 끓여줄게.....자~! 여기! 정말 맛있는 스프야!!"
		end


	elseif req == 2752 then
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"



	elseif req == 1011 then
		if GetSwitchCount(cnum, 521) < 2 then
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!"
		else
			SetSwitchCount(cnum, 521, 2)
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"좋아~! 기다릴게!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"
		end


	elseif req == 274 then
		return 3,0,"정말 맛있겠다. 그거..맛있는 냄새나는거..나에게 주지 않을래? 그 대신 내가 오래전에 주은 축복의 밸러의 참고서를 줄게! 어때?",2741,"네~!좋아요!",2743,"싫어요"

	elseif req == 2741 then
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"축복의 밸러의 참고서를 넣을 공간이 부족합니다."
			else
				AddItemCount(cnum, 8494, -1)
				AddItemCount(cnum, 3710, 1)
				SetSwitchCount(cnum, 520, 1)
				return 1,0,"고마워 이거 정말 맛있다. 자 여기! 축복의 밸러의 참고서야!"
			end

	elseif req == 2743 then
		return 1,0,"아..맛있는 냄새...먹고싶다...."



	elseif req == 29 then
		return 3,0,"맞아..사실이야..이 섬에 혼자 오랫동안 지내다 보니 사람이 너무 그리워...나에게 자주 좀 와줄래? 2시간 정도 마다 나를 찾아와 줘....그 대신 내가 좋을 것을 줄게!",24,"네!",25,"아니요"

	elseif req == 30 then
		if GetItemCount(cnum, 8505, 0) < 1 then
			return 2,0,"고마워! 2시간이 지난거 같아! 네가 너무 반가워! 다시 물시계를 줄테니 2시간 뒤에 또 와! 알겠지??",42,"네~!"
		else
			return 2,0,"아직 2시간이 안지난거 같은데? 물시계가 다 되어 없어지면 나에게 다시 와줄래?",52,"네~!"
		end


	elseif req == 31 then
		Time = GetSwitchCount(cnum, 518)
		return 1,0,"음..내가 다른 건 잊어버려도.....@그건 기억 해 놨어!@음.. 지금가지 총 [ "..Time.." 번 ] 왔었어! 또 와줘!"

	elseif req == 32 then
		if GetSwitchCount(cnum, 518) < 10 then
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		else
			SetSwitchCount(cnum, 533, 1)
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		end



	elseif req == 33 then
		if GetItemCount(cnum, 8502, 0) > 0 then
			return 2,0,"이야~빨리 구해왔구나! 좋아~잠시만 기다려줘! 내가 횃불을 만들고!",34,"네!"
		else
			return 1,0,"에이! 바짝마른 나뭇가지가 없는데? 섬 어딘가에 있을테니 구해와~! 횃불을 만들려면 바짝마른 나뭇가지는 꼭 있어야 해!!"
		end

	elseif req == 34 then
		AddItemCount(cnum, 8502, -1)
		SetSwitchCount(cnum, 522, 1)
		return 2,0,"자...나뭇가지를 다듬고..뚝딱...뚝딱@쓰윽...쓰윽..헝겊을 나뭇가지에 감고.....그리고..........아까운 기름에 적셔서............................",35,"언제되나요?"

	elseif req == 35 then
		return 2,0,"자! 완성! 이제 가자!",36,"어딜가나요??"

	elseif req == 36 then
		return 2,0,"음? 음..................@그곳에 들어가면...소름이 돋고 오싹오싹하고 뱌암이 많으니까...이름은!...................................@소름오싹뱌암동굴! 가자!!",37,"에? 소름오싹뱌암동굴?"

	elseif req == 37 then
		EndQuest(cnum, 184)
		SetSwitchCount(cnum, 523, 1)

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum,196,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum,197,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum,198,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum,199,101) -- 소름오싹뱌암동굴 입구
		end



	elseif req == 38 then
		return 2,0,"어딜 갔다가 온거야! 자! 가자!!",36,"네! 근데 어디?"


	elseif req == 42 then
		if GetSwitchCount(cnum, 533) < 1 then
				if GetSwitchCount(cnum, 519) < 9 then
					if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		else
			if GetSwitchCount(cnum, 519) < 10 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		end
	end
end

function NPC_QUEST_848(cnum, reqNumber)


req = reqNumber
Lv = GetHeroLv(cnum)

-- switch#513--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 퀘스트 수락 전 대사 끊길 시
-- switch#514--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1 수락
-- switch#515--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 퀘스트 수락
-- switch#516--------2010 여름방학 이벤트_02 믹마무인랜드  -> 게살 요리 제작 횟수 저장
-- switch#517--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 시작 확인
-- switch#518--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 수행 횟수 확인
-- switch#519--------2010 여름방학 이벤트_02 믹마무인랜드  -> 출석체크 10회 아이템 지급 확인용
-- switch#520--------2010 여름방학 이벤트_02 믹마무인랜드  -> 밸러의 참고서 지급 확인용
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 꽃게킹의 튼실한 게살을 가지고 와서 바짝마른 나뭇가지 퀘스트를 받음 521 값 2
-- switch#521--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 1단계 완료 게살스프를 많이 끓임 521 값 1
-- switch#522--------2010 여름방학 이벤트_02 믹마무인랜드  -> 바짝마른 나뭇가지를 구해옴
-- switch#523--------2010 여름방학 이벤트_02 믹마무인랜드  -> 존 이동
-- switch#524--------2010 여름방학 이벤트_02 믹마무인랜드  -> 무인랜드 입장
-- switch#525--------2010 여름방학 이벤트_02 믹마무인랜드  -> 보물 찾음
-- switch#526--------2010 여름방학 이벤트_02 믹마무인랜드  -> 퀘스트 5완료
-- switch#527--------2010 여름방학 이벤트_02 믹마무인랜드  -> 소름오싹뱌암동굴 퇴장


	if req == 1 then
		if GetSwitchCount(cnum, 526) < 1 then
			if GetSwitchCount(cnum, 525) < 1 then
				if GetSwitchCount(cnum, 514) < 1 then -- 퀘스트 1을 수락하지 않은 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 513) < 1 then -- 처음 말 걸었을 때
						return 3,0,"가나다라마바사아자차카타파하~!에~헤에에~~~~~~~~~~~~~~~~~우~헤~우~헤~!!@케~~~엑!! 까~암짝! 놀라버렸잖아! 야아! 너는 사람이냐! 귀신이냐!!",2,"아..안녕하세요",3,"뭐지..관심없어요"
					elseif GetSwitchCount(cnum, 513) == 1 then -- 퀘스트 1 받기 전 1/4 / 말 끊기고 다시 말 걸었을 때
						return 2,0,"에에? 다시왔네? 역시 내가 여기 왜 있는지 궁금했구나? 내 이야기를 잘 들어봐~!",20,"네~!"
					elseif GetSwitchCount(cnum, 513) == 2 then -- 퀘스트 1 받기 전 2/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"내가! 아까 하던 이야기가 생각났어! 나의 선장 쿨라파님의 이야기를 하고 있었던거 같은데 맞지?",16,"네! 그런거 같아요..",22,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 3 then -- 퀘스트 1 받기 전 3/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"분명해! 내가 아까 하던 이야기가 생각났어! 나의 쿨라파 선장님의 이야기를 하고 있었어!",16,"네! 그런거 같아요..",23,"모르겠는데요"
					elseif GetSwitchCount(cnum, 513) == 4 then --퀘스트 1 받기 전 4/4 / 말 끊기고 다시 말 걸었을 때
						return 3,0,"역시 다시 올 줄 알았어! 나의 게살 스프는 절대 거절할 수 없을거야!! 해변의 꽃게를 잡아와!! 내가 맛있는 게살스프를 끓여줄게! 나 배가 무지 고프다구!",19,"네!",21,"싫어요!"
					else
						return 1,0,"[이 메시지가 나오면 안됩니다!!!]"
					end

				elseif GetSwitchCount(cnum, 514) == 1 then  -- 퀘스트 1을 수락한 상태에서 말을 걸었을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								if GetSwitchCount(cnum, 517) < 1 then
									return 2,0,"아! 왔구나! 너무 보고 싶었어!@이곳에만 혼자 있다보니..사람이 너무 그리워!@맛있는 꽃게보다 네가 더 보고 싶을 정도였다구.........흐...윽....외로워...",24,"그렇군요.."
								else
									return 3,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 고마워! 또 와줬구나!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!"
								end
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물을 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요!",39,"동굴을 들어가려고요!"
						end
					end


				elseif GetSwitchCount(cnum, 514) == 2 then  -- 퀘스트 1을 수락한 상태에서 퀘스트 2(출석체크)를 거부 했을 시
					if GetSwitchCount(cnum, 523) < 1 then
						if GetSwitchCount(cnum, 522) < 1 then
							if GetSwitchCount(cnum, 521) < 1 then
								return 3,0,"아! 왔구나! 무슨 일 때문에 왔어?",27,"꽃게를 가져왔어요",29,"아저씨가 외로워 보여서요"
							else
								return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",33,"나뭇가지를 가져왔어요!"
							end
						else
							return 4,0,"아! 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",38,"보물이 있다는..동굴요.."
						end
					else
						if GetSwitchCount(cnum, 523) == 1 then
							SetSwitchCount(cnum, 523, 2)
							return 3,0,"여기가 바로! 소름오싹뱌암동굴이야! 부탁이야! 들어가서 엄청난 보물의 진실을 밝혀줘! 부탁해!",39,"네! 들어가볼게요!",40,"나중에 들어갈게요"
						elseif GetSwitchCount(cnum, 523) > 1 then
							return 4,0,"왔구나!!",27,"꽃게를 가져왔어요!",29,"아저씨가 외로워 보여서요",39,"동굴을 들어가려고요!"
						end
					end

				else
					return 1,0,"이 메시지가 나오면 안됩니다."
				end
			else
				return 2,0,"오래 걸렸네? 소름오싹뱌암동굴 깊이 들어갔다 온 것 같은데? 혹시 보물을 찾았어?",1000,"네"
			end
		else
			return 3,0,"아! 다시 왔구나! 네가 오기만을 정말 기다렸어! 얼른와!!",27,"꽃게를 가져왔어요!",32,"아저씨 보러왔어요"
		end


	elseif req == 1000 then
		if GetItemCount(cnum, 8503, 0) == 1 then
			return 2,0,"혹시....그 번쩍이는 황금상자는.....보물상자!!!!????",1001,"그런 것 같아요"
		elseif  GetItemCount(cnum, 8504, 0) == 1 then
			return 2,0,"그러면 뭔가 반짝이는 것이...있어야...할텐데...",1002,"그게.."
		end

	elseif req == 1001 then
		return 2,0,"이리 줘봐! 끼익....끼익...텅! 오옷!!! 상자가 열렸다!!!",1003,"..."

	elseif req == 1003 then
		return 2,0,"아..이 종이는 뭐지...이 문자는...우리 쿨라파선장님과 우리들이 쓰던 암호??? 에헴! 어디 읽어볼까...중얼중얼중얼...아...중얼중얼..중얼...중얼...중얼...",1004,"..."

	elseif req == 1004 then
		AddSkillPoint(cnum, 15)
		AddItemCount(cnum, 8503, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1005,"종이가 타버렸네요"

	elseif req == 1005 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1006,"..."

	elseif req == 1006 then
		return 2,0,"[스킬 포인트가 15 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"

	elseif req == 1007 then
		EndQuest(cnum, 185)
		SetSwitchCount(cnum, 526, 1)
		return 2,0,"사실은 네가 보물을 찾은거니까...정말 이제 한을 풀었어...보물이라고 해서..나는 삐가뻔쩍 황금인 줄 알았는데..아니였구나..그래도 괜찮아! 내 집으로 돌아가자!",1008,"네"

	elseif req == 1008 then
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 192, 102)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 193, 102)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 194, 102)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 195, 102)
		end



	elseif req == 1002 then
		return 2,0,"뭐지? 손에 든 그 낡은 종이는???",1009,"이..종이.."

	elseif req == 1009 then
		return 2,0,"이리 줘봐! 아니! 이 문자는...우리 쿨라파 선장님과 우리들이 쓰던 암호잖아?!? 에헴!! 어디 읽어볼까...중얼중얼..중얼...중얼..중얼...중얼....중얼...",1010,"..."

	elseif req == 1010 then
		AddSkillPoint(cnum, 10)
		AddItemCount(cnum, 8504, -1)
		return 2,0,"앗! 뜨거워!! 후욱!! 후욱!!",1111,"종이가 타버렸네요"

	elseif req == 1111 then
		return 2,0,"스킬을 어쩌구 써있던데..종이가 타는 순간 네 몸에서 밝은 빛이 났었어 무슨 일이지?",1112,"..."

	elseif req == 1112 then
		return 2,0,"[스킬 포인트가 10 상승했습니다.]@@ 놀라운데? 너의 스킬 포인트가 늘어난 것 같아! 엉....엉...이게 내가 20년간 찾은 보물인가...",1007,"고마워요"


	elseif req == 39 then
		StartQuest(cnum, 185)
		SetSwitchCount(cnum, 523, 2)
		return 2,0,"좋아! 지금 들어간다! 내가! 내가! 용기를 내서 같이 들어간다!!",41,"네!"


	elseif req == 40 then
		return 1,0,"알겠어! 만반의 준비를 하고 조금 있다가 다시와!"

	elseif req == 41 then -- 레벨에 맞는 동굴로 입장
		if Lv > 0 and Lv < 51 then
			MoveZone(cnum, 204, 254)
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum, 205, 254)
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum, 206, 254)
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum, 207, 254)
		end



	elseif req == 2 then
		return 3,0,"내..내가 너무 놀랐잖아!@여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 3 then
		return 3,0,"뭐..뭐야! 여..여긴 어떻게 왔지?",4,"페르보 선장님께서..",5,"아르젬님을 만나러"

	elseif req == 4 then
		return 3,0,"페르보..페르보 선장님!? 그 분이 아직 살아 계시다니..한번 보고 싶군...그런데 나는 여기서 떠날 수가 없어. 아니 여기 있을테야..!",6,"왜 여기 있나요?",7,"그렇군요"

	elseif req == 5 then
		return 3,0,"아르젬!? 그건 내 이름인데! 내 이름을 어떻게 알지?!",6,"왜 여기 있나요?",4,"페르보 선장님이.."

	elseif req == 6 then
		return 3,0,"......그건 안돼..알려줄 수 없어.. 절대..안 가르쳐 줄 거야! 내가 이 섬에 엄청난 보물이 숨겨져 있다는 엄청난 사실을 말해줄 것 같아? 그럴 순 없지..!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 7 then
		return 3,0,"아..안 궁금해? 하긴 네가 이 섬에 엄청난 보물이 숨겨져 있다는 사실을 알 필요가 없지!",8,"그렇군요",9,"엄청난 보물요?"

	elseif req == 8 then
		SetSwitchCount(cnum, 513, 1)
		return 1,0,"그렇지~! 그런 중요한 사실을 내가 알려줄리가 없어!"

	elseif req == 9 then
		return 3,0,"케켁! 어떻게 알았지!!! 내 보물을 빼앗으려고 하다니!! 덤벼라 이놈!!",11,"그럴까요?!",12,"방금 말씀하셨는데요.."

	elseif req == 11 then
		return 2,0,"내가 20년만 젊었어도..그러지말고..내 사연 좀 들어봐..",20,"네~!"

	elseif req == 12 then
		return 2,0,"케켁! 그렇군! 내 정신이야..이왕 이렇게 된 거 말해주지..",20,"네~!"

	elseif req == 13 then
		return 2,0,"아..아무튼 많이 지났어.................................",14,"네.."

	elseif req == 14 then
		return 3,0,"..............................그런데.....무슨 이야길 하고 있었지?!",15,"모르겠는데요..",16,"쿨라파 선장님요.."

	elseif req == 15 then
		SetSwitchCount(cnum, 513, 2) -- 도중 말 끊김
		return 1,0,"아...너도 모르면 어떻게 해...끄응...내가 생각 좀 해볼게...!"

	elseif req == 16 then
		return 2,0,"그렇지! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 17 then
		return 2,0,"내가..왜인지 모르지만 던전 안에는 이상한 기운이 감돌고 있었어!..정말 동굴 안은 내가 온몸이 오싹하다고! 무엇인가 나를 노려보고 있는거 같아..그 뒤로 수 차례 도전을 했지만..내가 매번 실패했어..!!",18,"그렇군요"

	elseif req == 18 then
		return 3,0,"내가...이야기를 너무 많이했나..배고파 힘이 없어...저기 해변에 널려있는 꽃게들을 좀 잡아와 줘! 그러면 내가 맛있는 게살스프를 끓여줄게~! 우선 먹고 다시 이야기하자!",19,"네~! 그러죠!",21,"싫어요"

	elseif req == 19 then
		StartQuest(cnum, 182) -- 게잡기 퀘스트 창 팝업
		SetSwitchCount(cnum, 514, 1) -- 게잡기 퀘스트 수락
		return 1,0,"좋아 고마워! 내가 배가 많이 고프니까 최대한 많이 잡아와!! 내가 부탁해!"

	elseif req == 20 then
		return 3,0,"20년 전...나의 두목! 시원시원한 파도같은 성격을 가진 쿨라파 선장님께서 나의 동료 선원들과 함께 이 섬 중앙에 있는 굴에 있는 엄청난 보물을 찾으러 들어가셨지..하지만 하루가 지나고 이틀이 지나고...그리고 얼마더라...아무튼 아주 많이 지났지...",13,"그래서요?",14,"재미없어요.."

	elseif req == 21 then
		SetSwitchCount(cnum, 513, 4)
		return 1,0,"어쩔 수 없군! 꽃게 잡아다 줄 생각이 생기면 다시와!!"

	elseif req == 22 then
		SetSwitchCount(cnum, 513, 3)
		return 1,0,"아닌가...내가 무슨 이야길하고 있었지...내가 더 생각해 볼게...."

	elseif req == 23 then
		return 2,0,"아무튼! 우리 시원시원한 파도같은 쿨라파 선장님.. 식량을 지키고 있으라는 지시를 받은 나는 더 이상은 기다릴 수가 없었어..그래서 선장님을 찾아 굴로 들어갔어..하지만....나는 바로 뛰쳐나오고 말았어.!!",17,"왜요?"

	elseif req == 24 then
		return 3,0,"저기 너 혹시 나에게 좀 자주 와 줄래? 나랑 와서 이야기도 하고 게살스프도 끓여먹고 말야...너무 외로워서 그래..",241,"네!",25,"싫어요"

	elseif req == 241 then
		return 3,0,"이얏~호! 정말이야? 내가 너무 기쁘잖아! 내가 만든 2시간 짜리 물시계를 줄게! 지금부터 2시간이 지나면 물시계가 사라질거야! 그러면 나에게 또 다시 와줘!@대신 10번 올 때마다 내가 20년간 이 섬 여기저기서 모은 보물들을 나눠 줄게!",26,"네~!",25,"싫어요"

	elseif req == 25 then
		SetSwitchCount(cnum, 514, 2) --퀘스트 2 거부
		return 1,0,"뭐..싫으면 어쩔 수 없지.."

	elseif req == 26 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아르젬의 물시계를 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			SetSwitchCount(cnum, 514, 1) -- 퀘스트 1 수락
			AddSwitchCount(cnum, 517, 1) -- 출석체크 시작 확인
			AddSwitchCount(cnum, 518, 1) -- 출석체크 수행 횟수 확인
			AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 아이템 지급 확인용
			AddItemCount(cnum, 8505, 1)
			StartQuest(cnum, 183) -- 출석체크 퀘스트 창 팝업
			return 1,0,"히히히! 좋아! 자~! 여기 물시계야! 2시간이 지나고 물시계가 없어지면 다시 와야 해! 꼭!"
		end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 27 then


		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8501, 0) < 1 then
				if GetItemCount(cnum, 8494, 0) < 1 then
					if GetSwitchCount(cnum, 521) < 1 then
						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

					else

						return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
					end

				else -- 힘이펄펄 삼계탕을 가지고 있을 때
					if GetSwitchCount(cnum, 520) < 1 then
						return 3,0,"아니..잠깐만 너에게서 아주 좋은 냄새가 나는데? 이건 무슨 냄새지? 정말 맛있는 냄새가나!",274,"아..힘이펄펄 삼계탕요?",2742,"게살스프나 끓여주세요!"
					else
						if GetSwitchCount(cnum, 521) < 1 then
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"

						else
							return 4,0,"오오..내가 매우 배고픈데! 얼마나 가져왔지! 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"

						end

					end
				end

			else -- 꽃게킹의 튼실한 속살을 가지고 있을 때
				if GetSwitchCount(cnum, 521) == 2 then
					return 2,0,"아니..설마! 또 꽃게킹을 쓰러뜨린거야!!?",276,"네!"
				else
					return 2,0,"아니..그것은! 설마! 너 꽃게킹을 쓰러뜨린거야!!?",275,"네!"
				end

			end
		end

	elseif req == 276 then
		AddItemCount(cnum, 8512, 1) -- 영양듬뿍 게살스프 지급
		AddItemCount(cnum, 8501, -1) -- 꽃게킹의 튼실한 게살
		return 1,0,"너 정말 강하구나! 좋아! 내가 금방 정말! 맛있는 게살스프를 끓여줄게!@역시 꽃게킹의 튼실한 게살로 만든 스프의 맛은 환상적이야! 자! 먹어봐!"

	elseif req == 2742 then
		if GetSwitchCount(cnum, 521) < 1 then

			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",281,"[5개]",282,"[10개]",283,"[15개]"
			end

		else
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
			else
				return 1,0,"아항..게살스프! 맛있지! 게살을 얼마나 가져왔지? 갯수에 따라 내가 하는 요리는 다르다구!",271,"[5개]",272,"[10개]",273,"[15개]"
			end
		end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	elseif req == 271 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2711,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2711 then
		AddSwitchCount(cnum, 516, 2)
		AddItemCount(cnum, 8500, -5)
		AddItemCount(cnum, 8509, 1)
		return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"

	elseif req == 272 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2721,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2721 then
		AddSwitchCount(cnum, 516, 3)
		AddItemCount(cnum, 8500, -10)
		AddItemCount(cnum, 8510, 1)
		return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"


	elseif req == 273 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2731,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2731 then
		AddSwitchCount(cnum, 516, 6)
		AddItemCount(cnum, 8500, -15)
		AddItemCount(cnum, 8511, 1)
		return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	elseif req == 281 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 4 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2811,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end


	elseif req == 2811 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 2)
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			return 1,0,"음! 좋아! 약간은 게살이 부족한 듯 하지만 역시 맛있게 되었어! 묽은 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -5)
			AddItemCount(cnum, 8509, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"묽은 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


	elseif req == 282 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 9 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2821,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2821 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 3)
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			return 1,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -10)
			AddItemCount(cnum, 8510, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 진한 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end



	elseif req == 283 then
		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@아이템을 받기위해 [인벤토리]가 최소한 1칸 이상 있어야 합니다."
		else
			if GetItemCount(cnum, 8500, 0) > 14 then
				return 2,0,"좋아 조금만 기다려! 내가 요리를 시작한다!! 내가! 내가!",2831,"네!"
			else
				return 1,0,"게살이 부족한 거 같아! 한번 확인해 보라구!!"
			end
		end

	elseif req == 2831 then
		if GetSwitchCount(cnum, 516) < 6 then
			AddSwitchCount(cnum, 516, 6)
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			return 1,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어! 자 먹어봐!!"
		else
			AddItemCount(cnum, 8500, -15)
			AddItemCount(cnum, 8511, 1)
			EndQuest(cnum, 182)
			SetSwitchCount(cnum, 521, 1)
			return 2,0,"좋아! 이 냄새! 역시 게살이 많이 들어가야 맛있다니까! 게살가득 게살스프가 완성되었어!@@너..꽃게를 가볍게 쓰러뜨리는거 보니@너 정도면 소름오싹뱌암동굴에 들어갈 수 있겠어!",1011,"그건..어딘가요??"
		end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	elseif req == 275 then
		if GetSwitchCount(cnum, 521) < 1 then
			EndQuest(cnum, 182)
			return 2,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 너 정도면 충분히 소름오싹뱌암동굴에 들어갈 수 있겠어! 자~준비하자~!",2752,"그건..어딘가요??"
		else
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			return 1,0,"대단해!! 20년전 우리 쿨라파 선장님께서도 삼일 밤낮에 걸친 결투 끝에 겨우 꽃게킹을 쓰러뜨리셨는데!! 이야! 정말 대단하구나! 이거로 정말 맛있는 스프를 끓여줄게.....자~! 여기! 정말 맛있는 스프야!!"
		end


	elseif req == 2752 then
			SetSwitchCount(cnum, 521, 2) -- 꽃게킹을 쓰러뜨린 것을 기록
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"



	elseif req == 1011 then
		if GetSwitchCount(cnum, 521) < 2 then
			StartQuest(cnum, 184)
			return 1,0,"엄청난 보물이 숨겨진 동굴이지! 좋아~! 횃불을 만들자! 이 섬 어딘가에 바짝마른 나뭇가지가 있을거야! 그걸 가져오면 돼!"
		else
			SetSwitchCount(cnum, 521, 2)
			AddItemCount(cnum, 8501, -1)
			AddItemCount(cnum, 8512, 1)
			StartQuest(cnum, 184)
			return 1,0,"좋아~! 기다릴게!@@아~! 그리고 네가 가져온 꽃게킹의 튼실한 게살로 이 멋진 스프를 끓여냈어! 한번 먹어봐!! 이건 정말 놀라운 맛이야!!"
		end


	elseif req == 274 then
		return 3,0,"정말 맛있겠다. 그거..맛있는 냄새나는거..나에게 주지 않을래? 그 대신 내가 오래전에 주은 축복의 밸러의 참고서를 줄게! 어때?",2741,"네~!좋아요!",2743,"싫어요"

	elseif req == 2741 then
			if GetRemainPocket(cnum) < 1 then
				return 1,0,"축복의 밸러의 참고서를 넣을 공간이 부족합니다."
			else
				AddItemCount(cnum, 8494, -1)
				AddItemCount(cnum, 3710, 1)
				SetSwitchCount(cnum, 520, 1)
				return 1,0,"고마워 이거 정말 맛있다. 자 여기! 축복의 밸러의 참고서야!"
			end

	elseif req == 2743 then
		return 1,0,"아..맛있는 냄새...먹고싶다...."



	elseif req == 29 then
		return 3,0,"맞아..사실이야..이 섬에 혼자 오랫동안 지내다 보니 사람이 너무 그리워...나에게 자주 좀 와줄래? 2시간 정도 마다 나를 찾아와 줘....그 대신 내가 좋을 것을 줄게!",24,"네!",25,"아니요"

	elseif req == 30 then
		if GetItemCount(cnum, 8505, 0) < 1 then
			return 2,0,"고마워! 2시간이 지난거 같아! 네가 너무 반가워! 다시 물시계를 줄테니 2시간 뒤에 또 와! 알겠지??",42,"네~!"
		else
			return 2,0,"아직 2시간이 안지난거 같은데? 물시계가 다 되어 없어지면 나에게 다시 와줄래?",52,"네~!"
		end


	elseif req == 31 then
		Time = GetSwitchCount(cnum, 518)
		return 1,0,"음..내가 다른 건 잊어버려도.....@그건 기억 해 놨어!@음.. 지금가지 총 [ "..Time.." 번 ] 왔었어! 또 와줘!"

	elseif req == 32 then
		if GetSwitchCount(cnum, 518) < 10 then
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		else
			SetSwitchCount(cnum, 533, 1)
			return 3,0,"너무 고마워! 물시계가 없어진거야?",30,"네~!",31,'제가 몇 번 왔는지 궁금해서요'
		end



	elseif req == 33 then
		if GetItemCount(cnum, 8502, 0) > 0 then
			return 2,0,"이야~빨리 구해왔구나! 좋아~잠시만 기다려줘! 내가 횃불을 만들고!",34,"네!"
		else
			return 1,0,"에이! 바짝마른 나뭇가지가 없는데? 섬 어딘가에 있을테니 구해와~! 횃불을 만들려면 바짝마른 나뭇가지는 꼭 있어야 해!!"
		end

	elseif req == 34 then
		AddItemCount(cnum, 8502, -1)
		SetSwitchCount(cnum, 522, 1)
		return 2,0,"자...나뭇가지를 다듬고..뚝딱...뚝딱@쓰윽...쓰윽..헝겊을 나뭇가지에 감고.....그리고..........아까운 기름에 적셔서............................",35,"언제되나요?"

	elseif req == 35 then
		return 2,0,"자! 완성! 이제 가자!",36,"어딜가나요??"

	elseif req == 36 then
		return 2,0,"음? 음..................@그곳에 들어가면...소름이 돋고 오싹오싹하고 뱌암이 많으니까...이름은!...................................@소름오싹뱌암동굴! 가자!!",37,"에? 소름오싹뱌암동굴?"

	elseif req == 37 then
		EndQuest(cnum, 184)
		SetSwitchCount(cnum, 523, 1)

		if Lv > 0 and Lv < 51 then
			MoveZone(cnum,196,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 50 and Lv < 101 then
			MoveZone(cnum,197,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 100 and Lv < 131 then
			MoveZone(cnum,198,101) -- 소름오싹뱌암동굴 입구
		elseif Lv > 130 and Lv < 176 then
			MoveZone(cnum,199,101) -- 소름오싹뱌암동굴 입구
		end



	elseif req == 38 then
		return 2,0,"어딜 갔다가 온거야! 자! 가자!!",36,"네! 근데 어디?"


	elseif req == 42 then
		if GetSwitchCount(cnum, 533) < 1 then
				if GetSwitchCount(cnum, 519) < 9 then
					if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		else
			if GetSwitchCount(cnum, 519) < 10 then
				if GetRemainPocket(cnum) < 1 then
					return 1,0,"새로운 물시계를 넣을 공간이 부족합니다."
				else
					AddItemCount(cnum, 8505, 1)
					AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
					AddSwitchCount(cnum, 519, 1) -- 출석체크 10회 확인용
					return 1,0,"새로운 물시계를 지급받았습니다."
				end

			else
				if GetRemainPocket(cnum) < 2 then
					return 1,0,"새로운 물시계와 아르젬의 보물을 넣을 공간이 부족합니다."

				else
					random = SetRandom(cnum, 1, 100)
	
					if random <= 2 then
						AddItemCount(cnum, 1027, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니~축복의 시너지레벨 상승물약이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 3 and random <= 4 then
						AddItemCount(cnum, 874, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 티어스타가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 5 and random <= 6 then
						AddItemCount(cnum, 3708, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 축복의 생명의 열매가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 7 and random <= 8 then
						AddItemCount(cnum, 3316, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 밸러의 참고서가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 9 and random <= 88 then
						AddItemCount(cnum, 154, 5)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 알록두껍이 메가폰이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 89 and random <= 89 then
						AddItemCount(cnum, 3501, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 소울차저(중)이 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 90 and random <= 90 then
						AddItemCount(cnum, 3725, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 저주받은 프리미엄 마크가 있네?! 자 받아! 여기 새로운 물시계도~!!"

					elseif random >= 91 and random <= 100 then
						AddItemCount(cnum, 80, 1)
						AddItemCount(cnum, 8505, 1)
						SetSwitchCount(cnum, 519, 1) -- 10회 체크 초기화
						SetSwitchCount(cnum, 533, 1) -- 첫번째 아이템 지급 확인
						AddSwitchCount(cnum, 518, 1) -- 출석체크 횟수 확인
						return 1,0,"찾아보니 슈퍼 노점권이 있네?! 자 받아! 여기 새로운 물시계도~!!"
	
					else
						return 0

					end
				end
			end

		end
	end
end


