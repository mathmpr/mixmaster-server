function NPC_QUEST_736(cnum,reqNumber) -- 월드컵 이벤트_02 골키퍼 터틀리 승부차기 게임

req = reqNumber
name = GetHeroName(cnum)
type = GetHeroType(cnum)
herolv = GetHeroLv(cnum)
random1 = SetRandom(cnum, 10, 36) -- 승부차기 방향

-- 495 콤보수 저장
-- 496 국기 지불 방법 저장
-- 497 유저 승수
-- 498 골키퍼 승수
-- switch#502--------2010 월드컵 이벤트_02 퀴즈 보상 단계 4점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#503--------2010 월드컵 이벤트_02 퀴즈 보상 단계 5점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#504--------2010 월드컵 이벤트_02 퀴즈 보상 단계 6점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#505--------2010 월드컵 이벤트_02 퀴즈 보상 단계 7점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#506--------2010 월드컵 이벤트_02 퀴즈 보상 단계 8점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#507--------2010 월드컵 이벤트_02 퀴즈 보상 단계 9점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#508--------2010 월드컵 이벤트_02 퀴즈 보상 단계 10점(0_안받음, 1_1차 받음, 2_2차 받음)

	if req == 1 then
		SetSwitchCount(cnum, 495, 0)
		SetSwitchCount(cnum, 497, 0)
		SetSwitchCount(cnum, 498, 0)
		return 3,0,"크릉! 나는 골키퍼 터틀리라고 한다! 어서 나랑 승부차기를 하자!@왜 하냐고?그야 네가 공을 차면 나는 막고 싶기 때문이지!?@승부차기를 하겠나?",111,"응",112,"아니"

	elseif req == 111 then
		return 3,0,"좋아! 하지만 기나긴 경기에 지금 체력이 고갈나서 몸으로 직접 하기는 힘들다.@혹시 이미지 트레이닝이라는 것을 알고 있나?",2,"응",3,"아니"

	elseif req == 112 then
		return 1,0,"왜 안하는거야! 나를 이긴다면 좋은 아이템을 주겠다! 마음이 생기면 다시 오도록!"

	elseif req == 2 then
		return 3,0,"아니!! 어떻게 알고 있지? 혹시 열혈 스포츠맨이나 열혈 스포츠걸인가?@아무튼 좋다! 네가 공을 차는 방향을 정하면 나는 막는 방향을 정한다!@어때? 한번 도전해보겠나?",4,"응",5,"아니"

	elseif req == 3 then
		return 3,0,"모른다고? 이미지 트레이닝을? 상관없다! 이미지 트레이닝이란 올바른 기술 따위의 습득을 위하여 머릿속에 그 운동이나 동작을 그려 보는 연습법이다! 즉, 네가 공을 차는 방향을 정하면 나는 막는 방향을 정한다! 이제 알겠나? 어때? 한번 도전해보겠나?",4,"응",5,"아니"

	elseif req == 4 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리를 1칸 이상 비우고 다시 오도록!! 만약 네가 나를 많이 이긴다면 내가 저기~경기에 출전하지 못하고 벤치에 있는 터틀리를 너에게 붙여줄지도 모르니까"
		else
			if GetRemainPocket(cnum) < 12 then
				return 1,0,"아이템 인벤토리의 여유공간이 부족하군!! 아이템 인벤토리를 11칸 이상 비우고 다시와! 네가 나를 많이 이기면 내가 좋은 아이템들을 많이 줄테니까"
			else
				return 3,0,"좋아! 네가 나를 이기면 내가 가진 효과 좋은 아이템들을 준다! 하지만 나도 가지고 싶은게 있다! 저~기 맞은편의 상대편 골키퍼도 요즘 소울 아머를 가지고 싶어 안달이던데 사실...나도 마찬가지다! 따라서! 나도 국기가 필요하다!! 32개국 국기를 한개씩 주거나 아무 나라 국기 50개를 주면 승부차기를 시작할 수 있다. 어떤 것을 선택하겠나!?",7,"[특정 나라의 국기를 50개 준다]",6,"[32개국 국기를 1개씩 준다]"
			end
		end

	elseif req == 5 then
		return 1,0,"안한다면야 어쩔 수 없지. 혼자 이미지 트레이닝을 해봐야지!"


	elseif req == 6 then --> 32개국 국기가 1개씩 있는지 검사
		if GetItemCount(cnum, 8429, 0) > 0 and GetItemCount(cnum, 8430, 0) > 0 and GetItemCount(cnum, 8431, 0) > 0 and GetItemCount(cnum, 8432, 0) > 0 and GetItemCount(cnum, 8433, 0) > 0 and GetItemCount(cnum, 8434, 0) > 0 and GetItemCount(cnum, 8435, 0) > 0 and GetItemCount(cnum, 8436, 0) > 0 and GetItemCount(cnum, 8437, 0) > 0 and GetItemCount(cnum, 8438, 0) > 0 and GetItemCount(cnum, 8439, 0) > 0 and GetItemCount(cnum, 8440, 0) > 0 and GetItemCount(cnum, 8441, 0) > 0 and GetItemCount(cnum, 8442, 0) > 0 and GetItemCount(cnum, 8443, 0) > 0 and GetItemCount(cnum, 8444, 0) > 0 and GetItemCount(cnum, 8445, 0) > 0 and GetItemCount(cnum, 8446, 0) > 0 and GetItemCount(cnum, 8447, 0) > 0 and GetItemCount(cnum, 8448, 0) > 0 and GetItemCount(cnum, 8449, 0) > 0 and GetItemCount(cnum, 8450, 0) > 0 and GetItemCount(cnum, 8451, 0) > 0 and GetItemCount(cnum, 8452, 0) > 0 and GetItemCount(cnum, 8453, 0) > 0 and GetItemCount(cnum, 8454, 0) > 0 and GetItemCount(cnum, 8455, 0) > 0 and GetItemCount(cnum, 8456, 0) > 0 and GetItemCount(cnum, 8457, 0) > 0 and GetItemCount(cnum, 8458, 0) > 0 and GetItemCount(cnum, 8459, 0) > 0 and GetItemCount(cnum, 8460, 0) > 0 then

			SetSwitchCount(cnum, 496, 8)
			return 3,0,"좋아~! 이제 승부차기를 시작해볼까!? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 월드컵 출전국 32개국 국기가 1개씩 이상 있어야 해!"
		end


	elseif req == 7 then
		return 9,0,"좋다~! 어떤 나라라도 상관없다~! 아무 나라나 50개를 주면된다! 나라가 많으니 우선 네가 주려는 나라의 조를 선택해보도록!",1000,"[A조]",1100,"[B조]",1200,"[C조]",1300,"[D조]",1400,"[E조]",1502,"[F조]",1600,"[G조]",1700,"[H조]"

	elseif req == 1000 then
		return 6,0,"A조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1010,"[프랑스]",1020,"[우루과이]",1030,"[멕시코]",1040,"[남아공]",7,"[조 재선택]"
	elseif req == 1100 then
		return 6,0,"B조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1110,"[아르헨티나]",1120,"[그리스]",1130,"[나이지리아]",1140,"[대한민국]",7,"[조 재선택]"
	elseif req == 1200 then
		return 6,0,"C조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1210,"[잉글랜드]",1220,"[미국]",1230,"[슬로베니아]",1240,"[알제리]",7,"[조 재선택]"
	elseif req == 1300 then
		return 6,0,"D조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1310,"[독일]",1320,"[세르비아]",1330,"[호주]",1340,"[가나]",7,"[조 재선택]"
	elseif req == 1400 then
		return 6,0,"E조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1410,"[네덜란드]",1420,"[카메룬]",1430,"[덴마크]",1440,"[일본]",7,"[조 재선택]"
	elseif req == 1502 then
		return 6,0,"F조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1510,"[이탈리아]",1520,"[파라과이]",1530,"[슬로바키아]",1540,"[뉴질랜드]",7,"[조 재선택]"
	elseif req == 1600 then
		return 6,0,"G조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1610,"[브라질]",1620,"[포르투갈]",1630,"[코트디부아르]",1640,"[북한]",7,"[조 재선택]"
	elseif req == 1700 then
		return 6,0,"H조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1710,"[스페인]",1720,"[칠레]",1730,"[스위스]",1740,"[온두라스]",7,"[조 재선택]"




	elseif req == 8 then --> 승부차기 시작
		if GetSwitchCount(cnum, 496) == 8 then

			AddItemCount(cnum, 8429, -1)
			AddItemCount(cnum, 8430, -1)
			AddItemCount(cnum, 8431, -1)
			AddItemCount(cnum, 8432, -1)
			AddItemCount(cnum, 8433, -1)
			AddItemCount(cnum, 8434, -1)
			AddItemCount(cnum, 8435, -1)
			AddItemCount(cnum, 8436, -1)
			AddItemCount(cnum, 8437, -1)
			AddItemCount(cnum, 8438, -1)
			AddItemCount(cnum, 8439, -1)
			AddItemCount(cnum, 8440, -1)
			AddItemCount(cnum, 8441, -1)
			AddItemCount(cnum, 8442, -1)
			AddItemCount(cnum, 8443, -1)
			AddItemCount(cnum, 8444, -1)
			AddItemCount(cnum, 8445, -1)
			AddItemCount(cnum, 8446, -1)
			AddItemCount(cnum, 8447, -1)
			AddItemCount(cnum, 8448, -1)
			AddItemCount(cnum, 8449, -1)
			AddItemCount(cnum, 8450, -1)
			AddItemCount(cnum, 8451, -1)
			AddItemCount(cnum, 8452, -1)
			AddItemCount(cnum, 8453, -1)
			AddItemCount(cnum, 8454, -1)
			AddItemCount(cnum, 8455, -1)
			AddItemCount(cnum, 8456, -1)
			AddItemCount(cnum, 8457, -1)
			AddItemCount(cnum, 8458, -1)
			AddItemCount(cnum, 8459, -1)
			AddItemCount(cnum, 8460, -1)

			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1010 then
			AddItemCount(cnum, 8429, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1020 then
			AddItemCount(cnum, 8430, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1030 then
			AddItemCount(cnum, 8431, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1040 then
			AddItemCount(cnum, 8432, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1110 then
			AddItemCount(cnum, 8433, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1120 then
			AddItemCount(cnum, 8434, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1130 then
			AddItemCount(cnum, 8435, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1140 then
			AddItemCount(cnum, 8436, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1210 then
			AddItemCount(cnum, 8437, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1220 then
			AddItemCount(cnum, 8438, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1230 then
			AddItemCount(cnum, 8439, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1240 then
			AddItemCount(cnum, 8440, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1310 then
			AddItemCount(cnum, 8441, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1320 then
			AddItemCount(cnum, 8442, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1330 then
			AddItemCount(cnum, 8443, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1340 then
			AddItemCount(cnum, 8444, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1410 then
			AddItemCount(cnum, 8445, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1420 then
			AddItemCount(cnum, 8446, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1430 then
			AddItemCount(cnum, 8447, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1440 then
			AddItemCount(cnum, 8448, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1510 then
			AddItemCount(cnum, 8449, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1520 then
			AddItemCount(cnum, 8450, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1530 then
			AddItemCount(cnum, 8451, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1540 then
			AddItemCount(cnum, 8452, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1610 then
			AddItemCount(cnum, 8453, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1620 then
			AddItemCount(cnum, 8454, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1630 then
			AddItemCount(cnum, 8455, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1640 then
			AddItemCount(cnum, 8456, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1710 then
			AddItemCount(cnum, 8457, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1720 then
			AddItemCount(cnum, 8458, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1730 then
			AddItemCount(cnum, 8459, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1740 then
			AddItemCount(cnum, 8460, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		else
			return 1,0,"아~! 이상하네? 왜 이러지??"
		end



	elseif req == 9 then --> 승부차기 시작 거부
		return 1,0,"아직 준비가 안됐나보군..조금 있다가 다시보자구!!"

	elseif req == 1010 then --> 프랑스 국기 50개
		if GetItemCount(cnum, 8429, 0) > 49 then
			SetSwitchCount(cnum, 496, 1010)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 프랑스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1020 then --> 우루과이 국기 50개
		if GetItemCount(cnum, 8430, 0) > 49 then
			SetSwitchCount(cnum, 496, 1020)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 우루과이 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1030 then --> 멕시코 국기 50개
		if GetItemCount(cnum, 8431, 0) > 49 then
			SetSwitchCount(cnum, 496, 1030)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 멕시코 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1040 then --> 남아공 국기 50개
		if GetItemCount(cnum, 8432, 0) > 49 then
			SetSwitchCount(cnum, 496, 1040)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 남아공 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1110 then --> 아르헨티나 국기 50개
		if GetItemCount(cnum, 8433, 0) > 49 then
			SetSwitchCount(cnum, 496, 1110)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 아르헨티나 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1120 then --> 그리스 국기 50개
		if GetItemCount(cnum, 8434, 0) > 49 then
			SetSwitchCount(cnum, 496, 1120)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 그리스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1130 then --> 나이지리아 국기 50개
		if GetItemCount(cnum, 8435, 0) > 49 then
			SetSwitchCount(cnum, 496, 1130)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 나이지리아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1140 then --> 대한민국 국기 50개
		if GetItemCount(cnum, 8436, 0) > 49 then
			SetSwitchCount(cnum, 496, 1140)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 대한민국 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1210 then --> 잉글랜드 국기 50개
		if GetItemCount(cnum, 8437, 0) > 49 then
			SetSwitchCount(cnum, 496, 1210)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 잉글랜드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1220 then --> 미국 국기 50개
		if GetItemCount(cnum, 8438, 0) > 49 then
			SetSwitchCount(cnum, 496, 1220)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 미국 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1230 then --> 슬로베니아 국기 50개
		if GetItemCount(cnum, 8439, 0) > 49 then
			SetSwitchCount(cnum, 496, 1230)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 슬로베니아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1240 then --> 알제리 국기 50개
		if GetItemCount(cnum, 8440, 0) > 49 then
			SetSwitchCount(cnum, 496, 1240)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 알제리 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1310 then --> 독일 국기 50개
		if GetItemCount(cnum, 8441, 0) > 49 then
			SetSwitchCount(cnum, 496, 1310)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 독일 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1320 then --> 세르비아 국기 50개
		if GetItemCount(cnum, 8442, 0) > 49 then
			SetSwitchCount(cnum, 496, 1320)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 세르비아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1330 then --> 호주 국기 50개
		if GetItemCount(cnum, 8443, 0) > 49 then
			SetSwitchCount(cnum, 496, 1330)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 호주 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1340 then --> 가나 국기 50개
		if GetItemCount(cnum, 8444, 0) > 49 then
			SetSwitchCount(cnum, 496, 1340)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 가나 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1410 then --> 네덜란드 국기 50개
		if GetItemCount(cnum, 8445, 0) > 49 then
			SetSwitchCount(cnum, 496, 1410)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 네덜란드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1420 then --> 카메룬 국기 50개
		if GetItemCount(cnum, 8446, 0) > 49 then
			SetSwitchCount(cnum, 496, 1420)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 카메룬 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1430 then --> 덴마크 국기 50개
		if GetItemCount(cnum, 8447, 0) > 49 then
			SetSwitchCount(cnum, 496, 1430)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 덴마크 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1440 then --> 일본 국기 50개
		if GetItemCount(cnum, 8448, 0) > 49 then
			SetSwitchCount(cnum, 496, 1440)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 일본 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1510 then --> 이탈리아 국기 50개
		if GetItemCount(cnum, 8449, 0) > 49 then
			SetSwitchCount(cnum, 496, 1510)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 이탈리아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1520 then --> 파라과이 국기 50개
		if GetItemCount(cnum, 8450, 0) > 49 then
			SetSwitchCount(cnum, 496, 1520)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 파라과이 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1530 then --> 슬로바키아 국기 50개
		if GetItemCount(cnum, 8451, 0) > 49 then
			SetSwitchCount(cnum, 496, 1530)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 슬로바키아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1540 then --> 뉴질랜드 국기 50개
		if GetItemCount(cnum, 8452, 0) > 49 then
			SetSwitchCount(cnum, 496, 1540)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 뉴질랜드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1610 then --> 브라질 국기 50개
		if GetItemCount(cnum, 8453, 0) > 49 then
			SetSwitchCount(cnum, 496, 1610)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 브라질 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1620 then --> 포르투갈 국기 50개
		if GetItemCount(cnum, 8454, 0) > 49 then
			SetSwitchCount(cnum, 496, 1620)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 포르투갈 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1630 then --> 코트디부아르 국기 50개
		if GetItemCount(cnum, 8455, 0) > 49 then
			SetSwitchCount(cnum, 496, 1630)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 코트디부아르 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1640 then --> 북한 국기 50개
		if GetItemCount(cnum, 8456, 0) > 49 then
			SetSwitchCount(cnum, 496, 1640)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 북한 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1710 then --> 스페인 국기 50개
		if GetItemCount(cnum, 8457, 0) > 49 then
			SetSwitchCount(cnum, 496, 1710)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 스페인 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1720 then --> 칠레 국기 50개
		if GetItemCount(cnum, 8458, 0) > 49 then
			SetSwitchCount(cnum, 496, 1720)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 칠레 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1730 then --> 스위스 국기 50개
		if GetItemCount(cnum, 8459, 0) > 49 then
			SetSwitchCount(cnum, 496, 1730)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 스위스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1740 then --> 온두라스 국기 50개
		if GetItemCount(cnum, 8460, 0) > 49 then
			SetSwitchCount(cnum, 496, 1740)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 온두라스 국기가 50개 이상 있어야 해!"
		end


------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 10 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 11 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 13 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 14 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 15 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 16 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 17 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 18 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 19 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 20 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 21 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 22 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 23 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 24 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 25 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 26 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 27 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 28 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 29 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 30 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 31 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 32 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 33 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 34 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 35 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 36 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end




	elseif req == 500 then --> 터틀리 지급
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 666, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 667, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 668, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 669, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		else
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 670, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		end

	elseif req == 501 then --> 롱팔아이 변신갑옷 지급
		SetSwitchCount(cnum, 508, 2)
		AddItemCount(cnum, 8467, 1)
		return 1,0,"자~! 여기 롱팔아이로 변신할 수 있는 롱팔아이 변신갑옷이야!"


	end
end

function NPC_QUEST_737(cnum,reqNumber) -- 월드컵 이벤트_02 골키퍼 터틀리 승부차기 게임

req = reqNumber
name = GetHeroName(cnum)
type = GetHeroType(cnum)
herolv = GetHeroLv(cnum)
random1 = SetRandom(cnum, 10, 36) -- 승부차기 방향

-- 495 콤보수 저장
-- 496 국기 지불 방법 저장
-- 497 유저 승수
-- 498 골키퍼 승수
-- switch#502--------2010 월드컵 이벤트_02 퀴즈 보상 단계 4점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#503--------2010 월드컵 이벤트_02 퀴즈 보상 단계 5점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#504--------2010 월드컵 이벤트_02 퀴즈 보상 단계 6점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#505--------2010 월드컵 이벤트_02 퀴즈 보상 단계 7점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#506--------2010 월드컵 이벤트_02 퀴즈 보상 단계 8점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#507--------2010 월드컵 이벤트_02 퀴즈 보상 단계 9점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#508--------2010 월드컵 이벤트_02 퀴즈 보상 단계 10점(0_안받음, 1_1차 받음, 2_2차 받음)

	if req == 1 then
		SetSwitchCount(cnum, 495, 0)
		SetSwitchCount(cnum, 497, 0)
		SetSwitchCount(cnum, 498, 0)
		return 3,0,"크릉! 나는 골키퍼 터틀리라고 한다! 어서 나랑 승부차기를 하자!@왜 하냐고?그야 네가 공을 차면 나는 막고 싶기 때문이지!?@승부차기를 하겠나?",111,"응",112,"아니"

	elseif req == 111 then
		return 3,0,"좋아! 하지만 기나긴 경기에 지금 체력이 고갈나서 몸으로 직접 하기는 힘들다.@혹시 이미지 트레이닝이라는 것을 알고 있나?",2,"응",3,"아니"

	elseif req == 112 then
		return 1,0,"왜 안하는거야! 나를 이긴다면 좋은 아이템을 주겠다! 마음이 생기면 다시 오도록!"

	elseif req == 2 then
		return 3,0,"아니!! 어떻게 알고 있지? 혹시 열혈 스포츠맨이나 열혈 스포츠걸인가?@아무튼 좋다! 네가 공을 차는 방향을 정하면 나는 막는 방향을 정한다!@어때? 한번 도전해보겠나?",4,"응",5,"아니"

	elseif req == 3 then
		return 3,0,"모른다고? 이미지 트레이닝을? 상관없다! 이미지 트레이닝이란 올바른 기술 따위의 습득을 위하여 머릿속에 그 운동이나 동작을 그려 보는 연습법이다! 즉, 네가 공을 차는 방향을 정하면 나는 막는 방향을 정한다! 이제 알겠나? 어때? 한번 도전해보겠나?",4,"응",5,"아니"

	elseif req == 4 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리를 1칸 이상 비우고 다시 오도록!! 만약 네가 나를 많이 이긴다면 내가 저기~경기에 출전하지 못하고 벤치에 있는 터틀리를 너에게 붙여줄지도 모르니까"
		else
			if GetRemainPocket(cnum) < 12 then
				return 1,0,"아이템 인벤토리의 여유공간이 부족하군!! 아이템 인벤토리를 11칸 이상 비우고 다시와! 네가 나를 많이 이기면 내가 좋은 아이템들을 많이 줄테니까"
			else
				return 3,0,"좋아! 네가 나를 이기면 내가 가진 효과 좋은 아이템들을 준다! 하지만 나도 가지고 싶은게 있다! 저~기 맞은편의 상대편 골키퍼도 요즘 소울 아머를 가지고 싶어 안달이던데 사실...나도 마찬가지다! 따라서! 나도 국기가 필요하다!! 32개국 국기를 한개씩 주거나 아무 나라 국기 50개를 주면 승부차기를 시작할 수 있다. 어떤 것을 선택하겠나!?",7,"[특정 나라의 국기를 50개 준다]",6,"[32개국 국기를 1개씩 준다]"
			end
		end

	elseif req == 5 then
		return 1,0,"안한다면야 어쩔 수 없지. 혼자 이미지 트레이닝을 해봐야지!"


	elseif req == 6 then --> 32개국 국기가 1개씩 있는지 검사
		if GetItemCount(cnum, 8429, 0) > 0 and GetItemCount(cnum, 8430, 0) > 0 and GetItemCount(cnum, 8431, 0) > 0 and GetItemCount(cnum, 8432, 0) > 0 and GetItemCount(cnum, 8433, 0) > 0 and GetItemCount(cnum, 8434, 0) > 0 and GetItemCount(cnum, 8435, 0) > 0 and GetItemCount(cnum, 8436, 0) > 0 and GetItemCount(cnum, 8437, 0) > 0 and GetItemCount(cnum, 8438, 0) > 0 and GetItemCount(cnum, 8439, 0) > 0 and GetItemCount(cnum, 8440, 0) > 0 and GetItemCount(cnum, 8441, 0) > 0 and GetItemCount(cnum, 8442, 0) > 0 and GetItemCount(cnum, 8443, 0) > 0 and GetItemCount(cnum, 8444, 0) > 0 and GetItemCount(cnum, 8445, 0) > 0 and GetItemCount(cnum, 8446, 0) > 0 and GetItemCount(cnum, 8447, 0) > 0 and GetItemCount(cnum, 8448, 0) > 0 and GetItemCount(cnum, 8449, 0) > 0 and GetItemCount(cnum, 8450, 0) > 0 and GetItemCount(cnum, 8451, 0) > 0 and GetItemCount(cnum, 8452, 0) > 0 and GetItemCount(cnum, 8453, 0) > 0 and GetItemCount(cnum, 8454, 0) > 0 and GetItemCount(cnum, 8455, 0) > 0 and GetItemCount(cnum, 8456, 0) > 0 and GetItemCount(cnum, 8457, 0) > 0 and GetItemCount(cnum, 8458, 0) > 0 and GetItemCount(cnum, 8459, 0) > 0 and GetItemCount(cnum, 8460, 0) > 0 then

			SetSwitchCount(cnum, 496, 8)
			return 3,0,"좋아~! 이제 승부차기를 시작해볼까!? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 월드컵 출전국 32개국 국기가 1개씩 이상 있어야 해!"
		end


	elseif req == 7 then
		return 9,0,"좋다~! 어떤 나라라도 상관없다~! 아무 나라나 50개를 주면된다! 나라가 많으니 우선 네가 주려는 나라의 조를 선택해보도록!",1000,"[A조]",1100,"[B조]",1200,"[C조]",1300,"[D조]",1400,"[E조]",1502,"[F조]",1600,"[G조]",1700,"[H조]"

	elseif req == 1000 then
		return 6,0,"A조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1010,"[프랑스]",1020,"[우루과이]",1030,"[멕시코]",1040,"[남아공]",7,"[조 재선택]"
	elseif req == 1100 then
		return 6,0,"B조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1110,"[아르헨티나]",1120,"[그리스]",1130,"[나이지리아]",1140,"[대한민국]",7,"[조 재선택]"
	elseif req == 1200 then
		return 6,0,"C조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1210,"[잉글랜드]",1220,"[미국]",1230,"[슬로베니아]",1240,"[알제리]",7,"[조 재선택]"
	elseif req == 1300 then
		return 6,0,"D조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1310,"[독일]",1320,"[세르비아]",1330,"[호주]",1340,"[가나]",7,"[조 재선택]"
	elseif req == 1400 then
		return 6,0,"E조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1410,"[네덜란드]",1420,"[카메룬]",1430,"[덴마크]",1440,"[일본]",7,"[조 재선택]"
	elseif req == 1502 then
		return 6,0,"F조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1510,"[이탈리아]",1520,"[파라과이]",1530,"[슬로바키아]",1540,"[뉴질랜드]",7,"[조 재선택]"
	elseif req == 1600 then
		return 6,0,"G조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1610,"[브라질]",1620,"[포르투갈]",1630,"[코트디부아르]",1640,"[북한]",7,"[조 재선택]"
	elseif req == 1700 then
		return 6,0,"H조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1710,"[스페인]",1720,"[칠레]",1730,"[스위스]",1740,"[온두라스]",7,"[조 재선택]"




	elseif req == 8 then --> 승부차기 시작
		if GetSwitchCount(cnum, 496) == 8 then

			AddItemCount(cnum, 8429, -1)
			AddItemCount(cnum, 8430, -1)
			AddItemCount(cnum, 8431, -1)
			AddItemCount(cnum, 8432, -1)
			AddItemCount(cnum, 8433, -1)
			AddItemCount(cnum, 8434, -1)
			AddItemCount(cnum, 8435, -1)
			AddItemCount(cnum, 8436, -1)
			AddItemCount(cnum, 8437, -1)
			AddItemCount(cnum, 8438, -1)
			AddItemCount(cnum, 8439, -1)
			AddItemCount(cnum, 8440, -1)
			AddItemCount(cnum, 8441, -1)
			AddItemCount(cnum, 8442, -1)
			AddItemCount(cnum, 8443, -1)
			AddItemCount(cnum, 8444, -1)
			AddItemCount(cnum, 8445, -1)
			AddItemCount(cnum, 8446, -1)
			AddItemCount(cnum, 8447, -1)
			AddItemCount(cnum, 8448, -1)
			AddItemCount(cnum, 8449, -1)
			AddItemCount(cnum, 8450, -1)
			AddItemCount(cnum, 8451, -1)
			AddItemCount(cnum, 8452, -1)
			AddItemCount(cnum, 8453, -1)
			AddItemCount(cnum, 8454, -1)
			AddItemCount(cnum, 8455, -1)
			AddItemCount(cnum, 8456, -1)
			AddItemCount(cnum, 8457, -1)
			AddItemCount(cnum, 8458, -1)
			AddItemCount(cnum, 8459, -1)
			AddItemCount(cnum, 8460, -1)

			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"



		elseif GetSwitchCount(cnum, 496) == 1010 then
			AddItemCount(cnum, 8429, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1020 then
			AddItemCount(cnum, 8430, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1030 then
			AddItemCount(cnum, 8431, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1040 then
			AddItemCount(cnum, 8432, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1110 then
			AddItemCount(cnum, 8433, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1120 then
			AddItemCount(cnum, 8434, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1130 then
			AddItemCount(cnum, 8435, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1140 then
			AddItemCount(cnum, 8436, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1210 then
			AddItemCount(cnum, 8437, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1220 then
			AddItemCount(cnum, 8438, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1230 then
			AddItemCount(cnum, 8439, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1240 then
			AddItemCount(cnum, 8440, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1310 then
			AddItemCount(cnum, 8441, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1320 then
			AddItemCount(cnum, 8442, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1330 then
			AddItemCount(cnum, 8443, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1340 then
			AddItemCount(cnum, 8444, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1410 then
			AddItemCount(cnum, 8445, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1420 then
			AddItemCount(cnum, 8446, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1430 then
			AddItemCount(cnum, 8447, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1440 then
			AddItemCount(cnum, 8448, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1510 then
			AddItemCount(cnum, 8449, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1520 then
			AddItemCount(cnum, 8450, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1530 then
			AddItemCount(cnum, 8451, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1540 then
			AddItemCount(cnum, 8452, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1610 then
			AddItemCount(cnum, 8453, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1620 then
			AddItemCount(cnum, 8454, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1630 then
			AddItemCount(cnum, 8455, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1640 then
			AddItemCount(cnum, 8456, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1710 then
			AddItemCount(cnum, 8457, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1720 then
			AddItemCount(cnum, 8458, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1730 then
			AddItemCount(cnum, 8459, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1740 then
			AddItemCount(cnum, 8460, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		else
			return 1,0,"아~! 이상하네? 왜 이러지??"
		end



	elseif req == 9 then --> 승부차기 시작 거부
		return 1,0,"아직 준비가 안됐나보군..조금 있다가 다시보자구!!"

	elseif req == 1010 then --> 프랑스 국기 50개
		if GetItemCount(cnum, 8429, 0) > 49 then
			SetSwitchCount(cnum, 496, 1010)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 프랑스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1020 then --> 우루과이 국기 50개
		if GetItemCount(cnum, 8430, 0) > 49 then
			SetSwitchCount(cnum, 496, 1020)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 우루과이 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1030 then --> 멕시코 국기 50개
		if GetItemCount(cnum, 8431, 0) > 49 then
			SetSwitchCount(cnum, 496, 1030)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 멕시코 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1040 then --> 남아공 국기 50개
		if GetItemCount(cnum, 8432, 0) > 49 then
			SetSwitchCount(cnum, 496, 1040)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 남아공 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1110 then --> 아르헨티나 국기 50개
		if GetItemCount(cnum, 8433, 0) > 49 then
			SetSwitchCount(cnum, 496, 1110)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 아르헨티나 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1120 then --> 그리스 국기 50개
		if GetItemCount(cnum, 8434, 0) > 49 then
			SetSwitchCount(cnum, 496, 1120)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 그리스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1130 then --> 나이지리아 국기 50개
		if GetItemCount(cnum, 8435, 0) > 49 then
			SetSwitchCount(cnum, 496, 1130)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 나이지리아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1140 then --> 대한민국 국기 50개
		if GetItemCount(cnum, 8436, 0) > 49 then
			SetSwitchCount(cnum, 496, 1140)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 대한민국 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1210 then --> 잉글랜드 국기 50개
		if GetItemCount(cnum, 8437, 0) > 49 then
			SetSwitchCount(cnum, 496, 1210)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 잉글랜드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1220 then --> 미국 국기 50개
		if GetItemCount(cnum, 8438, 0) > 49 then
			SetSwitchCount(cnum, 496, 1220)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 미국 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1230 then --> 슬로베니아 국기 50개
		if GetItemCount(cnum, 8439, 0) > 49 then
			SetSwitchCount(cnum, 496, 1230)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 슬로베니아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1240 then --> 알제리 국기 50개
		if GetItemCount(cnum, 8440, 0) > 49 then
			SetSwitchCount(cnum, 496, 1240)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 알제리 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1310 then --> 독일 국기 50개
		if GetItemCount(cnum, 8441, 0) > 49 then
			SetSwitchCount(cnum, 496, 1310)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 독일 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1320 then --> 세르비아 국기 50개
		if GetItemCount(cnum, 8442, 0) > 49 then
			SetSwitchCount(cnum, 496, 1320)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 세르비아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1330 then --> 호주 국기 50개
		if GetItemCount(cnum, 8443, 0) > 49 then
			SetSwitchCount(cnum, 496, 1330)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 호주 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1340 then --> 가나 국기 50개
		if GetItemCount(cnum, 8444, 0) > 49 then
			SetSwitchCount(cnum, 496, 1340)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 가나 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1410 then --> 네덜란드 국기 50개
		if GetItemCount(cnum, 8445, 0) > 49 then
			SetSwitchCount(cnum, 496, 1410)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 네덜란드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1420 then --> 카메룬 국기 50개
		if GetItemCount(cnum, 8446, 0) > 49 then
			SetSwitchCount(cnum, 496, 1420)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 카메룬 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1430 then --> 덴마크 국기 50개
		if GetItemCount(cnum, 8447, 0) > 49 then
			SetSwitchCount(cnum, 496, 1430)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 덴마크 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1440 then --> 일본 국기 50개
		if GetItemCount(cnum, 8448, 0) > 49 then
			SetSwitchCount(cnum, 496, 1440)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 일본 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1510 then --> 이탈리아 국기 50개
		if GetItemCount(cnum, 8449, 0) > 49 then
			SetSwitchCount(cnum, 496, 1510)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 이탈리아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1520 then --> 파라과이 국기 50개
		if GetItemCount(cnum, 8450, 0) > 49 then
			SetSwitchCount(cnum, 496, 1520)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 파라과이 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1530 then --> 슬로바키아 국기 50개
		if GetItemCount(cnum, 8451, 0) > 49 then
			SetSwitchCount(cnum, 496, 1530)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 슬로바키아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1540 then --> 뉴질랜드 국기 50개
		if GetItemCount(cnum, 8452, 0) > 49 then
			SetSwitchCount(cnum, 496, 1540)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 뉴질랜드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1610 then --> 브라질 국기 50개
		if GetItemCount(cnum, 8453, 0) > 49 then
			SetSwitchCount(cnum, 496, 1610)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 브라질 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1620 then --> 포르투갈 국기 50개
		if GetItemCount(cnum, 8454, 0) > 49 then
			SetSwitchCount(cnum, 496, 1620)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 포르투갈 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1630 then --> 코트디부아르 국기 50개
		if GetItemCount(cnum, 8455, 0) > 49 then
			SetSwitchCount(cnum, 496, 1630)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 코트디부아르 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1640 then --> 북한 국기 50개
		if GetItemCount(cnum, 8456, 0) > 49 then
			SetSwitchCount(cnum, 496, 1640)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 북한 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1710 then --> 스페인 국기 50개
		if GetItemCount(cnum, 8457, 0) > 49 then
			SetSwitchCount(cnum, 496, 1710)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 스페인 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1720 then --> 칠레 국기 50개
		if GetItemCount(cnum, 8458, 0) > 49 then
			SetSwitchCount(cnum, 496, 1720)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 칠레 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1730 then --> 스위스 국기 50개
		if GetItemCount(cnum, 8459, 0) > 49 then
			SetSwitchCount(cnum, 496, 1730)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 스위스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1740 then --> 온두라스 국기 50개
		if GetItemCount(cnum, 8460, 0) > 49 then
			SetSwitchCount(cnum, 496, 1740)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 온두라스 국기가 50개 이상 있어야 해!"
		end


------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 10 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 11 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 13 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 14 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 15 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 16 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 17 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 18 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 19 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 20 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 21 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 22 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 23 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 24 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 25 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 26 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 27 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 28 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 29 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 30 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 31 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 32 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 33 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 34 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 35 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 36 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end




	elseif req == 500 then --> 터틀리 지급
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 666, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 667, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 668, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 669, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		else
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 670, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		end

	elseif req == 501 then --> 롱팔아이 변신갑옷 지급
		SetSwitchCount(cnum, 508, 2)
		AddItemCount(cnum, 8467, 1)
		return 1,0,"자~! 여기 롱팔아이로 변신할 수 있는 롱팔아이 변신갑옷이야!"


	end
end

function NPC_QUEST_738(cnum,reqNumber) -- 월드컵 이벤트_02 골키퍼 터틀리 승부차기 게임

req = reqNumber
name = GetHeroName(cnum)
type = GetHeroType(cnum)
herolv = GetHeroLv(cnum)
random1 = SetRandom(cnum, 10, 36) -- 승부차기 방향

-- 495 콤보수 저장
-- 496 국기 지불 방법 저장
-- 497 유저 승수
-- 498 골키퍼 승수
-- switch#502--------2010 월드컵 이벤트_02 퀴즈 보상 단계 4점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#503--------2010 월드컵 이벤트_02 퀴즈 보상 단계 5점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#504--------2010 월드컵 이벤트_02 퀴즈 보상 단계 6점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#505--------2010 월드컵 이벤트_02 퀴즈 보상 단계 7점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#506--------2010 월드컵 이벤트_02 퀴즈 보상 단계 8점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#507--------2010 월드컵 이벤트_02 퀴즈 보상 단계 9점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#508--------2010 월드컵 이벤트_02 퀴즈 보상 단계 10점(0_안받음, 1_1차 받음, 2_2차 받음)

	if req == 1 then
		SetSwitchCount(cnum, 495, 0)
		SetSwitchCount(cnum, 497, 0)
		SetSwitchCount(cnum, 498, 0)
		return 3,0,"크릉! 나는 골키퍼 터틀리라고 한다! 어서 나랑 승부차기를 하자!@왜 하냐고?그야 네가 공을 차면 나는 막고 싶기 때문이지!?@승부차기를 하겠나?",111,"응",112,"아니"

	elseif req == 111 then
		return 3,0,"좋아! 하지만 기나긴 경기에 지금 체력이 고갈나서 몸으로 직접 하기는 힘들다.@혹시 이미지 트레이닝이라는 것을 알고 있나?",2,"응",3,"아니"

	elseif req == 112 then
		return 1,0,"왜 안하는거야! 나를 이긴다면 좋은 아이템을 주겠다! 마음이 생기면 다시 오도록!"

	elseif req == 2 then
		return 3,0,"아니!! 어떻게 알고 있지? 혹시 열혈 스포츠맨이나 열혈 스포츠걸인가?@아무튼 좋다! 네가 공을 차는 방향을 정하면 나는 막는 방향을 정한다!@어때? 한번 도전해보겠나?",4,"응",5,"아니"

	elseif req == 3 then
		return 3,0,"모른다고? 이미지 트레이닝을? 상관없다! 이미지 트레이닝이란 올바른 기술 따위의 습득을 위하여 머릿속에 그 운동이나 동작을 그려 보는 연습법이다! 즉, 네가 공을 차는 방향을 정하면 나는 막는 방향을 정한다! 이제 알겠나? 어때? 한번 도전해보겠나?",4,"응",5,"아니"

	elseif req == 4 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리를 1칸 이상 비우고 다시 오도록!! 만약 네가 나를 많이 이긴다면 내가 저기~경기에 출전하지 못하고 벤치에 있는 터틀리를 너에게 붙여줄지도 모르니까"
		else
			if GetRemainPocket(cnum) < 12 then
				return 1,0,"아이템 인벤토리의 여유공간이 부족하군!! 아이템 인벤토리를 11칸 이상 비우고 다시와! 네가 나를 많이 이기면 내가 좋은 아이템들을 많이 줄테니까"
			else
				return 3,0,"좋아! 네가 나를 이기면 내가 가진 효과 좋은 아이템들을 준다! 하지만 나도 가지고 싶은게 있다! 저~기 맞은편의 상대편 골키퍼도 요즘 소울 아머를 가지고 싶어 안달이던데 사실...나도 마찬가지다! 따라서! 나도 국기가 필요하다!! 32개국 국기를 한개씩 주거나 아무 나라 국기 50개를 주면 승부차기를 시작할 수 있다. 어떤 것을 선택하겠나!?",7,"[특정 나라의 국기를 50개 준다]",6,"[32개국 국기를 1개씩 준다]"
			end
		end

	elseif req == 5 then
		return 1,0,"안한다면야 어쩔 수 없지. 혼자 이미지 트레이닝을 해봐야지!"


	elseif req == 6 then --> 32개국 국기가 1개씩 있는지 검사
		if GetItemCount(cnum, 8429, 0) > 0 and GetItemCount(cnum, 8430, 0) > 0 and GetItemCount(cnum, 8431, 0) > 0 and GetItemCount(cnum, 8432, 0) > 0 and GetItemCount(cnum, 8433, 0) > 0 and GetItemCount(cnum, 8434, 0) > 0 and GetItemCount(cnum, 8435, 0) > 0 and GetItemCount(cnum, 8436, 0) > 0 and GetItemCount(cnum, 8437, 0) > 0 and GetItemCount(cnum, 8438, 0) > 0 and GetItemCount(cnum, 8439, 0) > 0 and GetItemCount(cnum, 8440, 0) > 0 and GetItemCount(cnum, 8441, 0) > 0 and GetItemCount(cnum, 8442, 0) > 0 and GetItemCount(cnum, 8443, 0) > 0 and GetItemCount(cnum, 8444, 0) > 0 and GetItemCount(cnum, 8445, 0) > 0 and GetItemCount(cnum, 8446, 0) > 0 and GetItemCount(cnum, 8447, 0) > 0 and GetItemCount(cnum, 8448, 0) > 0 and GetItemCount(cnum, 8449, 0) > 0 and GetItemCount(cnum, 8450, 0) > 0 and GetItemCount(cnum, 8451, 0) > 0 and GetItemCount(cnum, 8452, 0) > 0 and GetItemCount(cnum, 8453, 0) > 0 and GetItemCount(cnum, 8454, 0) > 0 and GetItemCount(cnum, 8455, 0) > 0 and GetItemCount(cnum, 8456, 0) > 0 and GetItemCount(cnum, 8457, 0) > 0 and GetItemCount(cnum, 8458, 0) > 0 and GetItemCount(cnum, 8459, 0) > 0 and GetItemCount(cnum, 8460, 0) > 0 then

			SetSwitchCount(cnum, 496, 8)
			return 3,0,"좋아~! 이제 승부차기를 시작해볼까!? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 월드컵 출전국 32개국 국기가 1개씩 이상 있어야 해!"
		end


	elseif req == 7 then
		return 9,0,"좋다~! 어떤 나라라도 상관없다~! 아무 나라나 50개를 주면된다! 나라가 많으니 우선 네가 주려는 나라의 조를 선택해보도록!",1000,"[A조]",1100,"[B조]",1200,"[C조]",1300,"[D조]",1400,"[E조]",1502,"[F조]",1600,"[G조]",1700,"[H조]"

	elseif req == 1000 then
		return 6,0,"A조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1010,"[프랑스]",1020,"[우루과이]",1030,"[멕시코]",1040,"[남아공]",7,"[조 재선택]"
	elseif req == 1100 then
		return 6,0,"B조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1110,"[아르헨티나]",1120,"[그리스]",1130,"[나이지리아]",1140,"[대한민국]",7,"[조 재선택]"
	elseif req == 1200 then
		return 6,0,"C조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1210,"[잉글랜드]",1220,"[미국]",1230,"[슬로베니아]",1240,"[알제리]",7,"[조 재선택]"
	elseif req == 1300 then
		return 6,0,"D조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1310,"[독일]",1320,"[세르비아]",1330,"[호주]",1340,"[가나]",7,"[조 재선택]"
	elseif req == 1400 then
		return 6,0,"E조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1410,"[네덜란드]",1420,"[카메룬]",1430,"[덴마크]",1440,"[일본]",7,"[조 재선택]"
	elseif req == 1502 then
		return 6,0,"F조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1510,"[이탈리아]",1520,"[파라과이]",1530,"[슬로바키아]",1540,"[뉴질랜드]",7,"[조 재선택]"
	elseif req == 1600 then
		return 6,0,"G조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1610,"[브라질]",1620,"[포르투갈]",1630,"[코트디부아르]",1640,"[북한]",7,"[조 재선택]"
	elseif req == 1700 then
		return 6,0,"H조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1710,"[스페인]",1720,"[칠레]",1730,"[스위스]",1740,"[온두라스]",7,"[조 재선택]"




	elseif req == 8 then --> 승부차기 시작
		if GetSwitchCount(cnum, 496) == 8 then

			AddItemCount(cnum, 8429, -1)
			AddItemCount(cnum, 8430, -1)
			AddItemCount(cnum, 8431, -1)
			AddItemCount(cnum, 8432, -1)
			AddItemCount(cnum, 8433, -1)
			AddItemCount(cnum, 8434, -1)
			AddItemCount(cnum, 8435, -1)
			AddItemCount(cnum, 8436, -1)
			AddItemCount(cnum, 8437, -1)
			AddItemCount(cnum, 8438, -1)
			AddItemCount(cnum, 8439, -1)
			AddItemCount(cnum, 8440, -1)
			AddItemCount(cnum, 8441, -1)
			AddItemCount(cnum, 8442, -1)
			AddItemCount(cnum, 8443, -1)
			AddItemCount(cnum, 8444, -1)
			AddItemCount(cnum, 8445, -1)
			AddItemCount(cnum, 8446, -1)
			AddItemCount(cnum, 8447, -1)
			AddItemCount(cnum, 8448, -1)
			AddItemCount(cnum, 8449, -1)
			AddItemCount(cnum, 8450, -1)
			AddItemCount(cnum, 8451, -1)
			AddItemCount(cnum, 8452, -1)
			AddItemCount(cnum, 8453, -1)
			AddItemCount(cnum, 8454, -1)
			AddItemCount(cnum, 8455, -1)
			AddItemCount(cnum, 8456, -1)
			AddItemCount(cnum, 8457, -1)
			AddItemCount(cnum, 8458, -1)
			AddItemCount(cnum, 8459, -1)
			AddItemCount(cnum, 8460, -1)

			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1010 then
			AddItemCount(cnum, 8429, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1020 then
			AddItemCount(cnum, 8430, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1030 then
			AddItemCount(cnum, 8431, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1040 then
			AddItemCount(cnum, 8432, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1110 then
			AddItemCount(cnum, 8433, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1120 then
			AddItemCount(cnum, 8434, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1130 then
			AddItemCount(cnum, 8435, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1140 then
			AddItemCount(cnum, 8436, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1210 then
			AddItemCount(cnum, 8437, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1220 then
			AddItemCount(cnum, 8438, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1230 then
			AddItemCount(cnum, 8439, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1240 then
			AddItemCount(cnum, 8440, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1310 then
			AddItemCount(cnum, 8441, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1320 then
			AddItemCount(cnum, 8442, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1330 then
			AddItemCount(cnum, 8443, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1340 then
			AddItemCount(cnum, 8444, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1410 then
			AddItemCount(cnum, 8445, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1420 then
			AddItemCount(cnum, 8446, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1430 then
			AddItemCount(cnum, 8447, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1440 then
			AddItemCount(cnum, 8448, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1510 then
			AddItemCount(cnum, 8449, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1520 then
			AddItemCount(cnum, 8450, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1530 then
			AddItemCount(cnum, 8451, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1540 then
			AddItemCount(cnum, 8452, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1610 then
			AddItemCount(cnum, 8453, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1620 then
			AddItemCount(cnum, 8454, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1630 then
			AddItemCount(cnum, 8455, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1640 then
			AddItemCount(cnum, 8456, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1710 then
			AddItemCount(cnum, 8457, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1720 then
			AddItemCount(cnum, 8458, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1730 then
			AddItemCount(cnum, 8459, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1740 then
			AddItemCount(cnum, 8460, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		else
			return 1,0,"아~! 이상하네? 왜 이러지??"
		end



	elseif req == 9 then --> 승부차기 시작 거부
		return 1,0,"아직 준비가 안됐나보군..조금 있다가 다시보자구!!"

	elseif req == 1010 then --> 프랑스 국기 50개
		if GetItemCount(cnum, 8429, 0) > 49 then
			SetSwitchCount(cnum, 496, 1010)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 프랑스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1020 then --> 우루과이 국기 50개
		if GetItemCount(cnum, 8430, 0) > 49 then
			SetSwitchCount(cnum, 496, 1020)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 우루과이 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1030 then --> 멕시코 국기 50개
		if GetItemCount(cnum, 8431, 0) > 49 then
			SetSwitchCount(cnum, 496, 1030)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 멕시코 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1040 then --> 남아공 국기 50개
		if GetItemCount(cnum, 8432, 0) > 49 then
			SetSwitchCount(cnum, 496, 1040)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 남아공 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1110 then --> 아르헨티나 국기 50개
		if GetItemCount(cnum, 8433, 0) > 49 then
			SetSwitchCount(cnum, 496, 1110)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 아르헨티나 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1120 then --> 그리스 국기 50개
		if GetItemCount(cnum, 8434, 0) > 49 then
			SetSwitchCount(cnum, 496, 1120)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 그리스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1130 then --> 나이지리아 국기 50개
		if GetItemCount(cnum, 8435, 0) > 49 then
			SetSwitchCount(cnum, 496, 1130)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 나이지리아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1140 then --> 대한민국 국기 50개
		if GetItemCount(cnum, 8436, 0) > 49 then
			SetSwitchCount(cnum, 496, 1140)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 대한민국 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1210 then --> 잉글랜드 국기 50개
		if GetItemCount(cnum, 8437, 0) > 49 then
			SetSwitchCount(cnum, 496, 1210)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 잉글랜드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1220 then --> 미국 국기 50개
		if GetItemCount(cnum, 8438, 0) > 49 then
			SetSwitchCount(cnum, 496, 1220)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 미국 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1230 then --> 슬로베니아 국기 50개
		if GetItemCount(cnum, 8439, 0) > 49 then
			SetSwitchCount(cnum, 496, 1230)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 슬로베니아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1240 then --> 알제리 국기 50개
		if GetItemCount(cnum, 8440, 0) > 49 then
			SetSwitchCount(cnum, 496, 1240)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 알제리 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1310 then --> 독일 국기 50개
		if GetItemCount(cnum, 8441, 0) > 49 then
			SetSwitchCount(cnum, 496, 1310)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 독일 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1320 then --> 세르비아 국기 50개
		if GetItemCount(cnum, 8442, 0) > 49 then
			SetSwitchCount(cnum, 496, 1320)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 세르비아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1330 then --> 호주 국기 50개
		if GetItemCount(cnum, 8443, 0) > 49 then
			SetSwitchCount(cnum, 496, 1330)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 호주 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1340 then --> 가나 국기 50개
		if GetItemCount(cnum, 8444, 0) > 49 then
			SetSwitchCount(cnum, 496, 1340)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 가나 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1410 then --> 네덜란드 국기 50개
		if GetItemCount(cnum, 8445, 0) > 49 then
			SetSwitchCount(cnum, 496, 1410)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 네덜란드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1420 then --> 카메룬 국기 50개
		if GetItemCount(cnum, 8446, 0) > 49 then
			SetSwitchCount(cnum, 496, 1420)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 카메룬 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1430 then --> 덴마크 국기 50개
		if GetItemCount(cnum, 8447, 0) > 49 then
			SetSwitchCount(cnum, 496, 1430)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 덴마크 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1440 then --> 일본 국기 50개
		if GetItemCount(cnum, 8448, 0) > 49 then
			SetSwitchCount(cnum, 496, 1440)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 일본 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1510 then --> 이탈리아 국기 50개
		if GetItemCount(cnum, 8449, 0) > 49 then
			SetSwitchCount(cnum, 496, 1510)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 이탈리아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1520 then --> 파라과이 국기 50개
		if GetItemCount(cnum, 8450, 0) > 49 then
			SetSwitchCount(cnum, 496, 1520)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 파라과이 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1530 then --> 슬로바키아 국기 50개
		if GetItemCount(cnum, 8451, 0) > 49 then
			SetSwitchCount(cnum, 496, 1530)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 슬로바키아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1540 then --> 뉴질랜드 국기 50개
		if GetItemCount(cnum, 8452, 0) > 49 then
			SetSwitchCount(cnum, 496, 1540)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 뉴질랜드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1610 then --> 브라질 국기 50개
		if GetItemCount(cnum, 8453, 0) > 49 then
			SetSwitchCount(cnum, 496, 1610)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 브라질 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1620 then --> 포르투갈 국기 50개
		if GetItemCount(cnum, 8454, 0) > 49 then
			SetSwitchCount(cnum, 496, 1620)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 포르투갈 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1630 then --> 코트디부아르 국기 50개
		if GetItemCount(cnum, 8455, 0) > 49 then
			SetSwitchCount(cnum, 496, 1630)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 코트디부아르 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1640 then --> 북한 국기 50개
		if GetItemCount(cnum, 8456, 0) > 49 then
			SetSwitchCount(cnum, 496, 1640)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 북한 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1710 then --> 스페인 국기 50개
		if GetItemCount(cnum, 8457, 0) > 49 then
			SetSwitchCount(cnum, 496, 1710)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 스페인 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1720 then --> 칠레 국기 50개
		if GetItemCount(cnum, 8458, 0) > 49 then
			SetSwitchCount(cnum, 496, 1720)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 칠레 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1730 then --> 스위스 국기 50개
		if GetItemCount(cnum, 8459, 0) > 49 then
			SetSwitchCount(cnum, 496, 1730)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 스위스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1740 then --> 온두라스 국기 50개
		if GetItemCount(cnum, 8460, 0) > 49 then
			SetSwitchCount(cnum, 496, 1740)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 온두라스 국기가 50개 이상 있어야 해!"
		end


------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 10 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 11 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 13 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 14 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 15 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 16 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 17 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 18 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 19 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 20 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 21 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 22 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 23 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 24 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 25 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 26 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 27 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 28 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 29 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 30 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 31 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 32 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 33 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 34 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 35 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 36 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end




	elseif req == 500 then --> 터틀리 지급
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 666, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 667, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 668, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 669, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		else
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 670, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		end

	elseif req == 501 then --> 롱팔아이 변신갑옷 지급
		SetSwitchCount(cnum, 508, 2)
		AddItemCount(cnum, 8467, 1)
		return 1,0,"자~! 여기 롱팔아이로 변신할 수 있는 롱팔아이 변신갑옷이야!"


	end
end

function NPC_QUEST_739(cnum,reqNumber) -- 월드컵 이벤트_02 골키퍼 터틀리 승부차기 게임

req = reqNumber
name = GetHeroName(cnum)
type = GetHeroType(cnum)
herolv = GetHeroLv(cnum)
random1 = SetRandom(cnum, 10, 36) -- 승부차기 방향

-- 495 콤보수 저장
-- 496 국기 지불 방법 저장
-- 497 유저 승수
-- 498 골키퍼 승수
-- switch#502--------2010 월드컵 이벤트_02 퀴즈 보상 단계 4점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#503--------2010 월드컵 이벤트_02 퀴즈 보상 단계 5점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#504--------2010 월드컵 이벤트_02 퀴즈 보상 단계 6점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#505--------2010 월드컵 이벤트_02 퀴즈 보상 단계 7점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#506--------2010 월드컵 이벤트_02 퀴즈 보상 단계 8점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#507--------2010 월드컵 이벤트_02 퀴즈 보상 단계 9점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#508--------2010 월드컵 이벤트_02 퀴즈 보상 단계 10점(0_안받음, 1_1차 받음, 2_2차 받음)

	if req == 1 then
		SetSwitchCount(cnum, 495, 0)
		SetSwitchCount(cnum, 497, 0)
		SetSwitchCount(cnum, 498, 0)
		return 3,0,"크릉! 나는 골키퍼 터틀리라고 한다! 어서 나랑 승부차기를 하자!@왜 하냐고?그야 네가 공을 차면 나는 막고 싶기 때문이지!?@승부차기를 하겠나?",111,"응",112,"아니"

	elseif req == 111 then
		return 3,0,"좋아! 하지만 기나긴 경기에 지금 체력이 고갈나서 몸으로 직접 하기는 힘들다.@혹시 이미지 트레이닝이라는 것을 알고 있나?",2,"응",3,"아니"

	elseif req == 112 then
		return 1,0,"왜 안하는거야! 나를 이긴다면 좋은 아이템을 주겠다! 마음이 생기면 다시 오도록!"

	elseif req == 2 then
		return 3,0,"아니!! 어떻게 알고 있지? 혹시 열혈 스포츠맨이나 열혈 스포츠걸인가?@아무튼 좋다! 네가 공을 차는 방향을 정하면 나는 막는 방향을 정한다!@어때? 한번 도전해보겠나?",4,"응",5,"아니"

	elseif req == 3 then
		return 3,0,"모른다고? 이미지 트레이닝을? 상관없다! 이미지 트레이닝이란 올바른 기술 따위의 습득을 위하여 머릿속에 그 운동이나 동작을 그려 보는 연습법이다! 즉, 네가 공을 차는 방향을 정하면 나는 막는 방향을 정한다! 이제 알겠나? 어때? 한번 도전해보겠나?",4,"응",5,"아니"

	elseif req == 4 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리를 1칸 이상 비우고 다시 오도록!! 만약 네가 나를 많이 이긴다면 내가 저기~경기에 출전하지 못하고 벤치에 있는 터틀리를 너에게 붙여줄지도 모르니까"
		else
			if GetRemainPocket(cnum) < 12 then
				return 1,0,"아이템 인벤토리의 여유공간이 부족하군!! 아이템 인벤토리를 11칸 이상 비우고 다시와! 네가 나를 많이 이기면 내가 좋은 아이템들을 많이 줄테니까"
			else
				return 3,0,"좋아! 네가 나를 이기면 내가 가진 효과 좋은 아이템들을 준다! 하지만 나도 가지고 싶은게 있다! 저~기 맞은편의 상대편 골키퍼도 요즘 소울 아머를 가지고 싶어 안달이던데 사실...나도 마찬가지다! 따라서! 나도 국기가 필요하다!! 32개국 국기를 한개씩 주거나 아무 나라 국기 50개를 주면 승부차기를 시작할 수 있다. 어떤 것을 선택하겠나!?",7,"[특정 나라의 국기를 50개 준다]",6,"[32개국 국기를 1개씩 준다]"
			end
		end

	elseif req == 5 then
		return 1,0,"안한다면야 어쩔 수 없지. 혼자 이미지 트레이닝을 해봐야지!"


	elseif req == 6 then --> 32개국 국기가 1개씩 있는지 검사
		if GetItemCount(cnum, 8429, 0) > 0 and GetItemCount(cnum, 8430, 0) > 0 and GetItemCount(cnum, 8431, 0) > 0 and GetItemCount(cnum, 8432, 0) > 0 and GetItemCount(cnum, 8433, 0) > 0 and GetItemCount(cnum, 8434, 0) > 0 and GetItemCount(cnum, 8435, 0) > 0 and GetItemCount(cnum, 8436, 0) > 0 and GetItemCount(cnum, 8437, 0) > 0 and GetItemCount(cnum, 8438, 0) > 0 and GetItemCount(cnum, 8439, 0) > 0 and GetItemCount(cnum, 8440, 0) > 0 and GetItemCount(cnum, 8441, 0) > 0 and GetItemCount(cnum, 8442, 0) > 0 and GetItemCount(cnum, 8443, 0) > 0 and GetItemCount(cnum, 8444, 0) > 0 and GetItemCount(cnum, 8445, 0) > 0 and GetItemCount(cnum, 8446, 0) > 0 and GetItemCount(cnum, 8447, 0) > 0 and GetItemCount(cnum, 8448, 0) > 0 and GetItemCount(cnum, 8449, 0) > 0 and GetItemCount(cnum, 8450, 0) > 0 and GetItemCount(cnum, 8451, 0) > 0 and GetItemCount(cnum, 8452, 0) > 0 and GetItemCount(cnum, 8453, 0) > 0 and GetItemCount(cnum, 8454, 0) > 0 and GetItemCount(cnum, 8455, 0) > 0 and GetItemCount(cnum, 8456, 0) > 0 and GetItemCount(cnum, 8457, 0) > 0 and GetItemCount(cnum, 8458, 0) > 0 and GetItemCount(cnum, 8459, 0) > 0 and GetItemCount(cnum, 8460, 0) > 0 then

			SetSwitchCount(cnum, 496, 8)
			return 3,0,"좋아~! 이제 승부차기를 시작해볼까!? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 월드컵 출전국 32개국 국기가 1개씩 이상 있어야 해!"
		end


	elseif req == 7 then
		return 9,0,"좋다~! 어떤 나라라도 상관없다~! 아무 나라나 50개를 주면된다! 나라가 많으니 우선 네가 주려는 나라의 조를 선택해보도록!",1000,"[A조]",1100,"[B조]",1200,"[C조]",1300,"[D조]",1400,"[E조]",1502,"[F조]",1600,"[G조]",1700,"[H조]"

	elseif req == 1000 then
		return 6,0,"A조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1010,"[프랑스]",1020,"[우루과이]",1030,"[멕시코]",1040,"[남아공]",7,"[조 재선택]"
	elseif req == 1100 then
		return 6,0,"B조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1110,"[아르헨티나]",1120,"[그리스]",1130,"[나이지리아]",1140,"[대한민국]",7,"[조 재선택]"
	elseif req == 1200 then
		return 6,0,"C조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1210,"[잉글랜드]",1220,"[미국]",1230,"[슬로베니아]",1240,"[알제리]",7,"[조 재선택]"
	elseif req == 1300 then
		return 6,0,"D조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1310,"[독일]",1320,"[세르비아]",1330,"[호주]",1340,"[가나]",7,"[조 재선택]"
	elseif req == 1400 then
		return 6,0,"E조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1410,"[네덜란드]",1420,"[카메룬]",1430,"[덴마크]",1440,"[일본]",7,"[조 재선택]"
	elseif req == 1502 then
		return 6,0,"F조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1510,"[이탈리아]",1520,"[파라과이]",1530,"[슬로바키아]",1540,"[뉴질랜드]",7,"[조 재선택]"
	elseif req == 1600 then
		return 6,0,"G조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1610,"[브라질]",1620,"[포르투갈]",1630,"[코트디부아르]",1640,"[북한]",7,"[조 재선택]"
	elseif req == 1700 then
		return 6,0,"H조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1710,"[스페인]",1720,"[칠레]",1730,"[스위스]",1740,"[온두라스]",7,"[조 재선택]"




	elseif req == 8 then --> 승부차기 시작
		if GetSwitchCount(cnum, 496) == 8 then

			AddItemCount(cnum, 8429, -1)
			AddItemCount(cnum, 8430, -1)
			AddItemCount(cnum, 8431, -1)
			AddItemCount(cnum, 8432, -1)
			AddItemCount(cnum, 8433, -1)
			AddItemCount(cnum, 8434, -1)
			AddItemCount(cnum, 8435, -1)
			AddItemCount(cnum, 8436, -1)
			AddItemCount(cnum, 8437, -1)
			AddItemCount(cnum, 8438, -1)
			AddItemCount(cnum, 8439, -1)
			AddItemCount(cnum, 8440, -1)
			AddItemCount(cnum, 8441, -1)
			AddItemCount(cnum, 8442, -1)
			AddItemCount(cnum, 8443, -1)
			AddItemCount(cnum, 8444, -1)
			AddItemCount(cnum, 8445, -1)
			AddItemCount(cnum, 8446, -1)
			AddItemCount(cnum, 8447, -1)
			AddItemCount(cnum, 8448, -1)
			AddItemCount(cnum, 8449, -1)
			AddItemCount(cnum, 8450, -1)
			AddItemCount(cnum, 8451, -1)
			AddItemCount(cnum, 8452, -1)
			AddItemCount(cnum, 8453, -1)
			AddItemCount(cnum, 8454, -1)
			AddItemCount(cnum, 8455, -1)
			AddItemCount(cnum, 8456, -1)
			AddItemCount(cnum, 8457, -1)
			AddItemCount(cnum, 8458, -1)
			AddItemCount(cnum, 8459, -1)
			AddItemCount(cnum, 8460, -1)

			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1010 then
			AddItemCount(cnum, 8429, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1020 then
			AddItemCount(cnum, 8430, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1030 then
			AddItemCount(cnum, 8431, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1040 then
			AddItemCount(cnum, 8432, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1110 then
			AddItemCount(cnum, 8433, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1120 then
			AddItemCount(cnum, 8434, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1130 then
			AddItemCount(cnum, 8435, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1140 then
			AddItemCount(cnum, 8436, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1210 then
			AddItemCount(cnum, 8437, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1220 then
			AddItemCount(cnum, 8438, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1230 then
			AddItemCount(cnum, 8439, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1240 then
			AddItemCount(cnum, 8440, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1310 then
			AddItemCount(cnum, 8441, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1320 then
			AddItemCount(cnum, 8442, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1330 then
			AddItemCount(cnum, 8443, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1340 then
			AddItemCount(cnum, 8444, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1410 then
			AddItemCount(cnum, 8445, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1420 then
			AddItemCount(cnum, 8446, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1430 then
			AddItemCount(cnum, 8447, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1440 then
			AddItemCount(cnum, 8448, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1510 then
			AddItemCount(cnum, 8449, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1520 then
			AddItemCount(cnum, 8450, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1530 then
			AddItemCount(cnum, 8451, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1540 then
			AddItemCount(cnum, 8452, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1610 then
			AddItemCount(cnum, 8453, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1620 then
			AddItemCount(cnum, 8454, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1630 then
			AddItemCount(cnum, 8455, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1640 then
			AddItemCount(cnum, 8456, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1710 then
			AddItemCount(cnum, 8457, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1720 then
			AddItemCount(cnum, 8458, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1730 then
			AddItemCount(cnum, 8459, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1740 then
			AddItemCount(cnum, 8460, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		else
			return 1,0,"아~! 이상하네? 왜 이러지??"
		end



	elseif req == 9 then --> 승부차기 시작 거부
		return 1,0,"아직 준비가 안됐나보군..조금 있다가 다시보자구!!"

	elseif req == 1010 then --> 프랑스 국기 50개
		if GetItemCount(cnum, 8429, 0) > 49 then
			SetSwitchCount(cnum, 496, 1010)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 프랑스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1020 then --> 우루과이 국기 50개
		if GetItemCount(cnum, 8430, 0) > 49 then
			SetSwitchCount(cnum, 496, 1020)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 우루과이 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1030 then --> 멕시코 국기 50개
		if GetItemCount(cnum, 8431, 0) > 49 then
			SetSwitchCount(cnum, 496, 1030)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 멕시코 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1040 then --> 남아공 국기 50개
		if GetItemCount(cnum, 8432, 0) > 49 then
			SetSwitchCount(cnum, 496, 1040)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 남아공 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1110 then --> 아르헨티나 국기 50개
		if GetItemCount(cnum, 8433, 0) > 49 then
			SetSwitchCount(cnum, 496, 1110)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 아르헨티나 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1120 then --> 그리스 국기 50개
		if GetItemCount(cnum, 8434, 0) > 49 then
			SetSwitchCount(cnum, 496, 1120)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 그리스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1130 then --> 나이지리아 국기 50개
		if GetItemCount(cnum, 8435, 0) > 49 then
			SetSwitchCount(cnum, 496, 1130)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 나이지리아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1140 then --> 대한민국 국기 50개
		if GetItemCount(cnum, 8436, 0) > 49 then
			SetSwitchCount(cnum, 496, 1140)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 대한민국 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1210 then --> 잉글랜드 국기 50개
		if GetItemCount(cnum, 8437, 0) > 49 then
			SetSwitchCount(cnum, 496, 1210)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 잉글랜드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1220 then --> 미국 국기 50개
		if GetItemCount(cnum, 8438, 0) > 49 then
			SetSwitchCount(cnum, 496, 1220)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 미국 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1230 then --> 슬로베니아 국기 50개
		if GetItemCount(cnum, 8439, 0) > 49 then
			SetSwitchCount(cnum, 496, 1230)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 슬로베니아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1240 then --> 알제리 국기 50개
		if GetItemCount(cnum, 8440, 0) > 49 then
			SetSwitchCount(cnum, 496, 1240)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 알제리 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1310 then --> 독일 국기 50개
		if GetItemCount(cnum, 8441, 0) > 49 then
			SetSwitchCount(cnum, 496, 1310)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 독일 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1320 then --> 세르비아 국기 50개
		if GetItemCount(cnum, 8442, 0) > 49 then
			SetSwitchCount(cnum, 496, 1320)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 세르비아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1330 then --> 호주 국기 50개
		if GetItemCount(cnum, 8443, 0) > 49 then
			SetSwitchCount(cnum, 496, 1330)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 호주 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1340 then --> 가나 국기 50개
		if GetItemCount(cnum, 8444, 0) > 49 then
			SetSwitchCount(cnum, 496, 1340)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 가나 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1410 then --> 네덜란드 국기 50개
		if GetItemCount(cnum, 8445, 0) > 49 then
			SetSwitchCount(cnum, 496, 1410)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 네덜란드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1420 then --> 카메룬 국기 50개
		if GetItemCount(cnum, 8446, 0) > 49 then
			SetSwitchCount(cnum, 496, 1420)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 카메룬 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1430 then --> 덴마크 국기 50개
		if GetItemCount(cnum, 8447, 0) > 49 then
			SetSwitchCount(cnum, 496, 1430)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 덴마크 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1440 then --> 일본 국기 50개
		if GetItemCount(cnum, 8448, 0) > 49 then
			SetSwitchCount(cnum, 496, 1440)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 일본 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1510 then --> 이탈리아 국기 50개
		if GetItemCount(cnum, 8449, 0) > 49 then
			SetSwitchCount(cnum, 496, 1510)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 이탈리아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1520 then --> 파라과이 국기 50개
		if GetItemCount(cnum, 8450, 0) > 49 then
			SetSwitchCount(cnum, 496, 1520)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 파라과이 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1530 then --> 슬로바키아 국기 50개
		if GetItemCount(cnum, 8451, 0) > 49 then
			SetSwitchCount(cnum, 496, 1530)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 슬로바키아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1540 then --> 뉴질랜드 국기 50개
		if GetItemCount(cnum, 8452, 0) > 49 then
			SetSwitchCount(cnum, 496, 1540)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 뉴질랜드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1610 then --> 브라질 국기 50개
		if GetItemCount(cnum, 8453, 0) > 49 then
			SetSwitchCount(cnum, 496, 1610)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 브라질 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1620 then --> 포르투갈 국기 50개
		if GetItemCount(cnum, 8454, 0) > 49 then
			SetSwitchCount(cnum, 496, 1620)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 포르투갈 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1630 then --> 코트디부아르 국기 50개
		if GetItemCount(cnum, 8455, 0) > 49 then
			SetSwitchCount(cnum, 496, 1630)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 코트디부아르 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1640 then --> 북한 국기 50개
		if GetItemCount(cnum, 8456, 0) > 49 then
			SetSwitchCount(cnum, 496, 1640)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 북한 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1710 then --> 스페인 국기 50개
		if GetItemCount(cnum, 8457, 0) > 49 then
			SetSwitchCount(cnum, 496, 1710)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 스페인 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1720 then --> 칠레 국기 50개
		if GetItemCount(cnum, 8458, 0) > 49 then
			SetSwitchCount(cnum, 496, 1720)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 칠레 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1730 then --> 스위스 국기 50개
		if GetItemCount(cnum, 8459, 0) > 49 then
			SetSwitchCount(cnum, 496, 1730)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 스위스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1740 then --> 온두라스 국기 50개
		if GetItemCount(cnum, 8460, 0) > 49 then
			SetSwitchCount(cnum, 496, 1740)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 온두라스 국기가 50개 이상 있어야 해!"
		end


------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 10 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 11 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 13 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 14 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 15 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 16 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 17 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 18 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 19 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 20 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 21 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 22 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 23 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 24 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 25 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 26 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 27 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 28 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 29 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 30 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 31 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 32 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 33 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 34 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 35 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 36 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end




	elseif req == 500 then --> 터틀리 지급
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 666, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 667, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 668, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 669, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		else
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 670, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		end

	elseif req == 501 then --> 롱팔아이 변신갑옷 지급
		SetSwitchCount(cnum, 508, 2)
		AddItemCount(cnum, 8467, 1)
		return 1,0,"자~! 여기 롱팔아이로 변신할 수 있는 롱팔아이 변신갑옷이야!"


	end
end

function NPC_QUEST_740(cnum,reqNumber) -- 월드컵 이벤트_02 골키퍼 터틀리 승부차기 게임

req = reqNumber
name = GetHeroName(cnum)
type = GetHeroType(cnum)
herolv = GetHeroLv(cnum)
random1 = SetRandom(cnum, 10, 36) -- 승부차기 방향

-- 495 콤보수 저장
-- 496 국기 지불 방법 저장
-- 497 유저 승수
-- 498 골키퍼 승수
-- switch#502--------2010 월드컵 이벤트_02 퀴즈 보상 단계 4점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#503--------2010 월드컵 이벤트_02 퀴즈 보상 단계 5점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#504--------2010 월드컵 이벤트_02 퀴즈 보상 단계 6점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#505--------2010 월드컵 이벤트_02 퀴즈 보상 단계 7점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#506--------2010 월드컵 이벤트_02 퀴즈 보상 단계 8점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#507--------2010 월드컵 이벤트_02 퀴즈 보상 단계 9점(0_안받음, 1_1차 받음, 2_2차 받음)
-- switch#508--------2010 월드컵 이벤트_02 퀴즈 보상 단계 10점(0_안받음, 1_1차 받음, 2_2차 받음)

	if req == 1 then
		SetSwitchCount(cnum, 495, 0)
		SetSwitchCount(cnum, 497, 0)
		SetSwitchCount(cnum, 498, 0)
		return 3,0,"크릉! 나는 골키퍼 터틀리라고 한다! 어서 나랑 승부차기를 하자!@왜 하냐고?그야 네가 공을 차면 나는 막고 싶기 때문이지!?@승부차기를 하겠나?",111,"응",112,"아니"

	elseif req == 111 then
		return 3,0,"좋아! 하지만 기나긴 경기에 지금 체력이 고갈나서 몸으로 직접 하기는 힘들다.@혹시 이미지 트레이닝이라는 것을 알고 있나?",2,"응",3,"아니"

	elseif req == 112 then
		return 1,0,"왜 안하는거야! 나를 이긴다면 좋은 아이템을 주겠다! 마음이 생기면 다시 오도록!"

	elseif req == 2 then
		return 3,0,"아니!! 어떻게 알고 있지? 혹시 열혈 스포츠맨이나 열혈 스포츠걸인가?@아무튼 좋다! 네가 공을 차는 방향을 정하면 나는 막는 방향을 정한다!@어때? 한번 도전해보겠나?",4,"응",5,"아니"

	elseif req == 3 then
		return 3,0,"모른다고? 이미지 트레이닝을? 상관없다! 이미지 트레이닝이란 올바른 기술 따위의 습득을 위하여 머릿속에 그 운동이나 동작을 그려 보는 연습법이다! 즉, 네가 공을 차는 방향을 정하면 나는 막는 방향을 정한다! 이제 알겠나? 어때? 한번 도전해보겠나?",4,"응",5,"아니"

	elseif req == 4 then
		if GetOccupiedHenchPocket(cnum, 1) > 19 then
			return 1,0,"헨치 인벤토리를 1칸 이상 비우고 다시 오도록!! 만약 네가 나를 많이 이긴다면 내가 저기~경기에 출전하지 못하고 벤치에 있는 터틀리를 너에게 붙여줄지도 모르니까"
		else
			if GetRemainPocket(cnum) < 12 then
				return 1,0,"아이템 인벤토리의 여유공간이 부족하군!! 아이템 인벤토리를 11칸 이상 비우고 다시와! 네가 나를 많이 이기면 내가 좋은 아이템들을 많이 줄테니까"
			else
				return 3,0,"좋아! 네가 나를 이기면 내가 가진 효과 좋은 아이템들을 준다! 하지만 나도 가지고 싶은게 있다! 저~기 맞은편의 상대편 골키퍼도 요즘 소울 아머를 가지고 싶어 안달이던데 사실...나도 마찬가지다! 따라서! 나도 국기가 필요하다!! 32개국 국기를 한개씩 주거나 아무 나라 국기 50개를 주면 승부차기를 시작할 수 있다. 어떤 것을 선택하겠나!?",7,"[특정 나라의 국기를 50개 준다]",6,"[32개국 국기를 1개씩 준다]"
			end
		end

	elseif req == 5 then
		return 1,0,"안한다면야 어쩔 수 없지. 혼자 이미지 트레이닝을 해봐야지!"


	elseif req == 6 then --> 32개국 국기가 1개씩 있는지 검사
		if GetItemCount(cnum, 8429, 0) > 0 and GetItemCount(cnum, 8430, 0) > 0 and GetItemCount(cnum, 8431, 0) > 0 and GetItemCount(cnum, 8432, 0) > 0 and GetItemCount(cnum, 8433, 0) > 0 and GetItemCount(cnum, 8434, 0) > 0 and GetItemCount(cnum, 8435, 0) > 0 and GetItemCount(cnum, 8436, 0) > 0 and GetItemCount(cnum, 8437, 0) > 0 and GetItemCount(cnum, 8438, 0) > 0 and GetItemCount(cnum, 8439, 0) > 0 and GetItemCount(cnum, 8440, 0) > 0 and GetItemCount(cnum, 8441, 0) > 0 and GetItemCount(cnum, 8442, 0) > 0 and GetItemCount(cnum, 8443, 0) > 0 and GetItemCount(cnum, 8444, 0) > 0 and GetItemCount(cnum, 8445, 0) > 0 and GetItemCount(cnum, 8446, 0) > 0 and GetItemCount(cnum, 8447, 0) > 0 and GetItemCount(cnum, 8448, 0) > 0 and GetItemCount(cnum, 8449, 0) > 0 and GetItemCount(cnum, 8450, 0) > 0 and GetItemCount(cnum, 8451, 0) > 0 and GetItemCount(cnum, 8452, 0) > 0 and GetItemCount(cnum, 8453, 0) > 0 and GetItemCount(cnum, 8454, 0) > 0 and GetItemCount(cnum, 8455, 0) > 0 and GetItemCount(cnum, 8456, 0) > 0 and GetItemCount(cnum, 8457, 0) > 0 and GetItemCount(cnum, 8458, 0) > 0 and GetItemCount(cnum, 8459, 0) > 0 and GetItemCount(cnum, 8460, 0) > 0 then

			SetSwitchCount(cnum, 496, 8)
			return 3,0,"좋아~! 이제 승부차기를 시작해볼까!? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 월드컵 출전국 32개국 국기가 1개씩 이상 있어야 해!"
		end


	elseif req == 7 then
		return 9,0,"좋다~! 어떤 나라라도 상관없다~! 아무 나라나 50개를 주면된다! 나라가 많으니 우선 네가 주려는 나라의 조를 선택해보도록!",1000,"[A조]",1100,"[B조]",1200,"[C조]",1300,"[D조]",1400,"[E조]",1502,"[F조]",1600,"[G조]",1700,"[H조]"

	elseif req == 1000 then
		return 6,0,"A조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1010,"[프랑스]",1020,"[우루과이]",1030,"[멕시코]",1040,"[남아공]",7,"[조 재선택]"
	elseif req == 1100 then
		return 6,0,"B조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1110,"[아르헨티나]",1120,"[그리스]",1130,"[나이지리아]",1140,"[대한민국]",7,"[조 재선택]"
	elseif req == 1200 then
		return 6,0,"C조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1210,"[잉글랜드]",1220,"[미국]",1230,"[슬로베니아]",1240,"[알제리]",7,"[조 재선택]"
	elseif req == 1300 then
		return 6,0,"D조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1310,"[독일]",1320,"[세르비아]",1330,"[호주]",1340,"[가나]",7,"[조 재선택]"
	elseif req == 1400 then
		return 6,0,"E조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1410,"[네덜란드]",1420,"[카메룬]",1430,"[덴마크]",1440,"[일본]",7,"[조 재선택]"
	elseif req == 1502 then
		return 6,0,"F조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1510,"[이탈리아]",1520,"[파라과이]",1530,"[슬로바키아]",1540,"[뉴질랜드]",7,"[조 재선택]"
	elseif req == 1600 then
		return 6,0,"G조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1610,"[브라질]",1620,"[포르투갈]",1630,"[코트디부아르]",1640,"[북한]",7,"[조 재선택]"
	elseif req == 1700 then
		return 6,0,"H조를 선택했군! 자~그럼 어떤 나라의 국기를 줄것인가?",1710,"[스페인]",1720,"[칠레]",1730,"[스위스]",1740,"[온두라스]",7,"[조 재선택]"




	elseif req == 8 then --> 승부차기 시작
		if GetSwitchCount(cnum, 496) == 8 then

			AddItemCount(cnum, 8429, -1)
			AddItemCount(cnum, 8430, -1)
			AddItemCount(cnum, 8431, -1)
			AddItemCount(cnum, 8432, -1)
			AddItemCount(cnum, 8433, -1)
			AddItemCount(cnum, 8434, -1)
			AddItemCount(cnum, 8435, -1)
			AddItemCount(cnum, 8436, -1)
			AddItemCount(cnum, 8437, -1)
			AddItemCount(cnum, 8438, -1)
			AddItemCount(cnum, 8439, -1)
			AddItemCount(cnum, 8440, -1)
			AddItemCount(cnum, 8441, -1)
			AddItemCount(cnum, 8442, -1)
			AddItemCount(cnum, 8443, -1)
			AddItemCount(cnum, 8444, -1)
			AddItemCount(cnum, 8445, -1)
			AddItemCount(cnum, 8446, -1)
			AddItemCount(cnum, 8447, -1)
			AddItemCount(cnum, 8448, -1)
			AddItemCount(cnum, 8449, -1)
			AddItemCount(cnum, 8450, -1)
			AddItemCount(cnum, 8451, -1)
			AddItemCount(cnum, 8452, -1)
			AddItemCount(cnum, 8453, -1)
			AddItemCount(cnum, 8454, -1)
			AddItemCount(cnum, 8455, -1)
			AddItemCount(cnum, 8456, -1)
			AddItemCount(cnum, 8457, -1)
			AddItemCount(cnum, 8458, -1)
			AddItemCount(cnum, 8459, -1)
			AddItemCount(cnum, 8460, -1)

			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1010 then
			AddItemCount(cnum, 8429, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1020 then
			AddItemCount(cnum, 8430, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1030 then
			AddItemCount(cnum, 8431, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1040 then
			AddItemCount(cnum, 8432, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1110 then
			AddItemCount(cnum, 8433, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1120 then
			AddItemCount(cnum, 8434, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1130 then
			AddItemCount(cnum, 8435, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1140 then
			AddItemCount(cnum, 8436, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1210 then
			AddItemCount(cnum, 8437, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1220 then
			AddItemCount(cnum, 8438, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1230 then
			AddItemCount(cnum, 8439, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1240 then
			AddItemCount(cnum, 8440, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1310 then
			AddItemCount(cnum, 8441, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1320 then
			AddItemCount(cnum, 8442, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1330 then
			AddItemCount(cnum, 8443, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1340 then
			AddItemCount(cnum, 8444, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1410 then
			AddItemCount(cnum, 8445, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1420 then
			AddItemCount(cnum, 8446, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1430 then
			AddItemCount(cnum, 8447, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1440 then
			AddItemCount(cnum, 8448, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1510 then
			AddItemCount(cnum, 8449, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1520 then
			AddItemCount(cnum, 8450, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1530 then
			AddItemCount(cnum, 8451, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1540 then
			AddItemCount(cnum, 8452, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"


		elseif GetSwitchCount(cnum, 496) == 1610 then
			AddItemCount(cnum, 8453, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1620 then
			AddItemCount(cnum, 8454, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1630 then
			AddItemCount(cnum, 8455, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1640 then
			AddItemCount(cnum, 8456, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"

		elseif GetSwitchCount(cnum, 496) == 1710 then
			AddItemCount(cnum, 8457, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1720 then
			AddItemCount(cnum, 8458, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1730 then
			AddItemCount(cnum, 8459, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		elseif GetSwitchCount(cnum, 496) == 1740 then
			AddItemCount(cnum, 8460, -50)
			return 4,0,"좋아~! 국기는 잘 받았다 자~! 이제 눈을 감고 네가 공을 찰 방향을 정하는거다! 네가 공을 찰 방향을 정하는거다! 네가 슛을 넣으면 네가 1점, 내가 너의 슛을 막으면 내가 1점이다. 시작한다? 자 슛을 쏴라!!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
		else
			return 1,0,"아~! 이상하네? 왜 이러지??"
		end



	elseif req == 9 then --> 승부차기 시작 거부
		return 1,0,"아직 준비가 안됐나보군..조금 있다가 다시보자구!!"

	elseif req == 1010 then --> 프랑스 국기 50개
		if GetItemCount(cnum, 8429, 0) > 49 then
			SetSwitchCount(cnum, 496, 1010)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 프랑스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1020 then --> 우루과이 국기 50개
		if GetItemCount(cnum, 8430, 0) > 49 then
			SetSwitchCount(cnum, 496, 1020)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 우루과이 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1030 then --> 멕시코 국기 50개
		if GetItemCount(cnum, 8431, 0) > 49 then
			SetSwitchCount(cnum, 496, 1030)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 멕시코 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1040 then --> 남아공 국기 50개
		if GetItemCount(cnum, 8432, 0) > 49 then
			SetSwitchCount(cnum, 496, 1040)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 남아공 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1110 then --> 아르헨티나 국기 50개
		if GetItemCount(cnum, 8433, 0) > 49 then
			SetSwitchCount(cnum, 496, 1110)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 아르헨티나 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1120 then --> 그리스 국기 50개
		if GetItemCount(cnum, 8434, 0) > 49 then
			SetSwitchCount(cnum, 496, 1120)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 그리스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1130 then --> 나이지리아 국기 50개
		if GetItemCount(cnum, 8435, 0) > 49 then
			SetSwitchCount(cnum, 496, 1130)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 나이지리아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1140 then --> 대한민국 국기 50개
		if GetItemCount(cnum, 8436, 0) > 49 then
			SetSwitchCount(cnum, 496, 1140)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 대한민국 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1210 then --> 잉글랜드 국기 50개
		if GetItemCount(cnum, 8437, 0) > 49 then
			SetSwitchCount(cnum, 496, 1210)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 잉글랜드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1220 then --> 미국 국기 50개
		if GetItemCount(cnum, 8438, 0) > 49 then
			SetSwitchCount(cnum, 496, 1220)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 미국 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1230 then --> 슬로베니아 국기 50개
		if GetItemCount(cnum, 8439, 0) > 49 then
			SetSwitchCount(cnum, 496, 1230)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 슬로베니아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1240 then --> 알제리 국기 50개
		if GetItemCount(cnum, 8440, 0) > 49 then
			SetSwitchCount(cnum, 496, 1240)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 알제리 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1310 then --> 독일 국기 50개
		if GetItemCount(cnum, 8441, 0) > 49 then
			SetSwitchCount(cnum, 496, 1310)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 독일 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1320 then --> 세르비아 국기 50개
		if GetItemCount(cnum, 8442, 0) > 49 then
			SetSwitchCount(cnum, 496, 1320)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 세르비아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1330 then --> 호주 국기 50개
		if GetItemCount(cnum, 8443, 0) > 49 then
			SetSwitchCount(cnum, 496, 1330)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 호주 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1340 then --> 가나 국기 50개
		if GetItemCount(cnum, 8444, 0) > 49 then
			SetSwitchCount(cnum, 496, 1340)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 가나 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1410 then --> 네덜란드 국기 50개
		if GetItemCount(cnum, 8445, 0) > 49 then
			SetSwitchCount(cnum, 496, 1410)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 네덜란드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1420 then --> 카메룬 국기 50개
		if GetItemCount(cnum, 8446, 0) > 49 then
			SetSwitchCount(cnum, 496, 1420)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 카메룬 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1430 then --> 덴마크 국기 50개
		if GetItemCount(cnum, 8447, 0) > 49 then
			SetSwitchCount(cnum, 496, 1430)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 덴마크 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1440 then --> 일본 국기 50개
		if GetItemCount(cnum, 8448, 0) > 49 then
			SetSwitchCount(cnum, 496, 1440)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 일본 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1510 then --> 이탈리아 국기 50개
		if GetItemCount(cnum, 8449, 0) > 49 then
			SetSwitchCount(cnum, 496, 1510)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 이탈리아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1520 then --> 파라과이 국기 50개
		if GetItemCount(cnum, 8450, 0) > 49 then
			SetSwitchCount(cnum, 496, 1520)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 파라과이 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1530 then --> 슬로바키아 국기 50개
		if GetItemCount(cnum, 8451, 0) > 49 then
			SetSwitchCount(cnum, 496, 1530)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 슬로바키아 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1540 then --> 뉴질랜드 국기 50개
		if GetItemCount(cnum, 8452, 0) > 49 then
			SetSwitchCount(cnum, 496, 1540)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 뉴질랜드 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1610 then --> 브라질 국기 50개
		if GetItemCount(cnum, 8453, 0) > 49 then
			SetSwitchCount(cnum, 496, 1610)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 브라질 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1620 then --> 포르투갈 국기 50개
		if GetItemCount(cnum, 8454, 0) > 49 then
			SetSwitchCount(cnum, 496, 1620)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 포르투갈 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1630 then --> 코트디부아르 국기 50개
		if GetItemCount(cnum, 8455, 0) > 49 then
			SetSwitchCount(cnum, 496, 1630)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 코트디부아르 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1640 then --> 북한 국기 50개
		if GetItemCount(cnum, 8456, 0) > 49 then
			SetSwitchCount(cnum, 496, 1640)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 북한 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1710 then --> 스페인 국기 50개
		if GetItemCount(cnum, 8457, 0) > 49 then
			SetSwitchCount(cnum, 496, 1710)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 스페인 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1720 then --> 칠레 국기 50개
		if GetItemCount(cnum, 8458, 0) > 49 then
			SetSwitchCount(cnum, 496, 1720)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 칠레 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1730 then --> 스위스 국기 50개
		if GetItemCount(cnum, 8459, 0) > 49 then
			SetSwitchCount(cnum, 496, 1730)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 스위스 국기가 50개 이상 있어야 해!"
		end

	elseif req == 1740 then --> 온두라스 국기 50개
		if GetItemCount(cnum, 8460, 0) > 49 then
			SetSwitchCount(cnum, 496, 1740)
			return 3,0,"좋아! 이제 승부차기를 시작해볼까? 준비됐나?",8,"응",9,"아니"
		else
			return 1,0,"잘 살펴봐~! 온두라스 국기가 50개 이상 있어야 해!"
		end


------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 10 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 11 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 12 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 13 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 14 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 15 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 16 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 17 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 18 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 19 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 20 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 21 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 22 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 23 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 24 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 25 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 26 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 27 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 28 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 29 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 30 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 31 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 32 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 33 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end

------------------------------------------------------------------------------------------------------------------------------------------ 랜덤

	elseif req == 34 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end



	elseif req == 35 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 497, 1) -- 유저 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@이런...네가 한골을 넣었군..좋아 다시! 쏴라! 이번에는 막아주마!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end


	elseif req == 36 then
		if GetSwitchCount(cnum, 495) < 10 then
			AddSwitchCount(cnum, 495, 1) -- 시합 수
			AddSwitchCount(cnum, 498, 1) -- 골키퍼 승리
			if GetSwitchCount(cnum, 497) == 10 then -- 유저 승리가 10번일 경우
				if GetSwitchCount(cnum, 508) == 0 then
					AddItemCount(cnum, 8461, 1) -- 프랑스 유니폼(5일)
					SetSwitchCount(cnum, 508, 1)
					return 1,0,"이럴수가! 내가 패배하다니! 너의 승리다! 내가 이제 줄 것은 별로 없고...프랑스 유니폼을 주겠다. 조금 비굴하지만 한판만 더하면 안될까? 내가 이렇게 지다니..믿겨지지가 않아."
				elseif GetSwitchCount(cnum, 508) == 1 then
					return 3,0,"이럴수가! 내가 완전히 패배하다니! 이제 인정하마. 네가 나를 이겼다! 너의 승리다! 내가 이제 네가 줄 수 있는 것은 롱팔아이 변신갑옷과 저기 쉬고 있는 터틀리다. 어떤 것을 선택하는가는 너의 자유다!",500,"[터틀리 헨치(30일)]",501,"[롱팔아이 변신갑옷(30일)]"
				else
					return 1,0,"이럴수가! 또 내가 완전히 패배하다니! 이제 너와 대결하고 싶지 않아! 그만하자! 너랑은 더 겨루기 싫다!"
				end
			else -- 유저 승리가 10번이 아닐경우
				if GetSwitchCount(cnum, 495) == 10 then -- 승부를 10번 하였을 때 아래 보상
					if GetSwitchCount(cnum, 497) < 4 then
						return 1,0,"아직 실력이 조금 부족하군! 다음에 다시 덤벼라!!"

					elseif GetSwitchCount(cnum, 497) == 4 then
						if GetSwitchCount(cnum, 502) == 0 then
							AddItemCount(cnum, 896, 10) -- 리커버리 포션
							SetSwitchCount(cnum, 502, 1)
							return 1,0,"네가 4점 내가 6점이니..나의 승리군 !!하하!! 내가 이번에는 체력 회복에 좋은 리커버리 포션을 좀 줄테니 쉬다가 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 502) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 502, 2)
							return 1,0,"또! 네가 4점 내가 6점이군 역시 나의 승리다! 하하! 이번에는 정신건강에 좋은 그레이트 마인드 포션을 좀 줄테니 조금 있다가 다시 도전해보라구!"
						else
							return 1,0,"안타깝군..네가 4점 내가 6점이니까 나의 승리다. 조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 5 then
						if GetSwitchCount(cnum, 503) == 0 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 1)
							return 1,0,"아앗! 네가 5점 내가 5점이니까 동점이군! 꽤나 실력이 좋은데? 나랑 비등하다니! 내가 체력 회복에 좋은 그레이트 힐링 포션을 좀 줄테니~! 다시 도전해보라구!"
						elseif GetSwitchCount(cnum, 503) == 1 then
							AddItemCount(cnum, 4373, 10) -- 그레이트 힐링 포션
							SetSwitchCount(cnum, 503, 2)
							return 1,0,"아앗! 네가 5점 내가 5점으로 또...동점이군! 꽤나 실력이 좋아! 내가 체력 회복에 좋은 그레이트 힐링 포션을 몇개 줄테니 다시 도전해보라구!"
						else
							return 1,0,"아앗! 네가 5점 내가 5점으로 또또 동점이야..조금 쉬다가 다시 도전해보라구!"
						end

					elseif GetSwitchCount(cnum, 497) == 6 then
						if GetSwitchCount(cnum, 504) == 0 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 1)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 504) == 1 then
							AddItemCount(cnum, 4381, 10) -- 그레이트 마인드 포션
							SetSwitchCount(cnum, 504, 2)
							return 1,0,"네가 6점 내가 4점으로 나의 패배다..아쉽군..내가 정신건강에 좋은 그레이트 마인드 포션을 좀 주지..오히려 나에게 필요한거 같군..내가 패배하다니..다시 덤비라구! 한판 더 겨뤄보자!"
						else
							return 1,0,"네가 6점 내가 4점으로 네가 이겼다. 하지만 이제 줄것이 없다! 나를 더욱 놀랍게 이기면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 7 then
						if GetSwitchCount(cnum, 505) == 0 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 1)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						elseif GetSwitchCount(cnum, 505) == 1 then
							AddItemCount(cnum, 8477, 1) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 505, 2)
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 내가 랜덤 추첨 상자를 주마! 다시 한판 더 하자!"
						else
							return 1,0,"네가 7점 내가 3점으로 나의 패배다. 인정한다. 하지만 이제 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 8 then
						if GetSwitchCount(cnum, 506) == 0 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 1)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 506) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 506, 2)
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌으니 랜덤 추첨 상자를 2개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 8점 내가 2점으로 나의 패배다. 꽤나 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end

					elseif GetSwitchCount(cnum, 497) == 9 then
						if GetSwitchCount(cnum, 507) == 0 then
							AddItemCount(cnum, 8477, 3) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 1)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						elseif GetSwitchCount(cnum, 507) == 1 then
							AddItemCount(cnum, 8477, 2) -- 랜덤 추첨 상자
							SetSwitchCount(cnum, 507, 2)
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌으니 랜덤 추첨 상자를 3개 주마! 다시 한판만 더 겨뤄보자!"
						else
							return 1,0,"네가 9점 내가 1점으로 나의 패배다. 정말 잘하는군. 내가 졌지만 이 점수에서는 내가 더이상 줄 것이 없다. 나를 더욱 놀랍게 이긴다면 내가 더욱 좋은 것을 주겠다! 다시 덤비라구! 한판 더 겨뤄보자!"
						end
					end
				else
					return 4,0,"["..GetSwitchCount(cnum, 497).." 대 "..GetSwitchCount(cnum, 498).."]@@나이스! 하하! 내가 막았다! 다시! 쏴봐!",random1,"왼쪽으로 슛을 날린다!",random1,"중앙으로 슛을 날린다!",random1,"오른쪽으로 슛을 날린다!"
				end
			end
		else
			return 1,0,"그럴리가"
		end




	elseif req == 500 then --> 터틀리 지급
		if herolv < 41 then --> 히어로 레벨이 40 이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 666, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 40 and herolv < 61 then --> 히어로 레벨이 41 이상이고 60이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 667, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 60 and herolv < 81 then --> 히어로 레벨이 61 이상이고 80이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 668, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		elseif herolv > 80 and herolv < 101 then --> 히어로 레벨이 81 이상이고 100이하 일 때
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 669, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		else
			SetSwitchCount(cnum, 508, 2)
			AddHenchAndState(cnum, 670, 0)
			return 1,0,"자~! 여기 터틀리야~! 잘 키워봐~!"
		end

	elseif req == 501 then --> 롱팔아이 변신갑옷 지급
		SetSwitchCount(cnum, 508, 2)
		AddItemCount(cnum, 8467, 1)
		return 1,0,"자~! 여기 롱팔아이로 변신할 수 있는 롱팔아이 변신갑옷이야!"


	end
end


